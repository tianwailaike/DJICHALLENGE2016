#include <ros/ros.h>
#include <stdio.h>
#include <dji_sdk/dji_drone.h>
#include <cstdlib>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>

//#include<geometry_msgs/PoseWithCovarianceStamped.h>

#include<std_msgs/Int8.h>
#include<std_msgs/Bool.h>
#include<math.h>
#include<fstream>

#define GIMBAL_USED // At present, must be set with NO_PID_USED
#define filter_N 4
#define EPS 0.0000000001


#define VEL_MODE

ofstream writeF ( "/root/log.txt",ios::app );
using namespace DJI::onboardSDK;

static uint8_t numOfDetections = 0;
static float last_flight_x = 0.0;
static float last_flight_y = 0.0;
static bool using_smallTags = false;

static float g_height =0.0 ;
static vector<float> g_vel = 0.0;
//static geometry_msgs::Vector3Stamped g_vel;

void apriltag_detection_resultCallback ( const std_msgs::Int8 & num_of_detection )
{
  numOfDetections = num_of_detection.data;
  //ROS_INFO ( "%d tag(s) are detected",numOfDetections );
}
void apriltag_using_smallTags_callback ( const std_msgs::Bool & using_smallTags_ )
{
  using_smallTags = using_smallTags_.data;
}
/*
速度数据: 机体坐标下的速度。单位是毫米每秒，频率是10 Hz.
障碍物距离数据: 从五个Guidance传感器模块读取的障碍物距离数据。单位是厘米，频率是20 Hz.
IMU数据: IMU数据，包括加速度计（单位为重力加速度g）和陀螺仪（四元数格式）数据。频率为20 Hz.
超声波数据: 输出从五个Guidance传感器读取的超声波数据，包括障碍物距离（单位为米）和数据的可靠性。频率为20 Hz.
*/
void g_height_control_callback(const sensor_msgs::LaserScan & guidance_height)
{
  //频率20Hz
     if(abs(guidance_height.range_max-guidance_height.range_min)<0.3)
            g_height = (guidance_height.range_max+guidance_height.range_min)/2;
    else  
            g_height = guidance_height.range_min;
}
void g_vel_control_callback(const geometry_msgs::Vector3Stamped & guidance_velocity)
{
  g_vel[0] = guidance_velocity.vector.x/1000; //频率10Hz
  g_vel[1] = guidance_velocity.vector.y/1000;
  g_vel[2] = guidance_velocity.vector.z/1000;
}
/*
void g_odistance_callback(const sensor_msgs::LaserScan & guidance_obstacle_dist)
{

}
*/
float sum ( float a[],size_t len )
{
  float sum = 0;
  for ( int i = 0; i<len; i++ )
    {
      sum += a[i];
    }
  return sum;
}

float find_min ( float a[], size_t len )
{
  float min = a[0];

  for ( int  j = 1; j<len; j++ )
    {
      if ( a[j]<min )
        min = a[j];

    }
  return min;
}

float find_max ( float a[], size_t len )
{
  float max = a[0];

  for ( int  j = 1; j<len; j++ )
    {
      if ( a[j]>max )
        max = a[j];

    }
  return max;
}



