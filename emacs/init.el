
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;隐藏菜单,工具栏,滚动条
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;字体
(set-default-font "InconsolataLGC Nerd Font 14")

;evil模式
(evil-mode 1)

;更改备份文件保存位置
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))


;dracula配色
;(load-theme 'dracula t) 
(load-theme 'zerodark t) 
;(load-theme 'spacemacs-dark t)

;透明
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)


;emmet
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

(powerline-default-theme)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bce3ae31774e626dce97ed6d7781b4c147c990e48a35baedf67e185ebc544a56" "7527f3308a83721f9b6d50a36698baaedc79ded9f6d5bd4e9a28a22ab13b3cb1" "718fb4e505b6134cc0eafb7dad709be5ec1ba7a7e8102617d87d3109f56d9615" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "6dd2b995238b4943431af56c5c9c0c825258c2de87b6c936ee88d6bb1e577cb9" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "dcb9fd142d390bb289fee1d1bb49cb67ab7422cd46baddf11f5c9b7ff756f64c" "3edbdd0ad45cb8f7c2575c0ad8f6625540283c6e928713c328b0bacf4cfbb60f" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" default)))
 '(package-selected-packages
   (quote
    (mpv zerodark-theme dracula-theme atom-one-dark-theme ## emmet-mode latex-preview-pane evil spacemacs-theme s powerline dash all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
