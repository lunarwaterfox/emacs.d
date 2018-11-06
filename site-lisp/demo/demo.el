(defconst demo-hello-text "Hello world!")

(defcustom demo-hello-custom demo-hello-text
  "new class template directories.")

(defun demo-hello ()
  "A demo how to develop lisp."
  (interactive)
  (message demo-hello-text))

(provide 'demo)
