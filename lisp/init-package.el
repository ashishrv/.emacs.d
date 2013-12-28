;;----------------------------------------------------------------------------
;; Ensure that packages are installed properly
;;----------------------------------------------------------------------------

(require 'package)

;;----------------------------------------------------------------------------
;; Define package lists here
;;----------------------------------------------------------------------------

(setq package-list '(js2-mode 
                     autopair 
                     git-gutter-fringe
					 smart-mode-line
					 dsvn
))

;;----------------------------------------------------------------------------
;; list the repositories containing them
;;----------------------------------------------------------------------------


(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

;;----------------------------------------------------------------------------
;; Ensure missing packages are installed
;;----------------------------------------------------------------------------

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(when (not package-archive-contents)
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (when (not (package-installed-p package))
    (package-install package)))


(provide 'init-package)
