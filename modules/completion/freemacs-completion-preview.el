;; -*- lexical-binding: t -*-

(use-package completion-preview
  :hook
  (prog-mode . completion-preview-mode)
  (text-mode-hook . completion-preview-mode)
  :config
  (with-eval-after-load 'comint
    (add-hook 'comint-mode-hook #'completion-preview-mode))
  (with-eval-after-load 'completion-preview
    ;; Show the preview already after two symbol characters
    (setq completion-preview-minimum-symbol-length 2)
    ;; Org mode has a custom `self-insert-command'
    (push 'org-self-insert-command completion-preview-commands)
    ;; Paredit has a custom `delete-backward-char' command
    (push 'paredit-backward-delete completion-preview-commands)
    ;; Bindings that take effect when the preview is shown:
    ;; Cycle the completion candidate that the preview shows
    (keymap-set completion-preview-active-mode-map "M-n" #'completion-preview-next-candidate)
    (keymap-set completion-preview-active-mode-map "M-p" #'completion-preview-prev-candidate)
    ;; Convenient alternative to C-i after typing one of the above
    (keymap-set completion-preview-active-mode-map "M-i" #'completion-preview-insert)))

(provide 'freemacs-completion-preview)

;;; freemacs-completion-preview.el ends here.
