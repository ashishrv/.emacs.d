;;----------------------------------------------------------------------------
;;  web mode: http://web-mode.org/
;;----------------------------------------------------------------------------

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))



(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'web-mode-hook)

;; Indentation
(setq web-mode-markup-indent-offset 2) 
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-indent-style 2)

;; Padding
(setq web-mode-style-padding 1)
(setq web-mode-script-padding 1)
(setq web-mode-block-padding 0)

;; Comments
(setq web-mode-comment-style 2)

;;Element Navigation
(define-key web-mode-map (kbd "C-o") 'web-mode-tag-match)


;;(setq web-mode-enable-block-face t)
;;(setq web-mode-enable-part-face t)
(setq web-mode-enable-comment-keywords t)
;;(setq web-mode-enable-current-element-highlight t)

(setq web-mode-tag-auto-close-style 0)


(local-set-key (kbd "RET") 'newline-and-indent)

(provide 'init-web)