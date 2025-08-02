;; -*- lexical-binding: t -*-

(use-package auctex
  :defer t
  :custom
  (TeX-auto-save t)
  (TeX-parse-self t)
  (TeX-master nil)
  (bibtex-dialect 'biblatex))

(provide 'freemacs-auctex)

;;; freemacs-auctex.el ends here
