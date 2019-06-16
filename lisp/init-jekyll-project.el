(require 'jekyll-project)

(global-set-key (kbd "C-c o") 'jekyll-project-org-open)
(global-set-key (kbd "C-c e") 'jekyll-project-org-export)
(global-set-key (kbd "C-c r") 'jekyll-project-run-serve)
(global-set-key (kbd "C-c s") 'jekyll-project-show-web)

(provide 'init-jekyll-project)
