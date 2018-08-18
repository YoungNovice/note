;; in elisp a list combine with N con

;; what is cons ? it has a haed and a tail like (a, b)
;; 创建了一个cons对象 对cons有两个操作 car cdr分别取头和尾元素
(setf x (cons 1 2))

(car x)

(cdr x)

;; cons可以是任意类型， 也可以是cons
(setf y (cons 1 (cons 2 (cons 3 (cons 4 5)))))

(car y)

(cdr y)

;; cons 与 list
(setf z (cons 1 (cons 2 (cons 3 (cons 4 nil)))))
;; 等价于
(list 1 2 3 4 5 6)

;; (global-set-key "\C-cs" 'shell)
