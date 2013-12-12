;;----------------------------------------------------------------------------
;; Emacs Python Setup
;;----------------------------------------------------------------------------

(require 'epy-setup)      ;; It will setup other loads, it is required!
(require 'epy-python)     ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing)    ;; For configurations related to editing [optional]
(require 'epy-bindings)   ;; For my suggested keybindings [optional]
(require 'epy-nose)       ;; For nose integration
(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)


(provide 'init-python)
