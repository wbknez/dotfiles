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
;; Custom language and UI scripts are in ~/.emacs.d/lisp/extra
;; Theme scripts are in ~/.emacs.d/themes
(add-to-list 'load-path
             (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path
	     (expand-file-name "lisp/extra" user-emacs-directory))

;; Load utility script(s).
(require 'bootstrap-use-package)

;; Load other customizations.
(require 'coding-customize)
(require 'editing-customize)
(require 'interface-customize)
(require 'spelling-customize)

;; Load extras.
;; This is primarily language support.
(require 'groovy-extra)

;; Load custom variables.
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
