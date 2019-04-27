cc 与 gcc
gcc [options] [filenames]

gcc -p -g 
gcc -pg 是不同的命令

count.c 编译成count
gcc -o count count.c 


-c 告诉gcc仅仅把源码编译为目标代码跳过汇编和连接步骤

-S 告诉gcc产生了汇编语言后就停止

-E 仅对文件预处理

调试
lint
gprof 
gdb 


