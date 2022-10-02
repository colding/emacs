
(defvar point-start (make-marker))
(defvar point-end (make-marker))

(defun indent-buffer ()
  "Indent the whole buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  "Cleanup the current buffer."
  (interactive)
  (indent-buffer)
  (delete-trailing-whitespace))

(defun save-and-kill-buffer ()
  "Save all and kill this buffer"

  (interactive)
  (save-some-buffers t)
  (kill-buffer)
  )

(defun save-all-buffers ()
  "Save all buffers"

  (interactive)
  (save-some-buffers t)
  )

(defun save-all-buffer-and-quit ()
  "Save all buffers and quite"

  (interactive)
  (save-some-buffers t)
  (kill-emacs)
  )



;;
;; Key bindings
;;

(global-set-key [f2] 'save-and-kill-buffer)
(global-set-key [f4] 'indent-buffer)
(global-set-key [f5] 'save-all-buffers)
(global-set-key [f12] 'save-all-buffer-and-quit)


