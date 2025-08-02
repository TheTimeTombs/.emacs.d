;; -*- lexical-binding: t -*-

(use-package dired-rsync
  :ensure t
  :after dired
  :bind (:map dired-mode-map
              ("C-c C-r" . dired-rsync)))

(use-package dired-rsync-transient
  :ensure t
  :after dired
  :bind (:map dired-mode-map
              ("C-c C-x" . dired-rsync-transient)))

(provide 'freemacs-drsync)

;;; freemacs-drysnc.el ends here.
