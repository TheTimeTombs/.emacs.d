;; -*- lexical-binding: t -*-

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))

(provide 'freemacs-orderless)

;;; freemacs-orderless.el ends here.
