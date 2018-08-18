;;; Let us store a list of names

(setq list-of-names '("qulianghong" "yanxuan" "xxxx"))

(car list-of-names)

(cdr list-of-names)

(push "laoyang" list-of-names)

(mapcar 'hello list-of-names)

(defun greeting ()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-name)
  (other-window)

  )

(greeting)

(defun replace-hello-by-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (search-forward "Hello" nil 't))
  (replace-match "Bonjour")
  (other-window 1)
  )

(replace-hello-by-bonjour)

(defun hello-to-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-names)
  (goto-char (point-min))
  (while (search-forward "Hello" nil 't)
    (replace-match "Bonjour")
    )
  (other-window 1)
  )

(hello-to-bonjour)

(defun boldify-name ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (re-search-backward "Bonjour \\(.+\\)!" nil 't)
    (add-text-properties (match-beginning 1)
                         (mathc-end 1)
                         (lsit 'face 'bold))
    )
  (other-window 1))

(boldify-name)
