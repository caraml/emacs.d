(autoload 'php-mode "php-mode" nil t)

(add-to-list 'auto-mode-alist '("config.php" . php-mode))
(add-to-list 'auto-mode-alist '("conf.php" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc" . php-mode))

(with-eval-after-load "php-mode"
  (setq php-search-url "http://www.php.net/ja/")
  (setq php-search-path "http://www.php.net/ja/")
  (setq php-manual-url "http://www.php.net/manual/ja/")
  (setq php-executable "/home/y/bin64/php")

  ;; (setq php-mode-force-pear t)
  (setq php-mode-coding-style 'psr2)
  (c-set-offset 'case-label' 4)
       ; (c-set-offset 'arglist-intro' 4)
  (c-set-offset 'arglist-cont-nonempty' 4) ; 配列のインデント関係
  (c-set-offset 'arglist-close' 0)

  (setq auto-mode-alist
        (append '(("\\.inc$" . php-mode))
                auto-mode-alist))
  )
