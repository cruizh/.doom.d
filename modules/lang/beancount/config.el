;;; lang/beancount/config.el -*- lexical-binding: t; -*-
;; Obtained from https://tecosaur.github.io/emacs-config/config.html#beancount
(use-package! beancount
  :mode ("\\.beancount\\'" . beancount-mode)
  :config
  (setq beancount-electric-currency t)
  (defun beancount-bal ()
    "Run bean-report bal"
    (interactive)
    (let ((compilation-read-command nil))
      (beancount--run "bean-report"
                      (file-relative-name buffer-file-name) "bal")))

  (map! :map beancount-mode-map
        :n "TAB" #'beancount-align-to-previous-number
        :i "TAB" #'beancount-tab-dwim))
