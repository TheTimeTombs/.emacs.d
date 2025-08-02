;; -*- lexical-binding: t -*-

(use-package sly
  :ensure t
  :commands sly
  :init
  (if (eq system-type 'windows-nt)
      ;; Windows lisp executable
      (setopt inferior-lisp-program
              (trapt-exec-find
               "C:/SBCL/sbcl.exe --noinform --no-linedit"))
    ;; Linux lisp executable
    (setopt inferior-lisp-program (trapt-exec-find
                                   "sbcl --noinform --no-linedit"
                                   :pkg-mgr "apt"))))


(provide 'freemacs-sly)

;;; freemacs-sly.el ends here.
