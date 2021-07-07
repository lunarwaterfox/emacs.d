(require-package 'ox-gfm)

(eval-after-load "org"
  '(require 'ox-gfm nil t))

;(with-eval-after-load 'org
;  (add-to-list 'org-export-backends 'md))


;; todo list
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d!)" "CANCELED(c@)")))

(setq org-todo-keyword-faces
      '(("TODO" . "yellow")
        ("DONE" . (:foreground "green" :weight bold))
        ("CANCELED" . (:foreground "red" :weight bold))))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Documents/org/task.org" "Tasks")
         "* TODO %?")))

;; mobile setting
(setq org-directory "~/Documents/org")
(setq org-mobile-inbox-for-pull "~/Documents/org/inbox.org")
(setq org-mobile-files
      '("~/Documents/org/task.org"))
(setq org-mobile-directory "~/Dropbox/应用/MobileOrg")

(setq org-mobile-use-encryption t)
(setq org-mobile-encryption-password "DropboxOrg")

(provide 'init-org-mode)
