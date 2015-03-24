;; (add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(global-set-key (kbd "M-n") 'flycheck-next-error)
(global-set-key (kbd "M-p") 'flycheck-next-error)
(with-eval-after-load 'flycheck
  '(custom-set-variables
   '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)
   '(flycheck-phpmd-rulesets (quote ("codesize" "design" "unusedcode")))
   '(flycheck-phpcs-standard "PSR2")
   ))
(add-hook 'php-mode-hook 'flycheck-mode)
