;; time-stamp
;; auto-insert
(require 'time-stamp)
(defun time-stamp-with-locale-c ()
  (let ((system-time-locale "C"))
    (time-stamp)
    nil))
(setq time-stamp-start "Last modified:[ \t]*<")
(setq time-stamp-end ">")
(setq time-stamp-format "%3a %3b %02d %02H:%02M:%02S %04y")

(if (not (memq 'time-stamp-with-locale-c write-file-hooks))
    (add-hook 'write-file-hooks 'time-stamp-with-locale-c))
(setq time-stamp-line-limit 100)

(defun my-insert-time ()
  (interactive)
  (let ((system-time-locale "C"))
  (insert (concat
           (format-time-string "%a %b %d %H:%M:%S %Y"))))
  nil)

(require 'autoinsert)
(setq auto-insert-directory "~/.emacs.d/template/")
(setq auto-insert-alist
      (nconc '( ("\\.java$" . ["template.java" my-template])
                ("\\.pl$" . "template.pl")
                ("\\.pm$" . "template.pm")
                ("\\.sh$" . "template.sh")
                ("\\.php$" . "template.php")
                ("\\.py$" . "template.py")
                ) auto-insert-alist))

(add-hook 'find-file-not-found-hooks 'auto-insert)
(defvar template-replacements-alists
  '(("%file%" . (lambda () (file-name-nondirectory (buffer-file-name))))
    ("%name%" . user-full-name)
    ("%mail%" . (lambda()(identity user-mail-address)))
    ("%createtime%" . (lambda() (let ((system-time-locale "C"))(format-time-string "%a %b %d %H:%M:%S %Y"))))
    ("%classname%" . (lambda () (file-name-sans-extension (file-name-nondirectory(buffer-file-name)))))
    )
  )
(defun my-template ()
  (let ((system-time-locale "C"))
    (time-stamp)
    nil)
  (mapc #'(lambda(c)
        (progn
          (goto-char (point-min))
          (replace-string (car c) (funcall (cdr c)) nil)))
    template-replacements-alists)
  (goto-char (point-max))
  (message "done."))
(add-hook 'find-file-not-found-hooks 'auto-insert)
