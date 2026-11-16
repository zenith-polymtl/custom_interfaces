# Avancement de la mission pour l'UI de la GCS : topics.MISSION_STATUS, 1 Hz (hexa_ws ui_feed).
# Champs de l'UI (aeac-2027, gcs_ui/src/ros/mock.ts, src/panels/TopBar.tsx et LeftPanel.tsx).
# Les constantes sont la seule définition des tâches et des phases : aucune node ne les redéfinit.

string TASK_1 = "T1"
string TASK_2 = "T2"

# Phases de la Tâche 1 : le mode de navigation actif (NavMode), ou ce qui le précède.
string PHASE_PREFLIGHT = "preflight"    # NavMode NONE, pas armé
string PHASE_TAKEOFF = "takeoff"        # NavMode NONE, armé, décollage pas terminé (topics.TAKEOFF_COMPLETED)
string PHASE_IDLE = "idle"              # NavMode NONE après le décollage
string PHASE_LAPS = "laps_nav"          # NavMode LAPS
string PHASE_SEARCH = "search_nav"      # NavMode SEARCH
string PHASE_RETURN = "return_nav"      # NavMode RETURN
string PHASE_PILOT = "pilot"            # NavMode PILOT
# Phases de la Tâche 2 (state machine T2, à venir) : takeoff, search_animal, attach_tracker, move_away,
# tracking, search_samples, collect_deliver, landing (les noms que l'UI attend).

string task                   # TASK_1 ou TASK_2
string phase                  # constante PHASE_* ci-dessus
uint32 step                   # tour en cours en laps_nav (1 à steps) ; 0 si la phase n'a pas d'étapes
uint32 steps                  # nombre de tours en laps_nav ; 0 si la phase n'a pas d'étapes
float32 distance_remaining_m  # jusqu'à l'entrée dans la zone de recherche, m ; 0 une fois entré, ou inconnu
float32 search_reached_s      # du décollage à l'entrée dans la zone de recherche, s ; 0 tant qu'on n'y est pas
float32 elapsed_s             # depuis le décollage, s ; 0 avant ; figé à l'atterrissage (désarmement)
float32 window_remaining_s    # temps restant dans la fenêtre de vol, s
