;;; -*- mode: Emacs Lisp -*-
;;
;;; Summary: Initialize configuration options concerning the editor itself.
;;;
;;; These options apply only to the graphical editor (i.e. XEmacs).

;; Disable all menus, toolbars, and mouse interface(s) except if we are using
;; our laptop (OSX).
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (unless (eq system-type 'darwin) (fboundp 'menu-bar-mode))
  (menu-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Graphical configuration.
(when (display-graphic-p)
  ;; Ensure all themes are present.
  (require 'themes-customize)

    ;; Default fonts on Windows, OSX, and Linux.
  (cond ((eq system-type 'windows-nt)
         (set-face-attribute 'default nil
                             :family "Consolas" :height 110)
         (set-face-attribute 'variable-pitch
                             :family "Arial" :height 110))
        ((eq system-type 'darwin)
         (set-face-attribute 'default nil
                             :family "Inconsolata" :height 110)
         (set-face-attribute 'variable-pitch nil
                             :family "Times" :height 110))
        (t
         (set-face-attribute 'default nil
                             :family "Fira Mono" :height 110)
         (set-face-attribute 'variable-pitch nil
                             :family "Fira Sans" :height 120)))

  ;; Window options.
  (set-frame-parameter nil 'fullscreen 'fullwidth)
  (add-to-list 'initial-frame-alist '(fullscreen, maximized))

  (load-theme 'material-light t)
  )

(provide 'interface-customize)
