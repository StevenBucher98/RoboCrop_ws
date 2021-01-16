
(cl:in-package :asdf)

(defsystem "controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "relaycontrol" :depends-on ("_package_relaycontrol"))
    (:file "_package_relaycontrol" :depends-on ("_package"))
  ))