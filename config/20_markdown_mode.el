;;; 20_markdown_mode.el ---

;; markdown-mode
(autoload 'markdown-mode "markdown-mode" nil t)
(with-eval-after-load "markdown-mode"
  (add-to-list 'auto-mode-alist '("\\.md" . gfm-mode))
  (add-to-list 'auto-mode-alist '("\\.markdown" . gmf-mode))
  (add-to-list 'auto-mode-alist '("\\.mkd" . gmf-mode))
  (add-hook 'gmf-mode-hook
            (lambda()
              (define-key markdown-mode-map (kbd "C-i") 'markdown-cycle)
              ;; (hide-sublevels 2)
              ))
  )


