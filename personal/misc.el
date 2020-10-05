(setq prelude-flyspell nil)
(add-hook 'org-mode-hook 'org-indent-mode)
(prelude-require-package 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)

(scroll-bar-mode -1)
(prelude-require-packages '(perspective hydra ivy-hydra))
(persp-mode)
(set-fontset-font t '(#x1f300 . #x1fad0) "Noto Color Emoji")
