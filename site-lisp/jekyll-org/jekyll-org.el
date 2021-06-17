(defun jekyll-parent-directory (path)
  "Get parent dir from path."
  (unless (equal path "/")
    (file-name-directory (directory-file-name path))))

(defvar jekyll-recent-dir nil)

(defun jekyll-recent-directory ()
  "Get recent dir, or default dir if recent is nil."
  (if jekyll-recent-dir
      jekyll-recent-dir
    (if buffer-file-name
        (concat (jekyll-parent-directory (file-name-directory buffer-file-name)) "_posts/")
      "~/")))

(defun jekyll-assets-directory ()
  "Get assets dir."
  (if buffer-file-name
      (concat (jekyll-parent-directory (file-name-directory buffer-file-name)) "assets/")
    nil))

(defun jekyll-export-name ()
  "Get export name of current buffer."
  (if buffer-file-name
      (file-name-base buffer-file-name)
    (read-string "Output file name: ")))

(defun jekyll-open-folder-1 (dir)
  "Open dir in finder."
  (let ((script (concat
                 "tell application \"Finder\" to open (\""
                 (expand-file-name dir)
                 "\" as POSIX file)"
                 )))
    (start-process "osascript-getinfo" nil "osascript" "-e" script)))


(defun jekyll-export-to-dir ()
  "Export gfm file to a specific director."
  (interactive)
  (let ((path (read-directory-name "Export Path: " (jekyll-recent-directory) nil t))
        (name (jekyll-export-name)))
    (setq jekyll-recent-dir path)
    (org-export-to-file 'gfm (concat path name ".md"))))

(defun jekyll-open-local ()
  "Open local jekyll in browse."
  (interactive)
  (browse-url "http://127.0.0.1:4000"))

(defun jekyll-open-assets ()
 "Open assets folder in finder."
 (interactive)
 (let* ((path (read-directory-name "Path: " (jekyll-assets-directory) nil t)))
   (jekyll-open-folder-1 path)))


(provide 'jekyll-org)
