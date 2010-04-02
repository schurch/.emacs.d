(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/vendor/")
;;(add-to-list 'load-path "~/.emacs.d/vendor/rdebug")

(setq inhibit-splash-screen t) ;; no splash screen
(tool-bar-mode -1)  ;; no toolbar
(menu-bar-mode -1) ;;no menubar
(scroll-bar-mode -1) ;; no scroll bar

;; Setup color themes
(require 'color-theme)
(color-theme-initialize)
(color-theme-twilight)

;; interactive do things
(require 'ido)
(ido-mode t)

;; Load custom stuff
(require 'key-bindings)
(require 'defuns)
(require 'etags-update)

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

;; Toggle full screen mode
(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                         'fullboth)))
(global-set-key (kbd "M-n") 'toggle-fullscreen)

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
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(newsticker-url-list (quote (("Codding Horror" "http://feeds2.feedburner.com/codinghorror" nil nil nil))))
 '(newsticker-url-list-defaults (quote (("CNET News.com" "http://export.cnet.com/export/feeds/news/rss/1,11176,,00.xml") ("Emacs Wiki" "http://www.emacswiki.org/cgi-bin/wiki.pl?action=rss" nil 3600)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
