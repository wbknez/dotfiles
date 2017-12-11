;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Initialize formatting and editing configuration options for Emacs.

;; Spaces only.
(setq-default indent-tabs-mode nil)

;; Disable both autosave and backups.
(setq-default auto-save-default nil
	      auto-save-filename-transforms nil
	      backup-by-copying nil
	      create-lockfiles nil
	      delete-old-versions t
	      make-backup-files nil
	      version-control nil)

;; Protect TRAMP files from being written even if backups are turned back on.
(add-to-list 'backup-directory-alist
	     (cons tramp-file-name-regexp nil))



;; Enable line truncation.
(setq-default truncate-lines t
	      truncate-partial-width-windows t)

;; Use 80 char columns.
(setq-default fill-column 80)

;; Wrap on word, not character.
(setq-default word-wrap t)

;; Automatic word wrapping in textual documents.
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Enable reversion support.
(global-auto-revert-mode)
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)

;; Enable selection highlighting.
(transient-mark-mode t)

;; Enable delete selection manipulation.
(delete-selection-mode t)

;; Use case insensitive searching.
(setq-default case-fold-search t)

;; Enable automatic pair insertion.
;;
;; Technically, this should have a guard against Emacs < 24 but this entire
;; configuration generally assumes the latest version, 25+.
(electric-pair-mode)

(provide 'editing-customize)
