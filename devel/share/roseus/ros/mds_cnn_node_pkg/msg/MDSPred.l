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
  :slots (_header _target_idx _posX _posY _velX _velY _mds_pred_array _prediction ))

(defmethod mds_cnn_node_pkg::MDSPred
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:target_idx __target_idx) 0)
    ((:posX __posX) 0.0)
    ((:posY __posY) 0.0)
    ((:velX __velX) 0.0)
    ((:velY __velY) 0.0)
    ((:mds_pred_array __mds_pred_array) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:prediction __prediction) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _target_idx (round __target_idx))
   (setq _posX (float __posX))
   (setq _posY (float __posY))
   (setq _velX (float __velX))
   (setq _velY (float __velY))
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
  (:target_idx
   (&optional __target_idx)
   (if __target_idx (setq _target_idx __target_idx)) _target_idx)
  (:posX
   (&optional __posX)
   (if __posX (setq _posX __posX)) _posX)
  (:posY
   (&optional __posY)
   (if __posY (setq _posY __posY)) _posY)
  (:velX
   (&optional __velX)
   (if __velX (setq _velX __velX)) _velX)
  (:velY
   (&optional __velY)
   (if __velY (setq _velY __velY)) _velY)
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
    ;; uint8 _target_idx
    1
    ;; float32 _posX
    4
    ;; float32 _posY
    4
    ;; float32 _velX
    4
    ;; float32 _velY
    4
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
     ;; uint8 _target_idx
       (write-byte _target_idx s)
     ;; float32 _posX
       (sys::poke _posX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posY
       (sys::poke _posY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velX
       (sys::poke _velX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velY
       (sys::poke _velY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint8 _target_idx
     (setq _target_idx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _posX
     (setq _posX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posY
     (setq _posY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velX
     (setq _velX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velY
     (setq _velY (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(setf (get mds_cnn_node_pkg::MDSPred :md5sum-) "1f0f31d758f114011921fb9c0d76aee9")
(setf (get mds_cnn_node_pkg::MDSPred :datatype-) "mds_cnn_node_pkg/MDSPred")
(setf (get mds_cnn_node_pkg::MDSPred :definition-)
      "Header header
uint8 target_idx
float32 posX
float32 posY
float32 velX
float32 velY
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



(provide :mds_cnn_node_pkg/MDSPred "1f0f31d758f114011921fb9c0d76aee9")


