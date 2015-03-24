;; -*- coding: utf-8 -*-
;; $Lastupdate: 2015/01/28

;; add load-path
(setq load-path
      (append (list
               (expand-file-name "/usr/local/share/emacs/site-lisp")) load-path)
      )

;; ----------------------------------------------------------------
;; Cask:
;; @see https://cask.github.io/index.html
;; @see http://masato.github.io/2014/09/19/docker-devenv-emacs24-init-loader-cask-pallet/
;; ----------------------------------------------------------------
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; ----------------------------------------------------------------
;; init-loader
;; @see https://github.com/emacs-jp/init-loader
;; @see http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0
;; @see http://www.clear-code.com/blog/2012/3/20.html
;; @see https://github.com/derui/dot.emacs.d
;; ----------------------------------------------------------------
(require 'init-loader)
(setq-default init-loader-show-log-after-init nil
             init-loader-byte-compile t)
(custom-set-variables
'(init-loader-show-log-after-init 'error-only))

(init-loader-load (concat user-emacs-directory "config"))
(put 'dired-find-alternate-file 'disabled nil)
