;; -*- lexical-binding: t -*-

(use-package server
  :if (not (freemacs/isportable-p))
  :config
  (unless (server-running-p)
    (server-start)))

  (provide 'freemacs-server)

;;; freemacs-server.el ends here.
