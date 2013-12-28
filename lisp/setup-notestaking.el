;; http://jblevins.org/projects/deft/

(require 'deft)


(setq deft-directory "~/work/notes")
; (setq deft-use-filename-as-title t)
; (global-set-key [f8] 'deft)


(setq deft-extension "txt")
(setq deft-text-mode 'markdown-mode)

;(setq deft-extension "org")
;(setq deft-text-mode 'org-mode)

(provide 'setup-notestaking)


;;;;;;;; HELP ;;;;;;;;;;;

; M-X deft
; C-c C-q   Quit Deft
; To open the first matching file, simply press RET
; If no files match your search string, pressing RET will create a new file using the string as the title.
; C-o to open a file in another window
; C-u C-o, to open the file in another window and switch to that window.
; Press C-c C-c to clear the filter string and display all files
; C-c C-g to refresh the file browser using the current filter string.
; Files can be renamed using C-c C-r
; Deleted using C-c C-d
; New files can also be created using C-c C-n for quick creation or C-c C-m for a filename prompt.

