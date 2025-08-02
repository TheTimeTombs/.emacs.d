;;; freemacs-flymake.el --- Flymake configuration -*- lexical-binding: t -*-

;; Author: Thomas Freeman
;; Maintainer: Thomas Freeman


;;; Code:

(use-package flymake
  :hook
  (prog-mode . flymake-mode))

(provide 'freemacs-flymake)

;;; freemacs-flymake.el ends here
