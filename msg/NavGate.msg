# Un passage obligé d'une référence (NavIntent), en général un WP des tours. guidance garantit le passage
# à moins de tolerance_m, évitement compris, ou le signale (GuidanceStatus.BLOCKED).

uint32 index       # numéro du WP dans le parcours, pour les logs
float64 s_apex     # abscisse du point de la référence le plus proche du WP, m
float64 x          # position du WP, m (local ENU, map)
float64 y
float32 tolerance_m
