# Totaux d'infractions du serveur de compétition (événement `infraction`), poussés à chaque
# infraction enregistrée ou en réponse à `infraction_request`. Champs de la doc publique du
# serveur. Publié par le client du serveur (hexa_ws comp_client) sur topics.COMP_INFRACTION.
# Les compteurs sont ceux de l'équipe sur le site courant ; chaque type est plafonné à 5 occurrences
# dans le score. Toutes ne comptent que pendant que le drone est déclaré armé.

std_msgs/Header header          # stamp : réception (horloge ROS) ; frame_id vide
string uav_id                   # uavId
string site_id                  # siteId
uint16 uav_in_traffic           # incursion dans un keep-away, une par épisode (-5)
uint16 slow_telem               # delta de unixTime > 1,1 s (-1, au plus une par 15 s)
uint16 fast_telem               # delta de unixTime < 0,4 s (-1, au plus une par 15 s)
uint16 latency                  # paquet vieux de plus de 15 s selon son unixTime (-2, au plus une par 15 s)
uint16 disconnect               # plus de 30 s sans télémétrie, ou paquet vieux de plus de 30 s (-5, puis -1 par 15 s)
uint16 startup                  # diffusion commencée armée sans état armé enregistré avant (-2)
uint16 invalid_gps              # paquet sans position GPS valide (-2, au plus une par 15 s)
uint16 uav_left_boundary        # sortie de la limite de vol, consignée sans pénalité
string last_infraction          # identifiant de la dernière infraction (uav_in_traffic...) ; vide si aucune
float32 score                   # score de l'équipe pour ce critère (sur 25), plancher 0
float32 armed_seconds           # secondes consécutives de télémétrie armée (300 pour les 25 pts)
