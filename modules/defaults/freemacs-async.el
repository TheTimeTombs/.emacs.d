;; -*- lexical-binding: t -*-

(use-package async
  :straight t
  :config
  (autoload 'dired-async-mode "dired-async.el" nil t)
  (dired-async-mode 1))

(provide 'freemacs-async)

;;; freemacs-defaults.el ends here
