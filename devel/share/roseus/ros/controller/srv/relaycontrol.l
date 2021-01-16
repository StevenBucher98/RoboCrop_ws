;; Auto-generated. Do not edit!


(when (boundp 'controller::relaycontrol)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'relaycontrol (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::RELAYCONTROL")
  (make-package "CONTROLLER::RELAYCONTROL"))
(unless (find-package "CONTROLLER::RELAYCONTROLREQUEST")
  (make-package "CONTROLLER::RELAYCONTROLREQUEST"))
(unless (find-package "CONTROLLER::RELAYCONTROLRESPONSE")
  (make-package "CONTROLLER::RELAYCONTROLRESPONSE"))

(in-package "ROS")





(defclass controller::relaycontrolRequest
  :super ros::object
  :slots (_caller _relay1 _relay2 ))

(defmethod controller::relaycontrolRequest
  (:init
   (&key
    ((:caller __caller) "")
    ((:relay1 __relay1) nil)
    ((:relay2 __relay2) nil)
    )
   (send-super :init)
   (setq _caller (string __caller))
   (setq _relay1 __relay1)
   (setq _relay2 __relay2)
   self)
  (:caller
   (&optional __caller)
   (if __caller (setq _caller __caller)) _caller)
  (:relay1
   (&optional __relay1)
   (if __relay1 (setq _relay1 __relay1)) _relay1)
  (:relay2
   (&optional __relay2)
   (if __relay2 (setq _relay2 __relay2)) _relay2)
  (:serialization-length
   ()
   (+
    ;; string _caller
    4 (length _caller)
    ;; bool _relay1
    1
    ;; bool _relay2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _caller
       (write-long (length _caller) s) (princ _caller s)
     ;; bool _relay1
       (if _relay1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _relay2
       (if _relay2 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _caller
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _caller (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _relay1
     (setq _relay1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _relay2
     (setq _relay2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass controller::relaycontrolResponse
  :super ros::object
  :slots (_status ))

(defmethod controller::relaycontrolResponse
  (:init
   (&key
    ((:status __status) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int64[] _status
    (* 8    (length _status)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _status
     (write-long (length _status) s)
     (dotimes (i (length _status))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _status i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _status i)) (= (length ((elt _status i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _status i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _status i) . bv) 1) -1) s))
             ((and (class (elt _status i)) (= (length ((elt _status i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _status i) . bv) 0) s)
              (write-long (if (>= (elt _status i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _status i) s)(write-long (if (>= (elt _status i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _status i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _status i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass controller::relaycontrol
  :super ros::object
  :slots ())

(setf (get controller::relaycontrol :md5sum-) "0b75350b18f9cacf15e795288eeb5a0e")
(setf (get controller::relaycontrol :datatype-) "controller/relaycontrol")
(setf (get controller::relaycontrol :request) controller::relaycontrolRequest)
(setf (get controller::relaycontrol :response) controller::relaycontrolResponse)

(defmethod controller::relaycontrolRequest
  (:response () (instance controller::relaycontrolResponse :init)))

(setf (get controller::relaycontrolRequest :md5sum-) "0b75350b18f9cacf15e795288eeb5a0e")
(setf (get controller::relaycontrolRequest :datatype-) "controller/relaycontrolRequest")
(setf (get controller::relaycontrolRequest :definition-)
      "string caller
bool relay1
bool relay2
---
int64[] status
")

(setf (get controller::relaycontrolResponse :md5sum-) "0b75350b18f9cacf15e795288eeb5a0e")
(setf (get controller::relaycontrolResponse :datatype-) "controller/relaycontrolResponse")
(setf (get controller::relaycontrolResponse :definition-)
      "string caller
bool relay1
bool relay2
---
int64[] status
")



(provide :controller/relaycontrol "0b75350b18f9cacf15e795288eeb5a0e")


