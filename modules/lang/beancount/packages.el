;; -*- no-byte-compile: t; -*-
;;; lang/beancount/packages.el

(package! beancount :recipe
  (:host github
   :repo "beancount/beancount"
   :files ("editors/emacs/beancount.el")))
