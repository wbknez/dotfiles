;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Add support for Markdown to Emacs.

(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("Readme\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  
  :init
  (setq
   markdown-command "pandoc"   ;;
   markdown-enable-math t      ;;
  ))

(provide 'markdown-lang)
