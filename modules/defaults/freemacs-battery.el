;; -*- lexical-binding: t -*-

(use-package battery
  :defer 3
  :config
  ;; Only show battery if available
  (if (and battery-status-function
           (not (any '(lambda (value)
                        (string-match-p 
                         (battery-format "%B"
                                         (funcall battery-status-function))
                         value))
                     '("unknown" "N/A" "NA"))))
      (display-battery-mode t)))

(provide 'freemacs-battery)

;;; freemacs-battery.el ends here.
