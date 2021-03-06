// Generated by gencpp from file dji_sdk/MissionFmUpload.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_MISSIONFMUPLOAD_H
#define DJI_SDK_MESSAGE_MISSIONFMUPLOAD_H

#include <ros/service_traits.h>


#include <dji_sdk/MissionFmUploadRequest.h>
#include <dji_sdk/MissionFmUploadResponse.h>


namespace dji_sdk
{

struct MissionFmUpload
{

typedef MissionFmUploadRequest Request;
typedef MissionFmUploadResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MissionFmUpload
} // namespace dji_sdk


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dji_sdk::MissionFmUpload > {
  static const char* value()
  {
    return "10ed872d3d019b452e558098ab5f5224";
  }

  static const char* value(const ::dji_sdk::MissionFmUpload&) { return value(); }
};

template<>
struct DataType< ::dji_sdk::MissionFmUpload > {
  static const char* value()
  {
    return "dji_sdk/MissionFmUpload";
  }

  static const char* value(const ::dji_sdk::MissionFmUpload&) { return value(); }
};


// service_traits::MD5Sum< ::dji_sdk::MissionFmUploadRequest> should match 
// service_traits::MD5Sum< ::dji_sdk::MissionFmUpload > 
template<>
struct MD5Sum< ::dji_sdk::MissionFmUploadRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dji_sdk::MissionFmUpload >::value();
  }
  static const char* value(const ::dji_sdk::MissionFmUploadRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dji_sdk::MissionFmUploadRequest> should match 
// service_traits::DataType< ::dji_sdk::MissionFmUpload > 
template<>
struct DataType< ::dji_sdk::MissionFmUploadRequest>
{
  static const char* value()
  {
    return DataType< ::dji_sdk::MissionFmUpload >::value();
  }
  static const char* value(const ::dji_sdk::MissionFmUploadRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dji_sdk::MissionFmUploadResponse> should match 
// service_traits::MD5Sum< ::dji_sdk::MissionFmUpload > 
template<>
struct MD5Sum< ::dji_sdk::MissionFmUploadResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dji_sdk::MissionFmUpload >::value();
  }
  static const char* value(const ::dji_sdk::MissionFmUploadResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dji_sdk::MissionFmUploadResponse> should match 
// service_traits::DataType< ::dji_sdk::MissionFmUpload > 
template<>
struct DataType< ::dji_sdk::MissionFmUploadResponse>
{
  static const char* value()
  {
    return DataType< ::dji_sdk::MissionFmUpload >::value();
  }
  static const char* value(const ::dji_sdk::MissionFmUploadResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DJI_SDK_MESSAGE_MISSIONFMUPLOAD_H
