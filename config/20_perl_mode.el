;; cperl-mode
(autoload 'cperl-mode "cperl-mode" "alternate mode for editing Perl programs" t)
(defalias 'perl-mode 'cperl-mode)
(setq auto-mode-alist (cons '("\\.t$" . cperl-mode) auto-mode-alist))

(add-hook 'cperl-mode-hook
          (lambda ()
            (setq cperl-font-lock t)
            (cperl-set-style "PerlStyle")
            (custom-set-variables
             '(cperl-indent-parens-as-block t)
             '(cperl-close-paren-offset -4)
             '(cperl-indent-subs-specially nil))
            (require 'perl-completion)
            (perl-completion-mode t)
            (when (require 'auto-complete nil t) ; no error whatever auto-complete.el is not installed.
              (auto-complete-mode t)
              (make-variable-buffer-local 'ac-sources)
              (add-to-list 'ac-sources 'ac-source-perl-completion 'ac-source-yasnippet )
              )
            )
          )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(term-default-bg-color "#dfdfdf")
 '(term-default-fg-color "#000000"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cperl-array-face ((t (:foreground "color-130" :underline t))))
 '(cperl-hash-face ((t (:foreground "color-130" :underline t))))
 '(cperl-nonoverridable-face ((t (:foreground "black")))))
