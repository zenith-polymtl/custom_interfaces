# Un point d'une référence (NavIntent), en local ENU (map) : x vers l'est, y vers le nord, z en hauteur
# au-dessus du home. Unités SI.

float64 s          # abscisse curviligne depuis le début de la référence, m (croissante)
float64 x          # est, m
float64 y          # nord, m
float32 z          # hauteur au-dessus du home, m
float32 vx         # vitesse voulue en ce point, m/s
float32 vy
float32 vz         # vers le haut
float32 ax         # accélération voulue, m/s² (0 si la node ne la calcule pas)
float32 ay
