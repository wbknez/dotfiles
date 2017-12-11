;;; -*- mode: Emacs-Lisp -*-
;;
;;; Summary: Initializes all relevant user configuration options in Emacs.

;; Refrain from loading outdated byte code.
(setq load-prefer-newer t)

;; Added by Package.el.
;(package-initialize)

;; Load paths to custom script location(s).
;;
;; Custom scripts are in ~/.emacs.d/lisp.
;;    Custom tool scripts are in ~/emacs.d/lisp/extra-tools
;;    Custom language scripts are in ~/.emacs.d/lisp/lang
;; Theme scripts are in ~/.emacs.d/themes
(add-to-list 'load-path
             (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path
             (expand-file-name "lisp/extra-tools" user-emacs-directory))
(add-to-list 'load-path
	     (expand-file-name "lisp/lang" user-emacs-directory))

;; Load utility script(s).
(require 'bootstrap-use-package)

;; Load other customizations.
(require 'coding-customize)
(require 'editing-customize)
(require 'interface-customize)
(require 'organization-customize)
(require 'spelling-customize)

;; Load tool-specific support.
(require 'git-extra-tools)
(require 'snippet-extra-tools)

;; Load language-specific support.
(require 'groovy-lang)
(require 'latex-lang)
(require 'markdown-lang)
(require 'scss-lang)
(require 'toml-lang)
(require 'yaml-lang)

;; Load custom variables.
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
