;;;; Emacs configuration

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Make parens easy to type.
(keyboard-translate ?\( ?\[)
(keyboard-translate ?\[ ?\()
(keyboard-translate ?\) ?\])
(keyboard-translate ?\] ?\))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Slime
(setq inferior-lisp-program "~/apps/ccl/lx86cl") ; your Lisp system
(add-to-list 'load-path "~/apps/slime/")  ; your SLIME directory
(require 'slime)
(slime-setup '(slime-fancy))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; I put the config for GNUS here instead of in .gnus
; Since I use gnus primarily for mail and not for reading News, I
; make my IMAP setting the default method for gnus.
(setq gnus-select-method '(nnimap "cyrus"
                                  (nnimap-address "localhost")
				  (nnimap-server-port 143)))
;; Fetch only part of the article if we can.
(setq gnus-read-active-file 'some)

;; Tree view for groups.  
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

;; Threads! 
(setq gnus-summary-thread-gathering-function 
      'gnus-gather-threads-by-subject)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Get rid of he menubar
;(menu-bar-mode nil)
(tool-bar-mode nil)

;; Load Quack for scheme 
(load "/home/varoun/Apps/quack.el")
;; Scheme48
(setq load-path (append load-path '("~/Apps/scheme48-1.8/emacs")))
(setq scheme-program-name "scheme48")
(autoload 'run-scheme
          "cmuscheme48"
	  "Run an inferior Scheme process"
	  t)

;;; Speed up saves.
(setq vc-handled-backends nil)

;;; Set window size on startup.
(if (window-system) (set-frame-size (selected-frame) 96 48))


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(quack-default-program "scheme48")
 '(quack-fontify-style (quote emacs))
 '(safe-local-variable-values (quote ((Syntax . COMMON-LISP) (Package . CL-USER) (Base . 10)))))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
'(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
; Comment at the end to learn git
