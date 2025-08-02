;; -*- lexical-binding: t -*-

(use-package elfeed
  :ensure t
  :init
  (trapt-exec-find "curl"
                   :pkg-mgr "apt")
  :custom
  (elfeed-use-curl t)
  (elfeed-curl-extra-arguments '("-k"))
  (elfeed-log-level 'debug)
  :commands elfeed)

(provide 'freemacs-elfeed)

;;; freemacs-elfeed.el ends here.
