(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  (setq package-archives 'nil)
  (add-to-list 'package-archives
           (cons "gnu" (concat proto "://mirrors.bfsu.edu.cn/elpa/gnu/")) t)
  (add-to-list 'package-archives
           (cons "melpa" (concat proto "://mirrors.bfsu.edu.cn/elpa/melpa/")) t))
