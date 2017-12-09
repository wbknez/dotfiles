;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Add support for snippets, otherwise known as templates, to Emacs.

(use-package yasnippet
  :ensure t
  :mode ("\\.yasnippet\\'" . snippet-mode)
  :init
  )

(provide 'snippet-extra-tools)
