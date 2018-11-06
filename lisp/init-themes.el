(require-package 'color-theme-sanityinc-solarized)

(load-theme 'sanityinc-solarized-dark t)

;;------------------------------------------------------------------------------
;; Toggle between light and dark
;;------------------------------------------------------------------------------
(defun light ()
  "Activate a light color theme."
  (interactive)
  (load-theme 'sanityinc-solarized-light t))

(defun dark ()
  "Activate a dark color theme."
  (interactive)
  (load-theme 'sanityinc-solarized-dark t))

(provide 'init-themes)
