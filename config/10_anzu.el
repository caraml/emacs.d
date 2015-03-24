;; @see http://qiita.com/syohex/items/56cf3b7f7d9943f7a7ba
(global-anzu-mode +1)
(custom-set-variables
 '(anzu-mode-lighter "")
 '(anzu-deactivate-region t)
 '(anzu-use-migemo nil)
 '(anzu-search-threshold 1000))

(global-set-key (kbd "M-%") 'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)
