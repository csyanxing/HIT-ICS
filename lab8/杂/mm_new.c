/* 
 * mm-implicit.c -  Simple allocator based on implicit free lists, 
 *                  first fit placement, and boundary tag coalescing. 
 *
 * Each block has header and footer of the form:
 * 
 *      31                     3  2  1  0 
 *      -----------------------------------
 *     | s  s  s  s  ... s  s  s  0  0  a/f
 *      ----------------------------------- 
 * 
 * where s are the meaningful size bits and a/f is set 
 * iff the block is allocated. The list has the following form:
 *
 * begin                                                          end
 * heap                                                           heap  
 *  -----------------------------------------------------------------   
 * |  pad   | hdr(8:a) | ftr(8:a) | zero or more usr blks | hdr(8:a) |
 *  -----------------------------------------------------------------
 *          |       prologue      |                       | epilogue |
 *          |         block       |                       | block    |
 *
 * The allocated prologue and epilogue blocks are overhead that
 * eliminate edge conditions during coalescing.
 */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include "mm.h"
#include "memlib.h"

/*
 * If NEXT_FIT defined use next fit search, else use first fit search 
 */
#define NEXT_FITx

/* Team structure */
team_t team = {
#ifdef NEXT_FIT
    "implicit next fit",
#else
    "implicit first fit",
#endif
    "Dave OHallaron", "droh",
    "", ""};

/* $begin mallocmacros */
/* Basic constants and macros */
#define ALIGN(size) (((size + DSIZE - 1) / DSIZE) * (DSIZE)) //将size向双字对齐
#define WSIZE 4                                              /* word size (bytes) */
#define DSIZE 8                                              /* doubleword size (bytes) */
#define CHUNKSIZE (1 << 12)                                  /* initial heap size (bytes) */
#define OVERHEAD 8                                           /* overhead of header and footer (bytes) */
#define MAX_LEN 20                                           /* 最多有20个分离的空闲链表 */

#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p) (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((char *)(bp)-WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp)-WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE(((char *)(bp)-DSIZE)))

/* 将p指向的那个字赋值为bp的值 */
#define SET_PTR(p, bp) (*(unsigned int *)(p) = (unsigned int)(bp))

/* 获取p块中的第一个字的字节指针，它指向的字节存着这一块的前驱节点的指针 */
#define PRED_PTR(bp) ((char *)(bp))
/* 获取p块中的第二个字的字节指针，它指向的字节存着这一块的后继节点的指针 */
#define SUCC_PTR(bp) ((char *)(bp) + WSIZE)

/* 拿到bp的前驱节点的指针 */
#define PRED(bp) (*(char **)(bp))
/* 拿到bp的后继节点的指针 */
#define SUCC(bp) (*(char **)(SUCC_PTR(bp)))
/* $end mallocmacros */

/* Global variables */
static char *heap_listp;     /* pointer to first block */
void *sepFreeLists[MAX_LEN]; /* 该数组存储分离的空闲链表的每个头节点指针，最多有MAX_LEN个不同的大小类 */
#ifdef NEXT_FIT
static char *rover; /* next fit rover */
#endif

/* function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void *place(void *bp, size_t asize);
static void *coalesce(void *bp);
static void printblock(void *bp);
static void checkblock(void *bp);
static void insertNode(void *bp, size_t size); //将大小为size的节点bp插入到某个空闲链表
static void deleteNode(void *bp);              //删除某个空闲链表中的节点bp

/* 
 * mm_init - Initialize the memory manager 
 */
/* $begin mminit */
int mm_init(void)
{
    //初始化空闲链表
    int i;
    for (i = 0; i < MAX_LEN; i++)
    {
        sepFreeLists[i] = NULL;
    }
    /* create the initial empty heap */
    if ((heap_listp = mem_sbrk(4 * WSIZE)) == NULL)
        return -1;
    PUT(heap_listp, 0);                          /* alignment padding */
    PUT(heap_listp + WSIZE, PACK(OVERHEAD, 1));  /* prologue header */
    PUT(heap_listp + DSIZE, PACK(OVERHEAD, 1));  /* prologue footer */
    PUT(heap_listp + WSIZE + DSIZE, PACK(0, 1)); /* epilogue header */
    heap_listp += DSIZE;

#ifdef NEXT_FIT
    rover = heap_listp;
#endif

    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL)
        return -1;
    return 0;
}
/* $end mminit */

