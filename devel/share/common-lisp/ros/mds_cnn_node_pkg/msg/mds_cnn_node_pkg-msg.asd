
(cl:in-package :asdf)

(defsystem "mds_cnn_node_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MDSPred" :depends-on ("_package_MDSPred"))
    (:file "_package_MDSPred" :depends-on ("_package"))
  ))