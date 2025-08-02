;; -*- lexical-binding: t -*-

(use-package yasnippet
  :ensure t
  :defer 3
  :config
  (yas-global-mode))

(use-package yasnippet-snippets
  :ensure t
  :config
  (require 'yasnippet-snippets))

(provide 'freemacs-yasnippet)

;;; freemacs-editing.el ends here
