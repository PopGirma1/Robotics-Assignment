#include <functional>
#include "ros/ros.h"
#include "arm_lib/forwardKinematics.h"
#include "arm_lib/inverseKinematics.h"
#include "std_msgs/Float64.h"

#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>
#include <sstream>
#include "arm_lib/arm_joint_angles.h"
#include "arm_lib/jointAnglePose.h"

namespace gazebo
{
	class ModelPush : public ModelPlugin
	{


	public:
		void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
		{
			// Store the pointer to the model
			this->model = _parent;

			// // instiantiate the joint controller
			this->jointController = this->model->GetJointController();

			// // set your PID values
			this->pid = common::PID(3, 1, 1);

			std::string name1 = this->model->GetJoint("chasis_arm1_joint")->GetScopedName();

			this->jointController->SetPositionPID(name1, pid);

			std::string name2 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();

			this->jointController->SetPositionPID(name2, pid);

			std::string name3 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();

			this->jointController->SetPositionPID(name3, pid);

			std::string name4 = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();

			this->jointController->SetPositionPID(name4, pid);

			std::string name5 = this->model->GetJoint("arm4_hand_joint")->GetScopedName();

			this->jointController->SetPositionPID(name5, pid);

			std::string name6 = this->model->GetJoint("hand_joint")->GetScopedName();

			this->jointController->SetPositionPID(name6, pid);

			std::string name7 = this->model->GetJoint("hand_left_hand")->GetScopedName();

			this->jointController->SetPositionPID(name7, pid);

			std::string name8 = this->model->GetJoint("left_hand_end_joint")->GetScopedName();

			this->jointController->SetPositionPID(name8, pid);

			std::string name9 = this->model->GetJoint("hand_right_hand")->GetScopedName();

			this->jointController->SetPositionPID(name9, pid);

			std::string name10 = this->model->GetJoint("right_hand_end_joint")->GetScopedName();

			this->jointController->SetPositionPID(name10, pid);



			this->init_node();

			this->init_inverseKinematics_service();



			this->updateConnection = event::Events::ConnectWorldUpdateBegin(
				std::bind(&ModelPush::OnUpdate, this));
		}

	
	public:
		void OnUpdate()
		{



			this->run_inverseKinematics_service();


		}

		// Update joint angles
		private:

		void init_node(){
			int argc = 0;
			char **argv = NULL;
			ros::init(argc, argv, "controllTheRobet");
		}
		void init_forwardKinematics_service(){
  			ros::NodeHandle n;
  			this->srvClient = n.serviceClient<arm_lib::forwardKinematics>("forwardKinematics");
		}

		void init_inverseKinematics_service(){
  			ros::NodeHandle n;
  			this->srvClient = n.serviceClient<arm_lib::inverseKinematics>("inverseKinematics");
		}

		void pickBox(){

			std::string hand_left_hand = this->model->GetJoint("hand_left_hand")->GetScopedName();
			std::string hand_left_end = this->model->GetJoint("left_hand_end_joint")->GetScopedName();
			std::string hand_right_hand = this->model->GetJoint("hand_right_hand")->GetScopedName();
			std::string hand_right_end = this->model->GetJoint("right_hand_end_joint")->GetScopedName();
			int rad = 0.1;

			this->jointController->SetPositionTarget(hand_left_hand, -rad);
			this->jointController->SetPositionTarget(hand_left_end, -rad);
			this->jointController->SetPositionTarget(hand_right_hand, rad);
			this->jointController->SetPositionTarget(hand_right_end, rad);
			
			this->jointController->Update();

		}

