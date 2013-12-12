;;----------------------------------------------------------------------------
;; Set Themes directory
;;----------------------------------------------------------------------------

(setq custom-theme-directory (concat user-emacs-directory "themes"))
(add-to-list 'custom-theme-load-path custom-theme-directory)
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/soft-stone-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/zenburn"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/noctilux-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/emacs-leuven-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/soft-charcoal-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/ample-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/solarized-emacs"))

;;----------------------------------------------------------------------------
;; Some package requirements: color-theme package and themes
;;----------------------------------------------------------------------------

;; (require 'color-theme)
;; (setq color-theme-load-all-themes nil)

;; (setq color-theme-is-global t)

;;(eval-after-load "color-theme"
;;  '(progn
;;     (color-theme-initialize)
;;     (color-theme-clarity)))

;;----------------------------------------------------------------------------
;; The new deftheme
;;----------------------------------------------------------------------------

(load-theme 'tangotango t)

;;----------------------------------------------------------------------------
;; Other themes that you could load with M-x load-theme
;;----------------------------------------------------------------------------

;;;; setup custom theme
;; (load-theme 'zenburn t)
;; (load-theme 'solarized-light t)
;; (load-theme 'noctilux t)
;; (load-theme 'leuven t)
;; (load-theme 'soft-charcoal t)
;; (load-theme 'soft-stone t)
;; (load-theme 'ample t)

;;----------------------------------------------------------------------------
;; More Customizations to fonts, etc
;;----------------------------------------------------------------------------

;; Default font size
(set-face-attribute 'default nil :height 120)

;; Custom font. Requires the ttf-dejavu ubuntu package.
(if (eq system-type 'darwin)
  (set-frame-font "Menlo")
  (set-frame-font "DejaVu Sans Mono")
)

;; Highlight current line
;; (global-hl-line-mode 1)



(provide 'init-theme)
