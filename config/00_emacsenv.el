;;; 日本語環境のセットアップ
(set-locale-environment nil)

;; 一般的な設定
(setq user-mail-address
      "yakiyama@yahoo-corp.jp")      ; メールアドレス
(setq user-full-name "Yuu Akiyama") ; Full name
(setq inhibit-startup-message t)        ; Emacs 起動メッセージを非表示
(setq scroll-step 2)                    ; 画面スクロールの進み幅
(setq column-number-mode t)             ; カラムを表示する
(setq-default transient-mark-mode t)    ; マークの表示
(setq-default fill-column 74)           ; デフォルトのテキストカラム (目安)
(setq search-highlight t)               ; 検索時にハイライトする
(setq query-replace-highlight t)        ; 置換時にハイライトする
;(setq visible-bell t)                    ビープを visible にする
(setq automatic-hscrolling t)           ; 水平スクローリングを有効
(auto-compression-mode t)               ; 圧縮ファイルを自動で扱う
(setq dired-recursive-deletes 'top)     ; Dired で再帰的にディレクトリ削除
(setq dired-recursive-copies t)         ; Dired で再帰的にディレクトリ複製
(setq next-line-add-newlines nil)       ; バッファの最後で行を作成しない
(setq quail-japanese-use-double-n t)    ; quail で `nn' で「ん」を入力する。
(setq custom-file                       ; カスタムファイル名
      "~/.emacs.d/99custom.el")
(and (fboundp 'auto-image-file-mode)    ; 画像ファイルを自動で扱う
     (auto-image-file-mode t))
(put 'narrow-to-region 'disabled nil)   ; narrow-to-region を有効に
(setq require-final-newline t)
(put 'downcase-region 'disabled nil)    ;小文字化実行時の確認を無効に

;; プログラミング関係
(setq c-default-style "cc-mode")        ; C のデフォルトスタイル
(setq comment-multi-line t)             ; C-j でコメントを複数行にまたがせる
(setq-default indent-tabs-mode nil)     ; インデントにタブ文字を使用しない
(setq c-tab-always-indent nil)          ; TAB を叩くと常にインデントするか
(setq scheme-program-name "gosh")

;; font-lock (文字装飾) に関する指定
(global-font-lock-mode 1)               ; 常に font-lock する
(setq font-lock-maximum-decoration t)   ; 全力で font-lock する
(show-paren-mode t)                     ; 対応カッコを表示する
(setq show-paren-style 'parenthesis)   ; 対応カッコを光らせる
(and (boundp 'show-trailing-whitespace) ; 行末の空白を表示するか
     (setq-default
      show-trailing-whitespace nil))

;; Comment Style
(setq comment-style 'extra-line)
(require 'eaw)
(eaw-fullwidth)
