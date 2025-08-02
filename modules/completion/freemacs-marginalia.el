;; -*- lexical-binding: t -*-

(use-package marginalia
  :ensure t
  :bind (("M-A" . marginalia-cycle)
         :map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  :init
  (require 'marginalia)
  (marginalia-mode))

(provide 'freemacs-marginalia)

;;; freemaacs-marginalia.el ends here.
