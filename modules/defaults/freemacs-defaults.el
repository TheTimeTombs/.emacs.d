;; -*- lexical-binding: t -*-

(use-package emacs
  :custom
  (default-frame-alist '((undecorated . t)
                         (vertical-scroll-bar . nil)))
  (inhibit-startup-screen t)
  (fill-column 80)
  (apropos-sort-by-scores t)
  (bidi-paragraph-direction 'left-to-right)
  (version-control t)
  (delete-old-versions t)
  (vc-make-backup-files t)
  (register-preview-delay 0)
  (ring-bell-function #'ignore)
  (visible-bell t)
  (delete-by-moving-to-trash t)
  (column-number-mode t)
  (sentence-end-double-space nil)
  :config
  (windmove-default-keybindings)
  (add-hook 'before-save-hook 'time-stamp)
  (if (version<= "27.1" emacs-version)
      (setq bidi-inhibit-bpa t))
  (setq-default indent-tabs-mode nil)
  (setq tab-always-indent 'complete)
  (fset 'yes-or-no-p 'y-or-n-p))

(provide 'freemacs-defaults)

;;; freemacs-defaults.el ends here
