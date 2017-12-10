;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Add SCSS support to Emacs.

(use-package scss-mode
  :ensure t
  :mode ("\\.scss\\'" . scss-mode))

(provide 'scss-lang)
