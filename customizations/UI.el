;; disable distracting stuff
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; cursor setting
(setq-default cursor-type '(bar . 3))
(blink-cursor-mode 0)

;; show line numbers
(global-linum-mode t)
;; show column numbers
(column-number-mode t)

;; font
(set-default-font "monaco 14") 

;; color theme
(load-theme 'darkokai t)

;; full path in title bat
(setq-default frame-title-format "%f")


;;;
;; enable features
;;;

;; nyan bar !!!
(nyan-mode t)
(setq nyan-animate-nyancat t)
