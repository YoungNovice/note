(setq my-name "yangxuan")

(insert "Hello!")

(insert "Hello" "World!")

(insert "Hello , I am " my-name)

(defun hello () (insert "Hello, I am " my-name))

(hello)

;;; with parameter

(defun hello(name) (insert "Hello " name ))

(hello "hah")


;;; open a new buffer with new window
(switch-to-buffer-other-window "new buffer test")

;;;
(progn (switch-to-buffer-other-window "*test*")
       (erase-buffer)
       (hello "")
       )

(progn (switch-to-buffer-other-window "*test*")
       (erase-buffer)
       (hello "")
       (other-window 1)
       )


(let
    ((local-name "you"))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello local-name)
  (other-window 1)
  )


(format "Hello %s!\n" "visitor")

(defun hello (name) (insert (format "Hello %s!\n" name)))

(hello "laoyang")

(defun greeting (name)
  (let ((your-name "qu"))
    (insert (format "hello %s !\n\n I am %s" name your-name ))))

(greeting "you")

(read-from-minibuffer "Enter your name: ")


(defun greeting (from-name)
  (let ((your-name (read-from-minibuffer "Enter your name: ")))

    (insert (format "Hello %s, I am %s" from-name your-name))
    ))

(greeting "qulianghong")

(defun greeting (name)
  (let ((your-name (read-from-minibuffer "Enter your name: ")))

    (switch-to-buffer-other-window "*test*")
    (erase-buffer)
    (insert (format "Hello %s! I am %s" your-name name))
    (other-window 1)
    )
  )

(greeting "hello")
