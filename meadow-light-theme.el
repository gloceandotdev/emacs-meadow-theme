;;; meadow-light-theme.el --- The light version of the Meadow palette -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Glocean

;; Author: Glocean
;; URL: https://github.com/gloceandotdev/emacs-meadow-theme

;; SPDX-License-Identifier: MIT

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Meadow Light, the light version of Meadow.  The faces are in
;; meadow-theme-lib.el.

;;; Code:

(require 'meadow-theme-lib)

(deftheme meadow-light
  "Meadow Light, the light version of the Meadow color palette."
  :background-mode 'light
  :kind 'color-scheme
  :family 'meadow)

(meadow-theme--apply 'meadow-light)

(provide-theme 'meadow-light)
(provide 'meadow-light-theme)

;;; meadow-light-theme.el ends here
