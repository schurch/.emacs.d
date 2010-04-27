(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/vendor/")
(add-to-list 'load-path "~/.emacs.d/vendor/themes/")

(setq inhibit-splash-screen t) ;; no splash screen
(tool-bar-mode -1)  ;; no toolbar
(menu-bar-mode -1) ;;no menubar
(scroll-bar-mode -1) ;; no scroll bar

;; Setup color themes
(require 'color-theme)
(require 'color-theme-wombat)
(color-theme-initialize)
(color-theme-wombat)

;; interactive do things
(require 'ido)
(ido-mode t)

;; Load nxml-mode for files ending in .xml, .xsl, .rng, .xhtml
(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\)\\'" . nxml-mode) 
	    auto-mode-alist))

;; Load custom stuff
(require 'defuns)
(require 'key-bindings)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(transient-mark-mode t) ;; regoin mark
(setq visible-bell t) ;; turn off annoying beep
(fset 'yes-or-no-p 'y-or-n-p) ;; y/n instead of yes/no

;; Save a list of recent files visited.
(recentf-mode 1)

; Do not spread backups all over the disk.
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

; Sets initial window size
(set-frame-size (selected-frame) 160 42)

; Set initial window position
(set-frame-position (selected-frame) 70 30)

;; (defun compile-tags ()
;;   "compile etags for the current project"
;;   (interactive)
;;   (cd "~/Documents/Rails/StefsBlog/")
;;   (compile "find . -name *.rb | xargs /usr/local/bin/ctags -a -e -f TAGS"))

;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(setq org-log-done 'time)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/TODO.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
