;;;;;;;;;;;;;;;
;; packages
;;;;;;;;;;;;;;;;

;; repos
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
;(add-to-list 'package-archives
;	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
;(add-to-list 'package-archives
;	     '("tromey" . "http://tromey.com/elpa/") t)
;(add-to-list 'package-archives
;	     '("gnu" . "http://elpa.gnu.org/packages/") t)


;; load and activate packages.
;; this also sets the load path
(package-initialize)

;; keeping track of package updates
(when (not package-archive-contents)
  (package-refresh-contents))

;; package to install - don't use package-install directly, add it here
(defvar my-packages
  '(
    ;; paredit - make lisp editing easier
    ;; http://www.emacswiki.org/emacs/PareditCheatsheet
    paredit

    ;; darkokai-theme
    darkokai-theme

    ;; rainbow delimiters: hook it only to certain language
    ;; https://github.com/Fanael/rainbow-delimiters
    rainbow-delimiters

    ;; projectile navigatoin
    projectile

    ;; nyan mode
    nyan-mode

    ;; zoom-window
    zoom-window

    ;; evil mode
    evil
    ))

;; this installs what is listed in my-packages
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; Place downloaded elisp files in ~/.emacs.d/vendor. You'll then be able
;; to load them.
;;
;; For example, if you download yaml-mode.el to ~/.emacs.d/vendor,
;; then you can add the following code to this file:
;;
;; (require 'yaml-mode)
;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
;; 
;; Adding this code will make Emacs enter yaml mode whenever you open
;; a .yml file
(add-to-list 'load-path "~/.emacs.d/vendor")

;; toggle this file
(defun toggle-init-el ()
  (interactive)
  (let ((init-el-file "~/.emacs.d/init.el")
	(buff-name "init.el"))
    (if (get-buffer buff-name)
	(kill-buffer buff-name)
	(find-file init-el-file))))
(global-set-key (kbd "<f2>") 'toggle-init-el)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; load customization files ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; add load path
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/customizations/lan_specific")
;; user interface
(load "UI.el")
;; editing
(load "editing.el")
;; navigation
(load "navigation.el")
;; miscellaneous stuff
(load "misc.el")
;; features
(load "features.el")
;; load all language specific customizations
(dolist (p (directory-files "~/.emacs.d/customizations/lan_specific/" nil ".*.el"))
  (load p))


;; register gtag-mode using gtags from gnu global
;;(add-to-list 'load-path "~/.emacs.d/global/bin")
(add-to-list 'exec-path "~/.emacs.d/global/bin")
(autoload 'gtags-mode "gtags" "" t)


