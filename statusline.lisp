▎    statusline…                                                                                                
   16 (in-package #:nyxt-user)                                                                                     
   15                                                                                                              
   14 ;; Set StatusLines Mode Icons                                                                                
   13 (define-configuration status-buffer ((glyph-mode-presentation-p t)))                                         
   12 (define-configuration nyxt/force-https-mode:force-https-mode ((glyph "")))                                  
   11 (define-configuration nyxt/blocker-mode:blocker-mode ((glyph "")))                                          
   10 (define-configuration nyxt/proxy-mode:proxy-mode ((glyph "")))                                              
    9 (define-configuration nyxt/reduce-tracking-mode:reduce-tracking-mode  ((glyph "")))                         
    8 (define-configuration nyxt/certificate-exception-mode:certificate-exception-mode ((glyph "")))              
    7 (define-configuration nyxt/style-mode:style-mode ((glyph "")))                                              
    6 (define-configuration nyxt/help-mode:help-mode ((glyph "")))                                                
    5 (define-configuration nyxt/web-mode:web-mode ((glyph "ω")))                                                  
    4 (define-configuration nyxt/auto-mode:auto-mode ((glyph "α")))                                                
    3                                                                                                              
    2 ;;;; Set StatusLines URL Icons                                                                               
    1 ;;(defun laconic-format-status-load-status (buffer)                                                          
  17  ;;  (if (web-buffer-p buffer)                                                                                
    1 ;;      (case (slot-value buffer 'nyxt::load-status)                                                         
    2 ;;        (:unloaded "∅")                                                                                    
    3 ;;        (:loading "∞")                                                                                     
    4 ;;        (:finished ""))                                                                                    
    5 ;;      ""))                                                                                                 
    6 ;;                                                                                                           
    7 ;;;; Remove https/www from URL                                                                               
    8 ;;(defun laconic-format-status-url (buffer)                                                                  
▊  lisp                                                                                Inactive   17:1   23% ▂▂  ▊

