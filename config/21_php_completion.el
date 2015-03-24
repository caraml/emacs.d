83;40100;0c;; @see http://mugijiru.seesaa.net/article/326967860.html
(add-hook 'php-mode-hook
          (lambda ()
            (require 'php-completion)
            (php-completion-mode t)
            (define-key php-mode-map (kbd "C-o") 'phpcmp-complete) ; php-completionの補完実行キーバインドの設定
            (when (require 'auto-complete nil t)
              (make-variable-buffer-local 'ac-sources)
              (add-to-list 'ac-sources 'ac-source-php-completion 'ac-source-words-in-same-mode-buffers)
              (auto-complete-mode t))))
