// Generated by gencpp from file arm_lib/arm_joint_angles.msg
// DO NOT EDIT!


#ifndef ARM_LIB_MESSAGE_ARM_JOINT_ANGLES_H
#define ARM_LIB_MESSAGE_ARM_JOINT_ANGLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_lib
{
template <class ContainerAllocator>
struct arm_joint_angles_
{
  typedef arm_joint_angles_<ContainerAllocator> Type;

  arm_joint_angles_()
    : z0(0.0)
    , x1(0.0)
    , x2(0.0)
    , x3(0.0)  {
    }
  arm_joint_angles_(const ContainerAllocator& _alloc)
    : z0(0.0)
    , x1(0.0)
    , x2(0.0)
    , x3(0.0)  {
  (void)_alloc;
    }



   typedef double _z0_type;
  _z0_type z0;

   typedef double _x1_type;
  _x1_type x1;

   typedef double _x2_type;
  _x2_type x2;

   typedef double _x3_type;
  _x3_type x3;





  typedef boost::shared_ptr< ::arm_lib::arm_joint_angles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_lib::arm_joint_angles_<ContainerAllocator> const> ConstPtr;

}; // struct arm_joint_angles_

typedef ::arm_lib::arm_joint_angles_<std::allocator<void> > arm_joint_angles;

typedef boost::shared_ptr< ::arm_lib::arm_joint_angles > arm_joint_anglesPtr;
typedef boost::shared_ptr< ::arm_lib::arm_joint_angles const> arm_joint_anglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_lib::arm_joint_angles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_lib::arm_joint_angles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_lib::arm_joint_angles_<ContainerAllocator1> & lhs, const ::arm_lib::arm_joint_angles_<ContainerAllocator2> & rhs)
{
  return lhs.z0 == rhs.z0 &&
    lhs.x1 == rhs.x1 &&
    lhs.x2 == rhs.x2 &&
    lhs.x3 == rhs.x3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_lib::arm_joint_angles_<ContainerAllocator1> & lhs, const ::arm_lib::arm_joint_angles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_lib

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_lib::arm_joint_angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_lib::arm_joint_angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_lib::arm_joint_angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_lib::arm_joint_angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_lib::arm_joint_angles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_lib::arm_joint_angles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_lib::arm_joint_angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9dfb18a64868d584f9a6327efbfbf276";
  }

  static const char* value(const ::arm_lib::arm_joint_angles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9dfb18a64868d584ULL;
  static const uint64_t static_value2 = 0xf9a6327efbfbf276ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_lib::arm_joint_angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_lib/arm_joint_angles";
  }

  static const char* value(const ::arm_lib::arm_joint_angles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_lib::arm_joint_angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 z0\n"
"float64 x1\n"
"float64 x2\n"
"float64 x3\n"
;
  }

  static const char* value(const ::arm_lib::arm_joint_angles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_lib::arm_joint_angles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.z0);
      stream.next(m.x1);
      stream.next(m.x2);
      stream.next(m.x3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct arm_joint_angles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_lib::arm_joint_angles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_lib::arm_joint_angles_<ContainerAllocator>& v)
  {
    s << indent << "z0: ";
    Printer<double>::stream(s, indent + "  ", v.z0);
    s << indent << "x1: ";
    Printer<double>::stream(s, indent + "  ", v.x1);
    s << indent << "x2: ";
    Printer<double>::stream(s, indent + "  ", v.x2);
    s << indent << "x3: ";
    Printer<double>::stream(s, indent + "  ", v.x3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_LIB_MESSAGE_ARM_JOINT_ANGLES_H