		void run_inverseKinematics_service(){

			if(this->inverseKinematics_srv != 1){
				arm_lib::inverseKinematics srv;

				std::string chasis_arm1 = this->model->GetJoint("chasis_arm1_joint")->GetScopedName();
				std::string arm1_arm2 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
				std::string arm2_arm3 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
				std::string arm3_arm4 = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();
				std::string arm4_hand = this->model->GetJoint("arm4_hand_joint")->GetScopedName();
				std::string hand_joint = this->model->GetJoint("hand_joint")->GetScopedName();
				std::string hand_left_hand = this->model->GetJoint("hand_left_hand")->GetScopedName();
				std::string hand_left_end = this->model->GetJoint("left_hand_end_joint")->GetScopedName();
				std::string hand_right_hand = this->model->GetJoint("hand_right_hand")->GetScopedName();
				std::string hand_right_end = this->model->GetJoint("right_hand_end_joint")->GetScopedName();

				srv.request.actuator_pose = {1.6, 1.6, 0};

				if ((this->srvClient).call(srv)){
					ROS_INFO("Calling inverseKinematics Service");
					ROS_INFO(" %f", srv.response.new_angles[0]);
					ROS_INFO(" %f", srv.response.new_angles[1]);
					ROS_INFO(" %f", srv.response.new_angles[2]);

					// this part is not setting the joint angles??
					this->jointController->SetPositionTarget(chasis_arm1, srv.response.new_angles[0]);
					this->jointController->SetPositionTarget(arm1_arm2, srv.response.new_angles[1]);
					this->jointController->SetPositionTarget(arm2_arm3, srv.response.new_angles[2]);
					this->jointController->SetPositionTarget(arm3_arm4, srv.response.new_angles[3]);
					this->jointController->SetPositionTarget(arm4_hand, srv.response.new_angles[4]);
					this->jointController->SetPositionTarget(hand_joint, srv.response.new_angles[5]);
					this->jointController->SetPositionTarget(hand_left_hand, srv.response.new_angles[6]);
					this->jointController->SetPositionTarget(hand_left_end, srv.response.new_angles[7]);
					this->jointController->SetPositionTarget(hand_right_hand, srv.response.new_angles[6]);
					this->jointController->SetPositionTarget(hand_right_end, srv.response.new_angles[7]);
					this->jointController->Update();

					this->inverseKinematics_srv = 1;

				}

			}

		}


		void run_forwardKinematics_service()
   		{


			double z0 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(0);

			double x1 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);

			double x2 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);

			double x3 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);

			double x4 = physics::JointState(this->model->GetJoint("arm4_hand_joint")).Position(0);
			double y4 = physics::JointState(this->model->GetJoint("arm4_hand_joint")).Position(1);



			std::vector<float> angles = {(float)z0, (float)x1, (float)x2, (float)x3, (float)x4, (float)y4};

			arm_lib::forwardKinematics srv;
			srv.request.joint_angles = angles;

			if ((this->srvClient).call(srv)){
				ROS_INFO("Calling forwardKinematics Service");
				ROS_INFO("Pose: %f %f %f", srv.response.actuator_pose[0], srv.response.actuator_pose[1], srv.response.actuator_pose[2]);

   			}
		}

		void init_publisher(){
			ros::NodeHandle n;
			this->pub = n.advertise<arm_lib::arm_joint_angles>("joint_angles", 100);
		}

		void updateRobot(const arm_lib::arm_joint_angles &msg){
			this->updateJointAngles(msg.z0, msg.x1, msg.x2, msg.x3);
		}

		void updateJoints(const arm_lib::jointAnglePose &msg){
			printf("just printing what i here");
			this->updateJointAngles(msg.joint1, msg.joint2, msg.joint3, msg.joint4);
		}

		void updateJointAngles(double z0, double x1, double x2, double x3){

			ROS_INFO("%f %f %f %f", z0,x1,x2,x3);

			std::string chasis_arm1 = this->model->GetJoint("chasis_arm1_joint")->GetScopedName();
			std::string arm1_arm2 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			std::string arm2_arm3 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
			std::string arm3_arm4 = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();

			// change to radian
			z0 = z0 * M_PI/ 180.0;
			x1 = x1 * M_PI/ 180.0;
			x2 = x2 * M_PI/ 180.0;
			x3 = x3 * M_PI/ 180.0;
			ROS_INFO("%f %f %f %f\n\n", z0,x1,x2,x3);
			printf("just printing what i here");

			this->jointController->SetPositionTarget(chasis_arm1, z0);

			this->jointController->SetPositionTarget(arm1_arm2, x1);

			this->jointController->SetPositionTarget(arm2_arm3, x2);

			this->jointController->SetPositionTarget(arm3_arm4, x3);


		}

		void publishCurrentAngles(){

			double z0 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(0);

			double x1 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);

			double x2 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);

			double x3 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);

			// change radian to degree
			z0 = z0 * 180.0 / M_PI;

			x1 = x1 * 180.0 / M_PI;

			x2 = x2 * 180.0 / M_PI;

			x3 = x3 * 180.0 / M_PI;

			arm_lib::arm_joint_angles current_angles;
			current_angles.z0  = z0;
			current_angles.x1  = x1;
			current_angles.x2  = x2;
			current_angles.x3  = x3;

			(this->pub).publish(current_angles);

			ros::spinOnce();

		}

	private:
		physics::ModelPtr model;

	private:
		physics::JointControllerPtr jointController;

	private:
		event::ConnectionPtr updateConnection;

	private:
		common::PID pid;

	private:
		ros::Publisher pub;
		ros::ServiceClient srvClient;
		float x;
		int inverseKinematics_srv = 0;


	};

	// Register this plugin with the simulator
	GZ_REGISTER_MODEL_PLUGIN(ModelPush)
}

