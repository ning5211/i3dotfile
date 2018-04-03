
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(setq inhibit-startup-message t)

(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))
;;字体
(set-default-font "InconsolataGo Nerd Font 14")


;;缩进
(setq c-default-style "ellemtel" c-basic-offset 4)
(setq tab-width 4 indent-tabs-mode nil)


(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)


(defun on-after-init ()
    (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)




 (when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))))

(package-initialize)

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
                ;;vi模式
                evil
                powerline
                org-bullets
                ;;emmet
		emmet-mode
                web-mode
                ;; --- Major Mode ---
                ;; --- Themes ---
                doom
                doom-themes
                ;; solarized-theme
                ) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))

 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))




(load-theme 'doom-dracula t) 

(powerline-default-theme)

;evil-mode
(evil-mode 1)



(add-hook 'emmet-mode-hook
          (lambda ()
            ;; clearing old C-j and C-return key mapping.
            (define-key emmet-mode-keymap (kbd "C-j")        nil)
            (define-key emmet-mode-keymap (kbd "<C-return>") nil)
            ;; define new M-j key mapping instead.
            (define-key emmet-mode-keymap (kbd "C-l")        'emmet-expand-line)))

(setq x-super-keysym 'meta)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 2)
            (setq tab-width 2)
            (setq indent-tabs-mode t)))

(setq org-image-actual-width nil)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "360b23bbbedd50c91d5ea04fe73bedbf90fe76dc7bf0b8914a64172e89b5ced5" "90bd0eb20a1cb155b5a076f698b3c72cfe775aa7ea93b7bfbc171eb250db5e20" "6dd2b995238b4943431af56c5c9c0c825258c2de87b6c936ee88d6bb1e577cb9" "8ff5073d6c694a442c85505d6f885a752061b3738e2de7c2b9042ffd2c1579e5" "bce3ae31774e626dce97ed6d7781b4c147c990e48a35baedf67e185ebc544a56" default)))
 '(package-selected-packages
   (quote
    (web-mode treemacs mingus ## pdf-tools doom-themes org-bullets spaceline zerodark-theme try s evil emmet-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
