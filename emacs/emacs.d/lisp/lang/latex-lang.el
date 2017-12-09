;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Add LaTeX support for Emacs.

(use-package latex
  :ensure auctex
  :mode ("\\.tex\\'" . latex-mode)
  
  :config
  (setq-default
   Tex-master nil   ;; Force AUCTeX to determine multiple file status.
   Tex-PDF-mode t   ;; Enable PDF compilation.
   )

  (setq
   LaTeX-csquotes-close-quote "}"           ;; Convert normal quotations into
   LaTeX-csquotes-open-quote "\\enquote{"   ;; language specific formats.
   
   Tex-auto-self t            ;; Enable automatic parsing on save.
   Tex-parse-self t           ;; Enable automatic parsing on load.
   Tex-save-query nil         ;; Enable automatic saving before compilation.
   Tex-show-compilation nil   ;; Prevent compilation log after invocation.
   )
  )

(provide 'latex-lang)
