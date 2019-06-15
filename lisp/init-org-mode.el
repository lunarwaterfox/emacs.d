(require-package 'ox-gfm)

(eval-after-load "org"
  '(require 'ox-gfm nil t))

;(with-eval-after-load 'org
;  (add-to-list 'org-export-backends 'md))

(provide 'init-org-mode)
