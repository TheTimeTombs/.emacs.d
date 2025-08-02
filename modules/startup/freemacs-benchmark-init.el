;; -*- lexical-binding: t -*-

(use-package benchmark-init
  :ensure t
  :init
  (require 'benchmark-init)
  (benchmark-init/activate)
  :hook
  (after-init . benchmark-init/deactivate)
  :config
  (require 'benchmark-init-modes))

  (provide 'freemacs-benchmark-init)

;;; freemacs-benchmark-init ends here
