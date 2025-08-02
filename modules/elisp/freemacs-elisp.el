;; -*- lexical-binding: t -*-

(defun any (predicate list)
  "Returns T if any items in LIST meet the conditions of predicate function
  PREDICATE without modifying the list."
  (cond
   ((null list) nil)
   ((funcall predicate (car list)) t)
   (t (any predicate (cdr list)))))

(defun font-available-p (font-name)
  "Returns T if FONT-NAME is a member of the avaiable fonts in
FONT-FAMILY-LIST."
  (member font-name (font-family-list)))

(defun file->string (path)
  "Read file from PATH and output a string."
  (with-temp-buffer
    (insert-file-contents path)
    (buffer-string)))

(provide 'freemacs-elisp)

;;; freemacs-elisp.el ends here.
