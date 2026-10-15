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
find_package(builtin_interfaces REQUIRED)

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
  "msg/Traffic.msg"
  "msg/TrafficArray.msg"
  "msg/CompTelemetryAck.msg"
  "msg/CompInfraction.msg"
  "msg/CompStatus.msg"
)


set(srv_files
  "srv/ServoState.srv"
  "srv/ConvertGpsToLocal.srv"
  "srv/LocateTarget.srv"
  "srv/ConvertCamDistToLocalDist.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  DEPENDENCIES builtin_interfaces std_msgs sensor_msgs geometry_msgs
)



ament_package()
