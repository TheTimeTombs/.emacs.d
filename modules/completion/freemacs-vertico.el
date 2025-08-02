;; -*- lexical-binding: t -*-

(use-package vertico
  :ensure t
  :demand t
  :bind
  (:map vertico-map
        ("C-j" . vertico-next)
        ("C-k" . vertico-previous)
        ("C-f" . vertico-exit)
        :map minibuffer-local-map
        ("M-b" . backward-kill-word))
  :custom
  (vertico-cycle t)
  (vertico-resize t)
  (vertico-sort-function 'vertico-sort-history-alpha)
  :init
  (require 'vertico)
  (require 'vertico-sort)
  (vertico-mode))

(provide 'freemacs-vertico)

;;; freemacs-vertico.el ends here.
