#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>


namespace gazebo
{
	class ModelPush : public ModelPlugin
	{
	public:
		void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
		{
			// Store the pointer to the model
			this->model = _parent;

			// // intiantiate the joint controller
 this->jointController = this->model->GetJointController();

			// // set your PID values
			this->pid = common::PID(30.1, 10.01, 10.03);
			//this->pid = common::PID(0.1, 0, 0);

			auto joint_name = "arm1_arm2_joint";

			std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();

			this->jointController->SetPositionPID(name, pid);

			// Listen to the update event. This event is broadcast every
			// simulation iteration.
this->updateConnection = event::Events::ConnectWorldUpdateBegin(
				std::bind(&ModelPush::OnUpdate, this));
				
				
				
///////////////////////////////////////////////////////



ros::NodeHandle n;
ros::Publisher anglePublisher= n.advertise<std_msgs::String>("publish", 1000);

/**
  			///////////////////////////////
  				
			double a0 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(0);
			
			double a1 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);
			
			double a2 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);
			
			double a3 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);
			
while (ros::ok()){
			
  std_msgs::String msg;
  std::stringstream ss;
  ss << "Current angle value of 0 and 1: " << a0<< std::endl;
  ss << "Current angle value of 1 and 2: " << a1<< std::endl;
  ss << "Current angle value of 2 and 3: " << a2<< std::endl;
  ss << "Current angle value of 3 and 4: " << a3<< std::endl;
  
  msg.data = ss.str();
  ROS_INFO("%s", msg.data.c_str());
  anglePublisher.publish(msg);
  	
}

    
///////////////////////////////////////////////////////

**/





			
		}

		// Called by the world update start event
	public:
		void OnUpdate()
		{
			float angleDegree = -90;
			float rad = M_PI * angleDegree / 180;
std::string name = this->model->GetJoint("chasis_arm1_joint")->GetScopedName();
std::string name1 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
std::string name2 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
std::string name3 = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();







	// this->jointController->SetPositionPID(name, pid);
	//this->jointController->SetPositionPID(name1, pid);
	//this->jointController->SetPositionPID(name2, pid);
	//this->jointController->SetPositionPID(name3, pid);
	// this->jointController->SetPositionTarget(name, rad);
	// this->jointController->SetPositionTarget(name1, rad);
	// this->jointController->SetPositionTarget(name2, rad);
	// this->jointController->SetPositionTarget(name3, rad);
			
			
			
			// this->jointController->Update();

			// Get joint position by index. 
			// 0 returns rotation accross X axis
			// 1 returns rotation accross Y axis
			// 2 returns rotation accross Z axis
			// If the Joint has only Z axis for rotation, 0 returns that value and 1 and 2 return nan
			
			
		
			///////////////////////////////
			

			
			double a1 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);
			
			double a0 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(0);
			
			double a2 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);
			
			double a3 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);
		
						
			// double a2 = this->model->GetJoint("chasis_arm1_joint").Position(0);
			// double a3 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(2);
			
			
			
std::cout << "Current base_arm1_joint values: " << a0 * 180.0 / M_PI << std::endl;
std::cout << "Current arm1_arm2_joint values: " << a1 * 180.0 / M_PI << std::endl;
std::cout << "Current arm2_arm3_joint values: " << a2 * 180.0 / M_PI << std::endl;
std::cout << "Current arm3_arm4_joint values: " << a3 * 180.0 / M_PI << std::endl;


std::cout << "---------------------------------------------"<< std::endl;
	
			
			////////////////////////////////////
			
std::cout << "Current angle value of 0 and 1: " << a0 << std::endl;
									std::cout << "Current angle value of 1 and 2: " << a1 << std::endl;
									std::cout << "Current angle value of 2 and 3: " << a2 << std::endl;
									std::cout << "Current angle value of 3 and 4: " << a3 << std::endl;
						
						
			///////////////////////////////////
			
			
			
			
							
						
		}

		// a pointer that points to a model object
	private:
		physics::ModelPtr model;

		// 	// A joint controller object
		// 	// Takes PID value and apply angular velocity
		// 	//  or sets position of the angles
	private:
		physics::JointControllerPtr jointController;

	private:
		event::ConnectionPtr updateConnection;

		// // 	// PID object
	private:
		common::PID pid;
	};

	// Register this plugin with the simulator
	GZ_REGISTER_MODEL_PLUGIN(ModelPush)
}
