;;; freemacs-casual.el --- Casual configuration -*- lexical-binding: t -*-

;; Author: Thomas Freeman
;; Maintainer: Thomas Freeman
;; Version: Thomas Freeman


;;; Commentary:

;; Configuration for Casual menus

;;; Code:


(use-package casual
  :ensure t
  :commands
  (casual-agenda-tmenu
   casual-bookmarks-tmenu
   casual-calc-tmenu
   casual-calendar-tmenu
   casual-dired-tmenu
   casual-editkit-tmenu
   casual-eshell-tmenuk
   casual-help-tmenu
   casual-ibuffer-tmenu
   casual-image-tmenu
   casual-info-tmenu
   casual-isearch-tmenu
   Casual-make-tmenu
   casual-man-tmenu
   casual-re-builder-tmenu
   casual-timezone-tmenu))

(provide 'freemacs-casual)

;;; freemacs-casual.el ends here
