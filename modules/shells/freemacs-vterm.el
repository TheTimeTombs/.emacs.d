;; -*- lexical-binding: t -*-

(use-package vterm
  :ensure t
  :init
  (trapt-exec-find "vterm-dump"
                   :pkg-name "libvterm"
                   :pkg-mgr "apt")
  :commands vterm)

(provide 'freemacs-vterm)

;;; freemacs-vterm.el ends here
