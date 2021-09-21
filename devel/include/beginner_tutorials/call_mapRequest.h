// Generated by gencpp from file beginner_tutorials/call_mapRequest.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_CALL_MAPREQUEST_H
#define BEGINNER_TUTORIALS_MESSAGE_CALL_MAPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct call_mapRequest_
{
  typedef call_mapRequest_<ContainerAllocator> Type;

  call_mapRequest_()
    : resolution(0.0)
    , width(0)
    , height(0)  {
    }
  call_mapRequest_(const ContainerAllocator& _alloc)
    : resolution(0.0)
    , width(0)
    , height(0)  {
  (void)_alloc;
    }



   typedef float _resolution_type;
  _resolution_type resolution;

   typedef uint32_t _width_type;
  _width_type width;

   typedef uint32_t _height_type;
  _height_type height;





  typedef boost::shared_ptr< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct call_mapRequest_

typedef ::beginner_tutorials::call_mapRequest_<std::allocator<void> > call_mapRequest;

typedef boost::shared_ptr< ::beginner_tutorials::call_mapRequest > call_mapRequestPtr;
typedef boost::shared_ptr< ::beginner_tutorials::call_mapRequest const> call_mapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::call_mapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::call_mapRequest_<ContainerAllocator1> & lhs, const ::beginner_tutorials::call_mapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.resolution == rhs.resolution &&
    lhs.width == rhs.width &&
    lhs.height == rhs.height;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::call_mapRequest_<ContainerAllocator1> & lhs, const ::beginner_tutorials::call_mapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f81dc7dae681cc15d11fa0cebf4e8f30";
  }

  static const char* value(const ::beginner_tutorials::call_mapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf81dc7dae681cc15ULL;
  static const uint64_t static_value2 = 0xd11fa0cebf4e8f30ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/call_mapRequest";
  }

  static const char* value(const ::beginner_tutorials::call_mapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 resolution\n"
"uint32 width\n"
"uint32 height\n"
"\n"
;
  }

  static const char* value(const ::beginner_tutorials::call_mapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.resolution);
      stream.next(m.width);
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct call_mapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::call_mapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::call_mapRequest_<ContainerAllocator>& v)
  {
    s << indent << "resolution: ";
    Printer<float>::stream(s, indent + "  ", v.resolution);
    s << indent << "width: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_CALL_MAPREQUEST_H