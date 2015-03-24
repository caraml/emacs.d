(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.volt\\'" . web-mode))
(defvar web-mode-engines-alist
      '(("django"    . "\\.volt\\'"))
)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-comment-style 2)
;; インデント関係
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2) ;; html indent
  (setq web-mode-css-indent-offset 2)    ;; css indent
  (setq web-mode-code-indent-offset 2)   ;; script indent(js,php,etc..)
 )
(add-hook 'web-mode-hook  'my-web-mode-hook)
(custom-set-faces
 '(web-mode-doctype-face ((t (:foreground "magenta"))))
 '(web-mode-html-attr-name-face ((t (:foreground "color-130"))))
 '(web-mode-html-tag-face ((t (:foreground "color-21")))))
