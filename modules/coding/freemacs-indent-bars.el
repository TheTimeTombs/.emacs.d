;; -*- lexical-binding: t -*-

(use-package indent-bars
  :ensure t
  :hook (python-mode . indent-bars-mode)
  :custom
  (indent-bars-color '(highlight :face-bg t :blend 0.3))
  (indent-bars-pattern " . . . . .")
  (indent-bars-width-frac 0.25)
  (indent-bars-pad-frac 0.1)
  :config
  (when (version< emacs-version "29")
    (indent-bars-prefer-character t)))

(provide 'freemacs-indent-bars)

;;; freemacs-indent-bars.el ends here.
