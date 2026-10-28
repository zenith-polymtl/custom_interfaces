# Mode de navigation courant de la Tâche 1 (topics.NAV_MODE, latched) : quelle node de mode guidance écoute.
# Publié par state_machine_t1. Ce n'est pas le mode de vol d'ArduPilot, que le code ne change jamais.
# Les constantes sont la seule définition des modes : aucune node ne les redéfinit.
# Architecture : aeac-2027, context_research/architecure/Task-1/guidance.md.

uint8 NONE = 0      # rien d'actif : guidance se tait
uint8 LAPS = 1
uint8 SEARCH = 2
uint8 RETURN = 3
uint8 PILOT = 4

std_msgs/Header header
uint8 mode          # constante ci-dessus
