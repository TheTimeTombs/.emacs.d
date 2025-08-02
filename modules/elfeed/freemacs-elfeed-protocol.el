;; -*- lexical-binding: t -*-

(use-package elfeed-protocol
  :ensure t
  :after elfeed
  :custom
  (elfeed-protocol-enabled-protocols '(fever))
  (elfeed-protocol-fever-update-unread-only t)
  (elfeed-protocol-fever-fetch-category-as-tag t)
  (elfeed-protocol-feeds
   '(("fever+https://thomas@freshrss.freemanpi.duckdns.org"
      :api-url "https://freshrss.freemanpi.duckdns.org/api/fever.php"
      :use-authinfo t)))
  :config
  (elfeed-protocol-enable))

(provide 'freemacs-elfeed-protocol)

;;; freemacs-elfeed-protocol.el ends here.
