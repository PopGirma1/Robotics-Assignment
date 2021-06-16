#!/bin/bash
sleep 5
rostopic pub --once /inverseKinematics_angles arm_lib/actuator_pos -- {1.5,0,0} 
rostopic pub --once /control arm_lib/control_cmd catch
# rostopic pub --once /inverseKinematics_angles arm_lib/actuator_pos -- {1.5,0,1.5}
# rostopic pub --once /inverseKinematics_angles arm_lib/actuator_pos -- {1,0,0.5}
# rostopic pub --once /control arm_lib/control_cmd release
# rostopic pub --once /inverseKinematics_angles arm_lib/actuator_pos -- {1.5,0,0}
