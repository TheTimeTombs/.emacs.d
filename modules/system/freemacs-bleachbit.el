;;; freemacs-shelly.el --- Shelly configuration -*- lexical-binding: t -*-

;; Author: Thomas Freeman
;; Maintainer: Thomas Freeman
;; Version: Thomas Freeman

;; This file is not part of GNU Emacs


;;; Commentary:

;; 

;;; Code:

(use-package bleachbit
  :init
  (trapt-exec-find "bleachbit"
                   :pkg-name "bleachbit"
                   :pkg-mgr "apt")
  :vc (:url "https://github.com/TheTimeTombs/emacs-bleachbit"
	    :rev :newest
            :branch "main")
  :ensure t)

(provide 'freemacs-bleachbit)

;;; freemacs-bleachbit.el ends here
