;; -*- lexical-binding: t -*-

(use-package gnuplot
  :ensure t
  :init
  (trapt-exec-find "gnuplot"
                   :pkg-mgr "guix")
  :magic ("%gp" . gnuplot-mode))

(provide 'freemacs-gnuplot)

;;; freemacs-gnuplot.el ends here
