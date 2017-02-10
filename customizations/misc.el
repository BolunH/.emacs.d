
;; disable backup file
(setq make-backup-files nil)

;; no ~ files
(setq create-locfiles nil)

;; yes/no to y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; start with scratch buffer
(setq inhibit-startup-message t)

;; shell script setting
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; recent file
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
