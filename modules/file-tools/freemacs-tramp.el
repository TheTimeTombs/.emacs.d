;;; freemacs-tramp.el --- Tramp config -*- lexical-binding: t -*-

;; Author: Thomas Freeman
;; Maintainer: Thomas Freeman

;;; Commentary:

;; None

;;; Code:

(use-package tramp
  :config
  ;; Create a profile for remote fish connections
  (connection-local-set-profile-variables
   'remote-fish
   '((shell-file-name . "/bin/fish")
     (shell-command-switch . "-c")
     (shell-interactive-switch . "-i")
     (shell-login-switch . "-l")))
  ;; Assign profiles to tramp connections
  (connection-local-set-profiles
   `(:application tramp :protocol "ssh" :machine "192.168.1.253")
   'remote-fish))

(provide 'freemacs-tramp)

;;; freemacs-tramp.el ends here
