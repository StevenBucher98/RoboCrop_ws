;; Auto-generated. Do not edit!


(when (boundp 'cartesian_control::test_srv)
  (if (not (find-package "CARTESIAN_CONTROL"))
    (make-package "CARTESIAN_CONTROL"))
  (shadow 'test_srv (find-package "CARTESIAN_CONTROL")))
(unless (find-package "CARTESIAN_CONTROL::TEST_SRV")
  (make-package "CARTESIAN_CONTROL::TEST_SRV"))
(unless (find-package "CARTESIAN_CONTROL::TEST_SRVREQUEST")
  (make-package "CARTESIAN_CONTROL::TEST_SRVREQUEST"))
(unless (find-package "CARTESIAN_CONTROL::TEST_SRVRESPONSE")
  (make-package "CARTESIAN_CONTROL::TEST_SRVRESPONSE"))

(in-package "ROS")





(defclass cartesian_control::test_srvRequest
  :super ros::object
  :slots ())

(defmethod cartesian_control::test_srvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cartesian_control::test_srvResponse
  :super ros::object
  :slots (_desc _response ))

(defmethod cartesian_control::test_srvResponse
  (:init
   (&key
    ((:desc __desc) "")
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _desc (string __desc))
   (setq _response __response)
   self)
  (:desc
   (&optional __desc)
   (if __desc (setq _desc __desc)) _desc)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _desc
    4 (length _desc)
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _desc
       (write-long (length _desc) s) (princ _desc s)
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cartesian_control::test_srv
  :super ros::object
  :slots ())

(setf (get cartesian_control::test_srv :md5sum-) "7a7ab05b8c54168563cc1cb286c04fa8")
(setf (get cartesian_control::test_srv :datatype-) "cartesian_control/test_srv")
(setf (get cartesian_control::test_srv :request) cartesian_control::test_srvRequest)
(setf (get cartesian_control::test_srv :response) cartesian_control::test_srvResponse)

(defmethod cartesian_control::test_srvRequest
  (:response () (instance cartesian_control::test_srvResponse :init)))

(setf (get cartesian_control::test_srvRequest :md5sum-) "7a7ab05b8c54168563cc1cb286c04fa8")
(setf (get cartesian_control::test_srvRequest :datatype-) "cartesian_control/test_srvRequest")
(setf (get cartesian_control::test_srvRequest :definition-)
      "---
string desc
bool response

")

(setf (get cartesian_control::test_srvResponse :md5sum-) "7a7ab05b8c54168563cc1cb286c04fa8")
(setf (get cartesian_control::test_srvResponse :datatype-) "cartesian_control/test_srvResponse")
(setf (get cartesian_control::test_srvResponse :definition-)
      "---
string desc
bool response

")



(provide :cartesian_control/test_srv "7a7ab05b8c54168563cc1cb286c04fa8")


