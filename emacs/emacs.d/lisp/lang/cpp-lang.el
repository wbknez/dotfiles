;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Add C++-specific customization to Emacs.

(use-package function-args
  :ensure t

  :init
  (progn
    (require 'function-args)
    (fa-config-default))
  
  :config
  (progn
    (set-default 'semantic-case-fold t)

    (require 'semantic/bovine/c)
    (add-to-list 'semantic-lex-c-preprocessor-symbol-file
                 "/usr/lib/gcc/x86_64-redhat-linux/7/include/stddef.h")))

(use-package modern-cpp-font-lock
  :ensure t
  :init
  (require 'modern-cpp-font-lock)
  (add-hook 'c++-mode-hook #'modern-c++-font-lock-mode))

(add-to-list 'auto-mode-alist '("\\.h\\'"   . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.inl\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))

(add-hook 'c-mode-common-hook 'hs-minor-mode)

(provide 'cpp-lang)
