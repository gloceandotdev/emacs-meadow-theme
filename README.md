# Meadow for Emacs

[Meadow](https://github.com/gloceandotdev/meadow) is a smoky color palette that's easy on the eyes. This is the Emacs port, and it requires Emacs 29.1 or newer.

## Install

With `use-package` on Emacs 30 or newer, you can install it straight from the repo:

```elisp
(use-package meadow-theme
  :vc (:url "https://github.com/gloceandotdev/emacs-meadow-theme")
  :no-require t
  :config
  (load-theme 'meadow t))
```

If you use straight.el:

```elisp
(use-package meadow-theme
  :straight (:host github :repo "gloceandotdev/emacs-meadow-theme")
  :no-require t
  :config
  (load-theme 'meadow t))
```

Or do it by hand. Copy the three `.el` files from this repo somewhere, like `~/.config/emacs/meadow/`, and add this to your config:

```elisp
(add-to-list 'load-path "~/.config/emacs/meadow/")
(require 'meadow-theme-lib)
(load-theme 'meadow t)
```

Swap `meadow` for `meadow-light` if you want the light one.

## Switching

`load-theme` stacks themes on top of each other, which is why leftover colors from your old theme sometimes show up. `M-x meadow-theme-load` turns off every other theme before loading Meadow, so you can use that instead. `M-x meadow-theme-toggle` switches between the two versions.

If you're on macOS with [emacs-plus](https://github.com/d12frosted/homebrew-emacs-plus), this follows the system appearance:

```elisp
(defun my/meadow-follow-system (appearance)
  (meadow-theme-load (if (eq appearance 'light) 'meadow-light 'meadow)))

(add-hook 'ns-system-appearance-change-functions #'my/meadow-follow-system)
(my/meadow-follow-system ns-system-appearance)
```

## Options

Set these before loading the theme, or load it again after changing them.

```elisp
;; Turn off italics for comments, docstrings and quotes
(setq meadow-theme-italic nil)

;; Make the first three heading levels bigger in Org, Markdown, Info and so on
(setq meadow-theme-heading-heights '(1.3 1.2 1.1))
```

If something in your own config needs a palette color, `meadow-theme-color` will give you one from whichever version is active. Put it in `meadow-theme-after-load-hook` so it updates when you switch:

```elisp
(add-hook 'meadow-theme-after-load-hook
          (lambda ()
            (set-face-attribute 'my-face nil :foreground (meadow-theme-color 'lavender))))
```

## Packages

Everything in vanilla Emacs is covered, alongside most popular packages. Gaps can and will appear, if an app you use looks off please open an issue.

## License

[MIT](LICENSE)
