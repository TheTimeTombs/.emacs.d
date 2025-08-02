;; -*- lexical-binding: t -*-

(use-package nerd-icons-completion
  :ensure t
  :after marginalia
  :config
  (nerd-icons-completion-mode)
  ;; Add nerd icons to marginalia
  (add-hook 'marginalia-mode-hook
            #'nerd-icons-completion-marginalia-setup))

(use-package nerd-icons-corfu
  :ensure t
  :defer t)

(use-package nerd-icons-dired
  :ensure t
  :hook
  (dired-mode . nerd-icons-dired-mode))

(provide 'freemacs-nerd-icons)

;;; freemacs-nerd-icons.el ends here
