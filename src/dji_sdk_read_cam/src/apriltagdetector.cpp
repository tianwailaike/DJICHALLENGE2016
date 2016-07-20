#include "apriltagdetector.h"
#include <sys/time.h>
#include "opencv2/features2d/features2d.hpp"
#include "opencv2/calib3d/calib3d.hpp"

using namespace cv;
using namespace std;


float flight_height = 0.0;
bool change_once_flag = true;
int small_tag_count = 0;
Point2f small_tag_center ;
//uint8_t CMD = 'W';
/**
 * Normalize angle to be within the interval [-pi,pi].
 */
inline double standardRad ( double t )
{
  if ( t >= 0. )
    {
      t = fmod ( t+PI, TWOPI ) - PI;
    }
  else
    {
      t = fmod ( t-PI, -TWOPI ) + PI;
    }
  return t;
}

// utility function to provide current system time (used below in
// determining frame rate at which images are being processed)
double tic()
{
  struct timeval t;
  gettimeofday ( &t, NULL );
  return ( ( double ) t.tv_sec + ( ( double ) t.tv_usec ) /1000000. );
}
/**
 * Convert rotation matrix to Euler angles
 */

void wRo_to_euler ( const Eigen::Matrix3d& wRo, double& yaw, double& pitch, double& roll )
{
  yaw = standardRad ( atan2 ( wRo ( 1,0 ), wRo ( 0,0 ) ) );
  double c = cos ( yaw );
  double s = sin ( yaw );
  pitch = standardRad ( atan2 ( -wRo ( 2,0 ), wRo ( 0,0 ) *c + wRo ( 1,0 ) *s ) );
  roll  = standardRad ( atan2 ( wRo ( 0,2 ) *s - wRo ( 1,2 ) *c, -wRo ( 0,1 ) *s + wRo ( 1,1 ) *c ) );
}

void ApriltagDetector::setTagCodes ( string s )
{
  if ( s=="16h5" )
    {
      m_tagCodes = AprilTags::tagCodes16h5;
    }
  else if ( s=="25h7" )
    {
      m_tagCodes = AprilTags::tagCodes25h7;
    }
  else if ( s=="25h9" )
    {
      m_tagCodes = AprilTags::tagCodes25h9;
    }
  else if ( s=="36h9" )
    {
      m_tagCodes = AprilTags::tagCodes36h9;
    }
  else if ( s=="36h11" )
    {
      m_tagCodes = AprilTags::tagCodes36h11;
    }
  else
    {
      cout << "Invalid tag family specified" << endl;
      exit ( 1 );
    }
  if ( NULL == m_tagDetector )
    m_tagDetector = new AprilTags::TagDetector ( m_tagCodes );
  else
    {
      delete m_tagDetector;
      m_tagDetector = new AprilTags::TagDetector ( m_tagCodes );
    }
}

void ApriltagDetector::reboot()
{
  m_frames = 0;
  m_win.clear();
  m_isTracking = false;
}

