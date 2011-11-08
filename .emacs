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
