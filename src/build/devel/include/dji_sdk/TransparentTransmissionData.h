// Generated by gencpp from file dji_sdk/TransparentTransmissionData.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_TRANSPARENTTRANSMISSIONDATA_H
#define DJI_SDK_MESSAGE_TRANSPARENTTRANSMISSIONDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dji_sdk
{
template <class ContainerAllocator>
struct TransparentTransmissionData_
{
  typedef TransparentTransmissionData_<ContainerAllocator> Type;

  TransparentTransmissionData_()
    : data()  {
    }
  TransparentTransmissionData_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> const> ConstPtr;

}; // struct TransparentTransmissionData_

typedef ::dji_sdk::TransparentTransmissionData_<std::allocator<void> > TransparentTransmissionData;

typedef boost::shared_ptr< ::dji_sdk::TransparentTransmissionData > TransparentTransmissionDataPtr;
typedef boost::shared_ptr< ::dji_sdk::TransparentTransmissionData const> TransparentTransmissionDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f43a8e1b362b75baa741461b46adc7e0";
  }

  static const char* value(const ::dji_sdk::TransparentTransmissionData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf43a8e1b362b75baULL;
  static const uint64_t static_value2 = 0xa741461b46adc7e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_sdk/TransparentTransmissionData";
  }

  static const char* value(const ::dji_sdk::TransparentTransmissionData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[] data\n\
";
  }

  static const char* value(const ::dji_sdk::TransparentTransmissionData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct TransparentTransmissionData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_sdk::TransparentTransmissionData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_sdk::TransparentTransmissionData_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_SDK_MESSAGE_TRANSPARENTTRANSMISSIONDATA_H
