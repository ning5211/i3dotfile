
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(setq inhibit-startup-message t)

(setq x-meta-keysym 'spc)
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))

(set-default-font "InconsolataGo Nerd Font 14")

(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)


(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)


(require 'package)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)



(load-theme 'doom-dracula t) 

(powerline-default-theme)

;evil-mode
(evil-mode 1)



;web-mode
(use-package web-mode :ensure t
  :mode
  (
   ".twig"
   ".html?"
   ".hbs$"
   ".vue$"
   )
  :config
  (setq
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-enable-auto-closing t
   web-mode-enable-auto-opening t
   web-mode-enable-auto-pairing t
   web-mode-enable-auto-indentation t
))






(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (emmet-mode web-mode zerodark-theme try treemacs-evil spacemacs-theme spaceline org-bullets mingus doom-themes atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
