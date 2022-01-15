#!/bin/bash

gcc tsh.c -o tsh

rm tshref_ret
rm tsh_ret

make rtest01 >> tshref_ret
make rtest02 >> tshref_ret
make rtest03 >> tshref_ret
make rtest04 >> tshref_ret
make rtest05 >> tshref_ret
make rtest06 >> tshref_ret
make rtest07 >> tshref_ret
make rtest08 >> tshref_ret
make rtest09 >> tshref_ret
make rtest10 >> tshref_ret
make rtest11 >> tshref_ret
make rtest12 >> tshref_ret
make rtest13 >> tshref_ret
make rtest14 >> tshref_ret
make rtest15 >> tshref_ret

make test01 >> tsh_ret
make test02 >> tsh_ret
make test03 >> tsh_ret
make test04 >> tsh_ret
make test05 >> tsh_ret
make test06 >> tsh_ret
make test07 >> tsh_ret
make test08 >> tsh_ret
make test09 >> tsh_ret
make test10 >> tsh_ret
make test11 >> tsh_ret
make test12 >> tsh_ret
make test13 >> tsh_ret
make test14 >> tsh_ret
make test15 >> tsh_ret

