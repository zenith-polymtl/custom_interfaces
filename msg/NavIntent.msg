# Où aller (topics.NAV_INTENT) : une référence que guidance suit et dont elle s'écarte seulement pour
# éviter le trafic. Publiée par laps_nav, search_nav et return_nav, une fois par chemin, en QoS fiable et
# latched (transient local, profondeur 1). Un nouveau chemin porte un nouvel intent_id : guidance repart
# alors de la projection du drone sur lui. Republier le même intent_id ne change rien. À la fin de la
# référence, guidance tient le dernier point à vitesse nulle et publie GuidanceStatus.DONE.

std_msgs/Header header       # frame_id : map
uint8 mode                   # constante de NavMode : guidance ignore une intention qui n'est pas du mode actif
uint32 intent_id
NavPoint[] points            # au moins 2 ; le premier à moins de max_start_distance_m (paramètre de guidance) du drone
NavGate[] gates              # vide hors des tours
float32 vertical_freedom_m   # écart d'altitude permis pour éviter ; 0 : altitude imposée (tours)
