;;;; package.lisp

(cl:in-package cl-user)


(defpackage "https://github.com/g000001/srfi-127"
  (:use)
  (:export generator->lseq lseq? lseq=?)
  (:export lseq-car lseq-first lseq-cdr lseq-rest lseq-ref lseq-take lseq-drop)
  (:export lseq-realize lseq->generator lseq-length lseq-append lseq-zip)
  (:export lseq-map lseq-for-each lseq-filter lseq-remove)
  (:export lseq-find lseq-find-tail lseq-take-while lseq-drop-while
           lseq-any lseq-every lseq-index lseq-member lseq-memq lseq-memv))


(defpackage "https://github.com/g000001/srfi-127#internals"
  (:use "https://github.com/g000001/r7rs-compat"
        "https://github.com/g000001/srfi-127"))

;;; *EOF*
