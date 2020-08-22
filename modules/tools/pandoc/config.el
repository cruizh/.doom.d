;;; tools/pandoc/config.el -*- lexical-binding: t; -*-

(use-package! pandoc-mode
  :config
  (setq pandoc-data-dir (concat doom-cache-dir "pandoc-mode"))
  :hook
  ((org-mode markdown-mode text-mode)
   (pandoc-mode . pandoc-load-default-settings)))
