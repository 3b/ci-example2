(defpackage #:ci-example2.test
  (:use #:cl)
  (:local-nicknames (#:x #:ci-example2))
  (:export #:run-tests-for-ci))

(in-package #:ci-example2.test)

(defun run-tests-for-ci ()
  ;; add any testing that should run in CI here
  (assert (= (x:run 1) 2))
  (if (= (x:run 2) 3)
      (progn (format t "test failed~%") nil)
      t))