/* 
 * mm_malloc - Allocate a block with at least size bytes of payload 
 */
/* $begin mmmalloc */
void *mm_malloc(size_t size)
{
    size_t asize;      /* adjusted block size */
    //size_t extendsize; /* amount to extend heap if no fit */
    char *bp = NULL;

    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE)
        size = DSIZE + OVERHEAD;
    else
        size = ALIGN(size+DSIZE);
    asize = size;
    //asize至少16
    int i = 0;
    while (i < MAX_LEN)
    {
        /* 先找合适的空闲链表 */
        if (((asize <= 1) && (sepFreeLists[i] != NULL)))
        {
            //到这里时原先的asize大于等于2的i次方小于2的i+1次方
            bp = sepFreeLists[i];
            //遍历列表寻找大小合适的块，链表中的块是按大小升序排列的
            while ((bp != NULL) && ((size > GET_SIZE(HDRP(bp)))))
                bp = SUCC(bp);
            /* 找到对应的未分配的块 */
            if (bp != NULL)
                break;
        }
        asize >>= 1;
        i++;
    }
    
    /* 没有找到合适的未分配块，则扩展堆 */
    if (bp == NULL)
    {
        if ((bp = extend_heap(MAX(size, CHUNKSIZE)/WSIZE)) == NULL)
            return NULL;
    }
    /* 在未分配块中放置size大小的块 */
    bp = place(bp, size);
    return bp;
}
/* $end mmmalloc */

/* 
 * mm_free - Free a block 
 */
/* $begin mmfree */
void mm_free(void *bp)
{
    size_t size = GET_SIZE(HDRP(bp));

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    insertNode(bp, size);
    coalesce(bp);
}

/* $end mmfree */

/*
 * mm_realloc - naive implementation of mm_realloc
 */
/*改进后的重新分配函数*/
void *mm_realloc(void *ptr, size_t size)
{
    void *new_p = ptr;
    int remaining;
    /*Ingore spurious requests*/
    if (size == 0)
        return NULL;

    if (size <= DSIZE)
        size = 2 * DSIZE;
    else
        size = ALIGN(size + DSIZE); //内存对齐
    remaining = GET_SIZE(HDRP(ptr)) - size;
    /* 如果size小于原来块的大小，直接返回原来的块 */
    if (remaining >= 0)
        return ptr;

    /* 否则先检查地址连续下一个块是否为未分配块或者该块是堆的结束块 */
    else if (!GET_ALLOC(HDRP(NEXT_BLKP(ptr))) || !GET_SIZE(HDRP(NEXT_BLKP(ptr))))
    {
        /* 如果加上后面连续地址上的未分配块空间也不够，那么需要扩展块 */
        if ((remaining = GET_SIZE(HDRP(ptr)) + GET_SIZE(HDRP(NEXT_BLKP(ptr))) - size) < 0)
        {
            if (extend_heap(MAX(-remaining, CHUNKSIZE)/WSIZE) == NULL)
                return NULL;
            remaining += MAX(-remaining, CHUNKSIZE);
        }

        /* 从分离空闲链表中删除刚刚利用的未分配块并设置新块的头尾 */
        deleteNode(NEXT_BLKP(ptr));
        PUT(HDRP(ptr), PACK(size + remaining, 1));
        PUT(FTRP(ptr), PACK(size + remaining, 1));
    }
    /* 如果没有可以利用的连续未分配块，只能申请新的不连续的未分配块 */
    else
    {
        new_p = mm_malloc(size);
        memcpy(new_p, ptr, GET_SIZE(HDRP(ptr)));
        mm_free(ptr);
    }
    return new_p;
}

/* 
 * mm_checkheap - Check the heap for consistency 
 */
