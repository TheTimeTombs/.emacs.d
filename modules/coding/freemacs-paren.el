;; -*- lexical-binding: t -*-

(use-package paren
  :ensure t
  :defer t
  :custom
  (show-paren-delay 0)
  :hook (prog-mode . show-paren-mode))

(provide 'freemacs-paren)

;;; freemacs-paren.e el ends here.
