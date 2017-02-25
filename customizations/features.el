;; neo-tree
;(require 'neotree)
;(global-set-key [f8] 'neotree-toggle)

;; which function are we in?
(which-function-mode t)

;; use speed bar
(require 'sr-speedbar)
(global-set-key [f8] 'sr-speedbar-toggle)
(setq sr-speedbar-right-side nil)

;; zoom in/out of window like tmux
(require 'zoom-window)
(global-set-key (kbd "C-x C-z") 'zoom-window-zoom)
(setq zoom-window-mode-line-color "#369")

(require 'evil)
(evil-mode t)
