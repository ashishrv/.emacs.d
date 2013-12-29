;;----------------------------------------------------------------------------
;; Setup snippets system for emacs : Uses yasnippet
;;----------------------------------------------------------------------------


(require 'yasnippet)
(yas/initialize)
(yas/global-mode 1)

(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)


(provide 'setup-mysnippets)
