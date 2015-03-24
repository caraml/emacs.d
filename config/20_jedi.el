;; @see http://www.sakito.com/2012/11/emacs-python-jedi.html
;; @see http://qiita.com/yuu116atlab/items/2a62cb880ac863dcc8ef
;; @see http://www.mdl.cs.tsukuba.ac.jp/~kobayashi/python.html
;; (require 'eldoc)

(add-hook 'python-mode-hook
      '(lambda ()
         (require 'jedi)
         (jedi:setup)
         '("/home/y/bin64/python"
            "JEDI:SOURCE-DIR/jediepcserver.py")
         (define-key python-mode-map "\M-h" 'jedi:complete))
         ;; (setq jedi:setup-keys t)
         (setq jedi:complete-on-dot t))
