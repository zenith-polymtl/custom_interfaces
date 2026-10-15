# État du client du serveur de compétition (hexa_ws comp_client), pour l'opérateur au sol :
# connexion, dernier paquet de télémétrie envoyé, compteurs. Publié sur topics.COMP_STATUS à chaque
# paquet envoyé (environ 1 Hz) et à chaque connexion ou déconnexion.

std_msgs/Header header          # stamp : instant de la publication (horloge ROS) ; frame_id vide
bool connected                  # WebSocket ouvert vers le serveur
string uav_id                   # uavId diffusé
string mode                     # mode du dernier paquet envoyé (constantes MODE_* de CompTelemetryAck)
float64 unix_time               # unixTime du dernier paquet envoyé, s (temps GPS de la mesure) ; 0 = rien envoyé
float32 gps_delta_s             # écart de unixTime avec le paquet précédent, s (le serveur pénalise > 1,1 et < 0,4 armé) ; 0 = premier
float32 last_ack_age_s          # âge du dernier telemetry_ack reçu, s ; -1 = aucun
uint32 sent                     # paquets de télémétrie envoyés depuis le démarrage de la node
uint32 acked                    # telemetry_ack reçus
uint32 errors                   # événements `error` du serveur reçus
uint32 connections              # connexions ouvertes depuis le démarrage (1 = jamais reconnecté)
string last_error               # dernier `error` du serveur ou dernière erreur de connexion ; vide si aucune
