;; -*- lexical-binding: t -*-

(use-package org
  :init
  (setq org-capture-templates nil)
  :bind
  ("C-c l" . #'org-store-link)
  ("C-c a" . #'org-agenda)
  ("C-c c" . #'org-capture)
  :custom
  (org-id-link-to-org-use-id 'create-if-interactive-and-no-custom-id)
  (org-directory "~/org")
  (org-agenda-start-on-weekday nil)
  (org-agenda-files `("~/org/agenda"))
  (org-default-notes-file (concat org-directory "/notes/notes.org"))
  (org-refile-targets `((org-agenda-files :maxlevel . 4)
                        (,(concat org-directory "/notes") :maxlevel . 3)))
  (org-refile-use-outline-path 'file)
  (org-outline-path-complete-in-steps nil)
  (org-refile-allow-creating-parent-nodes 'confirm)
  (org-export-in-background t)
  (org-log-into-drawer t)
  (org-todo-keywords
   '((sequence "TODO(t)"
               "WAITING(w)"
               "|"
               "DONE(d)"
               "CANCELED(c)")
     (sequence "MAYBE(m)"
               "SOMEDAY(s)"
               "PLANNING(p)"
               "|"
               "PLANNED(P)")
     (sequence "SCRIPTING(S)"
               "TESTING(G)"
               "REVIEW(R)"
               "APPROVAL(A)"
               "|"
               "EFFECTIVE(E)")))
  (org-tags-exclude-from-inheritance '("project"))
  (org-stuck-projects
   '("+project/-MAYBE-DONE"
     ("NEXT" "TODO")
     nil
     "\\<IGNORE\\>"))
  (org-latex-pdf-process
   `(,(trapt-exec-find "pdflatex -interaction nonstopmode -output-directory\
 %o %f"
                       :pkg-mgr "apt")
     ,(trapt-exec-find "biber %b"
                       :pkg-mgr "apt")
     "pdflatex -interaction nonstopmode -output-directory\
 %o %f"
     "pdflatex -interaction nonstopmode -output-directory\
 %o %f"))
  (org-hide-emphasis-markers t)
  (org-tags-column 0)
  (org-startup-indented t)
  (org-src-tab-acts-natively t)
  (org-modules '(ol-bbdb
                 ol-bibtex
                 ol-eww
                 ol-gnus
                 org-habit
                 org-id
                 ol-info
                 org-inlinetask
                 ol-mhe
                 org-mouse
                 org-protocol
                 ol-rmail
                 ol-w3m
                 ol-docview
                 ol-doi
                 ol-eshell
                 org-annotate-file
                 ol-bookmark
                 org-checklist
                 org-choose
                 ol-elisp-symbol
                 org-toc))
  :config
  (add-hook 'org-mode-hook #'turn-on-flyspell)
  (add-hook 'org-mode-hook 'visual-line-mode)
  (with-eval-after-load "org"
    (add-to-list 'org-src-lang-modes '("plantuml" . plantuml)))
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((awk . t)
     (C . t)
     (calc . t)
     (css . t)
     (dot . t)
     (emacs-lisp . t)
     (eshell . t)
     (gnuplot . t)
     (java . t)
     (latex . t)
     (lisp . t)
     (ledger . t)
     (maxima . t)
     (octave . t)
     (plantuml . t)
     (python . t)
     (R . t)
     (scheme . t)
     (sed . t)
     (shell . t)
     (sql . t)
     (sqlite . t)))
  (mapc 'load (file-expand-wildcards "~/.emacs.d/org-templates/*.el")))

(use-package org-contrib
  :ensure t
  :defer t
  :config
  (require 'ox-extra)
  (ox-extras-activate '(ignore-headlines)))

(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (org-todo (if (= n-not-done 0) "DONE" "TODO")))

(add-hook 'org-after-todo-statistics-hook #'org-summary-todo)

(provide 'freemacs-org)

;;; freemacs-org.el ends here
