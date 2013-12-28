;;;; Emacs customization file
;;;;

;;----------------------------------------------------------------------------
;; Early Initializations
;;----------------------------------------------------------------------------

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please
(setq inhibit-startup-message t)

;; on mac?
(setq is-mac (equal system-type 'darwin))

;;----------------------------------------------------------------------------
;; Setup Load Paths
;;----------------------------------------------------------------------------

;; Set path to external package and dependencies
(setq site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory))
(setq lisp-dir (expand-file-name "lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path lisp-dir)
(add-to-list 'load-path (concat site-lisp-dir "themes"))

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

;;----------------------------------------------------------------------------
;; Specific Customizations, Features and Major Modes
;;----------------------------------------------------------------------------

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;;----------------------------------------------------------------------------
;; Load various packages and customizations
;;----------------------------------------------------------------------------

(require 'init-package) ;; Setup packages
(require 'setup-personalization) ;; Personalization
(require 'init-python) ;; Setup python emacs environment
;;(require 'init-web) ;; Setup packages
(require 'init-theme)  ;; setup customized theme
(require 'setup-orgmode)  ;; setup customized theme
(require 'setup-notestaking)
(require 'dsvn)


;;----------------------------------------------------------------------------
;; Other global requirements 
;;----------------------------------------------------------------------------

;; Enable IDO mode every where
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1) 

(setq make-backup-files nil)
(setenv "PAGER" "/bin/cat")

