# La vitesse que le pilote demande (topics.NAV_PILOT_VELOCITY), publiée par pilot_nav à 20 Hz en mode PILOT.
# Plus de 0,5 s sans message : guidance tient la position. Une vitesse exactement nulle (x = y = z = 0)
# tient le point courant ; toute autre vitesse, même 0,1 m/s, est suivie telle quelle.

uint8 FRAME_LOCAL_ENU = 0    # x est, y nord, z haut (map, comme NavIntent)
uint8 FRAME_BODY_FLU = 1     # x avant, y gauche, z haut, tourné avec le cap seul (roulis et tangage ignorés)

std_msgs/Header header
uint8 frame          # constante FRAME_* ci-dessus
float32 x            # m/s
float32 y            # m/s
float32 z            # m/s
float32 yaw_rate     # rad/s, positif vers la gauche, dans tous les repères
