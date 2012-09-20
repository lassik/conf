(custom-set-variables
 '(blink-cursor-mode nil t)
 '(cursor-type 'box)
 '(directory-free-space-args "-k")
 '(font-lock-maximum-size 60000)
 '(grep-command "grep -niR ")
 '(gutter-buffers-tab-visible-p nil)
 '(indent-tabs-mode nil)
 '(inferior-lisp-program "cl-script-clisp" t)
 '(inhibit-startup-message t t)
 '(initial-major-mode 'lisp-interaction-mode t)
 '(iswitchb-mode t)
 '(iswitchb-prompt-newbuffer nil)
 '(make-backup-files nil)
 '(require-final-newline t)
 '(tool-bar-mode nil)
 '(toolbar-visible-p nil))
(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "White" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "Monaco"))) t)
 '(cursor ((t (:background "orange"))) t)
 '(dired-directory ((t (:inherit font-lock-function-name-face :foreground "cyan"))))
 '(dired-face-executable ((((type x pm mswindows) (class color) (background light)) (:foreground "magenta"))))
 '(dired-face-header ((t (:foreground "cyan"))))
 '(dired-face-permissions ((((type x pm mswindows) (class color)) (:foreground "gray50"))))
 '(font-lock-comment-face ((((class color) (background light) (type mswindows)) (:foreground "lightblue"))))
 '(font-lock-doc-string-face ((((class color) (background light)) (:foreground "green"))))
 '(font-lock-function-name-face ((nil (:foreground "orange"))))
 '(font-lock-keyword-face ((((class color) (background light) (type mswindows)) (:foreground "cyan"))))
 '(font-lock-preprocessor-face ((((class color) (background light)) (:foreground "lightblue"))))
 '(font-lock-reference-face ((((class color) (background light)) (:foreground "lightblue"))))
 '(font-lock-string-face ((((class color) (background light)) (:foreground "magenta"))))
 '(font-lock-type-face ((nil (:foreground "wheat"))))
 '(font-lock-variable-name-face ((nil (:foreground "aquamarine"))))
 '(hyper-apropos-documentation ((((class color) (background light)) (:foreground "red"))))
 '(minibuffer-prompt ((t (:inherit minibuffer :foreground "aquamarine"))))
 '(renamed-face ((((class color)) (:background "blue" :foreground "white"))))
 '(text-cursor ((t (:foreground "Black" :background "orange"))) t))

(setq minibuffer-max-depth nil)
