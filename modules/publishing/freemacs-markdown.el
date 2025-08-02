;; -*- lexical-binding: t -*-

(use-package markdown-mode
  :ensure t
  :mode ("\\.\\(m\\(ark\\)?down\\|md\\)$" . markdown-mode)
  :custom
  (markdown-command (trapt-exec-find "pandoc --from=markdown --to=html5"
                                     :pkg-mgr "apt"))
  :config
  (bind-key "A-b" (surround-text-with "+*") markdown-mode-map)
  (bind-key "s-b" (surround-text-with "**") markdown-mode-map)
  (bind-key "A-i" (surround-text-with "*") markdown-mode-map)
  (bind-key "s-i" (surround-text-with "*") markdown-mode-map)
  (bind-key "A-=" (surround-text-with "`") markdown-mode-map)
  (bind-key "s-=" (surround-text-with "`") markdown-mode-map))

(provide 'freemacs-markdown)

;;; freemacs-markdown.el ends here
