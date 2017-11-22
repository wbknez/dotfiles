;;; Summary: A small utility script to bootstrap both package.el and
;;; use_package.

(require 'package)
(setq package-enable-at-startup nil)

;; Package repositories.
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/"))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(provide 'bootstrap-use-package)
