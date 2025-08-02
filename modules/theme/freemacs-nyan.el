;; -*- lexical-binding: t -*-

(use-package nyan-mode
  :ensure t
  :if window-system
  :defer 3
  :init
  (trapt-exec-find "mplayer"
                   :pkg-mgr "apt")
  :custom
  (nyan-wavy-trail t)
  :config
  (nyan-mode)
  (nyan-start-animation))

(provide 'freemacs-nyan)

;;; freemacs-nyan.el ends here
