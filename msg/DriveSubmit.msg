# Demande à drive_uploader (topics.DRIVE_SUBMIT) : valider un fichier de remise de la Phase 2 produit
# par une autre node (report_builder, track_csv_writer), et le remettre sur le Google Drive de l'équipe
# quand l'opérateur confirme. Topic externe : la demande traverse la radio, la node peut tourner au sol
# ou sur le drone. La réponse est un DriveStatus avec le même request_id.

uint8 TASK_1_SURVEY = 1      # <team>_task1_survey.txt (CONOPS §5.2.3, point 9)
uint8 TASK_2_TRACKING = 2    # <team>_task2_tracking.csv (CONOPS §5.2.4, point 6)

std_msgs/Header header
string request_id            # choisi par le demandeur, renvoyé tel quel dans DriveStatus
uint8 task                   # TASK_*
string path                  # chemin du fichier sur la machine de drive_uploader
bool upload                  # faux : valider seulement ; vrai : valider puis remettre (confirmation de l'opérateur)
bool force                   # remettre malgré des avertissements ; jamais malgré une erreur
