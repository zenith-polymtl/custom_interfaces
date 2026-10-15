# Accusé du serveur de compétition (événement `telemetry_ack`) : son évaluation d'un paquet de
# télémétrie accepté, ou la réponse à `telemetry_request` (le dernier paquet enregistré).
# Champs de la doc publique du serveur (page Connect de aeac.mylonics.com), publiés par le client
# du serveur (hexa_ws comp_client) sur topics.COMP_TELEMETRY_ACK, vus par le sol.

# Les modes du champ `mode`, ceux du serveur et du CONOPS (§5.2.3). Le serveur compte les deux
# armed-* comme armés ; off, idle, link-lost et failsafe comme non armés.
string MODE_OFF = off
string MODE_IDLE = idle
string MODE_LINK_LOST = link-lost
string MODE_FAILSAFE = failsafe
string MODE_ARMED_PILOT = armed-pilot
string MODE_ARMED_AUTOMATIC = armed-automatic

std_msgs/Header header          # stamp : réception de l'accusé (horloge ROS) ; frame_id vide
string uav_id                   # uavId
string site_id                  # siteId : le site où le paquet a été évalué (compétition ou site de test)
float64 unix_time               # unixTime du paquet évalué, s (temps GPS de la mesure)
string mode                     # mode enregistré par le serveur pour ce paquet
float64 latitude                # degrés
float64 longitude               # degrés
float32 altitude_agl            # m, l'altitude AGL déclarée (celle que le serveur compare au trafic)
bool inside_boundary            # insideBoundary : dans la limite de vol du site
bool too_close_to_traffic       # tooCloseToTraffic : dans le cylindre keep-away d'un avion du trafic
