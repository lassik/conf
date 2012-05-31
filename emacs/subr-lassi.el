;; The following three functions are copied straight from the XEmacs
;; source file "simple.el".

(defun capitalize-region-or-word (arg)
  "Capitalize the selected region or the following word (or ARG words)."
  (interactive "p")
  (if (region-active-p)
      (capitalize-region (region-beginning) (region-end))
      (capitalize-word arg)))

(defun upcase-region-or-word (arg)
  "Upcase the selected region or the following word (or ARG words)."
  (interactive "p")
  (if (region-active-p)
      (upcase-region (region-beginning) (region-end))
      (upcase-word arg)))

(defun downcase-region-or-word (arg)
  "Downcase the selected region or the following word (or ARG words)."
  (interactive "p")
  (if (region-active-p)
      (downcase-region (region-beginning) (region-end))
      (downcase-word arg)))

(defun scratch ()
  (interactive)
  (switch-to-buffer (get-buffer-create "*scratch*"))
  (funcall (or initial-major-mode 'lisp-interaction-mode))
  (font-lock-mode 1)) ;; xemacs fix

(defun customize-face-at-point ()
  (interactive)
  (custom-buffer-create
   (mapcar (lambda (symbol) `(,symbol custom-face))
           ((lambda (x) (if (listp x) x (list x)))
            (or (get-char-property (point) 'face) '(default))))
   "*Customize Faces*"))

(defun dashify (dash-char)
  "Put a line of dashes under the titles on the current line, which should look like a heading or a table header."
  (interactive (list (if current-prefix-arg ?= ?-)))
  (goto-char (point-at-eol))
  (delete-horizontal-space)
  (goto-char (point-at-bol))
  (let (titles)
    (let ((start (point-at-bol)))
      (while (re-search-forward "[ \t]+" (point-at-eol) t)
	(unless (equal " " (match-string 0))
	  (when (< (point-at-bol) (match-beginning 0))
	    (setq titles (nconc titles (list (cons (- start (point-at-bol)) (- (match-beginning 0) (point-at-bol)))))))
	  (setq start (match-end 0))))
      (when (< start (point-at-eol))
	(setq titles (nconc titles (list (cons (- start (point-at-bol)) (- (point-at-eol) (point-at-bol))))))))
    (goto-char (point-at-eol))
    (insert (with-temp-buffer
	      (insert "\n")
	      (let ((last 0))
		(dolist (title titles (buffer-substring (point-min) (point-max)))
		  (destructuring-bind (start . end) title
		    (insert (make-string (- start last) ? ))
		    (insert (make-string (- end start) dash-char))
		    (setq last end))))))))

(defun insert-date-iso ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d ")))
