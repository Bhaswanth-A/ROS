// Generated by gencpp from file tum_ardrone/SetInitialReachDistanceRequest.msg
// DO NOT EDIT!


#ifndef TUM_ARDRONE_MESSAGE_SETINITIALREACHDISTANCEREQUEST_H
#define TUM_ARDRONE_MESSAGE_SETINITIALREACHDISTANCEREQUEST_H


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
struct SetInitialReachDistanceRequest_
{
  typedef SetInitialReachDistanceRequest_<ContainerAllocator> Type;

  SetInitialReachDistanceRequest_()
    : distance(0.0)  {
    }
  SetInitialReachDistanceRequest_(const ContainerAllocator& _alloc)
    : distance(0.0)  {
  (void)_alloc;
    }



   typedef float _distance_type;
  _distance_type distance;





  typedef boost::shared_ptr< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetInitialReachDistanceRequest_

typedef ::tum_ardrone::SetInitialReachDistanceRequest_<std::allocator<void> > SetInitialReachDistanceRequest;

typedef boost::shared_ptr< ::tum_ardrone::SetInitialReachDistanceRequest > SetInitialReachDistanceRequestPtr;
typedef boost::shared_ptr< ::tum_ardrone::SetInitialReachDistanceRequest const> SetInitialReachDistanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator1> & lhs, const ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.distance == rhs.distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator1> & lhs, const ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tum_ardrone

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6e77fb10f0c8b4833ec273aa9ac74459";
  }

  static const char* value(const ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6e77fb10f0c8b483ULL;
  static const uint64_t static_value2 = 0x3ec273aa9ac74459ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_ardrone/SetInitialReachDistanceRequest";
  }

  static const char* value(const ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Request: initial reach speed\n"
"float32 distance\n"
;
  }

  static const char* value(const ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetInitialReachDistanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_ardrone::SetInitialReachDistanceRequest_<ContainerAllocator>& v)
  {
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ARDRONE_MESSAGE_SETINITIALREACHDISTANCEREQUEST_H
