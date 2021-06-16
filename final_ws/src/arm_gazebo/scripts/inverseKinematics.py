#!/usr/bin/env python3
from numpy import lib
from arm_lib.srv import inverseKinematics, IKResponse
import rospy
import sys
import tinyik as ik

def handle_inverseKinematics(req):

    arm = ik.Actuator([
        "z", [0, 0, 0.15], #base arm1
        "x", [0, 0, 2.0],  #arm2
        "x", [0, 0, 1.0],  #arm3
        "x", [0, 0, 0.5],  #arm4
        "z", [0, 0, 0.1],  #palm 
        "x", [0, 0, 0.1],  #palm_jnt 
        "z", [0, 0, 0.3],  #fingers
        "z", [0, 0, 0.2]   #tip
    ])

    arm.ee = req.actuator_pose

    print(arm.angles)
   

    return IKResponse(arm.angles)


def inverseKinematics_server():
    rospy.init_node('inverseKinematics_server')
    s = rospy.Service('inverseKinematics', inverseKinematics, handle_inverseKinematics)
    print("Ready to inverseKinematics.")
    rospy.spin()


if __name__ == "__main__":
    inverseKinematics_server()
