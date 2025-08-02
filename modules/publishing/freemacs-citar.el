;; -*- lexical-binding: t -*-

(use-package citar
  :ensure t
  :after org
  :custom
  (citar-bibliography org-cite-global-bibliography)
  (citar-library-paths '("~/bib/files"))
  :config
  (with-eval-after-load "all-the-icons"
    (setq citar-symbols
          `((file ,(all-the-icons-faicon "file-o"
                                         :face 'all-the-icons-green
                                         :v-adjust -0.1) . " ")
            (note ,(all-the-icons-material "speaker_notes"
                                           :face 'all-the-icons-blue
                                           :v-adjust -0.3) . " ")
            (link ,(all-the-icons-octicon "link"
                                          :face 'all-the-icons-orange
                                          :v-adjust 0.01) . " ")))
    (setq citar-symbol-separator "  "))
  (setq citar-file-parser-functions
        '(citar-file--parser-default
          citar-file--parser-triplet))
  (setq org-cite-insert-processor 'citar)
  (setq org-cite-follow-processor 'citar)
  (setq org-cite-activate-processor 'citar)
  (add-to-list 'savehist-additional-variables 'citar-history))

(use-package citar-embark
  :ensure t
  :after citar embark
  :no-require t
  :config (citar-embark-mode))

(provide 'freemacs-citar)

;;; freemacs-citar.el ends here.
