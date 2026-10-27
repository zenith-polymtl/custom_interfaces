# Réponse de drive_uploader (topics.DRIVE_STATUS) à un DriveSubmit, publiée à chaque étape.
# Une remise passe par UPLOADING puis UPLOADED ou FAILED ; une validation seule finit en VALID ou INVALID.

uint8 STATE_VALID = 1        # validation seule : pas d'erreur (des avertissements possibles), prêt à remettre
uint8 STATE_INVALID = 2      # erreurs de format : rien n'est remis, même avec force
uint8 STATE_NEEDS_FORCE = 3  # remise demandée, des avertissements et force faux : rien n'est remis
uint8 STATE_UPLOADING = 4    # validé, envoi en cours
uint8 STATE_UPLOADED = 5     # sur le Drive, md5 vérifié : drive_modified_time est l'heure de remise
uint8 STATE_FAILED = 6       # validé mais pas remis : identifiants, réseau, dossier, md5

std_msgs/Header header
string request_id            # celui du DriveSubmit
uint8 task                   # DriveSubmit.TASK_*
string path                  # fichier local lu
string remote_name           # nom sur le Drive, <team>_task1_survey.txt ou <team>_task2_tracking.csv
uint8 state                  # STATE_*
string[] errors
string[] warnings
string summary               # ce que dit le fichier (T1 : total, groupes, étiquettes ; T2 : points, durée)
string md5                   # md5 du contenu validé, donc remis
string drive_file_id
string drive_link            # lien web du fichier sur le Drive
string drive_modified_time   # RFC 3339, horloge de Google : l'heure de remise que voient les juges
bool replaced                # un fichier du même nom existait et a été remplacé (Drive garde l'ancienne version)
string message               # une phrase pour l'opérateur
