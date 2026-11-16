# Ordre pour le gimbal, publié par gimbal_rc_interface sur GIMBAL_CMD
std_msgs/Header header

uint8 ACTION_NONE=0
uint8 ACTION_CENTER=1
uint8 ACTION_PHOTO=2
uint8 ACTION_RECORD_START=3
uint8 ACTION_RECORD_STOP=4

float32 yaw_rate     # deg/s, + = vers la gauche (convention ROS)
float32 pitch_rate   # deg/s, + = vers le haut
float32 zoom_rate    # -1 (arrière) à +1 (avant)
uint8 action         # une des constantes ACTION_*