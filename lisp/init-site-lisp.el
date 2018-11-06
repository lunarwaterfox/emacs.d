(setq site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory))

(dolist (subdir (directory-files site-lisp-dir))
  (unless (equal subdir "..")
    (let ((plugin-dir (expand-file-name subdir site-lisp-dir)))
      (when (file-directory-p plugin-dir)
        (add-to-list 'load-path plugin-dir)))))
                                        



(provide 'init-site-lisp)
