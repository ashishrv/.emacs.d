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
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/moe-theme"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/soft-morning-theme"))

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
;; The default theme
;;----------------------------------------------------------------------------

;;(load-theme 'tangotango t)

;; Other themes
;;(load-theme 'moe-dark t)
;;(load-theme 'moe-light t)
;;(load-theme 'soft-stone t)
;;(load-theme 'zenburn t)
;; (load-theme 'solarized-light t)
;; (load-theme 'noctilux t)
;; (load-theme 'leuven t)
;; (load-theme 'soft-charcoal t)
;; (load-theme 'ample t)
(load-theme 'soft-morning)

;;----------------------------------------------------------------------------
;; Graphics and looks
;;----------------------------------------------------------------------------

(set-face-attribute 'default nil
                    :family "Inconsolata"
                    :height 140
                    :weight 'normal
                    :width 'normal)

(when (functionp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    'unicode
                    (font-spec :family "DejaVu Sans Mono"
                               :width 'normal
                               :size 12.4
                               :weight 'normal)))


;;----------------------------------------------------------------------------
;; Remove clutter
;;----------------------------------------------------------------------------

(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))


;;----------------------------------------------------------------------------
;; Fringe decorations
;;----------------------------------------------------------------------------

;;(when (window-system)
;;  (require 'git-gutter-fringe))

;;(global-git-gutter-mode +1)
;;(setq-default indicate-buffer-boundaries 'left)
;;(setq-default indicate-empty-lines +1)



;;----------------------------------------------------------------------------
;; Scrolling behavior
;;----------------------------------------------------------------------------

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)



(provide 'init-theme)
