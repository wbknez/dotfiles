;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Initialize configuration options concerning org-mode.

;; Much of this file was taken from Aaron Bieber's article "Dig Into Org Mode"
;; and subsequent writings on the subject.

(setq org-agenda-files '("~/Documents/org-notes"))

(setq org-todo-keywords
      '((sequence "TASK" "START" "WAIT" "|" "DONE" "CANCEL")
        (sequence "TODO" "CODE" "PAUSE" "|" "WROTE" "SKIP")
        (sequence "BUG" "TINKER" "STALL" "|" "FIX" "NOFIX")))

;; TODO: Implement capture templates.

(setq org-adapt-identation nil
      org-agenda-skip-deadline-if-done t
      org-agenda-skip-scheduled-if-done t
      org-agenda-text-search-extra-files '(agenda-archives)
      org-enforce-todo-dependencies t
      org-list-description-max-indent 5
      org-log-done (quote time)
      org-log-redeadline (quote time)
      org-log-reschedule (quote time))

(defun wbknez/pop-to-org-agenda (split)
  "Open the Org-mode agenda in either full view or a split pane."
  (interactive "P")
  (org-agenda-list)
  (when (not split)
    (delete-other-windows)))

(define-key global-map (kbd "C-c t a") 'wbknez/pop-to-org-agenda)

(provide 'organization-customize)
