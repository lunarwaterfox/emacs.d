
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


;;----------------------------------------------------------------------------
;; Base setting
;;----------------------------------------------------------------------------
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-proxy)
(require 'init-util)
(require 'init-elpa)
(require 'init-themes)
(require 'init-editor)
(require 'init-osx-keys)
(require 'init-fonts)
(require 'init-exec-path)
(require 'init-site-lisp)


(require 'init-company)
(require 'init-yasnippet)
;;----------------------------------------------------------------------------
;; Major
;;----------------------------------------------------------------------------
(require 'init-cmake)
(require 'init-cpp)
(require 'init-org-mode)

;;----------------------------------------------------------------------------
;; Develop
;;----------------------------------------------------------------------------
(require 'init-demo)
(require 'init-project-home)
(require 'init-jekyll-project)

;;----------------------------------------------------------------------------
;; customize
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;;----------------------------------------------------------------------------
;; local
;;----------------------------------------------------------------------------
(require 'init-local)


(provide 'init)
