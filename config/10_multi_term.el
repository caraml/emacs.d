;; Multi-Term
(require 'multi-term)
(setq multi-term-program "/usr/local/bin/zsh")
(add-to-list 'term-unbind-key-list '"M-x")
(add-hook 'term-mode-hook
         '(lambda ()
            ;; C-h を term 内文字削除にする
            (define-key term-raw-map (kbd "C-h") 'term-send-backspace)
            ;; C-y を term 内ペーストにする
            (define-key term-raw-map (kbd "C-y") 'term-paste)
            ))
(setq system-uses-terminfo nil)
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(custom-set-variables
     '(term-default-bg-color "#dfdfdf")
     '(term-default-fg-color "#000000")) 
(global-set-key (kbd "C-c t") '(lambda ()
                                (interactive)
                                (multi-term)))

