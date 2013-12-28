;;----------------------------------------------------------------------------
;; Customize org mode
;; Read about org features: http://orgmode.org/features.html
;; Credits: 
;; 		http://doc.norang.ca/org-mode.html
;;		http://dl.dropboxusercontent.com/u/3968124/sacha-emacs.html
;;		http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html
;;----------------------------------------------------------------------------

(require 'org)

;;----------------------------------------------------------------------------
;; Org files and Directories
;;----------------------------------------------------------------------------

;; Show agenda (type C-c a a l)
;; Locate all the agenda files you are working with
(setq org-agenda-files '("~/Dropbox/Private/emac-org-notes/organizer.org"
					     "~/Dropbox/Private/emac-org-notes/diary.org"
						 "~/Dropbox/Private/emac-org-notes/habits.org"
						 "~/work/work-logs.org"
                         "~/work/apple-projects.org"
						 "~/work/infosys-projects.org"
						 "~/work/personal-projects.org"))


;;(setq org-directory "~/Dropbox/Private/emac-org-notes") ;; Org Directory
;;(setq org-default-notes-file "~/Dropbox/Private/emac-org-notes/organizer.org") ;; Default task capture bucket

;;----------------------------------------------------------------------------
;; Setup chooser for org notes
;;----------------------------------------------------------------------------

(defvar my-work-path "~/work/")
(defvar my-personal-path "~/Dropbox/Private/emac-org-notes/")

(defun my-work-org-files ()
  (directory-files my-work-path nil "\\.org$"))
(defun my-personal-org-files ()
  (directory-files my-personal-path nil "\\.org$"))

(defun my-org-chooser ()
  (let ((completing-read-func (if (null ido-mode)
                                  'completing-read
                                'ido-completing-read)))
    (setq project-file
          (funcall completing-read-func
                   "Project: "
                   (my-work-org-files)
                   nil
                   t))))

(defun my-orgprojectfile ()
  (find-file (concat my-work-path (my-org-chooser)))
  (goto-char (point-min))
  (re-search-forward "^\*\s*.+\n" nil t)
  (newline 1))

(defun myorg-newproject-todo ()
  (interactive)
  (org-capture nil "p"))

;;----------------------------------------------------------------------------
;; Agenda views
;;----------------------------------------------------------------------------

;; Formatting for viewing agenda with time format
(setq org-agenda-time-grid
      '((daily today require-timed)
       "----------------"
       (800 1000 1200 1400 1600 1800 2000 2200)))

;; column / tabular view of tasks
(setq org-columns-default-format "%50ITEM %12SCHEDULED %TODO %3PRIORITY %Effort{:} %TAGS")

(setq org-agenda-show-log t) ;; show all states of the entries
(setq org-log-repeat "time") ;; log time of repeated task
(setq org-log-done t) ;; log time of completion of all tasks
(setq org-agenda-include-inactive-timestamps 't) ;; see refiles items
(setq org-agenda-log-mode-items '(clock)) ;; Agenda log mode items to display (clock time only by default)

(setq org-startup-indented t)
(setq org-hide-leading-stars t)
(setq org-odd-level-only nil) 
(setq org-insert-heading-respect-content nil)


;;----------------------------------------------------------------------------
;; Key Bindings
;;----------------------------------------------------------------------------

;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

; Convenient global key for org capture
(global-set-key (kbd "C-c c") 'org-capture)

;;----------------------------------------------------------------------------
;; Templates for entries
;;----------------------------------------------------------------------------

;; Capture templates for: TODO tasks, Notes, appointments, phone calls, meetings, and org-protocol

(setq org-capture-templates
      '(("t" "Todo: Projects" entry (function my-orgprojectfile )
         "* TODO %^{Task Description} %^g\n%T\n%a\n" :clock-in t :clock-resume t)

		("n" "Notes: Projects" entry (function my-orgprojectfile )
	         "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
    	
		("m" "Meeting" entry (function my-orgprojectfile)
		 "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
		
		("l" "Log Time" entry (file+datetree "~/work/work-logs.org" ) 
		 "** %U - %^{Activity}  :TIME:")
		
		("p" "Personal Notes" entry (file "~/Dropbox/Private/emac-org-notes/organizer.org" )
	         "* %? :PERSONAL:\n%U\n%a\n" :clock-in t :clock-resume t)
		
		("j" "Journal" entry (file+datetree "~/Dropbox/Private/emac-org-notes/diary.org")
		 "* %?	:DIARY:\n%U\n" :clock-in t :clock-resume t)
		
        ("h" "Habit" entry (file "~/Dropbox/Private/emac-org-notes/habits.org")
		 "* NEXT %?	:HABIT:\n%U\n%a\nSCHEDULED: %(format-time-string \"<%Y-%m-%d %a .+1d/3d>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n")

))



(provide 'setup-orgmode)


