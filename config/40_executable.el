;; ファイルの先頭に#!...があるファイルを保存すると実行権をつけます。 
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)
