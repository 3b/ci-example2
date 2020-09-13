(asdf:defsystem #:ci-example2-test
  :defsystem-depends-on (#:prove-asdf)
  :depends-on (#:ci-example2 #:prove)
  :serial t
  :perform (asdf:test-op (op c) (funcall (intern "RUN" '#:prove) c))
  :components ((:test-file "test")))
