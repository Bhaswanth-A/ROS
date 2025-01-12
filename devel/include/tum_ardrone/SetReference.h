// Generated by gencpp from file tum_ardrone/SetReference.msg
// DO NOT EDIT!


#ifndef TUM_ARDRONE_MESSAGE_SETREFERENCE_H
#define TUM_ARDRONE_MESSAGE_SETREFERENCE_H

#include <ros/service_traits.h>


#include <tum_ardrone/SetReferenceRequest.h>
#include <tum_ardrone/SetReferenceResponse.h>


namespace tum_ardrone
{

struct SetReference
{

typedef SetReferenceRequest Request;
typedef SetReferenceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetReference
} // namespace tum_ardrone


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tum_ardrone::SetReference > {
  static const char* value()
  {
    return "ceb0badddcb0258fe3612b618c482acf";
  }

  static const char* value(const ::tum_ardrone::SetReference&) { return value(); }
};

template<>
struct DataType< ::tum_ardrone::SetReference > {
  static const char* value()
  {
    return "tum_ardrone/SetReference";
  }

  static const char* value(const ::tum_ardrone::SetReference&) { return value(); }
};


// service_traits::MD5Sum< ::tum_ardrone::SetReferenceRequest> should match
// service_traits::MD5Sum< ::tum_ardrone::SetReference >
template<>
struct MD5Sum< ::tum_ardrone::SetReferenceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tum_ardrone::SetReference >::value();
  }
  static const char* value(const ::tum_ardrone::SetReferenceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_ardrone::SetReferenceRequest> should match
// service_traits::DataType< ::tum_ardrone::SetReference >
template<>
struct DataType< ::tum_ardrone::SetReferenceRequest>
{
  static const char* value()
  {
    return DataType< ::tum_ardrone::SetReference >::value();
  }
  static const char* value(const ::tum_ardrone::SetReferenceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tum_ardrone::SetReferenceResponse> should match
// service_traits::MD5Sum< ::tum_ardrone::SetReference >
template<>
struct MD5Sum< ::tum_ardrone::SetReferenceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tum_ardrone::SetReference >::value();
  }
  static const char* value(const ::tum_ardrone::SetReferenceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_ardrone::SetReferenceResponse> should match
// service_traits::DataType< ::tum_ardrone::SetReference >
template<>
struct DataType< ::tum_ardrone::SetReferenceResponse>
{
  static const char* value()
  {
    return DataType< ::tum_ardrone::SetReference >::value();
  }
  static const char* value(const ::tum_ardrone::SetReferenceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUM_ARDRONE_MESSAGE_SETREFERENCE_H
