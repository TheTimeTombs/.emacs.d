;; -*- lexical-binding: t -*-

(use-package repeat-help
  :ensure t
  :after which-key
  :custom
  (repeat-help-auto t)
  :hook (repeat-mode . repeat-help-mode))

(provide 'freemacs-rh)

;;; freemacs-rh.el ends here.
