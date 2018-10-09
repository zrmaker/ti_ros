; Auto-generated. Do not edit!


(cl:in-package micro_doppler_pkg-msg)


;//! \htmlinclude MicroDoppler_m.msg.html

(cl:defclass <MicroDoppler_m> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_domain_bins
    :reader time_domain_bins
    :initarg :time_domain_bins
    :type cl:fixnum
    :initform 0)
   (num_chirps
    :reader num_chirps
    :initarg :num_chirps
    :type cl:fixnum
    :initform 0)
   (target_idx
    :reader target_idx
    :initarg :target_idx
    :type cl:fixnum
    :initform 0)
   (micro_doppler_array
    :reader micro_doppler_array
    :initarg :micro_doppler_array
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (posX
    :reader posX
    :initarg :posX
    :type cl:float
    :initform 0.0)
   (posY
    :reader posY
    :initarg :posY
    :type cl:float
    :initform 0.0)
   (velX
    :reader velX
    :initarg :velX
    :type cl:float
    :initform 0.0)
   (velY
    :reader velY
    :initarg :velY
    :type cl:float
    :initform 0.0))
)

(cl:defclass MicroDoppler_m (<MicroDoppler_m>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MicroDoppler_m>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MicroDoppler_m)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name micro_doppler_pkg-msg:<MicroDoppler_m> is deprecated: use micro_doppler_pkg-msg:MicroDoppler_m instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MicroDoppler_m>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader micro_doppler_pkg-msg:header-val is deprecated.  Use micro_doppler_pkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_domain_bins-val :lambda-list '(m))
(cl:defmethod time_domain_bins-val ((m <MicroDoppler_m>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader micro_doppler_pkg-msg:time_domain_bins-val is deprecated.  Use micro_doppler_pkg-msg:time_domain_bins instead.")
  (time_domain_bins m))

(cl:ensure-generic-function 'num_chirps-val :lambda-list '(m))
(cl:defmethod num_chirps-val ((m <MicroDoppler_m>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader micro_doppler_pkg-msg:num_chirps-val is deprecated.  Use micro_doppler_pkg-msg:num_chirps instead.")
  (num_chirps m))

(cl:ensure-generic-function 'target_idx-val :lambda-list '(m))
(cl:defmethod target_idx-val ((m <MicroDoppler_m>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader micro_doppler_pkg-msg:target_idx-val is deprecated.  Use micro_doppler_pkg-msg:target_idx instead.")
  (target_idx m))

(cl:ensure-generic-function 'micro_doppler_array-val :lambda-list '(m))
(cl:defmethod micro_doppler_array-val ((m <MicroDoppler_m>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader micro_doppler_pkg-msg:micro_doppler_array-val is deprecated.  Use micro_doppler_pkg-msg:micro_doppler_array instead.")
  (micro_doppler_array m))

(cl:ensure-generic-function 'posX-val :lambda-list '(m))
(cl:defmethod posX-val ((m <MicroDoppler_m>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader micro_doppler_pkg-msg:posX-val is deprecated.  Use micro_doppler_pkg-msg:posX instead.")
  (posX m))

(cl:ensure-generic-function 'posY-val :lambda-list '(m))
(cl:defmethod posY-val ((m <MicroDoppler_m>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader micro_doppler_pkg-msg:posY-val is deprecated.  Use micro_doppler_pkg-msg:posY instead.")
  (posY m))

(cl:ensure-generic-function 'velX-val :lambda-list '(m))
(cl:defmethod velX-val ((m <MicroDoppler_m>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader micro_doppler_pkg-msg:velX-val is deprecated.  Use micro_doppler_pkg-msg:velX instead.")
  (velX m))

(cl:ensure-generic-function 'velY-val :lambda-list '(m))
(cl:defmethod velY-val ((m <MicroDoppler_m>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader micro_doppler_pkg-msg:velY-val is deprecated.  Use micro_doppler_pkg-msg:velY instead.")
  (velY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MicroDoppler_m>) ostream)
  "Serializes a message object of type '<MicroDoppler_m>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_domain_bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_domain_bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_chirps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_chirps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_idx)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'micro_doppler_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'micro_doppler_array))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MicroDoppler_m>) istream)
  "Deserializes a message object of type '<MicroDoppler_m>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_domain_bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_domain_bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_chirps)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_chirps)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_idx)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'micro_doppler_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'micro_doppler_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velY) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MicroDoppler_m>)))
  "Returns string type for a message object of type '<MicroDoppler_m>"
  "micro_doppler_pkg/MicroDoppler_m")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MicroDoppler_m)))
  "Returns string type for a message object of type 'MicroDoppler_m"
  "micro_doppler_pkg/MicroDoppler_m")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MicroDoppler_m>)))
  "Returns md5sum for a message object of type '<MicroDoppler_m>"
  "f18c4823afa7776d20d07fa149c4e3d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MicroDoppler_m)))
  "Returns md5sum for a message object of type 'MicroDoppler_m"
  "f18c4823afa7776d20d07fa149c4e3d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MicroDoppler_m>)))
  "Returns full string definition for message of type '<MicroDoppler_m>"
  (cl:format cl:nil "Header header~%uint16 time_domain_bins~%uint16 num_chirps~%uint8 target_idx~%float32[] micro_doppler_array~%float32 posX~%float32 posY~%float32 velX~%float32 velY~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MicroDoppler_m)))
  "Returns full string definition for message of type 'MicroDoppler_m"
  (cl:format cl:nil "Header header~%uint16 time_domain_bins~%uint16 num_chirps~%uint8 target_idx~%float32[] micro_doppler_array~%float32 posX~%float32 posY~%float32 velX~%float32 velY~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MicroDoppler_m>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'micro_doppler_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MicroDoppler_m>))
  "Converts a ROS message object to a list"
  (cl:list 'MicroDoppler_m
    (cl:cons ':header (header msg))
    (cl:cons ':time_domain_bins (time_domain_bins msg))
    (cl:cons ':num_chirps (num_chirps msg))
    (cl:cons ':target_idx (target_idx msg))
    (cl:cons ':micro_doppler_array (micro_doppler_array msg))
    (cl:cons ':posX (posX msg))
    (cl:cons ':posY (posY msg))
    (cl:cons ':velX (velX msg))
    (cl:cons ':velY (velY msg))
))
