cmake_minimum_required(VERSION 3.8)
project(custom_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)

# Add message files
set(msg_files
  "msg/TargetPosePolar.msg"
  "msg/WaterState.msg"
  "msg/AimError.msg"
  "msg/Pixels.msg"
  "msg/UiMessage.msg"
  "msg/DroneHealth.msg"
  "msg/PayloadState.msg"
  "msg/TargetImage.msg"
  "msg/GimbalState.msg"
  "msg/SceneFrame.msg"
  "msg/ServoControl.msg"
  "msg/MissionState.msg"
)


rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/TargetPosePolar.msg"
  "msg/WaterState.msg"
  "msg/AimError.msg"
  "msg/UiMessage.msg"
  "msg/DroneHealth.msg"
  "msg/PayloadState.msg"
  "msg/GimbalState.msg"
  "msg/SceneFrame.msg"
  "msg/Pixels.msg"
  "msg/ServoControl.msg"
  "msg/TargetImage.msg"
  "msg/MissionState.msg"
  "srv/ServoState.srv"
  "srv/ConvertGpsToLocal.srv"
  "srv/LocateTarget.srv"
  "srv/ConvertCamDistToLocalDist.srv"

  
  DEPENDENCIES std_msgs sensor_msgs geometry_msgs
)



ament_package()
