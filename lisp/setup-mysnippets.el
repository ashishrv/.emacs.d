;;----------------------------------------------------------------------------
;; Setup snippets system for emacs : Uses yasnippet
;;----------------------------------------------------------------------------


(require 'yasnippet)
(yas/initialize)
(yas/global-mode 1)

(yas/load-directory "~/.emacs.d/snippets")


(provide 'setup-mysnippets)
