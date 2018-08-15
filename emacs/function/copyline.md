在正常情况下 emacs复制一行需要用 C-a C-@ C-e M-w 4步操作

下面是改造 M-w C-w快捷键 当没有区域被选中时就复制或者剪切一行

;;copy region or whole line
(global-set-key "\M-w"
(lambda ()
(interactve)
(if mark-active
    (kill-ring-save (region-beginning)
    (region-end))
    (progn
    (kill-ring-save (line-beginning-position)
    (line-end-postion))
    (message "copyied line")))))

;; kill region or whole line
(global-set-key "\C-w"
(lambda ()
(interactive)
(if mark-active
    (kill-region (region-beginning)
    (region-end))
    (prop
    (kill-region (line-beginning-position)
    (line-end-position))
    (message "killed line")))))
    
