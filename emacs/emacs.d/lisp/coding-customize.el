;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Initialize configuration options typically associated with
;;; larger programming editors.
;;;
;;; Language-specific configurations can be found in the "extra" folder.

;; Show closing parens.
(show-paren-mode 1)

;; Disable all menus, toolbars, and mouse interface(s) except if we are using
;; our laptop (OSX).
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (unless (eq system-type 'darwin) (fboundp 'menu-bar-mode))
  (menu-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Disable blinking cursor.
(blink-cursor-mode 1)

;; Disable the bell, the startup screen, erase the scratch screen and short
;; Yes/No questions, and remove tooltips on mouse hover.
(setq ring-bell-function #'ignore
      inhibit-startup-screen t
      echo-keystrokes 0.1
      initial-scratch-message "Salut, Will!"
      tooltip-mode nil)
(fset 'yes-or-no-p #'y-or-n-p)
(fset 'display-startup-echo-area-message #'ignore)

;; Enable line numbering for every document.
(global-linum-mode)
(setq linum-format " %d")

;; Enable column numbers as well.
(setq column-number-mode t)

;; Enable syntax highlighting.
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration t)

;; Highlight current line.
(global-hl-line-mode t)

;; Force UTF-8 for everything.
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(provide 'coding-customize)
