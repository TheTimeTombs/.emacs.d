;;; freemacs-autohotkey.el ---  -*- lexical-binding: t -*-

;; Author: Thomas Freeman
;; Maintainer: Thomas Freeman

;;; Commentary:

;; Configuration for autohotkey.el

;;; Code:

(use-package ahk-mode
  :ensure t
  :mode "\\.ahk\\'"
  :custom
  (ahk-identation 2))

(provide 'freemacs-autohotkey)

;;; freemacs-autohotkey.el ends here
