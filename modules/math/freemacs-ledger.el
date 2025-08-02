;; -*- lexical-binding: t -*-

(use-package ledger-mode
  :ensure t
  :magic ("%ledger" . ledger-mode)
  :init
  (trapt-exec-find "ledger"
                   :pkg-mgr "guix"))

(provide 'freemacs-ledger)

;;; freemacs-ledger.el ends here
