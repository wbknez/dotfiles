;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Add support for templates, known as snippets, to Emacs.

(use-package yasnippet
  :ensure yasnippet-snippets
  :mode ("\\.yasnippet\\'" . snippet-mode)
  :init
  )

(provide 'template-extra)
