# État du drone pour la barre d'état de l'UI de la GCS : topics.DRONE_STATUS, 1 Hz (hexa_ws ui_feed).
# Les champs sont ceux que l'UI attend (aeac-2027, workspaces/gcs_ws/gcs_ui/src/ros/mock.ts et
# src/panels/TopBar.tsx) : ne pas en ajouter sans passer par l'UI, chaque octet traverse la radio.
# Une valeur inconnue prend la constante ci-dessous : l'UI l'affiche telle quelle (en rouge).

float32 UNKNOWN_BATTERY = -1.0          # battery_percent : mavros n'a pas de pourcentage
float32 UNKNOWN_GPS_ACCURACY_M = 99.0   # gps_accuracy_m : pas de fix ou covariance inconnue
float32 UNKNOWN_RSSI_DBM = -127.0       # radio_rssi_dbm : pas de RADIO_STATUS récent (le HM30 n'en envoie pas)
float32 UNKNOWN_TRAFFIC_M = -1.0        # nearest_traffic_m : pas de trafic récent de comp_client, ou pas de position
float32 NO_TRAFFIC_M = 99999.0          # nearest_traffic_m : trafic récent, mais aucun avion

bool armed                  # /mavros/state
string mode                 # mode ArduPilot (/mavros/state), ex. GUIDED ; vide tant que mavros n'a rien dit
float32 battery_percent     # 0 à 100 (/mavros/battery)
float32 altitude_m          # hauteur au-dessus du home, m (/mavros/global_position/rel_alt)
float32 gps_accuracy_m      # écart-type horizontal du GPS, m (covariance de /mavros/global_position/raw/fix)
float32 ground_speed_m_s    # vitesse horizontale, m/s (/mavros/local_position/velocity_local)
float32 radio_rssi_dbm      # RSSI local du lien radio, dBm (/mavros/radio_status)
bool comp_server_ok         # comp_client connecté au serveur de compétition, accusé reçu récemment (topics.COMP_STATUS)
float32 nearest_traffic_m   # distance horizontale à l'avion le plus proche, m (topics.TRAFFIC)
