# Un avion du trafic, résumé pour la carte de l'UI de la GCS (TrafficSummary). Champs de l'UI
# (aeac-2027, gcs_ui/src/ros/mock.ts et MapPanel.tsx) ; la source est Traffic (comp_client).

string id                     # Traffic.name ; « #<index> » s'il est vide
float64 latitude              # degrés
float64 longitude
float32 altitude_m            # Traffic.altitude_agl, m au-dessus du sol
float32 heading_deg           # Traffic.course_deg, degrés vrais
float32 exclusion_radius_m    # Traffic.horizontal_keep_away, m
float32 exclusion_height_m    # Traffic.vertical_keep_away, m (demi-hauteur du cylindre)
