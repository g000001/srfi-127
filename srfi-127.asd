;;;; srfi-229.asd

(cl:in-package :asdf)


(defsystem :srfi-127
  :version "20240804"
  :description "SRFI 127 for CL: Lazy Sequences"
  :long-description "SRFI 127 for CL: Lazy Sequences
https://srfi.schemers.org/srfi-127"
  :author "John Cowan"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on (r7rs-compat)
  :components ((:file "package")
               (:file "srfi-127")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-127))))
  (let ((name "https://github.com/g000001/srfi-127")
        (nickname :srfi-127))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))

;;; *EOF*
