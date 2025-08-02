;;; freemacs-aggressive-indent.el ---  -*- lexical-binding: t -*-

;; Author: Thomas Freeman
;; Maintainer: Thomas Freeman

;;; Commentary:

;; Configuration for `aggressive-indent'

;;; Code:

(use-package aggressive-indent
  :ensure t
  :hook
  (emacs-lisp-mode . aggressive-indent-mode)
  (c-mode . aggressive-indent-mode)
  (lisp-mode . aggressive-indent-mode)
  (go-mode . aggressive-indent-mode))

(provide 'freemacs-aggressive-indent)

;;; freemacs-aggressive-indent.el ends here
