;(setq url-proxy-services
;   '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
;     ("http" . "proxy.com:8080")
;     ("https" . "proxy.com:8080")))

;(setq url-http-proxy-basic-auth-storage
;    (list (list "proxy.com:8080"
;                (cons "Input your LDAP UID !"
;                      (base64-encode-string "LOGIN:PASSWORD")))))

;(setq socks-server '("Default server" "127.0.0.1" 1086 5))

(provide 'init-proxy)
