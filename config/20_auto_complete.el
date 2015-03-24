;;; 20_auto_complete.el --- 

(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; @see http://cx4a.org/software/auto-complete/manual.ja.html
(setq ac-use-menu-map t)
;; デフォルトで設定済み
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(global-auto-complete-mode t)

;; @see http://d.hatena.ne.jp/m2ym/20091108/1257680169
(setq-default ac-sources
      '(
;;         ac-source-filename
        ac-source-yasnippet
        ac-source-abbrev
        ac-source-words-in-buffer
        ac-source-words-in-all-buffer
        ac-source-files-in-current-dir
        )
      )
(when (boundp 'ac-modes)
  (setq ac-modes
    (append ac-modes
            (list 'html-mode 'php-mode 'java-mode 'javascript-mode 'css-mode 'nxml-mode 'yicf-mode 'perl-mode 'python-mode 'makefile-gmake-mode 'web-mode ))))
