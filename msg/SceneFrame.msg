# SceneFrame.msg
# Message custom encapsulant une frame complète de description de scène
# Destiné à être publié sur /aeac/scene_frame vers la ground station
#
# Champs:
#   header       : timestamp de la frame (stamp de l'image source)
#   scene_json   : JSON complet de wall_detector (/scene_description)
#   scene_text   : description textuelle de scene_descriptor (/scene_text)
#   overlay_image: image RGB avec bounding boxes et annotations overlay

std_msgs/Header header
string scene_json
string scene_text
sensor_msgs/Image overlay_image
