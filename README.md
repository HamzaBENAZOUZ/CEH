# CEH Training

Site et application Android de révision pour l'examen CEH (EC-Council 312-50), sur le modèle du site CISSP
(https://hamzabenazouz.github.io/cissp/) et branché sur la **même base Supabase** et le **même compte**.

- Site : https://hamzabenazouz.github.io/CEH/ (GitHub Pages, branche `main`, dossier racine).
- Application Android : `apk/ceh-training.apk` (mise à jour proposée dans l'appli via `apk/version.json`).
- Données : tables `chapters` / `questions` de Supabase :
  - 601-614 : QCM par chapitre (questions originales, CL_6xxxx) ;
  - 701 : Practice Exam du livre (BK_6001-6061), 702 : QCM complémentaires (BK_6201-6335) ;
  - 791 : examen blanc CEH original de 125 questions (CL_7xxxx).
  Le site ne télécharge que ces chapitres. Sessions, réponses, marques et quiz sauvegardés sont dans les mêmes
  tables que le CISSP ; le site CEH n'affiche que ce qui porte sur des questions CEH.
- Fiches de révision (14 chapitres, en français avec les termes techniques en anglais) : `js/revision.js`,
  révision express : `js/express-audio.js`.
- Stockage navigateur préfixé `ceh-`.
- Contenu sous copyright : jamais dans ce dépôt (`private/` est ignoré), pas de fichiers SQL.