void ApriltagDetector::processImage ( cv::Mat& image )
{

  ++m_frames;
  Mat image_gray;
  if ( image.dims!=2 )
    cv::cvtColor ( image, image_gray, CV_BGR2GRAY );
  else
    image_gray = image.clone();

  double t0=0;
  if ( m_timing )
    {
      t0 = tic();
    }
    //the first detection when switched to the small tag using a croped window area 
  if(small_tag_count==1)
  {
    cv::Mat img_b2swin = image_gray(cv::Range(0,image_gray.rows),cv::Range(m_win[2]>m_win[3]?m_win[2]:m_win[3],image_gray.cols)).clone();
    detections = m_tagDetector->extractTags(img_b2swin);
    small_tag_count = 0;
  }
  // no prev window, do detection on the whole image
 
      if ( m_win.size() ==0||m_mode==0 )
    {
      detections = m_tagDetector->extractTags ( image_gray );
    }

  // prev window exists, only process in it
  else
    {
      vector <cv::Mat> imgWin;
      for(int  i= 0;i<detections.size();i++)
      {
      imgWin[i] = image_gray ( cv::Range ( m_win[i][2],m_win[i][3] ),cv::Range ( m_win[i][0],m_win[i][1] ) ).clone();
      detections[i] = m_tagDetector->extractTags ( imgWin[i] );

      // reproject the Tag result to the whole image
      /*
      for ( int i=0; i<detections.size(); i++ )
        {
          for ( int ii=0; ii<4; ii++ )
            {
              detections[i].p[ii].first+=m_win[i][0];
              detections[i].p[ii].second+=m_win[i][2];
            }
          detections[i].cxy.first+=m_win[i][0];
          detections[i].cxy.second+=m_win[i][2];
        }*/
      
      // reproject the Tag result to the whole image
          for ( int ii=0; ii<4; ii++ )
            {
               detections[i].p[ii].first+=m_win[i][0];
               detections[i].p[ii].second+=m_win[i][2];
            }
               detections[i].cxy.first+=m_win[i][0];
               detections[i].cxy.second+=m_win[i][2];
        }
        
   
        

	}
            for(int kk = 0;kk<detections.size();kk++)
	{
	    if ( detections[kk].empty() )
              m_win[kk].clear();
         else
          {
              m_win[kk] = point2win (imwi[kk] , 1 );
//        cout<<m_win[0]<<" "<<m_win[1]<<" "<<m_win[2]<<" "<<m_win[3]<<endl;
	      tags_centroid(detections,small_tag_center);
           } 
    }

    

    

  if ( m_timing )
    {
      double dt = tic()-t0;

//     ROS_INFO ( "Extracting tags took%.6f seconds",dt );
    }

  print_detections();
  // show the current image including any detections
  if ( m_draw )
    {
      for ( unsigned int i=0; i<detections.size(); i++ )
        {
          detections[i].draw ( image );
        }
      imshow ( "AprilTag", image );
      waitKey ( 1 );

    }
}

