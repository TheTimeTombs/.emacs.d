;; -*- lexical-binding: t -*-

;; Change the default font to use Hack if it is available.
(when (font-available-p "Hack")
  (custom-theme-set-faces
   'user
   '(default ((t (:family "Hack"
                          :foundry "outline"
                          :slant normal
                          :weight normal
                          :height 100
                          :width normal))))))

(use-package doom-themes
  :ensure t
  :defer 1
  :config
  (load-theme 'doom-outrun-electric t))

(use-package doom-modeline
  :ensure t
  :defer 1
  :custom
  (doom-modeline-modal-icon nil)
  :config
  (doom-modeline-mode))

(use-package menu-bar
  :config
  (menu-bar-mode -1))

(use-package tool-bar
  :config
  (tool-bar-mode -1))

(use-package scroll-bar
  :defer 1
  :config
  (scroll-bar-mode -1))

(provide 'freemacs-theme)

;;; freemacs-theme.el ends here
