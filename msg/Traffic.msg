# Un avion du trafic, tel que le serveur de compétition le pousse (événement `traffic`, 1 Hz).
# Les champs suivent le JSON du serveur (laps_plan_operationnel_research.md §1).
# Conflit selon le serveur : distance horizontale <= horizontal_keep_away
# ET |notre altitude AGL déclarée - altitude_agl| <= vertical_keep_away.

builtin_interfaces/Time stamp   # instant de la mesure, horloge ROS de la machine ; 0 = inconnu (on prend la réception)
uint8 index                     # aircraftIndex (0 à 9) : la clé de l'historique d'un avion
string name                     # name
float64 latitude                # position.lat, degrés
float64 longitude               # position.lon, degrés
float32 altitude_agl            # position.altitude, m au-dessus du sol
float32 speed                   # position.speed, m/s
float32 course_deg              # position.direction, degrés vrais (0 = nord, 90 = est)
float32 horizontal_keep_away    # horizontalKeepAway, m
float32 vertical_keep_away      # verticalKeepAway, m