void ApriltagDetector::print_detections ( )
{
//   if ( m_isShowResult )
//     cout << "  Id: " << detection.id
//          << " (Hamming: " << detection.hammingDistance << ")";

  // recovering the relative pose of a tag:

  // NOTE: for this to be accurate, it is necessary to use the
  // actual camera parameters here as well as the actual tag size
  // (m_fx, m_fy, m_px, m_py, m_tagSize)



  dji_sdk::Reldist rel_dist;
  dji_sdk::rel_dist rel_dist_filter;
  rel_dist.header.frame_id = "x3_reldist";

  ROS_INFO ( "%d tags detected.",detections.size() );
// ROS_INFO ( "Publish detection routine is working..." );

// float last_flight_height = 0.0;
  m_numOfDetections.data = detections.size();
  m_numOfDetection_pub.publish ( m_numOfDetections );
  if ( detections.empty() ) // no Tag found
    {
      rel_dist.header.stamp = ros::Time::now();
      rel_dist.x = 0;
      rel_dist.y = 0;
      rel_dist.z = 0;
      rel_dist.norm = 0.0;
      rel_dist.gimbal_inc = 0.0;
      rel_dist.istracked = false;

      m_detectionPoints.x0 = m_detectionPoints.y0 =
                               m_detectionPoints.x1 = m_detectionPoints.y1 =
                                     m_detectionPoints.x2 = m_detectionPoints.y2 =
                                           m_detectionPoints.x3 = m_detectionPoints.y3 = 0;
      m_detectionPoints.id = -1;//For no tag;
      m_detectionPoints_pub.publish ( m_detectionPoints );
      // ros::Rate dist_pub_rate(20);
      m_result_pub.publish ( rel_dist );
    }
  float rel_x_sum,rel_y_sum,rel_z_sum;
  for ( unsigned int i=0; i<detections.size(); i++ )
    {
      Eigen::Vector3d translation;
      Eigen::Matrix3d rotation;
      detections[i].getRelativeTranslationRotation ( m_tagSize, m_fx, m_fy, m_px, m_py,
          translation, rotation );
      Eigen::Matrix3d F;
      F <<
        1, 0,  0,
           0,  -1,  0,
           0,  0,  1;
      Eigen::Matrix3d fixed_rot = F*rotation;
      double yaw, pitch, roll;
      wRo_to_euler ( fixed_rot, yaw, pitch, roll );


      if ( m_isShowResult )
        {

          ROS_INFO ( "Tag ID: %d",detections[i].id );
          ROS_INFO ( "distance:%.3f, m,x:%.3f, y:.%3f, z:%.3f, yaw:%.3f, pitch:%.3f, roll:%.3f",
                     translation.norm(),translation ( 0 ),translation ( 1 ),translation ( 2 ),yaw,pitch,roll );
          // Also note that for SLAM/multi-view application it is better to
          // use reprojection error of corner points, because the noise in
          // this relative pose is very non-Gaussian; see iSAM source code
          // for suitable factors.
        }



      rel_dist.header.stamp = ros::Time::now();
      rel_dist.x = translation ( 0 );
      rel_dist.y = translation ( 1 );

      rel_dist.yaw = yaw;
      rel_dist.pitch = pitch;
      rel_dist.roll = roll;
      rel_dist.norm = translation.norm();
      rel_dist.gimbal_inc = atan ( translation ( 2 ) /translation ( 0 ) ) *57.2958;
      rel_dist.istracked = true;
      
#ifndef GIMBAL_USED
      rel_dist.height_with_gimbal = translation ( 0 );
      rel_dist.z = translation ( 2 );//IMPORTANT NOTE: Uisng GIMBAL makes it a little bit different
#else //NOTE: The following only makes sense when GIMBAL CONTROLLING is USED.
      if ( m_gimbal.pitch+90.0<0.1 )
        {
          rel_dist.z = translation ( 2 );
          rel_dist.height_with_gimbal = translation ( 0 );
          // flight_height  = rel_dist.x;
          ROS_INFO ( "Gimbal is straight down <0.1" );
        }
      else
        {

          ROS_INFO ( "Gimbal >0.1" );
          float temp = sqrt ( pow ( translation ( 0 ),2 ) +pow ( translation ( 2 ),2 ) );
          rel_dist.z = temp *sin ( 0.017453* ( rel_dist.gimbal_inc+m_gimbal.pitch+90.0 ) ); // /57.2958 ); //IMPORTANT NOTE: Uisng GIMBAL makes it a little bit different
          rel_dist.height_with_gimbal = temp*cos ( ( rel_dist.gimbal_inc+m_gimbal.pitch+90 ) /57.2958 );


          //  flight_height = translation(0)*cos((rel_dist.gimbal_inc+m_gimbal.pitch+90)/57.2958);
        }
#endif

      // ros::Rate dist_pub_rate(20);


      //However, we just publish the detection result of the first detected tag;
      m_detectionPoints.x0 = detections[0].p[0].first;
      m_detectionPoints.y0 = detections[0].p[0].second;
      m_detectionPoints.x1 = detections[0].p[1].first;
      m_detectionPoints.y1 = detections[0].p[1].second;
      m_detectionPoints.x2 = detections[0].p[2].first;
      m_detectionPoints.y2 = detections[0].p[2].second;

      m_detectionPoints.x3 = detections[0].p[3].first;
      m_detectionPoints.y3 = detections[0].p[3].second;
      m_detectionPoints.id = detections[0].id;
      m_detectionPoints_pub.publish ( m_detectionPoints );


      //  if(()


      if ( this->usingSmallTags )
        {
          rel_dist.z -= 0.60 ;
	  //when switched to small tag 
	  if(detections.size()==1)
	  {
	  small_tag_center.x = detections.cxy.first+60;
	  small_tag_center.y = detections.cxy.second;
	  }
        }

#ifdef SMALL_TAG_USED
      if ( change_once_flag && translation ( 0 ) < 1.35 && m_CMD_from_remote == 'd' ) //(last_flight_height-flight_height)>0.01 )//If is descending
        {
          setTagCodes ( "16h5" );
          // m_tagCodes = AprilTags::tagCodes25h9;
          ROS_INFO ( "Tag is 16h5" );
          m_tagSize  = 0.057;
          //  m_CMD_from_remote = 'W';
          this->usingSmallTags = true;
          change_once_flag = false;
	  small_tag_count = 1;
        }
#endif
      //the filtered rel_dist of the  command send to  flight
      rel_x_sum+=rel_dist.x;
      rel_y_sum+=rel_dist.y;
      rel_z_sum+=rel_dist.z;
      
    }
     rel_dist_filter = rel_dist;
     rel_dist_filter.header.stamp = ros::Time::now();
     rel_dist_filter.x = rel_x_sum/detections.size();     
     rel_dist_filter.y = rel_y_sum/detections.size();
     rel_dist_filter.z = rel_z_sum/detections.size();
     m_result_pub.publish();
  //   m_result_pub.publish ( rel_dist );


  if ( this->usingSmallTags )
    {
      std_msgs::Bool using_smallTags;
      using_smallTags.data = true;
      m_using_smallTags_pub.publish ( using_smallTags );

    }


}



