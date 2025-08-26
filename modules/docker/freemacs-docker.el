;; -*- lexical-binding: t -*-

(use-package docker
  :ensure t
  :commands docker
  :init
  (trapt-exec-find "docker"
                   :pkg-mgr "apt")
  :bind ("C-c d" . docker))

(use-package docker-compose-mode
  :ensure t
  :mode "docker-compose\\.y\.")

(use-package dockerfile-mode
  :ensure t
  :mode ("Dockerfile\\'" . dockerfile-mode))

(provide 'freemacs-docker)

;;; freemacs-docker.el ends here
