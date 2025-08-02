;; -*- lexical-binding: t -*-

(use-package numpydoc
  :ensure t
  :commands (numpydoc-generate)
  :bind (:map python-mode-map
              ("C-c C-n" . numpydoc-generate)))

(provide 'freemacs-python)

;;; freemacs-python.el ends here
