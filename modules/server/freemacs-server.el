;; -*- lexical-binding: t -*-

(use-package server
  :config
  (unless (server-running-p)
    (server-start)))

  (provide 'freemacs-server)

;;; freemacs-server.el ends here.