void mm_checkheap(int verbose)
{
    char *bp = heap_listp;

    if (verbose)
        printf("Heap (%p):\n", heap_listp);

    if ((GET_SIZE(HDRP(heap_listp)) != DSIZE) || !GET_ALLOC(HDRP(heap_listp)))
        printf("Bad prologue header\n");
    checkblock(heap_listp);

    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp))
    {
        if (verbose)
            printblock(bp);
        checkblock(bp);
    }

    if (verbose)
        printblock(bp);
    if ((GET_SIZE(HDRP(bp)) != 0) || !(GET_ALLOC(HDRP(bp))))
        printf("Bad epilogue header\n");
}

/* The remaining routines are internal helper routines */

/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
/* $begin mmextendheap */
static void *extend_heap(size_t words)
{
    char *bp;
    size_t size;
    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE;

    if ((bp = mem_sbrk(size)) == (void *)-1)
        return NULL;
    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));
    /*插入到分离空闲表中 */
    insertNode(bp, size);
    /* Coalesce if the previous block was free */
    return coalesce(bp);
}
/* $end mmextendheap */

static void insertNode(void *bp, size_t size)
{
    int i = 0;
    void *new_bp = NULL;
    void *old_bp = NULL;

    while (i <= MAX_LEN - 2 && size > 1) // 根据size的大小找到对应的分离空闲链表
    {
        i++;
        size >>= 1;
    }
    //运行到这里之后，之前的size就大于等于2的i次方，小于2的i+1次方

    /* 在对应大小类的链中寻找对应的插入位置，保持链中块由小到大分布 */
    new_bp = sepFreeLists[i];
    while (new_bp != NULL && size > GET_SIZE(HDRP(new_bp)))
    {
        old_bp = new_bp;
        new_bp = SUCC(new_bp);
    }

    /* 四种情况 */
    if (new_bp != NULL)
    {
        if (old_bp != NULL)
        { //old != NULL, new == NULL
            //在某两个节点之间插入：old -> bp -> new
            SET_PTR(SUCC_PTR(bp), new_bp);
            SET_PTR(PRED_PTR(bp), old_bp);
            SET_PTR(PRED_PTR(new_bp), bp);
            SET_PTR(SUCC_PTR(old_bp), bp);
        }
        else
        { //new != NULL, old == NULL
            //在链表的开头插入：head -> bp -> new
            sepFreeLists[i] = bp;
            SET_PTR(SUCC_PTR(bp), new_bp);
            SET_PTR(PRED_PTR(new_bp), bp);
            SET_PTR(PRED_PTR(bp), NULL);
        }
    }
    else
    {
        if (old_bp != NULL)
        { //new == NULL, old != NULL
            //在链表结尾插入：old -> bp -> NULL
            SET_PTR(PRED_PTR(bp), old_bp);
            SET_PTR(SUCC_PTR(bp), NULL);
            SET_PTR(SUCC_PTR(old_bp), bp);
        }
        else
        { //old == new == NULL
            //在空链表中首次插入
            SET_PTR(PRED_PTR(bp), NULL);
            SET_PTR(SUCC_PTR(bp), NULL);
            sepFreeLists[i] = bp;
        }
    }
}

static void deleteNode(void *bp)
{
    int i = 0;
    size_t size = GET_SIZE(HDRP(bp));

    // 根据size的大小找到对应的分离空闲链表
    while (i <= MAX_LEN - 2 && size > 1) // 根据size的大小找到对应的分离空闲链表
    {
        i++;
        size >>= 1;
    }
    //运行到这里之后，之前的size就大于等于2的i次方，小于2的i+1次方

    if (PRED(bp) != NULL)
    {
        if (SUCC(bp) != NULL)
        { //bp的前驱节点和后继节点都非空
            //将bp的前驱节点的后继节点赋值为bp的后继节点
            //将bp的后继节点的前驱节点赋值为bp的前驱节点
            SET_PTR(SUCC_PTR(PRED(bp)), SUCC(bp));
            SET_PTR(PRED_PTR(SUCC(bp)), PRED(bp));
        }
        else
        { //bp的前驱节点非空，后继节点为空，即删除结尾节点
            //将bp的前驱节点的后继节点赋值为NULL即可
            SET_PTR(SUCC_PTR(PRED(bp)), NULL);
        }
    }
    else
    {
        if (SUCC(bp) != NULL)
        { //bp的前驱节点为空，后继节点不空，即删除链表第一个节点
            //修改链表头指针即可
            //修改前：head -> bp -> ...
            sepFreeLists[i] = SUCC(bp);
            SET_PTR(PRED_PTR(SUCC(bp)), NULL);
        }
        else
        { //bp的前去后继都空，只有一个节点bp
            sepFreeLists[i] = NULL;
        }
    }
}

