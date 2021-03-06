import rospy
from arm_lib.msg import input
import numpy as np



def talker():
    pub = rospy.Publisher('chatter', input, queue_size=40)
    rospy.init_node('publisher', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    count = 0
    while not rospy.is_shutdown():
        input_message = input()
        input_message.x  = 1 + count
        input_message.y  = 2
        input_message.z  = 3
        input_message.alpha = 1
        input_message.beta  = 2
        input_message.gamma = 3
        input_message.d  = 4

        rospy.loginfo(input_message.x)

        pub.publish(input_message)
        rate.sleep()
        count+=1
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
