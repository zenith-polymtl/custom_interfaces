# État courant d'une mission. Les constantes sont la seule définition des états :
# aucune node ne redéfinit ces valeurs.
uint8 IDLE=0
uint8 GOTO=1
uint8 ACT=2
uint8 RETURN=3

std_msgs/Header header
uint8 state
float32 time_in_state   # secondes passées dans l'état courant
