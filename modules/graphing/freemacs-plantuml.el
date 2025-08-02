;; -*- lexical-binding: t -*-

(use-package plantuml-mode
  :ensure t
  :init
  (trapt-exec-find "plantuml" :pkg-mgr "apt")
  :mode ("\\.\\(plantuml\\|pum\\|plu\\)\\'"))

(provide 'freemacs-plantuml)

;;; freemacs-plantuml.el ends here.
