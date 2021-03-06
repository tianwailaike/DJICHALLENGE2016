#ifndef APRILTAGDETECTOR_H
#define APRILTAGDETECTOR_H

// AprilTag family
#include "AprilTags/TagDetector.h"
#include "AprilTags/Tag16h5.h"
#include "AprilTags/Tag25h7.h"
#include "AprilTags/Tag25h9.h"
#include "AprilTags/Tag36h9.h"
#include "AprilTags/Tag36h11.h"

#define USING_OPENCV
#define USING_ROS

#include<std_msgs/Int8.h>
#include<std_msgs/Bool.h>
#include <dji_sdk/Reldist.h>
#include<dji_sdk/DetectionPoints.h>



#include<dji_sdk/TransparentTransmissionData.h>


//#ifdef USING_ROS
#include "ros/ros.h"
#include <ros/publisher.h>
//#endif


#ifndef GIMBAL_USED
#define GIMBAL_USED
#include<dji_sdk/Gimbal.h>
#endif


#ifndef SMALL_TAG_USED
#define SMALL_TAG_USED
#endif


#ifndef PI
const double PI = 3.14159265358979323846;
#endif

const double TWOPI = 2.0*PI;

class ApriltagDetector
{
public:
  AprilTags::TagDetector* m_tagDetector;
  AprilTags::TagCodes m_tagCodes;

  int m_mode; // 0: AprilTag detection directly
  // 1: w	ith ROI window
  // 2: with Optical flow tracking

  bool m_draw; // draw image and April tag detections?
  bool m_timing; // print timing information for each tag extraction call
  bool m_isShowResult;

  int m_width; // image size in pixels
  int m_height;
  double m_tagSize; // April tag side length in meters of square black frame
  double m_fx; // camera focal length in pixels
  double m_fy;
  double m_px; // camera principal point
  double m_py;

  int m_frames;
  vector<vector<int>> m_win; // [ x_min, x_max, y_min, y_max ]
  bool m_isTracking;
 // bool m_usi


#ifdef USING_OPENCV
  cv::VideoCapture m_cap;
#endif

  ros::Publisher m_result_pub;
  ros::Publisher  m_numOfDetection_pub;
  dji_sdk::Reldist rel_dist;
  std_msgs::Int8 m_numOfDetections;
  dji_sdk::DetectionPoints m_detectionPoints;
  ros::Publisher m_detectionPoints_pub;
//Flag: start using small TagSize
  ros::Publisher m_using_smallTags_pub;
  
  ros::Subscriber m_CMD_FROM_DJI_sub;
#ifdef GIMBAL_USED
  ros::Subscriber m_gimbal_sub;
  dji_sdk::Gimbal m_gimbal;
#endif


  //float last_flight_height

  uint8_t m_CMD_from_remote; 
  std::vector<cv::Point2f> points[2];
  vector<AprilTags::TagDetection> detections;
  bool usingSmallTags;
public:
  ApriltagDetector ( ros::NodeHandle& node ) :
    m_tagCodes ( AprilTags::tagCodes36h11 ),
    m_tagDetector ( NULL ),


    m_mode ( 1 ),

    m_draw ( false ),
    m_timing ( true ),
    m_isShowResult ( true ),

    m_width ( 640 ),
    m_height ( 360 ),
    m_tagSize ( 0.31 ),
    m_fx ( 373 ), //Specified by x3 Camera;
    m_fy ( 373 ),
    m_px ( 318 ),
    m_py ( 181 ),
    m_frames ( 0 ),
    m_isTracking ( false ),
    m_CMD_from_remote('W'),
    usingSmallTags(false)
  { 

    m_tagDetector = new AprilTags::TagDetector ( m_tagCodes );
    // cv::namedWindow("AprilTag", 1);
    m_result_pub  = node.advertise<dji_sdk::Reldist> ( "apriltag_detection/reldist",10 );
    m_numOfDetection_pub = node.advertise<std_msgs::Int8> ( "apriltag_detection/numofdetections",10 );
    m_detectionPoints_pub = node.advertise<dji_sdk::DetectionPoints> ( "apriltag_detection/detectionPoints",10 );

    m_using_smallTags_pub = node.advertise<std_msgs::Bool>("apriltag_detection/usingSmallTags",10);
#ifdef GIMBAL_USED
    m_gimbal_sub = node.subscribe( "dji_sdk/gimbal",10,&ApriltagDetector::gimbal_read_callback,this );
#endif

    m_CMD_FROM_DJI_sub = node.subscribe( "dji_sdk/data_received_from_remote_device",10,&ApriltagDetector::cmd_from_mobile_callback,this );

  }

  ~ApriltagDetector() {
    
    if(!m_tagDetector)
      delete(m_tagDetector);
  }

  // changing the tag family
  void setTagCodes ( string s );

  // changing the tag size
  void setTagSize ( double size_ )
  {
    m_tagSize = size_;
  }

  // reboot for new video stream
  void reboot();

  void processImage ( cv::Mat& image );
  // get window with (1+2*delta)*TagSize
  std::vector<int> point2win ( cv::Mat image, float delta = 0 );

  void print_detections ();
#ifdef GIMBAL_USED
  void gimbal_read_callback ( const dji_sdk::Gimbal & gimbal )
  {
    m_gimbal = gimbal;
  }

#endif


Point2f  tags_centroid(AprilTags::TagDetection &detection,Point2f &centr);


void cmd_from_mobile_callback(const dji_sdk::TransparentTransmissionData & transData)
{
  m_CMD_from_remote = transData.data.at(0);
}

};

#endif // APRILTAGDETECTOR_H
