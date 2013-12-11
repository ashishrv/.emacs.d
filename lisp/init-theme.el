;; Set custom theme path
;; Set path to additional files


(setq custom-theme-directory (concat user-emacs-directory "themes"))

(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/soft-stone-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/zenburn"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/noctilux-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/emacs-leuven-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/soft-charcoal-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/ample-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/solarized-emacs"))

;; Highlight current line
;; (global-hl-line-mode 1)
;; (set-cursor-color "#ffffff")

;;;; setup custom theme
;; (load-theme 'zenburn t)
;; (load-theme 'solarized-light t)
;; (load-theme 'noctilux t)
;; (load-theme 'leuven t)
;; (load-theme 'soft-charcoal t)
;;(load-theme 'soft-stone t)
(load-theme 'ample t)

(provide 'init-theme)
