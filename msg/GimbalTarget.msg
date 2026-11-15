# Consigne du gimbal, publiée par le clavier du portable (gcs_ws gimbal_keyboard) sur GIMBAL_GCS_TARGET,
# republiée à 10 Hz même immobile ; appliquée par gimbal_target (hexa_ws gimbal_driver) au mount d'ArduPilot.
# Trois modes, par ordre de priorité : neutral, rate_mode, sinon cible absolue (pitch, yaw).
std_msgs/Header header
float32 pitch        # deg, + = vers le haut, par rapport à l'horizon (cible absolue, si rate_mode = false)
float32 yaw          # deg par rapport au drone, + = vers la gauche (convention ROS)
bool neutral         # true : position neutre du mount (MNT1_NEUTRAL_*), le reste est ignoré
uint32 photo_count   # photos demandées depuis le lancement du clavier : une photo à chaque incrément
bool rate_mode       # true : vitesses voulues (pitch_rate, yaw_rate) ; pitch et yaw sont ignorés
float32 pitch_rate   # deg/s, + = vers le haut (rate_mode)
float32 yaw_rate     # deg/s, + = vers la gauche, convention ROS (rate_mode)
