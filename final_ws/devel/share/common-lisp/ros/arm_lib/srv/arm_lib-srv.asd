
(cl:in-package :asdf)

(defsystem "arm_lib-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "forwardKinematics" :depends-on ("_package_forwardKinematics"))
    (:file "_package_forwardKinematics" :depends-on ("_package"))
    (:file "inverseKinematics" :depends-on ("_package_inverseKinematics"))
    (:file "_package_inverseKinematics" :depends-on ("_package"))
  ))