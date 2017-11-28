;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Add Groovy support to Emacs and associate Gradle build files with
;;; it as well.

(use-package groovy-mode :ensure t :defer nil)
(add-to-list 'auto-mode-alist '("\\.gradle\\'" . groovy-mode))

(provide 'groovy-extra)