int main ( int argc, char **argv )
{
  int main_operate_code = 0;
  int temp32;
  bool valid_flag = false;
  bool err_flag = false;
  //for test
  double v_state_x=0.0, v_state_y=0.0, vxx=0.0, vyy=0.0;

  //Some params
  int delay_count = 100;
  double init_flight_height = 6.0;
  double descending_height_delta = 0.005;

  ros::init ( argc, argv, "sdk_client" );
  ROS_INFO ( "sdk_service_client_test" );


  ros::NodeHandle node_priv ( "~" );
  node_priv.param<int> ( "delayCount",delay_count,100 );
  node_priv.param<double> ( "initFlightHeight",init_flight_height,6.0 );
  node_priv.param<double> ( "descendSpeed",descending_height_delta,0.005 );
  //node_priv.param<double>("test_x",test_x,10.0);
  //node_priv.param<double>("test_y",test_y,10.0);

  ros::NodeHandle nh;
  DJIDrone* drone = new DJIDrone ( nh );

  writeF<<ros::Time::now() <<endl;
  //virtual RC test data
  ros::Subscriber apriltag_num_of_detections_sub = nh.subscribe ( "apriltag_detection/numofdetections",100,apriltag_detection_resultCallback );
  ros::Subscriber apriltag_using_smallTags = nh.subscribe ( "apriltag_detection/usingSmallTags",10,apriltag_using_smallTags_callback );
  //data acquired from guidance
  ros::Subscriber guidance_height_sub = nh.subscribe("/guidance/ultrasonic",2,g_height_control_callback);//<sensor_msgs::LaserScan>
  ros::Subscriber guidance_vel_sub = nh.subscribe("/guidance/velocity",1,g_vel_control_callback);//<geometry_msgs::Vector3Stamped>
 // ros::obstacle_distance_pub	= nh.subscribe("/guidance/obstacle_distance",1,g_odistance_callback);//<sensor_msgs::LaserScan>
 
//Test filtering

  //ros::Publisher filtered_x_pub = nh.advertise<std_msgs::Float64> ( "filtered_x",10 );
  //ros::Publisher not_filtered_x_pub = nh.advertise<std_msgs::Float64> ( "not_filtered_x",10 );
  float flying_height_control = init_flight_height;

  int count = 0;
  int count_tracking = 0;
  int count_losing_tracking =0;
  ros::Rate loop_rate ( 50 );
  static bool flag = false;

  //float flight_x_filtered = 0.0;
// std_msgs::Float64 filtered_x_msg,not_filtered_x_msg;
  float filtered_x=0.0,filtered_y=0.0;
//filtered_x_msg.data = 0.0;
  float yaw=0;
// not_filtered_x_msg.data = 0.0;

  //For filtering;
  float filter_seq_x[filter_N]= {0},filter_seq_y[filter_N]= {0};

  //For vel_MODE
  float vel_x_drone = 0.0, vel_y_drone = 0.0;

  float initial_DeltaX, initial_DeltaY,DeltaX,DeltaY,initial_Descending_height;
  float last_x_tag, last_y_tag;
  drone->gimbal_angle_control ( 0,-900,0,20 ); //Head down at the beginning.
  
  int status_code = 0;
  int tik_count = 0;
  
  while ( ros::ok() )
    {

      ros::spinOnce();


      for ( int i = 0; i< filter_N-1; i++ )
        {
          filter_seq_x[i] = filter_seq_x[i+1];
          filter_seq_y[i] = filter_seq_y[i+1];
        }

      filter_seq_x[filter_N-1] = drone->flight_x;
      filter_seq_y[filter_N-1] = drone->flight_y;

      filtered_x =  drone->flight_x;//( sum ( filter_seq_x,filter_N )-find_max ( filter_seq_x,filter_N )-find_min ( filter_seq_x,filter_N ) ) / ( filter_N-2 );

      filtered_y =  drone->flight_y;//( sum ( filter_seq_y,filter_N )-find_max ( filter_seq_y,filter_N )-find_min ( filter_seq_y,filter_N ) ) / ( filter_N-2 );


      switch ( drone->transparentdata.data.at ( 0 ) )
        {

        case 'q':
#ifndef VEL_MODE
          if ( numOfDetections >= 1 )
            {
              dji_sdk::AttitudeQuaternion q;
              q=drone->attitude_quaternion;

              yaw   = atan2 ( 2.0 * ( q.q3 * q.q0 + q.q1 * q.q2 ) , - 1.0 + 2.0 * ( q.q0 * q.q0 + q.q1 * q.q1 ) );
              yaw   = -yaw;
              vxx=drone->velocity.vx*cos ( yaw )-drone->velocity.vy*sin ( yaw );
              //v_state_x = 0.001*pow(vxx,5)-0.0203*pow(vxx,4)+0.1534*pow(vxx,3)-0.5466*pow(vxx,2)+1.6766*vxx;
              //v_state_x=drone->velocity.vx>=0?v_state_x:-v_state_x;
              vyy= drone->velocity.vx*sin ( yaw ) + drone->velocity.vy*cos ( yaw );

              v_state_y = 0.001*pow ( abs ( vyy ),5 )-0.0203*pow ( abs ( vyy ),4 ) +0.1534*pow ( abs ( vyy ),3 )-0.5466*pow ( abs ( vyy ),2 ) +1.6766*abs ( vyy );
              v_state_y=vyy>=0?v_state_y:-v_state_y;
            }
          else
            {
              v_state_x=0.0;
              v_state_y=0.0;
            }
          //ROS_INFO("yaw=%.3f,  vyy=%.3f",yaw,vyy);
          /*
          if ( writeF.good() )
            {
              writeF<<filtered_y<<" "<<drone->velocity.vx<<" "<<drone->velocity.vy<<" "<<v_state_y<<endl;
            }
            */
          drone->attitude_control ( 0x9B,filtered_x,filtered_y+0.5*v_state_y, init_flight_height, 0.0 );

          break;

#else
          //TODO VEL_MODE control

          if ( numOfDetections>=1 )
            {


              last_flight_x = filtered_x;
              last_flight_y = filtered_y;

              drone->attitude_control ( 0x9B,filtered_x,filtered_y, init_flight_height, 0.0 );



            }

          else if ( numOfDetections == 0 )
            {
              count_losing_tracking ++;
              if ( count_losing_tracking<50 ) // if lossing the tag, keep flying for a little bit of time
                drone->attitude_control ( 0x9B,last_flight_x,last_flight_y,init_flight_height,0.0 );// Keep the speed for 1 seconds if loss the tag

              else
                {
                  //count_losing_tracking = 0;
                  drone->attitude_control ( 0x9B,0,0,init_flight_height,0.0 );// Keep the speed for 1 seconds if loss the tag
                }

              //  count_losing_tracking ++;

            }
          break;

#endif


        case 'd':
          // writeF.close();
#ifndef VEL_MODE

#ifdef GIMBAL_USED
          drone->gimbal_angle_control ( 0, -450,0,10 ); //45degree used //( int ) drone->flight_gimbal_angle_inc*10,0,10,0 );

#endif
          if ( numOfDetections >= 1 )
            {
              double vxx=abs ( drone->velocity.vx );
              v_state_x = 0.001*pow ( vxx,5 )-0.0203*pow ( vxx,4 ) +0.1534*pow ( vxx,3 )-0.5466*pow ( vxx,2 ) +1.6766*vxx;
              v_state_x=drone->velocity.vx>=0?v_state_x:-v_state_x;
              double vyy=abs ( drone->velocity.vy );
              v_state_y = 0.001*pow ( vyy,5 )-0.0203*pow ( vyy,4 ) +0.1534*pow ( vyy,3 )-0.5466*pow ( vyy,2 ) +1.6766*vyy;
              v_state_y=drone->velocity.vy>=0?v_state_y:-v_state_y;
            }
          else
            {
              v_state_x=0.0;
              v_state_y=0.0;
            }
          // filtered_x = drone->flight_x;
          // ROS_INFO ( "Gimbal:pitch:%.3f, norm:%.3f filtered_x:%.3f, flight_x:%.3f",drone->gimbal.pitch,drone->flight_norm,filtered_x,drone->flight_x );
          //  filtered_y=drone->flight_y;

          if ( numOfDetections >= 1 ) // When tags detected
            {
              last_flight_x = filtered_x;
              last_flight_y = filtered_y;
              if ( using_smallTags )  //When using smalltags starts
                {
                  if ( count++ >= delay_count ) // delay 2s when start using smalltags
                    {

                      if ( drone->flight_height<0.20  && filtered_x < 0.10 ) //when it is to land
                        {
                          flying_height_control -= 0.02;//Make sure it lands at the platform quickly

                          drone->attitude_control ( 0x9B,filtered_x*1.6,filtered_y*1.6, flying_height_control, 0.0 );//Force the drone to finally attemp landing at moving platform;

                        }
                      else
                        {
                          flying_height_control -= descending_height_delta;
                          count = delay_count;
                          drone->attitude_control ( 0x9B,filtered_x,filtered_y, flying_height_control, 0.0 );

                        }
                    }
                  else
                    {

                      drone->attitude_control ( 0x9B,filtered_x,filtered_y, flying_height_control, 0.0 );

                    }

                }
              else
                {
                  flying_height_control -= descending_height_delta*2;
                  drone->attitude_control ( 0x9B,filtered_x+v_state_x,filtered_y+v_state_y, flying_height_control, 0.0 );


                }


            }
          else if ( numOfDetections == 0 )
            {

              drone->attitude_control ( 0x9B,last_flight_x*1.6,last_flight_y*1.6, flying_height_control, 0.0 );  //if haven't detected tags, speed up the fomer control

            }
          break;
#else
          // VEL_MODE control

#define ACC_HEIGHT 2.56

#ifdef GIMBAL_USED
          // 1. adjust gimbal

#endif

//           if ( numOfDetections >= 1 )  // if any AprilTag is detected
//             {
// 
//               // if the drone is above 2.56m, descend at a certain speed(a little bit faster).
//               if ( drone->local_position.z > 2.56 )
//                 {
// 
//                   flying_height_control -= descending_height_delta*2;
//                   drone->attitude_control ( 0x9B,filtered_x,filtered_y, flying_height_control, 0.0 );// To get approximate speed of the tag
//                 }
// 
//               else                              //else if the drone is below 2.56m
//                 {
// 
//                   if ( count_tracking == 0 ) // Execute only once, to save the initial statistics;
//                     {
// 
//                       DeltaX = filtered_x;
//                       DeltaY = filtered_y;
//                       initial_DeltaX = drone->flight_x_tag;// Save the actual distance between the Tag(big) and M100;
//                       initial_Descending_height = drone->local_position.z;// Save the initial height of speeding up
//                       writeF<<initial_DeltaX<<" "<<initial_Descending_height<<" "<<drone->local_position.z<<endl;
//                       count_tracking++;
//                     }
//                   else
//                     {
//                       count_tracking = 1;
//                       if ( using_smallTags ) // Keep the distance
//                         {
//                           DeltaX = DeltaX;
//                         }
// 
//                       else
//                         {
//                           if ( drone->flight_x_tag > 0.0 ) //If Tag is still ahead
//                             {
//                               DeltaX += 0.003*drone->flight_x_tag / ( 1+drone->flight_x_tag ); //
//                             }
//                           else
//                             {
// 
//                               DeltaX += 0.003*drone->flight_x_tag / ( 1+drone->flight_x_tag ); //
//                             }
// 
// 
//                           if ( drone->local_position.z <0.65 && abs ( drone->flight_x_tag ) <0.2 ) // If condition satisfied, quick dump;
//                             {
//                               ROS_INFO ( "In sharp descending." );
//                               flying_height_control -= 0.08;
//                               drone->attitude_control ( 0x9B, DeltaX,filtered_y,flying_height_control,0.0 );
//                               writeF<<"Za"<<endl;
//                               writeF <<"f_H_c:"<< flying_height_control<<" F_h:"<<drone->flight_height<<" L.z:"<<drone->local_position.z<<" --DeltaX:"<<DeltaX<<",filtered_x:"<<filtered_x<<endl;
//                               last_flight_x = DeltaX;
//                               last_flight_y = filtered_y;
//                             }
//                           else
//                             {
// 
//                               float temp_height = ( 2* abs ( drone->flight_x_tag ) / ( abs ( drone->flight_x_tag ) +abs ( initial_DeltaX ) ) ) ;
//                               temp_height = sqrt ( temp_height ) *initial_Descending_height;
//                               flying_height_control = temp_height;
//                               writeF <<"f_H_c:"<< flying_height_control<<" F_h:"<<drone->flight_height<<" L.z:"<<drone->local_position.z<<" --DeltaX:"<<DeltaX<<",filtered_x:"<<filtered_x<<endl;
//                               drone->attitude_control ( 0x9B, DeltaX,filtered_y,flying_height_control,0.0 );
// 
// 
// 
//                               last_flight_x = DeltaX;
//                               last_flight_y = filtered_y;
// 
// 
//                             }
// 
//                         }
//                     }
// 
//                 }
// 
//             }
// 
//           else if ( numOfDetections == 0 )
//             {
//               drone->attitude_control ( 0x9B,last_flight_x,last_flight_y,flying_height_control,0.0 );// Keep the speed for 1 seconds if loss the tag
//             }
	  
	  if (numOfDetections >= 1) {
	      switch(status_code) {
		
		// 0 for height above 2.56m
		case 0:
		    drone->gimbal_angle_control ( 0, ( int ) drone->flight_gimbal_angle_inc*10,0,10,0 );
		    flying_height_control -= descending_height_delta*3.2;
                    drone->attitude_control ( 0x9B,filtered_x,filtered_y, flying_height_control, 0.0 );
		    if (drone->local_position.z <= 2.2) {
			status_code = 1;
		    }
		    break;
		    
		// 1 for big tag
		case 1:

		    if ( count_tracking == 0 ) { // Execute only once, to save the initial statistics;
			DeltaX = filtered_x;
			DeltaY = filtered_y;
			initial_DeltaX = drone->flight_x_tag;// Save the actual distance between the Tag(big) and M100;
			initial_Descending_height = drone->local_position.z;// Save the initial height of speeding up
			writeF<<initial_DeltaX<<" "<<initial_Descending_height<<" "<<drone->local_position.z<<endl;
			count_tracking++;
		        drone->gimbal_angle_control ( 0, ( int ) drone->flight_gimbal_angle_inc*10,0,10,0 );
                    }
                    else {
			count_tracking = 1;
			if ( drone->flight_x_tag > 0.5 ) { //If Tag is still ahead
			    DeltaX += 0.003*drone->flight_x_tag / ( 1+drone->flight_x_tag ); //
                        }
                        else if (drone->flight_x_tag > 0) {
			    DeltaX -= 0.003*drone->flight_x_tag / ( 1+drone->flight_x_tag ); //
			}
			
			float temp_height = ( 2* abs ( drone->flight_x_tag ) / ( abs ( drone->flight_x_tag ) +abs ( initial_DeltaX ) ) ) ;
                        temp_height = pow ( temp_height,2 ) *initial_Descending_height;
                        flying_height_control = temp_height;
                        writeF <<"f_H_c:"<< flying_height_control<<" F_h:"<<drone->flight_height<<" L.z:"<<drone->local_position.z<<" --DeltaX:"<<DeltaX<<",filtered_x:"<<filtered_x<<endl;
                        drone->attitude_control ( 0x9B, DeltaX,filtered_y,flying_height_control,0.0 );
                        last_flight_x = DeltaX;
                        last_flight_y = filtered_y;
			
			if (using_smallTags) {
			    count_tracking = 0;
			    status_code = 2;
			    writeF << "--------------------------small tag stage---------------------------" << endl;
			}
			else{
			    drone->gimbal_angle_control ( 0, ( int ) drone->flight_gimbal_angle_inc*10,0,10,0 );
			}
		    }
		    break;
		    
		case 2:
		    if ( count_tracking == 0 ) { // Execute only once, to save the initial statistics;
			initial_DeltaX = drone->flight_x_tag-60;// Save the actual distance between the Tag(big) and M100;
			//initial_Descending_height = drone->local_position.z;// Save the initial height of speeding up
			initial_Descending_height = g_height-0.1;
			writeF<<initial_DeltaX<<" "<<initial_Descending_height<<" "<<drone->local_position.z<<endl;
			count_tracking++;
                    }
                    drone->attitude_control ( 0x9B, DeltaX,filtered_y,flying_height_control,0.0 );
		    if (++tik_count == 150) {
			status_code = 4;
		    }
		    break;
		    
		// 3 for small tag
		case 3:
		    // count_tracking = 1;
		    if ( drone->flight_x_tag > 0.20 ) { //If Tag is still ahead
			DeltaX -= 0.006*drone->flight_x_tag / ( 1+drone->flight_x_tag ); //
		    }
		    else {
			DeltaX -= 0.003*drone->flight_x_tag / ( 1+drone->flight_x_tag ); //
		    }
		    DeltaX -= 1.0;
			
		    {
			float temp_height = ( 2* abs ( drone->flight_x_tag ) / ( abs ( drone->flight_x_tag ) +abs ( initial_DeltaX ) ) ) ;
			temp_height = pow ( temp_height,2 ) *initial_Descending_height;
			flying_height_control = temp_height;
			writeF <<"f_H_c:"<< flying_height_control<<" F_h:"<<drone->flight_height<<" L.z:"<<drone->local_position.z<<" --DeltaX:"<<DeltaX<<",filtered_x:"<<filtered_x<<endl;
			drone->attitude_control ( 0x9B, DeltaX,filtered_y,flying_height_control,0.0 );
			last_flight_x = DeltaX;
			last_flight_y = filtered_y;
		    }
		    	
		    
		    //if (drone->local_position.z <0.65 && abs ( drone->flight_x_tag ) <0.3) {
		    if(g_height<0.65&&abs(drone->flight_x_tag)<0.3){
			status_code = 4;
		    }
		    
		    break;
		    
		// 4 for sharp descending
		case 4:
		    //if ( drone->local_position.z <0.65 && abs ( drone->flight_x_tag ) <0.3 ) // If condition satisfied, quick dump;
                    {
			writeF << "sharp" << endl;
			ROS_INFO ( "In sharp descending." );
			flying_height_control -= 0.08;
			DeltaX -= 0.8;
			drone->attitude_control ( 0x9B, DeltaX,filtered_y,flying_height_control,0.0 );
			writeF<<"Za"<<endl;
			writeF <<"f_H_c:"<< flying_height_control<<" F_h:"<<drone->flight_height<<" L.z:"<<drone->local_position.z<<" --DeltaX:"<<DeltaX<<",filtered_x:"<<filtered_x<<endl;
			last_flight_x = DeltaX;
			last_flight_y = filtered_y;
                    }
                    //else {
			//status_code = 3;
		    //}
		    break;
	      }
	  }
	  
	  else if ( numOfDetections == 0 ) {
	      // Keep the speed for 1 seconds if loss the tag
	      if (status_code == 2||4) {
		  drone->attitude_control ( 0x9B,last_flight_x, 0,flying_height_control,0.0 );
	      }
	      // ignore y controll
	      else {
		  drone->attitude_control ( 0x9B,last_flight_x,last_flight_y,flying_height_control,0.0 );
	      }
	  }      
	  
          break;
	 

#endif
        default:
          //  ROS_INFO ( "Waithing for command from mobile!\n" );
          break;
        }
      ROS_INFO ( "Command code is %c",drone->transparentdata.data.at ( 0 ) );
      //count++;
      loop_rate.sleep();


    }
  writeF.close();

  return 0;
}
