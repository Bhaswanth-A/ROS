// Generated by gencpp from file tum_ardrone/SetMaxControlRequest.msg
// DO NOT EDIT!


#ifndef TUM_ARDRONE_MESSAGE_SETMAXCONTROLREQUEST_H
#define TUM_ARDRONE_MESSAGE_SETMAXCONTROLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tum_ardrone
{
template <class ContainerAllocator>
struct SetMaxControlRequest_
{
  typedef SetMaxControlRequest_<ContainerAllocator> Type;

  SetMaxControlRequest_()
    : speed(0.0)  {
    }
  SetMaxControlRequest_(const ContainerAllocator& _alloc)
    : speed(0.0)  {
  (void)_alloc;
    }



   typedef float _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetMaxControlRequest_

typedef ::tum_ardrone::SetMaxControlRequest_<std::allocator<void> > SetMaxControlRequest;

typedef boost::shared_ptr< ::tum_ardrone::SetMaxControlRequest > SetMaxControlRequestPtr;
typedef boost::shared_ptr< ::tum_ardrone::SetMaxControlRequest const> SetMaxControlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator1> & lhs, const ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator2> & rhs)
{
  return lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator1> & lhs, const ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tum_ardrone

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ca65bba734a79b4a6707341d829f4d5c";
  }

  static const char* value(const ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xca65bba734a79b4aULL;
  static const uint64_t static_value2 = 0x6707341d829f4d5cULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_ardrone/SetMaxControlRequest";
  }

  static const char* value(const ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Request: max control speed\n"
"float32 speed\n"
;
  }

  static const char* value(const ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetMaxControlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_ardrone::SetMaxControlRequest_<ContainerAllocator>& v)
  {
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ARDRONE_MESSAGE_SETMAXCONTROLREQUEST_H
