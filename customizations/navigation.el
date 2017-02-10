;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; window functionalities ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; rotate window
;;;; arg version
;(defun transpose-buffers (arg)
;  "tanspose the buffer shown in 2 windows"
;  (interactive "p")
;  (let ((selector (if (>= arg 0) 'next-window 'previous-window)))
;    (while (/= arg 0)
;      (let ((this-win (window-buffer))
;	    (next-win (window-buffer (funcall selector))))
;	(set-window-buffer (selected-window) next-win)
;	(set-window-buffer (funcall selector) this-win)
;	(select-window (funcall selector)))
;      (setq arg (if (< arg 0)  (1+ arg) (1- arg))))))
;;;
;;; simpler version
(defun transpose-buffers ()
  "tanspose the buffer shown in 2 windows"
  (interactive)
  (let ((selector 'next-window))
      (let ((this-win (window-buffer))
	    (next-win (window-buffer (funcall selector))))
	(set-window-buffer (selected-window) next-win)
	(set-window-buffer (funcall selector) this-win)
	(select-window (funcall selector)))))
 (global-set-key (kbd "C-s-o") 'transpose-buffers)

;; moving across windows
(global-set-key (kbd "C-s-h") 'windmove-left)
(global-set-key (kbd "C-s-l") 'windmove-right)
(global-set-key (kbd "C-s-k") 'windmove-up)
(global-set-key (kbd "C-s-j") 'windmove-down)

;; resizing windows
(global-set-key (kbd "<C-S-up>") 'shrink-window)
(global-set-key (kbd "<C-S-down>") 'enlarge-window)
(global-set-key (kbd "<C-S-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-S-right>") 'enlarge-window-horizontally)

;; zoom in/out of a window

;; ibuffer instead of list-buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; projectile everywhere
(projectile-global-mode t)
