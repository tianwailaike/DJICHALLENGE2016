// Generated by gencpp from file dji_sdk/MissionWaypointTask.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_MISSIONWAYPOINTTASK_H
#define DJI_SDK_MESSAGE_MISSIONWAYPOINTTASK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dji_sdk/MissionWaypoint.h>

namespace dji_sdk
{
template <class ContainerAllocator>
struct MissionWaypointTask_
{
  typedef MissionWaypointTask_<ContainerAllocator> Type;

  MissionWaypointTask_()
    : velocity_range(0.0)
    , idle_velocity(0.0)
    , action_on_finish(0)
    , mission_exec_times(0)
    , yaw_mode(0)
    , trace_mode(0)
    , action_on_rc_lost(0)
    , gimbal_pitch_mode(0)
    , mission_waypoint()  {
    }
  MissionWaypointTask_(const ContainerAllocator& _alloc)
    : velocity_range(0.0)
    , idle_velocity(0.0)
    , action_on_finish(0)
    , mission_exec_times(0)
    , yaw_mode(0)
    , trace_mode(0)
    , action_on_rc_lost(0)
    , gimbal_pitch_mode(0)
    , mission_waypoint(_alloc)  {
  (void)_alloc;
    }



   typedef float _velocity_range_type;
  _velocity_range_type velocity_range;

   typedef float _idle_velocity_type;
  _idle_velocity_type idle_velocity;

   typedef uint8_t _action_on_finish_type;
  _action_on_finish_type action_on_finish;

   typedef uint8_t _mission_exec_times_type;
  _mission_exec_times_type mission_exec_times;

   typedef uint8_t _yaw_mode_type;
  _yaw_mode_type yaw_mode;

   typedef uint8_t _trace_mode_type;
  _trace_mode_type trace_mode;

   typedef uint8_t _action_on_rc_lost_type;
  _action_on_rc_lost_type action_on_rc_lost;

   typedef uint8_t _gimbal_pitch_mode_type;
  _gimbal_pitch_mode_type gimbal_pitch_mode;

   typedef std::vector< ::dji_sdk::MissionWaypoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::dji_sdk::MissionWaypoint_<ContainerAllocator> >::other >  _mission_waypoint_type;
  _mission_waypoint_type mission_waypoint;




  typedef boost::shared_ptr< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> const> ConstPtr;

}; // struct MissionWaypointTask_

typedef ::dji_sdk::MissionWaypointTask_<std::allocator<void> > MissionWaypointTask;

typedef boost::shared_ptr< ::dji_sdk::MissionWaypointTask > MissionWaypointTaskPtr;
typedef boost::shared_ptr< ::dji_sdk::MissionWaypointTask const> MissionWaypointTaskConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_sdk::MissionWaypointTask_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dji_sdk

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'dji_sdk': ['/root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/msg', '/root/Documents/roswork/DJIChallenge2016_new/src/build/devel/share/dji_sdk/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a81a8c039337b422bde8ccc87d96c14b";
  }

  static const char* value(const ::dji_sdk::MissionWaypointTask_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa81a8c039337b422ULL;
  static const uint64_t static_value2 = 0xbde8ccc87d96c14bULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_sdk/MissionWaypointTask";
  }

  static const char* value(const ::dji_sdk::MissionWaypointTask_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 velocity_range\n\
float32 idle_velocity\n\
uint8 action_on_finish\n\
uint8 mission_exec_times\n\
uint8 yaw_mode\n\
uint8 trace_mode\n\
uint8 action_on_rc_lost\n\
uint8 gimbal_pitch_mode\n\
MissionWaypoint[] mission_waypoint\n\
\n\
================================================================================\n\
MSG: dji_sdk/MissionWaypoint\n\
float64 latitude\n\
float64 longitude\n\
float32 altitude\n\
float32 damping_distance\n\
int16 target_yaw\n\
int16 target_gimbal_pitch\n\
uint8 turn_mode\n\
uint8 has_action\n\
uint16 action_time_limit\n\
MissionWaypointAction waypoint_action\n\
\n\
================================================================================\n\
MSG: dji_sdk/MissionWaypointAction\n\
uint8 action_repeat\n\
uint8[15] command_list\n\
int16[15] command_parameter\n\
";
  }

  static const char* value(const ::dji_sdk::MissionWaypointTask_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.velocity_range);
      stream.next(m.idle_velocity);
      stream.next(m.action_on_finish);
      stream.next(m.mission_exec_times);
      stream.next(m.yaw_mode);
      stream.next(m.trace_mode);
      stream.next(m.action_on_rc_lost);
      stream.next(m.gimbal_pitch_mode);
      stream.next(m.mission_waypoint);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct MissionWaypointTask_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_sdk::MissionWaypointTask_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_sdk::MissionWaypointTask_<ContainerAllocator>& v)
  {
    s << indent << "velocity_range: ";
    Printer<float>::stream(s, indent + "  ", v.velocity_range);
    s << indent << "idle_velocity: ";
    Printer<float>::stream(s, indent + "  ", v.idle_velocity);
    s << indent << "action_on_finish: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.action_on_finish);
    s << indent << "mission_exec_times: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mission_exec_times);
    s << indent << "yaw_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.yaw_mode);
    s << indent << "trace_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.trace_mode);
    s << indent << "action_on_rc_lost: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.action_on_rc_lost);
    s << indent << "gimbal_pitch_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gimbal_pitch_mode);
    s << indent << "mission_waypoint[]" << std::endl;
    for (size_t i = 0; i < v.mission_waypoint.size(); ++i)
    {
      s << indent << "  mission_waypoint[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dji_sdk::MissionWaypoint_<ContainerAllocator> >::stream(s, indent + "    ", v.mission_waypoint[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_SDK_MESSAGE_MISSIONWAYPOINTTASK_H
