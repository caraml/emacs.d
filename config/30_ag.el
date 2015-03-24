;; ag
;; ag(The Silver Searcher)コマンドを以下からインストール:
;;     http://github.com/ggreer/the_silver_searcher#installation
;; ag.elとwgrep-ag.elをlist-packageでMelpaなどからインストールしておく
(require 'ag)
(custom-set-variables
 '(ag-highlight-search t)  ; 検索結果の中の検索語をハイライトする
 '(ag-reuse-window 'nil)   ; 現在のウィンドウを検索結果表示に使う
 '(ag-reuse-buffers 'nil)) ; 現在のバッファを検索結果表示に使う
