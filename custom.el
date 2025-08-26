;; -*- lexical-binding: t; -*-
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-safe-remote-resources
   '("\\`https://tfree87\\.github\\.io/org-html-themes/org/theme-readtheorg\\.setup\\'"))
 '(package-selected-packages
   '(aggressive-indent ahk-mode async async-await benchmark-init bleachbit bui
                       calfw calfw-org cape consult-dir consult-notes
                       consult-yasnippet corfu dired-open dired-rsync-transient
                       disk-usage docker docker-compose-mode dockerfile-mode
                       doom-modeline doom-themes eat elfeed-protocol
                       embark-consult eshell-toggle fireplace fish-completion
                       gcmh gif-screencast gnuplot go-mode helpful htmlize
                       indent-bars jinx ledger-mode magit marginalia
                       markdown-mode meow minimap mixed-pitch multi-vterm
                       nerd-icons-completion nerd-icons-corfu nerd-icons-dired
                       no-littering nyan-mode orderless org-contacts org-contrib
                       org-mime org-mind-map org-ql package-lint pdf-tools
                       plantuml-mode rainbow-delimiters repeat-help sly
                       spacious-padding speed-type topsy trapt trashed vertico
                       yasnippet-snippets))
 '(package-vc-selected-packages
   '((bleachbit :url "https://github.com/TheTimeTombs/emacs-bleachbit" :branch
                "main")
     (trapt :url "https://github.com/TheTimeTombs/TrAPT" :branch "main")
     (gcmh :url "https://gitlab.com/koral/gcmh" :branch "master")
     (shelly :url "https://github.com/TheTimeTombs/shelly" :branch "main")
     (org-super-links :url "https://github.com/toshism/org-super-links/" :branch
                      "master")))
 '(safe-local-variable-values
   '((eval add-hook 'after-save-hook (lambda nil (org-babel-tangle)) nil t)))
 '(send-mail-function 'smtpmail-send-it)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(trapt-list-default-sort-key '("Name")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "outline" :slant normal :weight normal :height 100 :width normal))))
 '(fixed-pitch ((t (:family "Hack"))))
 '(variable-pitch ((t (:family "Liberation Serif")))))
