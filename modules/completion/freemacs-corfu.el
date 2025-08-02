;; -*- lexical-binding: t -*-

(use-package corfu
  :ensure t
  :init
  (require 'corfu)
  (require 'corfu-popupinfo)
  :hook
  (meow-insert-enter . (lambda ()
                         (progn
                           (corfu-mode 1)
                           (corfu-popupinfo-mode 1))))
  (meow-insert-exit . (lambda ()
                        (progn
                          (corfu-quit)
                          (corfu-mode -1)
                          (corfu-popupinfo-mode -1))))
  :custom
  (corfu-cycle t)
  (corfu-preselect 'prompt)
  (when (bound-and-true-p nerd-icons-corfu-mapping)
    (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter)))

(provide 'freemacs-corfu)

;;; freemacs-corfu.el ends here.
