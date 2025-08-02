;; -*- lexical-binding: t -*-

(use-package dired
  :defer t
  :hook
  (dired-mode . dired-hide-details-mode)
  :custom
  (dired-dwim-target t)
  (wdired-allow-to-change-permissions t))

(with-eval-after-load 'dired
  (require 'dired-x))

(use-package dired-open
  :ensure t
  :after dired
  :init
  (trapt-exec-find "xdg-open"
                   :pkg-mgr "apt")
  :config
  (define-key dired-mode-map (kbd "o") #'dired-open-xdg))

(use-package async
  :ensure t
  :defer t
  :init
  (autoload 'dired-async-mode "dired-async.el" nil t)
  :hook
  (dired . dired-async-mode))

(provide 'freemacs-dired)

;;; freemacs-dired.el ends here