/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
/* $begin mmplace */
static void *place(void *bp, size_t asize)
{
    //不需要分割
    size_t csize = GET_SIZE(HDRP(bp));  //拿到这一个块的大小
    size_t remainsize = csize - asize;   //分配后多余空间的大小
    deleteNode(bp);  //把bp从空闲链表中删除

    /* 如果剩余的大小小于最小块的要求，则不分割原块 */
    if (remainsize < DSIZE * 2)
    {
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
    else if (asize >= 96)  //使用空间的大小超过96字节的话，从前一部分分割出空闲块
    {
        PUT(HDRP(bp), PACK(remainsize, 0));  //从bp块的开始分割出remainsize大小的块
        PUT(FTRP(bp), PACK(remainsize, 0));  //经上一行的操作后FTRP(bp)已经是remainsize大小块的脚部
        PUT(HDRP(NEXT_BLKP(bp)), PACK(asize, 1)); //remainsize的下一块是真正的asize块
        PUT(FTRP(NEXT_BLKP(bp)), PACK(asize, 1));
        insertNode(bp, remainsize);  //在空闲链表中添加remainsize块
        return NEXT_BLKP(bp);  //返回真正的asize块
    }
    else  //从后面分割出空闲块
    {
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        PUT(HDRP(NEXT_BLKP(bp)), PACK(remainsize, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(remainsize, 0));
        insertNode(NEXT_BLKP(bp), remainsize);
    }
    return bp;
}
/* $end mmplace */

/*
 * coalesce - boundary tag coalescing. Return ptr to coalesced block
 */
static void *coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc)
        return bp;
    else if (prev_alloc && !next_alloc)
    {
        //bp的前一块分配了，后一块未分配，与后一块合并
        deleteNode(bp);
        deleteNode(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        //合并后，bp仍指向合并块的有效载荷的第一个字节
        PUT(HDRP(bp), PACK(size, 0));
        //将bp头部的size修改后，FTRP(bp)已经指向修改后的脚部
        PUT(FTRP(bp), PACK(size, 0));
    }
    else if (!prev_alloc && next_alloc)
    {
        //bp的后一块分配了，前一块未分配，与前一块合并
        deleteNode(bp);
        deleteNode(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        //合并后的块的有效载荷的第一个字节位于bp的前一块当中
        bp = PREV_BLKP(bp);
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    else
    {
        //prev 和 next都未分配
        deleteNode(bp);
        deleteNode(PREV_BLKP(bp));
        deleteNode(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        //合并后的块的有效载荷的第一个字节位于bp的前一块当中
        bp = PREV_BLKP(bp);
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    //合并后的空闲块添加到空闲链表当中
    insertNode(bp, size);
    return bp;
}

static void printblock(void *bp)
{
    size_t hsize, halloc, fsize, falloc;

    hsize = GET_SIZE(HDRP(bp));
    halloc = GET_ALLOC(HDRP(bp));
    fsize = GET_SIZE(FTRP(bp));
    falloc = GET_ALLOC(FTRP(bp));

    if (hsize == 0)
    {
        printf("%p: EOL\n", bp);
        return;
    }

    printf("%p: header: [%d:%c] footer: [%d:%c]\n", bp,
           hsize, (halloc ? 'a' : 'f'),
           fsize, (falloc ? 'a' : 'f'));
}

static void checkblock(void *bp)
{
    if ((size_t)bp % 8)
        printf("Error: %p is not doubleword aligned\n", bp);
    if (GET(HDRP(bp)) != GET(FTRP(bp)))
        printf("Error: header does not match footer\n");
}


