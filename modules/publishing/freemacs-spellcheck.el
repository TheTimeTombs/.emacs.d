;; -*- lexical-binding: t -*-

(use-package ispell
  :init
  (trapt-exec-find "hunspell"
                   :pkg-mgr "apt")
  :custom
  (ispell-local-dictionary "en_US")
  (ispell-program-name "hunspell")
  (ispell-local-dictionary-alist '(("en_US"
                                    "[[:alpha:]]"
                                    "[^[:alpha:]]"
                                    "[']"
                                    nil
                                    ("-d" "en_US")
                                    nil
                                    utf-8)))
  :defer t
  :config
  (when (boundp 'ispell-hunspell-dictionary-alist)
    (setq ispell-hunspell-dictionary-alist ispell-local-dictionary-alist))
  (setq hunspell-default-dict "en_US"))

(use-package flyspell
  :hook
  (prog-mode . flyspell-prog-mode)
  (text-mode . flyspell-mode))

(provide 'freemacs-spellcheck)

;;; freemacs-spellcheck.el ends here
