# Géométrie de la mission pour la carte de l'UI de la GCS : topics.MISSION_GEOMETRY, latched (hexa_ws ui_feed).
# Lue dans config/sites/<site>.yaml (aeac-2027) ; champs de l'UI (gcs_ui/src/ros/mock.ts et MapPanel.tsx).
# Publiée seulement si le site donne une limite de vol (boundary).

GeoPolygon boundary       # limite de vol (boundary.*)
GeoPolygon search_area    # Tâche 1 : zone de recherche (task1.search_area.*) ; vide si absente
GeoPolygon course         # Tâche 1 : parcours des tours (task1.course.*) ; vide si absent
GeoCircle animal_area     # Tâche 2 : zone de l'animal (task2.animal.*) ; à 0 si absente
GeoCircle samples_area    # Tâche 2 : zone des échantillons (task2.samples.*) ; à 0 si absente
