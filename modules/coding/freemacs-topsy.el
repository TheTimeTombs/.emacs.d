;; -*- lexical-binding: t -*-

(use-package topsy
  :ensure t
  :hook
  (prog-mode . topsy-mode)
  (magit-section-mode . topsy-mode))

(provide 'freemacs-topsy)

;;; freemacs-topsy.el ends here
