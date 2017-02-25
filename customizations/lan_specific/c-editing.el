(setq-default c-default-style "linux"
	      c-basic-offset 8
	      indent-tabs-mode t)

(dolist (hook '(c-mode-hook c++-mode-hook))
  (add-hook hook
	    (lambda ()
	      (local-set-key (kbd "C-h d")
			     (lambda ()
			       (interactive)
			       (manual-entry (current-word)))))))

;; gtags
(add-hook 'c-mode-hook '(lambda () (gtags-mode t)))
(add-hook 'c-mode-hook '(lambda ()
			  (local-set-key (kbd "C->") 'gtags-find-tag)
			  (local-set-key (kbd "C-,") 'gtags-find-rtag)
			  (local-set-key (kbd "C-.") 'gtags-find-symbol)
			  (local-set-key (kbd "C-<") 'gtags-pop-stack)))

;; folding
					;(add-hook 'c-mode-hook 'hs-minor-hook)

