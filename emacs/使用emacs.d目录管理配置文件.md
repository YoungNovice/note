emacs 启动时会读取.emacs中的LISP代码出始化配置
不过使用这个文件配置会让管理变得混乱

使用.emacs.d目录管理Emacs初始化配置文件, 如下设置:
在.emacs文件中加入
;;this is the main Emacs initalization file .emacs

(add-to-list 'load-path(expand-file-name "~/.emacs.d"))

(require 'feature_1)

解释:
在.emacs中加入的load-path配置文件路经中, 放入自己的配置文件
这些配置文件可以按照功能分类组成
eg: 在.emacs.d中放入 feature_1.el, feature_2.el, feature_3.el
注意要在每个配置文件中使用provide定义其提供的Feature
比如 feature_1.el这个配置文件, 它提供feature_1特性
即是.emacs中要求使用require命令要求的feature_1
那么要在feature_1中加入provide
;; this is my Emacs customization file feature_1.el providing feature_1

(provide 'feature_1)

;; customization code....

关于Feature、require、provide的详细功能参考Emacs的GNU官方文档：15.7 Features
另外提一句，目前很多Linux下的开源的软件都支持这种：.xxx.d目录的方式管理配置文件，其中xxx是软件相关的名字

