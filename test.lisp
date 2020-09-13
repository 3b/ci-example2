(defpackage #:ci-example2.test
  (:use #:cl #:prove)
  (:local-nicknames (#:x #:ci-example2)))

(in-package #:ci-example2.test)

(plan 3)

(= (x:run -1) 0)
(= (x:run 2) 3)
(is-error (x:run nil) 'simple-error)

(finalize)


