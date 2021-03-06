;;; 20_js2_mode.el --- 
;; js2-mode

(autoload 'js2-mode "js2-mode" nil t)
;; (require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
(add-hook 'js2-mode-hook
          '(lambda ()
             (setq js2-basic-offset 4)))
