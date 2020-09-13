(defpackage #:ci-example2
  (:use #:cl)
  (:export #:run))

(in-package #:ci-example2)

(defun run (x)
  (+ 1 x))
