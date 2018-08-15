help system


C-h t tutorial

C-h k usage of keymap
C-h K usage of keymap for inner command
C-h v usage of variable
C-h m usage of mode
... C-h prefix of keymap uasge
C-h a find some command
C-h f usage of function

M-x apropos
C-h i info

### customize emacs

setq  eg: (setq variable value) 把变量variable的值设置为value
在elisp中一个括号通常表示一个函数调用
括号里面第一个是函数名称 后面是函数接受的参数
setq就是一个设置变量的值的函数

#### 函数调用式
通过预定义的函数来加载,打开或者关闭某个功能
eg : (mouse-avoidance-mode 'jump) ;光标靠近鼠标时让鼠标自动走开
(tool-bar-mode -1) ;关闭工具栏

### ido
(require 'ido)
(setq ido-enable-prefix nil)
(setq ido-enable-case nil)
(ido-mode t)
首先通过require函数来加载ido
然后通过设值ido预定义的一些变量来定制ido的行为
最后通过调用ido-mode函数来打开ido功能

### shortcut
1.global-set-key 设置全局快捷键
2.define-key 为某个mode设置快捷键

###### global-set-key
(global-set-key key command)
key是要emacs那种形式 借助kbd宏来实现
command 命令字符串

eg : (global-set-key (kbd "M-SPC") 'set-mark-command) 
(global-set-key (kbd "<C-f9>") 'compile) 绑定ctrl-f9到编译命令上

##### define-key
(define-key keymap key command)
key 和 command 跟前面的差不多
(define-key c-mode-map (kbd "<f9>") 'compile)

其中 c-mode-map 就是对应到 c-mode 的 keymap ，一般各个 mode 都有独立的
keymap ，并且以 mode 的名字加上 –map 来命名

### mode & hook
    每个文件类型有一个读立的major-mode 管理与该文件类型匹配的语法 缩进 注释等
    另外还有一些称作 minor-mode 的 mode ，它们可以附加到任意 major-mode 上，一般是起增强和修饰作用
    
    
###  定制某个特定的 mode 除了通过设置快捷键和修改一些该 mode 提供的变量之外，还
有一个非常方便的方法： 通常 major-mode 都会提供一个 hook ， 如果遵循命名规范的话，
通常是 mode 的名字加上 –hook ，在进入这个 major-mode 的时候会调用对应的hook 里加入的函数，
因此可以方便地通过 hook 来在进入某个 mode 之后执行一些代码 来达到定制的目的
(add-hook 'c-mode-hook 
 '(lambda ()
    ;; 自动换行功能
(c-toggle-auto-newline 1)
;; 此模式下，当按 Backspace 时会删除最多的空格
(c-toggle-hungry-state)
;; 显示目前光标在哪个函数里面
(which-function-mode t)
(auto-fill-mode t)
;; 不使用 tab 作为缩进字符
(setq indent-tabs-mode nil)
(c-subword-mode 1)
 ))

解释：使用 lambda 创建一个匿名函数，添加到 c-mode 的 hook 里，当进入 c-mode 的时
候（也就是打开一个 .c 文件的时候）就会调用我们添加进去的那个匿名函数，从而执
行函数体里的那些代码，包括打开 auto-newline 功能、打开 c-subword 功能等

### lambda , function , command
在 Elisp 中创建匿名函数或者命名函数
(lambda (x y)
(message x)
(message y))
lambda 后面紧跟着是参数列表，这里表示接受两个参数 x 和 y ，然后是函数体了，
这里用 message 函数分别把 x 和 y 在 minibuffer 里面显示出来。命名函数也是类似
的，不过把 lambda 换成了 defun 和函数名
(defun foo (x y)
(message x)
(message y))
Elisp 还允许为函数指定文档，紧跟在参数列表之后，
(defun foo (x y)
"Show X and Y in minibuffer.
You may not see X in minibuffer because it
is replaced by Y, but you can go to the
*Messages* buffer and see it."
(message x)
(message y))

另外，在 Emacs 中有一类特殊的函数，称为 command ，它们可以被用户交互地调
用（例如，绑定到某个快捷键上，或者通过 M-x 输入命令名进行调用）。普通函数并
不能通过交互方式直接被调用， 要定义一个 command ，

需要在函数的文档字符串（如果有的话）之后调用 interactive
interactive 可以用于描述 command 所接受的
参数以及如何获取这些参数
(defun kid-cool-box (title begin end)
"Wrap the region with a cool box.
The result is like this:
,----------[ Title ]
| This is the marked region
| that will be boxed
`----------
"
(interactive "sTitle: \nr")
(setq end (copy-marker end t))
(save-excursion
(goto-char begin)
(unless (looking-back "^")
(insert "\n"))
(insert ",----------[ ")
(insert title)
(insert " ]\n")
(while (< (point) end)
(insert "| ")
(next-line)
(beginning-of-line))
(goto-char end)
(unless (looking-back "^")
(insert "\n"))
(insert "`----------\n")))
