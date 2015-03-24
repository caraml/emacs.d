;; xml
(add-hook 'xml-mode-hook
          (function (lambda()
                      (define-key xml-mode-map "/" 'self-insert-command)
                      (setq comment-style 'extra-line)
                      (setq comment-continue " - ")
                      (setq comment-start "<!-- ")
                      (setq comment-end " -->")))
)

(add-hook 'nxml-mode-hook
          (lambda()
            (define-key nxml-mode-map "/" 'self-insert-command)
            (setq comment-style 'extra-line)
            (setq comment-continue "    ")
            (setq comment-start " <!--")
            (setq comment-end " -->")))
;; php-mode
(add-hook 'php-mode-hook
          (lambda()
            (define-key php-mode-map "/" 'self-insert-command)
            (setq comment-style 'extra-line)
            (setq comment-continue " * ")
            (setq comment-start "/*")
            (setq comment-end " */")))
