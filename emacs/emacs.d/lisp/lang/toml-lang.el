;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Add support for TOML files to Emacs.

(use-package toml-mode
  :ensure t
  :mode ("\\.tom\\'" . toml-mode))

(provide 'toml-lang)
