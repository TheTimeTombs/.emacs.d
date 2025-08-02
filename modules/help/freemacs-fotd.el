;;; freemacs-fotd.el --- Function of the day -*- lexical-binding: t -*-

;; Author: Thomas Freeman
;; Maintainer: Thomas Freeman
;; Version: Thomas Freeman

;;; Commentary:

;; Adds a function of the day feature to Emacs.

;;; Code:


(defun get-random-command ()
  "Return the symbol of a random command from the list of all loaded commands."
  (let* ((commands (cl-remove-if (lambda (i)
                                   (not (commandp i)))
                                 obarray))
         (num-of-commands (length commands)))
    (elt commands (random num-of-commands))))

(defun function-of-the-day ()
  (interactive)
  (helpful-function (get-random-command)))

(provide 'freemacs-fotd)

;;; freemacs-fotd.el ends here
