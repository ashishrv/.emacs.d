;;----------------------------------------------------------------------------
;; Emacs Personalization 
;;----------------------------------------------------------------------------

(setq user-full-name "Ashish R Vidyarthi"
      user-mail-address "ashish.vid@gmail.com")

(remove-hook 'text-mode-hook 'turn-on-flyspell)
(setq next-line-add-newlines t) ;Adds a new line at end of the buffer. No need to type [ENTER]]

;;----------------------------------------------------------------------------
;; Smart mode line
;;----------------------------------------------------------------------------

(setq sml/theme 'dark)
(require 'smart-mode-line)
(sml/setup)

(add-to-list 'sml/replacer-regexp-list '("^~/work/apple/svnrepo/ml" ":Ml:"))
(add-to-list 'sml/replacer-regexp-list '("~/work/apple/svnrepo/platform" ":PLAT:"))
(add-to-list 'sml/replacer-regexp-list '("~/work/apple/svnrepo/projects" ":PROJ:"))

;;----------------------------------------------------------------------------
;; Fringe decorations
;;----------------------------------------------------------------------------

(setq-default indicate-buffer-boundaries 'left)
(setq-default indicate-empty-lines +1)

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

;;----------------------------------------------------------------------------
;; MAC specific Keys
;;----------------------------------------------------------------------------

(setq ns-right-alternate-modifier nil)


(provide 'setup-personalization)
