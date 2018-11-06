(setq-default c-basic-offset 4)

(add-hook 'c++-mode-hook
          (lambda ()
            (local-set-key (kbd "C-x M-b") 'compile)
            (set (make-local-variable 'compile-command) "cmake --build ~/Desktop/build")))

; (require 'c++-new-file)


; (require-package 'irony)

;; (add-hook 'c++-mode-hook 'irony-mode)
;; (add-hook 'c-mode-hook 'irony-mode)
;; (add-hook 'objc-mode-hook 'irony-mode)

;; (defun my-irony-mode-hook ()
;;   (define-key irony-mode-map [remap completion-at-point]
;;     'irony-completion-at-point-async)
;;   (define-key irony-mode-map [remap complete-symbol]
;;     'irony-completion-at-point-async))

;; (add-hook 'irony-mode-hook 'my-irony-mode-hook)
;; (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(provide 'init-cpp)
