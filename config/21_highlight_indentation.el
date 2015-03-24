(require 'highlight-indentation)

;; (set-face-background 'highlight-indentation-face "#e3e3d3")
;; (set-face-background 'highlight-indentation-current-column-face "#e3e3d3")
;; highlight-indentation-mode が呼ばれたら highlight-indentation-current-column-mode も実行する
(add-hook 'highlight-indentation-mode-hook 'highlight-indentation-current-column-mode) 
;; 各種モードで highlight-indentation-mode が実行されるようにする
(add-hook 'python-mode-hook 'highlight-indentation-mode)
(add-hook 'fundamental-mode-hook 'highlight-indentation-mode)
