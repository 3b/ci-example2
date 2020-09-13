(asdf:defsystem #:ci-example2
  :depends-on (#:alexandria)
  :serial t
  :components  ((:file "code")))

(asdf:defsystem #:ci-example2/test
  :depends-on (#:ci-example2)
  :serial t
  :components ((:file "test")))
