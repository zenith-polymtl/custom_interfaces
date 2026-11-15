# État du gimbal D80, publié par gimbal_driver sur GIMBAL_STATE
std_msgs/Header header
bool connected      # true quand le D80 répond
string mode         # mode du D80 (angle_control, head_lock...)
float32 pitch       # deg, + = vers le haut
float32 yaw         # deg par rapport au drone, + = vers la gauche
float32 roll        # deg
float32 zoom        # facteur de zoom (2.5 = x2,5)
bool recording      # true pendant un enregistrement vidéo