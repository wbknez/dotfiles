;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Initialze all spelling-related configuration options for Emacs.

;; Use English by default.
(setq ispell-dictionary "english")

;; Setup various spell checkers.
;;
;; I typically use Hunspell as it is, in my opinion, far more ubiquitous insofar
;; as widespread use (e.g. Firefox, Libre Office, etc.).  However, I have
;; included configuration for Aspell as well for some of my older systems.
(cond ((executable-find "hunspell")
       (setq ispell-program-name "hunspell")
       (setq ispell-local-dictionary "en_US"))
      ((executable-find "aspell")
       (setq ispell-program-name "aspell"))
      (t (setq ispell-program-name nil)
         (message "Please install either hunspell or aspell for ispell support.")))

;; Disable printing messages for every word.
(setq-default flyspell-issue-message-flag nil)

;; Enable spell checking for all comments in various programming languages.
;;
;; Without getting into a long-winded sermon, I firmly believe that copious and
;; correct documentation is important.  As such, proper grammar and spelling are
;; essential to writing useful comments.
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; Enable spell checking for all text based documents (such as Markdown, LaTeX,
;; etc.)
(add-hook 'text-mode-hook 'flyspell-mode)

;; Help Flyspell choose the correct method of displaying messages (via pop-ups)
;; depending on whether or not the current frame is in a terminal or the GUI.
(defun flyspell-emacs-popup-choose (org-fun event poss word)
  (if (window-system)
      (funcall org-fun event poss word)
    (flyspell-emacs-popup-textural event poss word)))

(eval-after-load "flyspell"
  '(progn
     (advice-add 'flyspell-emacs-popup :around #'flyspell-emacs-popup-choose)))

(provide 'spelling-customize)
