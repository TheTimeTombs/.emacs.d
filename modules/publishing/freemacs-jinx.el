;;; freemacs-jinx.el --- Jinx configuration -*- lexical-binding: t -*-

;; Author: Thomas Freeman
;; Maintainer: Thomas Freeman

;;; Commentary:

;; Use 

;;; Code:


(use-package jinx
  :ensure t
  :bind
  (("M-$" . jinx-correct)
   ("C-M-$" . jinx-languages))
  :hook
  (emacs-startup . global-jinx-mode))

(provide 'freemacs-jinx)

(provide 'freemacs-jinx)

;;; freemacs-jinx.el ends here