std:: vector<vector<int>>  ApriltagDetector::point2win ( cv::Mat image, float delta )
{
  m_win.clear();
  if ( detections.empty() )
    {
      return m_win;
    }

  vector<int> x_min = detections[0].p[0].first,
      x_max = ceil ( detections[0].p[0].first ) +1,
      y_min = detections[i].p[0].second,
      y_max = ceil ( detections[0].p[0].second ) +1;
      //initialization for win vector
        for( int i = 0;i<detections.size();i++)
	{
	        x_min[i] = detections[i].p[0].first,
                x_max[i] = ceil ( detections[i].p[0].first ) +1,
		y_min[i] = detections[i].p[0].second,
		y_max[i] = ceil ( detections[i].p[0].second ) +1;
	}

  vector<int> x,y;
  for ( int i=0; i<detections.size(); i++ )
    {
      for ( int ii=0; ii<4; ii++ )
        {
          x[i] = detections[i].p[ii].first;
          y[i]= detections[i].p[ii].second;

          x_min[i] = ( x[i] < x_min[i] ) ? x[i] : x_min[i];
          x_max[i] = ( ceil ( x[i] ) +1 > x_max[i] ) ? ceil ( x[i] ) +1 : x_max[i];
          y_min[i] = ( y[i] < y_min[i] ) ? y[i] : y_min[i];
          y_max[i] = ( ceil ( y[i] ) +1 > y_max[i] ) ? ceil ( y[i] ) +1 : y_max[i];
        }
    }

  // zoom to 1+delta and check out_of_image
  vector< int> dX = x_max[0]-x_min[0];
  vector<int> dY = y_max[0]-y_min[0];
  for (int k = 0;k<detections.size();k++)
  {
    dX[k]  = x_max[k] -x_min[k];
    dY[k] = y_max[k]-y_min[k];

//get relative subwindows with 1+delta extended  size 
  x_min[k] = ( x_min[k]-dX[k]*delta > 0 ) ? x_min[k]-dX[k]*delta : 0;
  y_min[k] = ( y_min[k]-dY[k]*delta > 0 ) ? y_min[k]-dY[k]*delta : 0;
  x_max[k] = ( x_max[k]+dX[k]*delta < image.cols ) ? x_max[k]+dX[k]*delta : image.cols;
  y_max[k] = ( y_max+dY*delta < image.rows ) ? y_max[k]+dY[k]*delta : image.rows;

  m_win[k].push_back ( x_min[k] );
  m_win[k].push_back ( x_max[k] );
  m_win[k].push_back ( y_min[k] );
  m_win[k].push_back ( y_max[k] );
    }
  return m_win;
}
//caculate  the  centroid of multi small tags 
Point2f  tag_centroid(ApriltagDetector &detec,Point2f &centr)
{
  for(int i =0;i<detec.size();i++)
  {
      centr.x+= detec[i].cxy.first;
      centr.y+= detec[i].cxy.second;
  }
      centr.x/= detec.size();
      centr.y/= detec.size();
  }