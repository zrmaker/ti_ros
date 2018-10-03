;; Auto-generated. Do not edit!


(when (boundp 'mds_cnn_node_pkg::MDSPred)
  (if (not (find-package "MDS_CNN_NODE_PKG"))
    (make-package "MDS_CNN_NODE_PKG"))
  (shadow 'MDSPred (find-package "MDS_CNN_NODE_PKG")))
(unless (find-package "MDS_CNN_NODE_PKG::MDSPRED")
  (make-package "MDS_CNN_NODE_PKG::MDSPRED"))

(in-package "ROS")
;;//! \htmlinclude MDSPred.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mds_cnn_node_pkg::MDSPred
  :super ros::object
  :slots (_header _mds_pred_array _prediction ))

(defmethod mds_cnn_node_pkg::MDSPred
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mds_pred_array __mds_pred_array) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:prediction __prediction) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _mds_pred_array __mds_pred_array)
   (setq _prediction (string __prediction))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mds_pred_array
   (&optional __mds_pred_array)
   (if __mds_pred_array (setq _mds_pred_array __mds_pred_array)) _mds_pred_array)
  (:prediction
   (&optional __prediction)
   (if __prediction (setq _prediction __prediction)) _prediction)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _mds_pred_array
    (* 4    (length _mds_pred_array)) 4
    ;; string _prediction
    4 (length _prediction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _mds_pred_array
     (write-long (length _mds_pred_array) s)
     (dotimes (i (length _mds_pred_array))
       (sys::poke (elt _mds_pred_array i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _prediction
       (write-long (length _prediction) s) (princ _prediction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _mds_pred_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mds_pred_array (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mds_pred_array i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _prediction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prediction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mds_cnn_node_pkg::MDSPred :md5sum-) "361fca03c0448d6bd3527dc3c4c1a823")
(setf (get mds_cnn_node_pkg::MDSPred :datatype-) "mds_cnn_node_pkg/MDSPred")
(setf (get mds_cnn_node_pkg::MDSPred :definition-)
      "Header header
float32[] mds_pred_array
string prediction
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :mds_cnn_node_pkg/MDSPred "361fca03c0448d6bd3527dc3c4c1a823")


