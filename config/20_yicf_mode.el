;; yicf-mode
(autoload 'yicf-mode "yicf-mode" "Mode for editing yicf files" t)
(setq auto-mode-alist (append '(("\\.yicf$" . yicf-mode)) auto-mode-alist))

