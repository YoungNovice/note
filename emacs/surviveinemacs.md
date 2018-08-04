C-h t tutorials
C-h k 某个块捷键怎么用
C-h f 某个函数怎么用
C-h v 某个变量是什么意思
C-h m mode帮助
C-h C-h 查看帮助文档怎么用
C-h a 查看命令的功能

### emacs elisp
setq 格式(setq variable value)
在elisp中通常用括号起来表示一个函数的调用, 括号里
第一个元素是函数名后面的则是函数接受的参数
(mouse-avoidance-mode 'jump) 光标靠近鼠标时让鼠标自动走开
(tool-bar-mode -1) 关闭工具栏

#### 定制ido的demo
(required 'ido)
(setq ido-enable-prefix nil)
(setq ido-enable-case nil)
(id-mode t)

#### emacs里面设置快接捷键
global-set-key 和 define-key两个函数实现

