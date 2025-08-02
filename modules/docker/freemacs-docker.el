;; -*- lexical-binding: t -*-

(use-package docker
  :commands docker
  :init
  (trapt-exec-find "docker"
                   :pkg-mgr "apt")
  :bind ("C-c d" . docker))

(use-package docker-compose-mode
  :mode "docker-compose\\.y\.")

(use-package dockerfile-mode
  :mode ("Dockerfile\\'" . dockerfile-mode))

(provide 'freemacs-docker)

;;; freemacs-docker.el ends here
