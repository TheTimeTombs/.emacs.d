;; -*- lexical-binding: t -*-

(use-package go-mode
  :ensure t
  :init
  (trapt-exec-find "go"
                   :pkg-name "golang"
                   :pkg-mgr "apt")
  :mode "\\.go\\'")

(provide 'freemacs-go)

;;; freemacs-go.el ends here.
