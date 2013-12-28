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
;; Mode line
;;----------------------------------------------------------------------------

(require 'smart-mode-line)
(sml/setup)

(add-to-list 'sml/replacer-regexp-list '("^~/work/apple/svnrepo/ml" ":Ml:"))
(add-to-list 'sml/replacer-regexp-list '("~/work/apple/svnrepo/platform" ":PLAT:"))
(add-to-list 'sml/replacer-regexp-list '("~/work/apple/svnrepo/projects" ":PROJ:"))


;;----------------------------------------------------------------------------
;; Scrolling behavior
;;----------------------------------------------------------------------------

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;;----------------------------------------------------------------------------
;; Formatting and white-space
;;----------------------------------------------------------------------------
	
(setq-default indent-tabs-mode nil)

(defun my/clean-buffer-formatting ()
  "Indent and clean up the buffer"
  (interactive)
  (indent-region (point-min) (point-max))
  (whitespace-cleanup))

(global-set-key "\C-cn" 'my/clean-buffer-formatting)

(defun my/general-formatting-hooks ()
  (setq show-trailing-whitespace 't))


(provide 'init-theme)
