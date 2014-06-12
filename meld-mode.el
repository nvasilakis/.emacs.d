;;;
;;; A major mode for editing meld scripts.
;;;
;;; Setup:
;;;   (add-to-path "[gitroot]/tempest/elisp")
;;;   (require 'meld-mode)
;;;
(require 'generic)
(unless (fboundp 'meld-mode)
  (define-generic-mode 'meld-mode
    '((?# . ?\n))
    '("unit" "requires" "provides" "exposes" "path")
    '(
      ("'\\(\\(\\sw\\|\\s_\\)+\\)'" 1 'font-lock-function-name-face)
      ("\\(\\(\\sw\\|\\s_\\)+\\s-*\\):" 1 'font-lock-constant-face)
      ) ; font-lock-keywords
    (list "\\.meld\\'")
    nil
    "Major mode for editing Meld linking scripts"))

(provide 'meld-mode)

  
