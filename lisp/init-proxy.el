;; (setq url-proxy-services
;;       '(("no_proxy" . "^\\(localhost\\|127.*\\)")
;;         ("http" . "http://proxy.com:8080")
;;         ("https" . "http://proxy.com:8080")))

(setq url-gateway-method 'socks)
(setq socks-server '("Default server" "127.0.0.1" 1086 5))

(provide 'init-proxy)
