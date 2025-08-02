;; -*- lexical-binding: t -*-

(use-package cape
  :ensure t
  :bind (("C-c p p" . completion-at-point)
         ("C-c p t" . complete-tag)
         ("C-c p d" . dabbrev-capf)
         ("C-c p f" . cape-file)
         ("C-c p k" . cape-keyword)
         ("C-c p s" . cape-elisp-symbol)
         ("C-c p a" . cape-abbrev)
         ("C-c p \\" . cape-tex)
         ("C-c p _" . cape-tex)
         ("C-c p ^" . cape-tex))
  :init
  (require 'cape)
  ;; Completion at point functions
  (add-hook 'completion-at-point-functions #'cape-file)
  (add-hook 'completion-at-point-functions #'cape-elisp-symbol)
  (add-hook 'completion-at-point-functions #'cape-tex)
  (add-hook 'completion-at-point-functions #'dabbrev-capf)
  (add-hook 'completion-at-point-functions #'cape-keyword))

  (provide 'freemacs-cape)

;;; freemacs-cape.el ends here.
