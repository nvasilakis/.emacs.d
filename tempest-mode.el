;;;
;;; A major mode for editing Tempest programs.
;;;
;;; Setup:
;;;   (add-to-path "[gitroot]/tempest/elisp")
;;;   (require 'tempest-mode)
;;;
(require 'generic)
(unless (fboundp 'tempest-mode)
  (define-generic-mode 'tempest-mode
    '(("//"))
    '("AVAIL" "UNAVAIL" "ALLOC" "RDONLY" "type" "newtype" "fun" "var"
      "extern" "provide" "atomtag" "U" "L" "MEMORY"
      "error" "empty" "uninitialized"
      "inline" "cconv" "sizeof" "bracket" "label" "tie" "regmode" "array"
      "gate" "new" "asm" "take" "in" "out" "if" "then" "else" "switch" "when"
      "focus"
      "while" "do" "goto" "return")
    '(
      ("#\\s-*\\w+"  0 'font-lock-preprocessor-face t)
      ("\\_<L?FP\\_>" . 'font-lock-type-face)
      ("\\_<[[:upper:]]\\(\\s_\\|\\sw\\)+\\_>" . 'font-lock-type-face)
      ) ; font-lock-keywords
    (list "\\.ts\\'" "\\.ti\\'")
    nil
    "Major mode for editing Tempest programs"))

(provide 'tempest-mode)

  
