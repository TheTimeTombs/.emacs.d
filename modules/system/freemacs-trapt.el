;;; freemacs-trapt.el --- TrAPT configuration -*- lexical-binding: t -*-

;; Author: Thomas Freeman
;; Maintainer: Thomas Freeman


;;; Code:


(use-package tablist
  :ensure t
  :defer t)

(use-package trapt
  :ensure t
  :vc (:url "https://github.com/TheTimeTombs/TrAPT"
	    :rev :newest
            :branch "main")
  :init
  (require 'trapt-exec-find)
  :custom
  (trapt-shell "vterm")
  :commands
  (trapt trapt-exec-find-report)
  :config
  (trapt-exec-find "apt"))

(provide 'freemacs-trapt)

;;; freemacs-trapt.el ends here
