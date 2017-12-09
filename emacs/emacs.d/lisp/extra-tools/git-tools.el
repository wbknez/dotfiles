;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Add Git support to Emacs.

(use-package magit
  :ensure t

  :init
  (global-set-key (kbd "C-x g") 'magit-status))
