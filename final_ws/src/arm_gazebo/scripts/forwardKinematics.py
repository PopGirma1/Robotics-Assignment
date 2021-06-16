#!/usr/bin/env python3
from numpy import lib
from arm_lib.srv import forwardKinematics, FKResponse
from arm_lib.msg import JointAnglePose
import rospy
import tinyik as ik
import sys
sys.path.append('/home/papa/Desktop/final/src/arm_lib/scripts')
from lib import *

pub = rospy.Publisher('chatter', JointAnglePose, queue_size=10)

def handle_forwardKinematics(req):
    MovementAlongRz = Rz(req.joint_angles[0]).dot(T(0, 0, 0.15))
    MovementAlongRx1 = Rx(req.joint_angles[1]).dot(T(0, 0, 2))
    MovementAlongRx2 = Rx(req.joint_angles[2]).dot(T(0, 0, 1))
    MovementAlongRx3 = Rx(req.joint_angles[3]).dot(T(0, 0, 0.5))
    MovementAlongRx4 = (Rx(req.joint_angles[4]).dot(Ry(req.joint_angles[5]))).dot(0, 0, 0.1)
    MovementAlongTz = T(0, 0, 0.5) # Should this be in the z??

    Move = ((((MovementAlongRz.dot( MovementAlongRx1)).dot( MovementAlongRx2)).dot( MovementAlongRx3)).dot(MovementAlongRx4)).dot( MovementAlongTz)
    
    
    print([Move[0][3], Move[1][3], Move[2][3]])
    
    
    
    return FKResponse([Move[0][3], Move[1][3], Move[2][3]])


def forwardKinematics_server():
    rospy.init_node('forwardKinematics_server')
    s = rospy.Service('forwardKinematics', forwardKinematics, handle_forwardKinematics)
    print("Ready to forwardKinematics.")
    rospy.spin()


if __name__ == "__main__":
    forwardkinematics_server()
