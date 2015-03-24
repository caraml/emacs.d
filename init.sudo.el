;; -*- coding: utf-8 -*-
;; $Lastupdate: 2015/02/13

;; ---------------------------------------
;; load-path for elisp files
;; ---------------------------------------
;; http://d.hatena.ne.jp/syohex/20140923/1411445055
;; emacs -l init.el等で直接ロードしたときに, user-emacs-directoryが書き換わる
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; add load-path
(setq load-path
      (append (list
               (expand-file-name "/usr/local/share/emacs/site-lisp"))
              load-path)
      )

(require 'cask "/home/yakiyama/.cask/cask.el")
(cask-initialize)

(require 'init-loader)
(setq-default init-loader-show-log-after-init nil
              init-loader-byte-compile t)
(custom-set-variables
'(init-loader-show-log-after-init 'error-only))

;; ---------------------------------------
;;  load-path for config files
;; ---------------------------------------
(require 'init-loader)
(setq-default init-loader-show-log-after-init nil
             init-loader-byte-compile t)
(custom-set-variables
'(init-loader-show-log-after-init 'error-only))

(init-loader-load (concat user-emacs-directory "config"))
(put 'dired-find-alternate-file 'disabled nil)
