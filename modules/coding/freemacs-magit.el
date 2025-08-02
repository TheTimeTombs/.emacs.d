;; -*- lexical-binding: t -*-

(use-package magit
  :ensure t
  :init
  (trapt-exec-find "git" :pkg-mgr "guix")
  :commands magit-status
  :defer t
  :bind ("C-x g" . magit-status))

(provide 'freemacs-magit)

;;; freemacs-magit.el ends here.
