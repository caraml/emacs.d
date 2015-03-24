;; (require 'window-number)
;; (window-number-meta-mode)
;; (require 'compile)
;; (require 'jdok)
;; (add-hook 'java-mode-hook
;;           '(lambda ()
;;              (defun compilation-open ()
;;                "*compilation*バッファを表示するwindowをオープンする"
;;                (interactive)
;;                (let ((cur-window (selected-window))
;;                      (com-buffer (get-buffer compilation-buffer-name)))
;;                  (if (null com-buffer)
;;                      (setq com-buffer (get-buffer-create compilation-buffer-name)))
;;                  (let ((com-window (get-buffer-window com-buffer)))
;;                    (if com-window
;;                        (select-window com-window)
;;                      (select-window
;;                       (split-window (selected-window) (- (window-height) 15) nil)))
;;                    (switch-to-buffer (get-buffer compilation-buffer-name))
;;                    (select-window cur-window))))
;;              (defun compilation-close ()
;;                "*compilation*バッファを表示しているwindowをクローズする"
;;                (interactive)
;;                (let ((com-buffer (get-buffer compilation-buffer-name)))
;;                  (if com-buffer
;;                      (let ((com-window (get-buffer-window com-buffer)))
;;                        (if com-window
;;                            (delete-window com-window))))))

;;              (defun ant-compile (command &optional comint)
;;                "*compilation*バッファの表示位置を固定化してcompileコマンドを実行する関数。"
;;                (interactive
;;                 (list
;;                  (let ((command (eval compile-command)))
;;                    (if (or compilation-read-command current-prefix-arg)
;;                        (read-from-minibuffer "Compile command: "
;;                                              command nil nil
;;                                              (if (equal (car compile-history) command)
;;                                                  '(compile-history . 1)
;;                                                'compile-history))
;;                      command))
;;                  (consp current-prefix-arg)))
;;                (unless (equal command (eval compile-command))
;;                  (setq compile-command command))
;;                (save-some-buffers (not compilation-ask-about-save) nil)
;;                (setq compilation-directory default-directory)
;;                (compilation-open)
;;                (compilation-start command comint))
;;              ;; compile-windowの設定
;;              (setq compilation-buffer-name "*compilation*")
;;              (setq compilation-scroll-output t)
;;              (setq compilation-read-command t)
;;              (setq compilation-ask-about-save nil)
;;              (setq compilation-window-height 15)
;;              (setq compile-command "ant -emacs -find")
;;              (local-set-key "\C-x\C-a" 'ant-compile)
;; 	     (define-key java-mode-map "\C-cj"  'jdok-generate-javadoc-template)
;;              ;; Comment style
;;              (define-key java-mode-map "/" 'self-insert-command)
;;              (setq comment-style 'extra-line)
;;              (setq comment-continue " * ")
;;              (setq comment-start "/** ")
;;              (setq comment-end " */")
;;              )
;;           )

;; (require 'j-doc)
;; (custom-set-variables
;; '(j-doc-mail-address user-mail-address)
;; '(j-doc-author (format "XXX <%s>" j-doc-mail-address))
;; '(j-doc-url "http://cptl.corp.yahoo.co.jp/x/nFxWEg"))
;; (add-hook 'java-mode-hook
;;           '(lambda ()
;;              (local-set-key "\C-ci" 'j-doc-insert)))

;; auto-complete
;; http://d.hatena.ne.jp/hakutoitoi/20090208/1234069614
;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (ac-config-default)
;; (global-auto-complete-mode t)
;; (defvar ac-source-my-perl-completion
;;   '((candidates . plcmp-ac-make-cands)))
;; (defun my-cperl-mode-hook ()
;;   (interactive)
;;   (perl-completion-mode t)
;;   (require 'auto-complete)
;;   (add-to-list 'ac-sources 'ac-source-my-perl-completion))
;; (add-hook 'cperl-mode-hook 'my-cperl-mode-hook)

