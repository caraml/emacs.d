;; reopen sudo 
;;http://ubulog.blogspot.com/2010/08/emacs-sudo2.html
(defun file-other-p (filename)
  "Return t if file FILENAME created by others."
  (if (file-exists-p filename)
      (/= (user-real-uid) (nth 2 (file-attributes filename))) t))

(defun file-username (filename)
   "Return File Owner."
   (if (file-exists-p filename)
      (user-full-name (nth 2 (file-attributes filename)))
     (user-full-name (nth 2 (file-attributes (file-name-directory filename))))))

(defun th-rename-tramp-buffer ()
  (when (file-remote-p (buffer-file-name))
    (rename-buffer
     (format "%s:%s"
             (file-remote-p (buffer-file-name) 'method)
             (buffer-name)))))

(add-hook 'find-file-hook
          'th-rename-tramp-buffer)

(defadvice find-file (around th-find-file activate)
  "Open FILENAME using tramp's sudo method if it's read-only."
  (if (and (file-other-p (ad-get-arg 0))
           (not (file-writable-p (ad-get-arg 0)))
           (y-or-n-p (concat "File "
                             (ad-get-arg 0) " is "
                             (if (file-exists-p (ad-get-arg 0)) "read-only." "newer file.")
                             "  Open it as "
                                     (file-username (ad-get-arg 0)) "? ")))
      (th-find-file-sudo (ad-get-arg 0))
    ad-do-it))

(defun th-find-file-sudo (file)
  "Opens FILE with root privileges."
  (interactive "F")
    (set-buffer (find-file (concat "/sudo:"
                                   (file-username file) "@" (system-name) ":" file))))
