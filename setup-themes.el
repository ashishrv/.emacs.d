;; Set custom theme path
(setq custom-theme-directory (concat user-emacs-directory "themes"))

(dolist
    (path (directory-files custom-theme-directory t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'custom-theme-load-path path)))

;; setup custom theme
 (load-theme 'zenburn t)
 (set-cursor-color "firebrick")

(provide 'setup-themes)