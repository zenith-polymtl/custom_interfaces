# Ce que fait guidance : topics.GUIDANCE_STATUS à 10 Hz (interne, nodes de mode et state_machine_t1) et
# topics.GUIDANCE_SUMMARY à 1 Hz (externe, UI de la GCS).

uint8 NO_INTENT = 0    # mode actif sans intention reçue : le drone tient sa position
uint8 FOLLOWING = 1    # suit l'intention
uint8 AVOIDING = 2     # s'écarte de l'intention pour éviter un ou plusieurs avions
uint8 BLOCKED = 3      # aucune trajectoire sûre ne passe la prochaine porte : le drone attend
uint8 HOLDING = 4      # tient un point (manches au neutre)
uint8 DONE = 5         # fin de la référence atteinte, point final tenu
uint8 NOT_GUIDED = 6   # pas armé ou pas en GUIDED : guidance se tait

std_msgs/Header header
uint8 mode               # constante de NavMode suivie
uint32 intent_id
uint8 state              # constante ci-dessus
float32 progress_m       # abscisse du drone sur la référence
float32 length_m         # longueur de la référence
float32 cross_track_m    # écart latéral à la référence, signé (gauche positif)
uint32 gates_passed      # nombre de portes passées dans la tolérance, depuis le début de l'intention
uint8 threats            # avions qui menacent
float32 min_margin_m     # marge prédite au cylindre le plus proche ; négative : dedans
