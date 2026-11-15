# Position du drone pour la carte de l'UI de la GCS : topics.DRONE_POSITION, 5 Hz (hexa_ws ui_feed).
# Champs de l'UI (aeac-2027, gcs_ui/src/ros/mock.ts et src/panels/MapPanel.tsx). Pas de header :
# chaque octet traverse la radio, et l'UI date le message à sa réception.

float64 latitude      # degrés (/mavros/global_position/global)
float64 longitude     # degrés
float32 heading_deg   # cap, degrés vrais (0 = nord, 90 = est) (/mavros/global_position/compass_hdg)
