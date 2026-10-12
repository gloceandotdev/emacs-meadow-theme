;;; meadow-theme.el --- A smoky color palette that's easy on the eyes -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Glocean

;; Author: Glocean
;; URL: https://github.com/gloceandotdev/emacs-meadow-theme
;; Version: 0.1.0
;; Package-Requires: ((emacs "29.1"))
;; Keywords: faces

;; SPDX-License-Identifier: MIT

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Meadow is a smoky, low contrast color palette that comes in two
;; versions: `meadow' (dark) and `meadow-light'.  Load one of them with:
;;
;;   (load-theme 'meadow t)
;;
;; or use `meadow-theme-load' and `meadow-theme-toggle', which also disable any
;; other enabled theme first.

;;; Code:

(require 'meadow-theme-lib)

(deftheme meadow
  "Meadow, the dark version of the Meadow color palette."
  :background-mode 'dark
  :kind 'color-scheme
  :family 'meadow)

(meadow-theme--apply 'meadow)

(provide-theme 'meadow)

;;; meadow-theme.el ends here
