
;; defualt to indent by tabs
(setq-default indent-tabes-mode t)

;; auto indent
(electric-indent-mode t)

;; highlight matching parenthesis
(show-paren-mode t)

;; hightlight current line
;;(global-hl-line-mode t)

;; insert matching paren
(electric-pair-mode t)

;; selected area be replace by new input
(delete-selection-mode t)

;; delete the matching close parenthesis
(global-set-key (kbd "C-c C-d") 'delete-pair)

;; mouse copy/paste
(setq mouse-yank-at-point t)

;; no bell
(setq  ring-bell-fuction 'ignore)

;; C-s C-r search to regex search
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; utf-8 everywhere
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
