;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Packages
(unless (package-installed-p 'evil)
  (package-install 'evil))
(unless (package-installed-p 'gruvbox-theme)
  (package-install 'gruvbox-theme))
(unless (package-installed-p 'org-bullets)
  (package-install 'org-bullets))

;; ui
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0) 
(load-theme 'gruvbox-dark-hard t)
(add-to-list 'default-frame-alist '(font . "Liberation Mono-11" ))
(set-face-attribute 'default t :font "Liberation Mono-11" )

;; backups
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

;; encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; org mode
(setq org-hide-emphasis-markers t)
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;;;; colorize output in compile buffer
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (ansi-color-apply-on-region compilation-filter-start (point-max)))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; KEYBINDS
(evil-set-leader 'normal (kbd "<SPC>"))
(evil-define-key 'normal 'global (kbd "<leader>h") 'evil-window-left)
(evil-define-key 'normal 'global (kbd "<leader>j") 'evil-window-down)
(evil-define-key 'normal 'global (kbd "<leader>k") 'evil-window-up)
(evil-define-key 'normal 'global (kbd "<leader>l") 'evil-window-right)
(evil-define-key 'normal 'global (kbd "<leader>H") 'evil-window-move-far-left)
(evil-define-key 'normal 'global (kbd "<leader>J") 'evil-window-move-very-bottom)
(evil-define-key 'normal 'global (kbd "<leader>K") 'evil-window-move-very-top)
(evil-define-key 'normal 'global (kbd "<leader>L") 'evil-window-move-far-right)
(evil-define-key 'normal 'global (kbd "<leader>v") 'split-window-horizontally)
(evil-define-key 'normal 'global (kbd "<leader>s") 'split-window-vertically)
(evil-define-key 'normal 'global (kbd "<leader>t") 'eshell)

(evil-define-key 'normal 'org-mode-map (kbd "<leader>ot") 'org-todo)
(evil-define-key 'normal 'org-mode-map (kbd "<leader>ol") 'org-insert-link)
(evil-define-key 'normal 'org-mode-map (kbd "<leader>oo") 'org-open-at-point)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" default))
 '(package-selected-packages '(org-bullets gruvbox-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
