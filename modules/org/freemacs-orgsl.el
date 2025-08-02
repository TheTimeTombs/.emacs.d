;; -*- lexical-binding: t; -*-

(use-package org-super-links
  :vc (:url "https://github.com/toshism/org-super-links/tree/master"
            :branch "master")
  :after org
  :bind (("C-c s s" . org-super-links-link)
         ("C-c s l" . org-super-links-store-link)
         ("C-c s C-l" . org-super-links-insert-link)))

(provide'freemacs-orgsl)

;;; freemacs-orgsl.el ends here
