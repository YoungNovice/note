emacs -nw 终端模式启动
emacs 图形界面启动

runemacs --debug-init 调试配置文件方式启动
ctrl + h t 进入新手教程 

### emacs术语
C 代表ctrl
M 代表alt
RET 代表enter

eg：
C-x 代表同时按下ctrl + x
C-x d RET 代表同时按下ctrl + x 在按下d 最后按下RET
emacs 中大部分自动补全是tab键

### 配置
emacs配置文件常见有 .emacs init.el
他们呢都是elisp脚本

配置规则
1. emacs会在系统中寻找一个名为HOME的变量 其执行的路径下寻找配置文件

通过 C-h v user-emavs-directory 指代home路径

init.el