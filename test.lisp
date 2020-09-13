(defpackage #:ci-example2.test
  (:use #:cl #:ci-utils)
  (:local-nicknames (#:x #:ci-example2))
  (:export #:run-tests-for-ci))

(in-package #:ci-example.test)

(defun run-tests-for-ci ()
  (handler-case
      (progn
        ;; add any testing that should run in CI here
        (assert (= (x:run 1) 2))
        (unless (= (x:run 2) 3)
          (format t "test failed~%")
          (finish-output)
          (uiop:quit 124)))
    (error (a)
      (format t "caught error ~s~%~a~%" a a)
      (finish-output)
      (uiop:quit 125))))

