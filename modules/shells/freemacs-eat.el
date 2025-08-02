;; -*- lexical-binding: t -*-

(use-package eat
  :ensure t
  :commands eat
  :hook
  (eshell-load . eat-eshell-mode)) 

(provide 'freemacs-eat)

;;; freemacs-eat ends here.
