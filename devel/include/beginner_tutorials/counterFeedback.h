// Generated by gencpp from file beginner_tutorials/counterFeedback.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_COUNTERFEEDBACK_H
#define BEGINNER_TUTORIALS_MESSAGE_COUNTERFEEDBACK_H


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
struct counterFeedback_
{
  typedef counterFeedback_<ContainerAllocator> Type;

  counterFeedback_()
    : counts_elapsed(0)  {
    }
  counterFeedback_(const ContainerAllocator& _alloc)
    : counts_elapsed(0)  {
  (void)_alloc;
    }



   typedef int32_t _counts_elapsed_type;
  _counts_elapsed_type counts_elapsed;





  typedef boost::shared_ptr< ::beginner_tutorials::counterFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::counterFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct counterFeedback_

typedef ::beginner_tutorials::counterFeedback_<std::allocator<void> > counterFeedback;

typedef boost::shared_ptr< ::beginner_tutorials::counterFeedback > counterFeedbackPtr;
typedef boost::shared_ptr< ::beginner_tutorials::counterFeedback const> counterFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::counterFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::counterFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::counterFeedback_<ContainerAllocator1> & lhs, const ::beginner_tutorials::counterFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.counts_elapsed == rhs.counts_elapsed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::counterFeedback_<ContainerAllocator1> & lhs, const ::beginner_tutorials::counterFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::counterFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::counterFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::counterFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::counterFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::counterFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::counterFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::counterFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "263ab814d8741f3d829a70dae8bd6d01";
  }

  static const char* value(const ::beginner_tutorials::counterFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x263ab814d8741f3dULL;
  static const uint64_t static_value2 = 0x829a70dae8bd6d01ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::counterFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/counterFeedback";
  }

  static const char* value(const ::beginner_tutorials::counterFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::counterFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Feedback\n"
"int32 counts_elapsed\n"
;
  }

  static const char* value(const ::beginner_tutorials::counterFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::counterFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.counts_elapsed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct counterFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::counterFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::counterFeedback_<ContainerAllocator>& v)
  {
    s << indent << "counts_elapsed: ";
    Printer<int32_t>::stream(s, indent + "  ", v.counts_elapsed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_COUNTERFEEDBACK_H
