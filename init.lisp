(in-package #:nyxt-user)

;;import Files
;;(dolist (files (list (nyxt-init-file "statusline.lisp")
;;                    (nyxt-init-file "stylesheet.lisp")))
;; (load file))

;;loading of config files
;;add theme here
(nyxt::load-lisp "~/.config/nyxt/themes/drgn-dark.lisp")
;;(nyxt::load-lisp "~/.config/nyxt/statusline.lisp")
;;(nyxt::load-lisp "~/.config/nyxt/stylesheet.lisp")
;;base
(nyxt::load-lisp "~/.config/nyxt/base/keybindings.lisp")
(nyxt::load-lisp "~/.config/nyxt/base/urlprompt.lisp")
(nyxt::load-lisp "~/.config/nyxt/base/commands.lisp")
(nyxt::load-lisp "~/.config/nyxt/base/glyphs.lisp")
;;extending
(nyxt::load-lisp "~/.config/nyxt/ex/specificurl.lisp")

;;configuration for browser
(define-configuration browser
  ((session-restore-prompt :never-restore)))

;;configuration for buffer and nosave buffer to have reduce tracking by default
(define-configuration (web-buffer nosave-buffer)
  ((default-modes `(reduce-tracking-mode
                    auto-mode
                    ,@%slot-default%))))

;;setting new buffer url and having nyxt start full screen
(defmethod nyxt::startup ((browser browser) urls)
  "Home"
  (window-make browser)
  (let ((window (current-window)))
    (window-set-buffer window (make-buffer :url (quri:uri "https://www.duckduckgo.com/")))
    (toggle-fullscreen window)))

;;when reloading init.lisp file shows in message bar once finished
(echo "Loaded config.")
