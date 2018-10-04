
(cl:in-package :asdf)

(defsystem "micro_doppler_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MicroDoppler" :depends-on ("_package_MicroDoppler"))
    (:file "_package_MicroDoppler" :depends-on ("_package"))
    (:file "MicroDoppler_m" :depends-on ("_package_MicroDoppler_m"))
    (:file "_package_MicroDoppler_m" :depends-on ("_package"))
    (:file "MicroDoppler_s" :depends-on ("_package_MicroDoppler_s"))
    (:file "_package_MicroDoppler_s" :depends-on ("_package"))
  ))