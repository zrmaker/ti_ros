;; Auto-generated. Do not edit!


(when (boundp 'micro_doppler_pkg::MicroDoppler)
  (if (not (find-package "MICRO_DOPPLER_PKG"))
    (make-package "MICRO_DOPPLER_PKG"))
  (shadow 'MicroDoppler (find-package "MICRO_DOPPLER_PKG")))
(unless (find-package "MICRO_DOPPLER_PKG::MICRODOPPLER")
  (make-package "MICRO_DOPPLER_PKG::MICRODOPPLER"))

(in-package "ROS")
;;//! \htmlinclude MicroDoppler.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass micro_doppler_pkg::MicroDoppler
  :super ros::object
  :slots (_header _time_domain_bins _num_chirps _target_idx _micro_doppler_array ))

(defmethod micro_doppler_pkg::MicroDoppler
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_domain_bins __time_domain_bins) 0)
    ((:num_chirps __num_chirps) 0)
    ((:target_idx __target_idx) 0)
    ((:micro_doppler_array __micro_doppler_array) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_domain_bins (round __time_domain_bins))
   (setq _num_chirps (round __num_chirps))
   (setq _target_idx (round __target_idx))
   (setq _micro_doppler_array __micro_doppler_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_domain_bins
   (&optional __time_domain_bins)
   (if __time_domain_bins (setq _time_domain_bins __time_domain_bins)) _time_domain_bins)
  (:num_chirps
   (&optional __num_chirps)
   (if __num_chirps (setq _num_chirps __num_chirps)) _num_chirps)
  (:target_idx
   (&optional __target_idx)
   (if __target_idx (setq _target_idx __target_idx)) _target_idx)
  (:micro_doppler_array
   (&optional __micro_doppler_array)
   (if __micro_doppler_array (setq _micro_doppler_array __micro_doppler_array)) _micro_doppler_array)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _time_domain_bins
    2
    ;; uint16 _num_chirps
    2
    ;; uint8 _target_idx
    1
    ;; float32[] _micro_doppler_array
    (* 4    (length _micro_doppler_array)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _time_domain_bins
       (write-word _time_domain_bins s)
     ;; uint16 _num_chirps
       (write-word _num_chirps s)
     ;; uint8 _target_idx
       (write-byte _target_idx s)
     ;; float32[] _micro_doppler_array
     (write-long (length _micro_doppler_array) s)
     (dotimes (i (length _micro_doppler_array))
       (sys::poke (elt _micro_doppler_array i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _time_domain_bins
     (setq _time_domain_bins (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _num_chirps
     (setq _num_chirps (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _target_idx
     (setq _target_idx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _micro_doppler_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _micro_doppler_array (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _micro_doppler_array i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get micro_doppler_pkg::MicroDoppler :md5sum-) "9f59589feb32f7e46fa75d33dbd81913")
(setf (get micro_doppler_pkg::MicroDoppler :datatype-) "micro_doppler_pkg/MicroDoppler")
(setf (get micro_doppler_pkg::MicroDoppler :definition-)
      "Header header
uint16 time_domain_bins
uint16 num_chirps
uint8 target_idx
float32[] micro_doppler_array
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



(provide :micro_doppler_pkg/MicroDoppler "9f59589feb32f7e46fa75d33dbd81913")


