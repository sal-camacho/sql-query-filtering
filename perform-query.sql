Step 1: Retrieve employee device data

MariaDB [organization]> SELECT *
    -> FROM machines;
+--------------+------------------+----------------+---------------+-------------+
| device_id    | operating_system | email_client   | OS_patch_date | employee_id |
+--------------+------------------+----------------+---------------+-------------+
| a184b775c707 | OS 1             | Email Client 1 | 2021-09-01    |        1156 |
| a192b174c940 | OS 2             | Email Client 1 | 2021-06-01    |        1052 |
| a305b818c708 | OS 3             | Email Client 2 | 2021-06-01    |        1182 |
| a317b635c465 | OS 1             | Email Client 2 | 2021-03-01    |        1130 |
| a320b137c219 | OS 2             | Email Client 2 | 2021-03-01    |        1000 |
| a398b471c573 | OS 3             | Email Client 2 | 2021-12-01    |           0 |
| a667b270c984 | OS 1             | Email Client 1 | 2021-03-01    |        1078 |
| a821b452c176 | OS 2             | Email Client 2 | 2021-12-01    |        1104 |
| a998b568c863 | OS 3             | Email Client 1 | 2021-12-01    |        1026 |
| b157c491d493 | OS 2             | Email Client 1 | 2021-03-01    |           0 |
| b239c825d303 | OS 1             | Email Client 1 | 2021-03-01    |        1001 |
| b264c773d977 | OS 2             | Email Client 2 | 2021-03-01    |        1157 |
| b265c937d713 | OS 2             | Email Client 1 | 2021-09-01    |        1131 |
| b433c245d868 | OS 1             | Email Client 1 | 2021-06-01    |        1079 |
| b551c837d758 | OS 3             | Email Client 1 | 2021-03-01    |        1105 |
| b566c710d544 | OS 1             | Email Client 1 | 2021-06-01    |        1183 |
| b806c503d354 | OS 2             | Email Client 1 | 2021-12-01    |        1027 |
| b979c871d361 | OS 2             | Email Client 1 | 2021-03-01    |        1053 |
| c116d593e558 | OS 3             | Email Client 1 | 2021-09-01    |        1002 |
| c150d982e144 | OS 2             | Email Client 2 | 2021-06-01    |        1132 |
| c185d679e493 | OS 1             | Email Client 2 | 2021-09-01    |           0 |
| c406d877e950 | OS 2             | Email Client 1 | 2021-06-01    |        1158 |
| c547d140e477 | OS 2             | Email Client 1 | 2021-03-01    |        1054 |
| c568d742e974 | OS 2             | Email Client 2 | 2021-09-01    |        1080 |
| c597d792e215 | OS 2             | Email Client 1 | 2021-09-01    |        1106 |
| c603d749e374 | OS 1             | Email Client 1 | 2021-12-01    |        1028 |
| c986d200e170 | OS 2             | Email Client 2 | 2021-09-01    |        1184 |
| d168e758f876 | OS 2             | Email Client 1 | 2021-09-01    |        1107 |
| d280e557f635 | OS 3             | Email Client 1 | 2021-03-01    |           0 |
| d336e475f676 | OS 2             | Email Client 2 | 2021-06-01    |        1029 |
| d394e816f943 | OS 3             | Email Client 2 | 2021-03-01    |        1003 |
| d647e310f618 | OS 2             | Email Client 2 | 2021-06-01    |        1081 |
| d693e351f221 | OS 2             | Email Client 2 | 2021-09-01    |        1133 |
| d790e839f461 | OS 1             | Email Client 1 | 2021-06-01    |        1185 |
| d831e972f553 | OS 1             | Email Client 1 | 2021-09-01    |        1055 |
| d881e710f732 | OS 3             | Email Client 2 | 2021-03-01    |        1159 |
| e113f288g203 | OS 2             | Email Client 2 | 2021-03-01    |        1108 |
| e121f951g937 | OS 3             | Email Client 2 | 2021-06-01    |           0 |
| e127f591g924 | OS 3             | Email Client 2 | 2021-12-01    |        1160 |
| e218f877g788 | OS 2             | Email Client 1 | 2021-09-01    |        1004 |
| e281f433g404 | OS 1             | Email Client 2 | 2021-12-01    |        1186 |
| e301f659g551 | OS 3             | Email Client 2 | 2021-12-01    |        1082 |
| e391f189g913 | OS 3             | Email Client 2 | 2021-12-01    |        1030 |
| e395f616g566 | OS 2             | Email Client 2 | 2021-03-01    |        1134 |
| e782f537g683 | OS 1             | Email Client 1 | 2021-03-01    |        1056 |
| f117g394h201 | OS 1             | Email Client 2 | 2021-03-01    |           0 |
| f229g533h679 | OS 2             | Email Client 2 | 2021-03-01    |        1109 |
| f370g535h632 | OS 2             | Email Client 2 | 2021-09-01    |        1057 |
| f419g188h578 | OS 1             | Email Client 1 | 2021-06-01    |        1031 |
| f551g340h864 | OS 3             | Email Client 2 | 2021-12-01    |        1005 |
| f840g812h544 | OS 1             | Email Client 2 | 2021-12-01    |        1083 |
| f934g229h883 | OS 2             | Email Client 2 | 2021-03-01    |        1135 |
| f951g408h866 | OS 1             | Email Client 2 | 2021-03-01    |        1161 |
| f963g637h851 | OS 1             | Email Client 1 | 2021-06-01    |        1187 |
| g164h566i795 | OS 1             | Email Client 1 | 2021-09-01    |        1188 |
| g264h852i697 | OS 3             | Email Client 1 | 2021-03-01    |        1058 |
| g299h520i457 | OS 2             | Email Client 1 | 2021-09-01    |        1136 |
| g329h357i597 | OS 1             | Email Client 2 | 2021-06-01    |        1006 |
| g567h376i314 | OS 3             | Email Client 1 | 2021-12-01    |        1110 |
| g770h829i938 | OS 2             | Email Client 1 | 2021-09-01    |           0 |
| g773h303i639 | OS 2             | Email Client 2 | 2021-12-01    |        1032 |
| g950h972i991 | OS 2             | Email Client 1 | 2021-12-01    |        1084 |
| g953h643i618 | OS 2             | Email Client 2 | 2021-06-01    |        1162 |
| h165i539j638 | OS 3             | Email Client 1 | 2021-03-01    |        1137 |
| h174i497j413 | OS 2             | Email Client 1 | 2021-03-01    |        1007 |
| h339i498j269 | OS 1             | Email Client 1 | 2021-03-01    |        1085 |
| h679i515j339 | OS 3             | Email Client 1 | 2021-09-01    |        1163 |
| h784i120j837 | OS 3             | Email Client 2 | 2021-12-01    |        1189 |
| h832i322j795 | OS 1             | Email Client 1 | 2021-09-01    |        1059 |
| h835i179j862 | OS 2             | Email Client 2 | 2021-06-01    |        1111 |
| i281j129k749 | OS 3             | Email Client 1 | 2021-06-01    |        1086 |
| i446j874k974 | OS 3             | Email Client 1 | 2021-03-01    |        1060 |
| i671j355k725 | OS 2             | Email Client 2 | 2021-03-01    |        1138 |
| i679j565k940 | OS 1             | Email Client 1 | 2021-03-01    |        1034 |
| i682j513k442 | OS 3             | Email Client 1 | 2021-03-01    |        1164 |
| i772j807k175 | OS 2             | Email Client 1 | 2021-12-01    |        1112 |
| i858j583k571 | OS 2             | Email Client 2 | 2021-06-01    |        1008 |
| j236k303l245 | OS 1             | Email Client 1 | 2021-12-01    |        1035 |
| j255k281l925 | OS 3             | Email Client 1 | 2021-06-01    |        1061 |
| j637k986l199 | OS 2             | Email Client 1 | 2021-06-01    |        1139 |
| j713k893l832 | OS 2             | Email Client 1 | 2021-03-01    |        1165 |
| j781k420l510 | OS 1             | Email Client 1 | 2021-09-01    |        1113 |
| j803k645l251 | OS 2             | Email Client 1 | 2021-12-01    |        1087 |
| k242l212m542 | OS 1             | Email Client 1 | 2021-03-01    |        1010 |
| k367l639m697 | OS 1             | Email Client 1 | 2021-12-01    |        1062 |
| k495l234m708 | OS 1             | Email Client 2 | 2021-09-01    |        1166 |
| k550l533m205 | OS 3             | Email Client 2 | 2021-09-01    |        1036 |
| k570l183m949 | OS 3             | Email Client 1 | 2021-12-01    |        1192 |
| k865l965m233 | OS 3             | Email Client 2 | 2021-12-01    |        1088 |
| k982l199m839 | OS 2             | Email Client 2 | 2021-03-01    |        1140 |
| l186m618n319 | OS 1             | Email Client 2 | 2021-12-01    |        1193 |
| l282m821n717 | OS 1             | Email Client 1 | 2021-12-01    |        1141 |
| l358m929n154 | OS 3             | Email Client 2 | 2021-03-01    |        1089 |
| l552m734n118 | OS 2             | Email Client 2 | 2021-03-01    |        1115 |
| l686m140n569 | OS 3             | Email Client 2 | 2021-12-01    |        1063 |
| l693m585n528 | OS 3             | Email Client 1 | 2021-06-01    |        1037 |
| l738m922n515 | OS 1             | Email Client 1 | 2021-03-01    |        1167 |
| l748m120n401 | OS 3             | Email Client 1 | 2021-09-01    |        1011 |
| m272n572o874 | OS 3             | Email Client 2 | 2021-09-01    |        1116 |
| m340n287o441 | OS 2             | Email Client 2 | 2021-09-01    |        1194 |
| m674n127o823 | OS 3             | Email Client 2 | 2021-03-01    |        1142 |
| m756n668o146 | OS 1             | Email Client 2 | 2021-09-01    |        1012 |
| m778n920o426 | OS 2             | Email Client 2 | 2021-06-01    |        1168 |
| m873n636o225 | OS 1             | Email Client 2 | 2021-06-01    |        1038 |
| m891n748o375 | OS 2             | Email Client 2 | 2021-12-01    |        1090 |
| n205o559p243 | OS 1             | Email Client 2 | 2021-06-01    |        1013 |
| n253o917p623 | OS 1             | Email Client 2 | 2021-09-01    |        1039 |
| n378o313p469 | OS 3             | Email Client 2 | 2021-12-01    |        1091 |
| n428o322p522 | OS 1             | Email Client 1 | 2021-12-01    |        1065 |
| n516o853p957 | OS 1             | Email Client 1 | 2021-09-01    |        1195 |
| n683o758p820 | OS 2             | Email Client 1 | 2021-12-01    |        1117 |
| n704o364p471 | OS 2             | Email Client 2 | 2021-09-01    |        1143 |
| o156p302q359 | OS 2             | Email Client 1 | 2021-03-01    |        1170 |
| o225p357q829 | OS 3             | Email Client 1 | 2021-12-01    |        1196 |
| o305p208q337 | OS 3             | Email Client 2 | 2021-03-01    |        1118 |
| o391p779q935 | OS 1             | Email Client 2 | 2021-06-01    |        1092 |
| o678p794q957 | OS 1             | Email Client 1 | 2021-09-01    |        1066 |
| o783p832q294 | OS 2             | Email Client 2 | 2021-09-01    |        1040 |
| p164q780r999 | OS 3             | Email Client 2 | 2021-12-01    |        1119 |
| p288q432r721 | OS 3             | Email Client 2 | 2021-12-01    |        1067 |
| p611q262r945 | OS 1             | Email Client 2 | 2021-03-01    |        1015 |
| p752q137r169 | OS 3             | Email Client 2 | 2021-12-01    |        1145 |
| p765q957r699 | OS 2             | Email Client 1 | 2021-06-01    |        1093 |
| p791q114r509 | OS 2             | Email Client 1 | 2021-09-01    |        1197 |
| p834q238r776 | OS 3             | Email Client 2 | 2021-03-01    |        1171 |
| p929q222r778 | OS 3             | Email Client 1 | 2021-06-01    |        1041 |
| q175r338s833 | OS 3             | Email Client 1 | 2021-06-01    |        1042 |
| q228r135s755 | OS 1             | Email Client 2 | 2021-09-01    |        1146 |
| q308r573s459 | OS 3             | Email Client 1 | 2021-03-01    |        1198 |
| q372r826s628 | OS 2             | Email Client 1 | 2021-09-01    |        1172 |
| q689r187s648 | OS 2             | Email Client 1 | 2021-12-01    |        1068 |
| q793r736s288 | OS 2             | Email Client 1 | 2021-03-01    |        1016 |
| q912r119s313 | OS 2             | Email Client 1 | 2021-06-01    |        1120 |
| r194s893t593 | OS 1             | Email Client 2 | 2021-06-01    |        1095 |
| r454s225t299 | OS 2             | Email Client 2 | 2021-12-01    |        1147 |
| r520s571t459 | OS 2             | Email Client 2 | 2021-03-01    |        1199 |
| r537s849t690 | OS 1             | Email Client 2 | 2021-09-01    |        1173 |
| r550s824t230 | OS 2             | Email Client 1 | 2021-03-01    |        1017 |
| r628s557t397 | OS 1             | Email Client 1 | 2021-12-01    |        1121 |
| s103t952u851 | OS 2             | Email Client 2 | 2021-03-01    |        1122 |
| s310t540u653 | OS 1             | Email Client 2 | 2021-12-01    |        1018 |
| s328t505u907 | OS 3             | Email Client 2 | 2021-12-01    |        1148 |
| s371t911u987 | OS 1             | Email Client 2 | 2021-06-01    |        1174 |
| s375t538u194 | OS 2             | Email Client 1 | 2021-12-01    |        1096 |
| s429t157u159 | OS 1             | Email Client 1 | 2021-03-01    |        1044 |
| s772t175u409 | OS 1             | Email Client 1 | 2021-06-01    |        1070 |
| s918t412u294 | OS 3             | Email Client 2 | 2021-12-01    |           0 |
| t244u829v723 | OS 1             | Email Client 2 | 2021-06-01    |        1071 |
| t363u179v368 | OS 3             | Email Client 2 | 2021-03-01    |        1097 |
| t479u468v151 | OS 1             | Email Client 1 | 2021-06-01    |        1123 |
| t567u844v434 | OS 3             | Email Client 2 | 2021-12-01    |        1045 |
| t709u492v884 | OS 1             | Email Client 2 | 2021-06-01    |        1149 |
| t801u630v138 | OS 2             | Email Client 2 | 2021-03-01    |           0 |
| t815u205v470 | OS 3             | Email Client 1 | 2021-06-01    |        1019 |
| t959u687v394 | OS 2             | Email Client 2 | 2021-06-01    |        1175 |
| u113v483w811 | OS 3             | Email Client 2 | 2021-06-01    |           0 |
| u340v931w764 | OS 2             | Email Client 2 | 2021-09-01    |        1124 |
| u429v921w138 | OS 2             | Email Client 2 | 2021-12-01    |        1046 |
| u554v512w139 | OS 1             | Email Client 1 | 2021-03-01    |        1150 |
| u671v146w618 | OS 1             | Email Client 2 | 2021-09-01    |        1098 |
| u849v569w521 | OS 2             | Email Client 1 | 2021-06-01    |        1176 |
| u899v381w363 | OS 3             | Email Client 1 | 2021-06-01    |        1020 |
| u905v920w694 | OS 1             | Email Client 1 | 2021-09-01    |        1072 |
| v109w587x644 | OS 2             | Email Client 2 | 2021-03-01    |        1047 |
| v135w241x773 | OS 2             | Email Client 2 | 2021-12-01    |        1073 |
| v200w121x977 | OS 2             | Email Client 2 | 2021-03-01    |        1021 |
| v283w690x104 | OS 1             | Email Client 1 | 2021-03-01    |        1099 |
| v491w553x421 | OS 2             | Email Client 2 | 2021-03-01    |        1125 |
| v691w183x928 | OS 1             | Email Client 2 | 2021-09-01    |        1177 |
| v846w200x439 | OS 1             | Email Client 1 | 2021-06-01    |           0 |
| v852w513x954 | OS 2             | Email Client 1 | 2021-12-01    |        1151 |
| w167x592y375 | OS 3             | Email Client 1 | 2021-12-01    |        1048 |
| w190x708y760 | OS 3             | Email Client 2 | 2021-03-01    |        1126 |
| w237x430y567 | OS 2             | Email Client 2 | 2021-06-01    |        1022 |
| w326x611y598 | OS 1             | Email Client 2 | 2021-03-01    |        1100 |
| w622x645y348 | OS 3             | Email Client 1 | 2021-03-01    |        1074 |
| w981x771y326 | OS 2             | Email Client 2 | 2021-06-01    |           0 |
| w986x187y885 | OS 3             | Email Client 2 | 2021-12-01    |        1178 |
| x127y181z890 | OS 2             | Email Client 1 | 2021-06-01    |        1127 |
| x174y934z376 | OS 1             | Email Client 2 | 2021-06-01    |        1179 |
| x253y759z103 | OS 1             | Email Client 2 | 2021-12-01    |        1023 |
| x561y839z458 | OS 2             | Email Client 1 | 2021-09-01    |           0 |
| x573y883z772 | OS 1             | Email Client 1 | 2021-12-01    |        1075 |
| x677y330z296 | OS 1             | Email Client 2 | 2021-06-01    |        1153 |
| x701y250z303 | OS 3             | Email Client 2 | 2021-03-01    |        1101 |
| y103z561a649 | OS 2             | Email Client 1 | 2021-03-01    |        1128 |
| y131z211a578 | OS 2             | Email Client 1 | 2021-03-01    |        1180 |
| y132z930a114 | OS 2             | Email Client 2 | 2021-06-01    |        1050 |
| y246z508a775 | OS 2             | Email Client 1 | 2021-12-01    |           0 |
| y347z204a710 | OS 2             | Email Client 2 | 2021-12-01    |        1076 |
| y765z123a548 | OS 2             | Email Client 2 | 2021-06-01    |        1154 |
| y943z930a241 | OS 1             | Email Client 2 | 2021-09-01    |        1102 |
| y976z753a267 | OS 2             | Email Client 2 | 2021-06-01    |        1024 |
| z381a365b233 | OS 3             | Email Client 2 | 2021-12-01    |        1025 |
| z451a308b518 | OS 2             | Email Client 1 | 2021-03-01    |        1051 |
| z566a147b347 | OS 1             | Email Client 1 | 2021-12-01    |        1129 |
| z654a154b259 | OS 2             | Email Client 2 | 2021-12-01    |        1077 |
| z803a233b718 | OS 1             | Email Client 2 | 2021-12-01    |        1181 |
| z821a946b264 | OS 3             | Email Client 2 | 2021-06-01    |           0 |
| z942a966b589 | OS 3             | Email Client 1 | 2021-09-01    |        1155 |
+--------------+------------------+----------------+---------------+-------------+
200 rows in set (0.035 sec

MariaDB [organization]> SELECT device_id, email_client
FROM machines;
+--------------+----------------+
| device_id    | email_client   |
+--------------+----------------+
| a184b775c707 | Email Client 1 |
| a192b174c940 | Email Client 1 |
| a305b818c708 | Email Client 2 |
| a317b635c465 | Email Client 2 |
| a320b137c219 | Email Client 2 |
| a398b471c573 | Email Client 2 |
| a667b270c984 | Email Client 1 |
| a821b452c176 | Email Client 2 |
| a998b568c863 | Email Client 1 |
| b157c491d493 | Email Client 1 |
| b239c825d303 | Email Client 1 |
| b264c773d977 | Email Client 2 |
| b265c937d713 | Email Client 1 |
| b433c245d868 | Email Client 1 |
| b551c837d758 | Email Client 1 |
| b566c710d544 | Email Client 1 |
| b806c503d354 | Email Client 1 |
| b979c871d361 | Email Client 1 |
| c116d593e558 | Email Client 1 |
| c150d982e144 | Email Client 2 |
| c185d679e493 | Email Client 2 |
| c406d877e950 | Email Client 1 |
| c547d140e477 | Email Client 1 |
| c568d742e974 | Email Client 2 |
| c597d792e215 | Email Client 1 |
| c603d749e374 | Email Client 1 |
| c986d200e170 | Email Client 2 |
| d168e758f876 | Email Client 1 |
| d280e557f635 | Email Client 1 |
| d336e475f676 | Email Client 2 |
| d394e816f943 | Email Client 2 |
| d647e310f618 | Email Client 2 |
| d693e351f221 | Email Client 2 |
| d790e839f461 | Email Client 1 |
| d831e972f553 | Email Client 1 |
| d881e710f732 | Email Client 2 |
| e113f288g203 | Email Client 2 |
| e121f951g937 | Email Client 2 |
| e127f591g924 | Email Client 2 |
| e218f877g788 | Email Client 1 |
| e281f433g404 | Email Client 2 |
| e301f659g551 | Email Client 2 |
| e391f189g913 | Email Client 2 |
| e395f616g566 | Email Client 2 |
| e782f537g683 | Email Client 1 |
| f117g394h201 | Email Client 2 |
| f229g533h679 | Email Client 2 |
| f370g535h632 | Email Client 2 |
| f419g188h578 | Email Client 1 |
| f551g340h864 | Email Client 2 |
| f840g812h544 | Email Client 2 |
| f934g229h883 | Email Client 2 |
| f951g408h866 | Email Client 2 |
| f963g637h851 | Email Client 1 |
| g164h566i795 | Email Client 1 |
| g264h852i697 | Email Client 1 |
| g299h520i457 | Email Client 1 |
| g329h357i597 | Email Client 2 |
| g567h376i314 | Email Client 1 |
| g770h829i938 | Email Client 1 |
| g773h303i639 | Email Client 2 |
| g950h972i991 | Email Client 1 |
| g953h643i618 | Email Client 2 |
| h165i539j638 | Email Client 1 |
| h174i497j413 | Email Client 1 |
| h339i498j269 | Email Client 1 |
| h679i515j339 | Email Client 1 |
| h784i120j837 | Email Client 2 |
| h832i322j795 | Email Client 1 |
| h835i179j862 | Email Client 2 |
| i281j129k749 | Email Client 1 |
| i446j874k974 | Email Client 1 |
| i671j355k725 | Email Client 2 |
| i679j565k940 | Email Client 1 |
| i682j513k442 | Email Client 1 |
| i772j807k175 | Email Client 1 |
| i858j583k571 | Email Client 2 |
| j236k303l245 | Email Client 1 |
| j255k281l925 | Email Client 1 |
| j637k986l199 | Email Client 1 |
| j713k893l832 | Email Client 1 |
| j781k420l510 | Email Client 1 |
| j803k645l251 | Email Client 1 |
| k242l212m542 | Email Client 1 |
| k367l639m697 | Email Client 1 |
| k495l234m708 | Email Client 2 |
| k550l533m205 | Email Client 2 |
| k570l183m949 | Email Client 1 |
| k865l965m233 | Email Client 2 |
| k982l199m839 | Email Client 2 |
| l186m618n319 | Email Client 2 |
| l282m821n717 | Email Client 1 |
| l358m929n154 | Email Client 2 |
| l552m734n118 | Email Client 2 |
| l686m140n569 | Email Client 2 |
| l693m585n528 | Email Client 1 |
| l738m922n515 | Email Client 1 |
| l748m120n401 | Email Client 1 |
| m272n572o874 | Email Client 2 |
| m340n287o441 | Email Client 2 |
| m674n127o823 | Email Client 2 |
| m756n668o146 | Email Client 2 |
| m778n920o426 | Email Client 2 |
| m873n636o225 | Email Client 2 |
| m891n748o375 | Email Client 2 |
| n205o559p243 | Email Client 2 |
| n253o917p623 | Email Client 2 |
| n378o313p469 | Email Client 2 |
| n428o322p522 | Email Client 1 |
| n516o853p957 | Email Client 1 |
| n683o758p820 | Email Client 1 |
| n704o364p471 | Email Client 2 |
| o156p302q359 | Email Client 1 |
| o225p357q829 | Email Client 1 |
| o305p208q337 | Email Client 2 |
| o391p779q935 | Email Client 2 |
| o678p794q957 | Email Client 1 |
| o783p832q294 | Email Client 2 |
| p164q780r999 | Email Client 2 |
| p288q432r721 | Email Client 2 |
| p611q262r945 | Email Client 2 |
| p752q137r169 | Email Client 2 |
| p765q957r699 | Email Client 1 |
| p791q114r509 | Email Client 1 |
| p834q238r776 | Email Client 2 |
| p929q222r778 | Email Client 1 |
| q175r338s833 | Email Client 1 |
| q228r135s755 | Email Client 2 |
| q308r573s459 | Email Client 1 |
| q372r826s628 | Email Client 1 |
| q689r187s648 | Email Client 1 |
| q793r736s288 | Email Client 1 |
| q912r119s313 | Email Client 1 |
| r194s893t593 | Email Client 2 |
| r454s225t299 | Email Client 2 |
| r520s571t459 | Email Client 2 |
| r537s849t690 | Email Client 2 |
| r550s824t230 | Email Client 1 |
| r628s557t397 | Email Client 1 |
| s103t952u851 | Email Client 2 |
| s310t540u653 | Email Client 2 |
| s328t505u907 | Email Client 2 |
| s371t911u987 | Email Client 2 |
| s375t538u194 | Email Client 1 |
| s429t157u159 | Email Client 1 |
| s772t175u409 | Email Client 1 |
| s918t412u294 | Email Client 2 |
| t244u829v723 | Email Client 2 |
| t363u179v368 | Email Client 2 |
| t479u468v151 | Email Client 1 |
| t567u844v434 | Email Client 2 |
| t709u492v884 | Email Client 2 |
| t801u630v138 | Email Client 2 |
| t815u205v470 | Email Client 1 |
| t959u687v394 | Email Client 2 |
| u113v483w811 | Email Client 2 |
| u340v931w764 | Email Client 2 |
| u429v921w138 | Email Client 2 |
| u554v512w139 | Email Client 1 |
| u671v146w618 | Email Client 2 |
| u849v569w521 | Email Client 1 |
| u899v381w363 | Email Client 1 |
| u905v920w694 | Email Client 1 |
| v109w587x644 | Email Client 2 |
| v135w241x773 | Email Client 2 |
| v200w121x977 | Email Client 2 |
| v283w690x104 | Email Client 1 |
| v491w553x421 | Email Client 2 |
| v691w183x928 | Email Client 2 |
| v846w200x439 | Email Client 1 |
| v852w513x954 | Email Client 1 |
| w167x592y375 | Email Client 1 |
| w190x708y760 | Email Client 2 |
| w237x430y567 | Email Client 2 |
| w326x611y598 | Email Client 2 |
| w622x645y348 | Email Client 1 |
| w981x771y326 | Email Client 2 |
| w986x187y885 | Email Client 2 |
| x127y181z890 | Email Client 1 |
| x174y934z376 | Email Client 2 |
| x253y759z103 | Email Client 2 |
| x561y839z458 | Email Client 1 |
| x573y883z772 | Email Client 1 |
| x677y330z296 | Email Client 2 |
| x701y250z303 | Email Client 2 |
| y103z561a649 | Email Client 1 |
| y131z211a578 | Email Client 1 |
| y132z930a114 | Email Client 2 |
| y246z508a775 | Email Client 1 |
| y347z204a710 | Email Client 2 |
| y765z123a548 | Email Client 2 |
| y943z930a241 | Email Client 2 |
| y976z753a267 | Email Client 2 |
| z381a365b233 | Email Client 2 |
| z451a308b518 | Email Client 1 |
| z566a147b347 | Email Client 1 |
| z654a154b259 | Email Client 2 |
| z803a233b718 | Email Client 2 |
| z821a946b264 | Email Client 2 |
| z942a966b589 | Email Client 1 |
+--------------+----------------+
200 rows in set (0.001

MariaDB [organization]> SELECT device_id, operating_system, OS_patch_date
    -> FROM machines;
+--------------+------------------+---------------+
| device_id    | operating_system | OS_patch_date |
+--------------+------------------+---------------+
| a184b775c707 | OS 1             | 2021-09-01    |
| a192b174c940 | OS 2             | 2021-06-01    |
| a305b818c708 | OS 3             | 2021-06-01    |
| a317b635c465 | OS 1             | 2021-03-01    |
| a320b137c219 | OS 2             | 2021-03-01    |
| a398b471c573 | OS 3             | 2021-12-01    |
| a667b270c984 | OS 1             | 2021-03-01    |
| a821b452c176 | OS 2             | 2021-12-01    |
| a998b568c863 | OS 3             | 2021-12-01    |
| b157c491d493 | OS 2             | 2021-03-01    |
| b239c825d303 | OS 1             | 2021-03-01    |
| b264c773d977 | OS 2             | 2021-03-01    |
| b265c937d713 | OS 2             | 2021-09-01    |
| b433c245d868 | OS 1             | 2021-06-01    |
| b551c837d758 | OS 3             | 2021-03-01    |
| b566c710d544 | OS 1             | 2021-06-01    |
| b806c503d354 | OS 2             | 2021-12-01    |
| b979c871d361 | OS 2             | 2021-03-01    |
| c116d593e558 | OS 3             | 2021-09-01    |
| c150d982e144 | OS 2             | 2021-06-01    |
| c185d679e493 | OS 1             | 2021-09-01    |
| c406d877e950 | OS 2             | 2021-06-01    |
| c547d140e477 | OS 2             | 2021-03-01    |
| c568d742e974 | OS 2             | 2021-09-01    |
| c597d792e215 | OS 2             | 2021-09-01    |
| c603d749e374 | OS 1             | 2021-12-01    |
| c986d200e170 | OS 2             | 2021-09-01    |
| d168e758f876 | OS 2             | 2021-09-01    |
| d280e557f635 | OS 3             | 2021-03-01    |
| d336e475f676 | OS 2             | 2021-06-01    |
| d394e816f943 | OS 3             | 2021-03-01    |
| d647e310f618 | OS 2             | 2021-06-01    |
| d693e351f221 | OS 2             | 2021-09-01    |
| d790e839f461 | OS 1             | 2021-06-01    |
| d831e972f553 | OS 1             | 2021-09-01    |
| d881e710f732 | OS 3             | 2021-03-01    |
| e113f288g203 | OS 2             | 2021-03-01    |
| e121f951g937 | OS 3             | 2021-06-01    |
| e127f591g924 | OS 3             | 2021-12-01    |
| e218f877g788 | OS 2             | 2021-09-01    |
| e281f433g404 | OS 1             | 2021-12-01    |
| e301f659g551 | OS 3             | 2021-12-01    |
| e391f189g913 | OS 3             | 2021-12-01    |
| e395f616g566 | OS 2             | 2021-03-01    |
| e782f537g683 | OS 1             | 2021-03-01    |
| f117g394h201 | OS 1             | 2021-03-01    |
| f229g533h679 | OS 2             | 2021-03-01    |
| f370g535h632 | OS 2             | 2021-09-01    |
| f419g188h578 | OS 1             | 2021-06-01    |
| f551g340h864 | OS 3             | 2021-12-01    |
| f840g812h544 | OS 1             | 2021-12-01    |
| f934g229h883 | OS 2             | 2021-03-01    |
| f951g408h866 | OS 1             | 2021-03-01    |
| f963g637h851 | OS 1             | 2021-06-01    |
| g164h566i795 | OS 1             | 2021-09-01    |
| g264h852i697 | OS 3             | 2021-03-01    |
| g299h520i457 | OS 2             | 2021-09-01    |
| g329h357i597 | OS 1             | 2021-06-01    |
| g567h376i314 | OS 3             | 2021-12-01    |
| g770h829i938 | OS 2             | 2021-09-01    |
| g773h303i639 | OS 2             | 2021-12-01    |
| g950h972i991 | OS 2             | 2021-12-01    |
| g953h643i618 | OS 2             | 2021-06-01    |
| h165i539j638 | OS 3             | 2021-03-01    |
| h174i497j413 | OS 2             | 2021-03-01    |
| h339i498j269 | OS 1             | 2021-03-01    |
| h679i515j339 | OS 3             | 2021-09-01    |
| h784i120j837 | OS 3             | 2021-12-01    |
| h832i322j795 | OS 1             | 2021-09-01    |
| h835i179j862 | OS 2             | 2021-06-01    |
| i281j129k749 | OS 3             | 2021-06-01    |
| i446j874k974 | OS 3             | 2021-03-01    |
| i671j355k725 | OS 2             | 2021-03-01    |
| i679j565k940 | OS 1             | 2021-03-01    |
| i682j513k442 | OS 3             | 2021-03-01    |
| i772j807k175 | OS 2             | 2021-12-01    |
| i858j583k571 | OS 2             | 2021-06-01    |
| j236k303l245 | OS 1             | 2021-12-01    |
| j255k281l925 | OS 3             | 2021-06-01    |
| j637k986l199 | OS 2             | 2021-06-01    |
| j713k893l832 | OS 2             | 2021-03-01    |
| j781k420l510 | OS 1             | 2021-09-01    |
| j803k645l251 | OS 2             | 2021-12-01    |
| k242l212m542 | OS 1             | 2021-03-01    |
| k367l639m697 | OS 1             | 2021-12-01    |
| k495l234m708 | OS 1             | 2021-09-01    |
| k550l533m205 | OS 3             | 2021-09-01    |
| k570l183m949 | OS 3             | 2021-12-01    |
| k865l965m233 | OS 3             | 2021-12-01    |
| k982l199m839 | OS 2             | 2021-03-01    |
| l186m618n319 | OS 1             | 2021-12-01    |
| l282m821n717 | OS 1             | 2021-12-01    |
| l358m929n154 | OS 3             | 2021-03-01    |
| l552m734n118 | OS 2             | 2021-03-01    |
| l686m140n569 | OS 3             | 2021-12-01    |
| l693m585n528 | OS 3             | 2021-06-01    |
| l738m922n515 | OS 1             | 2021-03-01    |
| l748m120n401 | OS 3             | 2021-09-01    |
| m272n572o874 | OS 3             | 2021-09-01    |
| m340n287o441 | OS 2             | 2021-09-01    |
| m674n127o823 | OS 3             | 2021-03-01    |
| m756n668o146 | OS 1             | 2021-09-01    |
| m778n920o426 | OS 2             | 2021-06-01    |
| m873n636o225 | OS 1             | 2021-06-01    |
| m891n748o375 | OS 2             | 2021-12-01    |
| n205o559p243 | OS 1             | 2021-06-01    |
| n253o917p623 | OS 1             | 2021-09-01    |
| n378o313p469 | OS 3             | 2021-12-01    |
| n428o322p522 | OS 1             | 2021-12-01    |
| n516o853p957 | OS 1             | 2021-09-01    |
| n683o758p820 | OS 2             | 2021-12-01    |
| n704o364p471 | OS 2             | 2021-09-01    |
| o156p302q359 | OS 2             | 2021-03-01    |
| o225p357q829 | OS 3             | 2021-12-01    |
| o305p208q337 | OS 3             | 2021-03-01    |
| o391p779q935 | OS 1             | 2021-06-01    |
| o678p794q957 | OS 1             | 2021-09-01    |
| o783p832q294 | OS 2             | 2021-09-01    |
| p164q780r999 | OS 3             | 2021-12-01    |
| p288q432r721 | OS 3             | 2021-12-01    |
| p611q262r945 | OS 1             | 2021-03-01    |
| p752q137r169 | OS 3             | 2021-12-01    |
| p765q957r699 | OS 2             | 2021-06-01    |
| p791q114r509 | OS 2             | 2021-09-01    |
| p834q238r776 | OS 3             | 2021-03-01    |
| p929q222r778 | OS 3             | 2021-06-01    |
| q175r338s833 | OS 3             | 2021-06-01    |
| q228r135s755 | OS 1             | 2021-09-01    |
| q308r573s459 | OS 3             | 2021-03-01    |
| q372r826s628 | OS 2             | 2021-09-01    |
| q689r187s648 | OS 2             | 2021-12-01    |
| q793r736s288 | OS 2             | 2021-03-01    |
| q912r119s313 | OS 2             | 2021-06-01    |
| r194s893t593 | OS 1             | 2021-06-01    |
| r454s225t299 | OS 2             | 2021-12-01    |
| r520s571t459 | OS 2             | 2021-03-01    |
| r537s849t690 | OS 1             | 2021-09-01    |
| r550s824t230 | OS 2             | 2021-03-01    |
| r628s557t397 | OS 1             | 2021-12-01    |
| s103t952u851 | OS 2             | 2021-03-01    |
| s310t540u653 | OS 1             | 2021-12-01    |
| s328t505u907 | OS 3             | 2021-12-01    |
| s371t911u987 | OS 1             | 2021-06-01    |
| s375t538u194 | OS 2             | 2021-12-01    |
| s429t157u159 | OS 1             | 2021-03-01    |
| s772t175u409 | OS 1             | 2021-06-01    |
| s918t412u294 | OS 3             | 2021-12-01    |
| t244u829v723 | OS 1             | 2021-06-01    |
| t363u179v368 | OS 3             | 2021-03-01    |
| t479u468v151 | OS 1             | 2021-06-01    |
| t567u844v434 | OS 3             | 2021-12-01    |
| t709u492v884 | OS 1             | 2021-06-01    |
| t801u630v138 | OS 2             | 2021-03-01    |
| t815u205v470 | OS 3             | 2021-06-01    |
| t959u687v394 | OS 2             | 2021-06-01    |
| u113v483w811 | OS 3             | 2021-06-01    |
| u340v931w764 | OS 2             | 2021-09-01    |
| u429v921w138 | OS 2             | 2021-12-01    |
| u554v512w139 | OS 1             | 2021-03-01    |
| u671v146w618 | OS 1             | 2021-09-01    |
| u849v569w521 | OS 2             | 2021-06-01    |
| u899v381w363 | OS 3             | 2021-06-01    |
| u905v920w694 | OS 1             | 2021-09-01    |
| v109w587x644 | OS 2             | 2021-03-01    |
| v135w241x773 | OS 2             | 2021-12-01    |
| v200w121x977 | OS 2             | 2021-03-01    |
| v283w690x104 | OS 1             | 2021-03-01    |
| v491w553x421 | OS 2             | 2021-03-01    |
| v691w183x928 | OS 1             | 2021-09-01    |
| v846w200x439 | OS 1             | 2021-06-01    |
| v852w513x954 | OS 2             | 2021-12-01    |
| w167x592y375 | OS 3             | 2021-12-01    |
| w190x708y760 | OS 3             | 2021-03-01    |
| w237x430y567 | OS 2             | 2021-06-01    |
| w326x611y598 | OS 1             | 2021-03-01    |
| w622x645y348 | OS 3             | 2021-03-01    |
| w981x771y326 | OS 2             | 2021-06-01    |
| w986x187y885 | OS 3             | 2021-12-01    |
| x127y181z890 | OS 2             | 2021-06-01    |
| x174y934z376 | OS 1             | 2021-06-01    |
| x253y759z103 | OS 1             | 2021-12-01    |
| x561y839z458 | OS 2             | 2021-09-01    |
| x573y883z772 | OS 1             | 2021-12-01    |
| x677y330z296 | OS 1             | 2021-06-01    |
| x701y250z303 | OS 3             | 2021-03-01    |
| y103z561a649 | OS 2             | 2021-03-01    |
| y131z211a578 | OS 2             | 2021-03-01    |
| y132z930a114 | OS 2             | 2021-06-01    |
| y246z508a775 | OS 2             | 2021-12-01    |
| y347z204a710 | OS 2             | 2021-12-01    |
| y765z123a548 | OS 2             | 2021-06-01    |
| y943z930a241 | OS 1             | 2021-09-01    |
| y976z753a267 | OS 2             | 2021-06-01    |
| z381a365b233 | OS 3             | 2021-12-01    |
| z451a308b518 | OS 2             | 2021-03-01    |
| z566a147b347 | OS 1             | 2021-12-01    |
| z654a154b259 | OS 2             | 2021-12-01    |
| z803a233b718 | OS 1             | 2021-12-01    |
| z821a946b264 | OS 3             | 2021-06-01    |
| z942a966b589 | OS 3             | 2021-09-01    |
+--------------+------------------+---------------+
200 rows in set (0.002 sec)

Step 2: Investigate login activity

MariaDB [organization]> SELECT event_id, country
    -> FROM log_in_attempts;
+----------+---------+
| event_id | country |
+----------+---------+
|        1 | CAN     |
|        2 | CAN     |
|        3 | USA     |
|        4 | USA     |
|        5 | CANADA  |
|        6 | MEXICO  |
|        7 | CAN     |
|        8 | US      |
|        9 | MEX     |
|       10 | CANADA  |
|       11 | CANADA  |
|       12 | USA     |
|       13 | USA     |
|       14 | US      |
|       15 | USA     |
|       16 | CAN     |
|       17 | USA     |
|       18 | US      |
|       19 | US      |
|       20 | MEXICO  |
|       21 | US      |
|       22 | MEX     |
|       23 | MEXICO  |
|       24 | MEXICO  |
|       25 | US      |
|       26 | CANADA  |
|       27 | MEX     |
|       28 | MEXICO  |
|       29 | US      |
|       30 | MEX     |
|       31 | CANADA  |
|       32 | CANADA  |
|       33 | US      |
|       34 | US      |
|       35 | MEX     |
|       36 | US      |
|       37 | CANADA  |
|       38 | USA     |
|       39 | MEXICO  |
|       40 | MEX     |
|       41 | CANADA  |
|       42 | US      |
|       43 | CANADA  |
|       44 | CANADA  |
|       45 | US      |
|       46 | CAN     |
|       47 | US      |
|       48 | USA     |
|       49 | US      |
|       50 | CANADA  |
|       51 | CANADA  |
|       52 | CAN     |
|       53 | CAN     |
|       54 | MEXICO  |
|       55 | US      |
|       56 | CAN     |
|       57 | US      |
|       58 | CAN     |
|       59 | MEX     |
|       60 | CAN     |
|       61 | USA     |
|       62 | MEXICO  |
|       63 | MEXICO  |
|       64 | CANADA  |
|       65 | MEX     |
|       66 | MEX     |
|       67 | MEX     |
|       68 | US      |
|       69 | USA     |
|       70 | MEXICO  |
|       71 | CAN     |
|       72 | CANADA  |
|       73 | USA     |
|       74 | CAN     |
|       75 | US      |
|       76 | CAN     |
|       77 | US      |
|       78 | MEX     |
|       79 | MEX     |
|       80 | CANADA  |
|       81 | MEX     |
|       82 | MEX     |
|       83 | USA     |
|       84 | CAN     |
|       85 | MEX     |
|       86 | USA     |
|       87 | CANADA  |
|       88 | MEXICO  |
|       89 | USA     |
|       90 | CANADA  |
|       91 | US      |
|       92 | US      |
|       93 | MEX     |
|       94 | MEX     |
|       95 | MEX     |
|       96 | CAN     |
|       97 | MEXICO  |
|       98 | CANADA  |
|       99 | CANADA  |
|      100 | MEXICO  |
|      101 | US      |
|      102 | MEX     |
|      103 | US      |
|      104 | US      |
|      105 | CAN     |
|      106 | MEXICO  |
|      107 | USA     |
|      108 | CANADA  |
|      109 | CANADA  |
|      110 | USA     |
|      111 | MEXICO  |
|      112 | MEX     |
|      113 | CAN     |
|      114 | MEXICO  |
|      115 | CAN     |
|      116 | MEXICO  |
|      117 | USA     |
|      118 | MEXICO  |
|      119 | MEXICO  |
|      120 | MEXICO  |
|      121 | US      |
|      122 | MEX     |
|      123 | CANADA  |
|      124 | USA     |
|      125 | US      |
|      126 | CAN     |
|      127 | CANADA  |
|      128 | CANADA  |
|      129 | USA     |
|      130 | USA     |
|      131 | US      |
|      132 | MEX     |
|      133 | USA     |
|      134 | USA     |
|      135 | US      |
|      136 | US      |
|      137 | CAN     |
|      138 | MEXICO  |
|      139 | CAN     |
|      140 | US      |
|      141 | USA     |
|      142 | CANADA  |
|      143 | USA     |
|      144 | CANADA  |
|      145 | CANADA  |
|      146 | CANADA  |
|      147 | MEX     |
|      148 | CANADA  |
|      149 | USA     |
|      150 | CAN     |
|      151 | USA     |
|      152 | USA     |
|      153 | MEXICO  |
|      154 | US      |
|      155 | USA     |
|      156 | USA     |
|      157 | MEXICO  |
|      158 | MEXICO  |
|      159 | USA     |
|      160 | CANADA  |
|      161 | CAN     |
|      162 | MEXICO  |
|      163 | MEX     |
|      164 | CAN     |
|      165 | MEXICO  |
|      166 | MEX     |
|      167 | CAN     |
|      168 | USA     |
|      169 | CANADA  |
|      170 | USA     |
|      171 | USA     |
|      172 | US      |
|      173 | US      |
|      174 | US      |
|      175 | USA     |
|      176 | MEX     |
|      177 | USA     |
|      178 | CAN     |
|      179 | CAN     |
|      180 | MEX     |
|      181 | CAN     |
|      182 | USA     |
|      183 | CANADA  |
|      184 | CAN     |
|      185 | USA     |
|      186 | USA     |
|      187 | MEX     |
|      188 | USA     |
|      189 | CANADA  |
|      190 | USA     |
|      191 | CANADA  |
|      192 | USA     |
|      193 | US      |
|      194 | CAN     |
|      195 | CANADA  |
|      196 | CAN     |
|      197 | US      |
|      198 | MEXICO  |
|      199 | MEXICO  |
|      200 | CANADA  |
+----------+---------+
200 rows in set (0.003 sec)

MariaDB [organization]> SELECT username, login_date, login_time
    -> FROM log_in_attempts;
+----------+------------+------------+
| username | login_date | login_time |
+----------+------------+------------+
| jrafael  | 2022-05-09 | 04:56:27   |
| apatel   | 2022-05-10 | 20:27:27   |
| dkot     | 2022-05-09 | 06:47:41   |
| dkot     | 2022-05-08 | 02:00:39   |
| jrafael  | 2022-05-11 | 03:05:59   |
| arutley  | 2022-05-12 | 17:00:59   |
| eraab    | 2022-05-11 | 01:45:14   |
| bisles   | 2022-05-08 | 01:30:17   |
| yappiah  | 2022-05-11 | 13:47:29   |
| jrafael  | 2022-05-12 | 09:33:19   |
| sgilmore | 2022-05-11 | 10:16:29   |
| dkot     | 2022-05-08 | 09:11:34   |
| mrah     | 2022-05-11 | 09:29:34   |
| sbaelish | 2022-05-10 | 10:20:18   |
| lyamamot | 2022-05-09 | 17:17:26   |
| mcouliba | 2022-05-11 | 06:44:22   |
| pwashing | 2022-05-11 | 02:33:02   |
| pwashing | 2022-05-11 | 19:28:50   |
| jhill    | 2022-05-12 | 13:09:04   |
| tshah    | 2022-05-12 | 18:56:36   |
| iuduike  | 2022-05-11 | 17:50:00   |
| rjensen  | 2022-05-11 | 00:59:26   |
| yappiah  | 2022-05-10 | 18:11:53   |
| arusso   | 2022-05-09 | 06:49:39   |
| sbaelish | 2022-05-09 | 07:04:02   |
| apatel   | 2022-05-08 | 17:27:00   |
| aalonso  | 2022-05-10 | 01:55:35   |
| aestrada | 2022-05-09 | 19:28:12   |
| bisles   | 2022-05-11 | 01:21:22   |
| yappiah  | 2022-05-09 | 03:22:22   |
| acook    | 2022-05-12 | 17:36:45   |
| acook    | 2022-05-09 | 02:52:02   |
| zbernal  | 2022-05-11 | 02:52:10   |
| drosas   | 2022-05-11 | 21:02:04   |
| tshah    | 2022-05-10 | 15:26:08   |
| asundara | 2022-05-08 | 09:00:42   |
| eraab    | 2022-05-10 | 06:03:41   |
| sbaelish | 2022-05-09 | 14:40:01   |
| yappiah  | 2022-05-09 | 07:56:40   |
| aalonso  | 2022-05-12 | 15:15:46   |
| apatel   | 2022-05-10 | 17:39:42   |
| cgriffin | 2022-05-09 | 23:04:05   |
| mcouliba | 2022-05-08 | 02:35:34   |
| daquino  | 2022-05-08 | 07:02:35   |
| dtanaka  | 2022-05-11 | 10:28:54   |
| eraab    | 2022-05-11 | 11:29:27   |
| dkot     | 2022-05-08 | 05:06:45   |
| asundara | 2022-05-11 | 03:18:45   |
| asundara | 2022-05-08 | 14:00:01   |
| jclark   | 2022-05-10 | 10:48:02   |
| jrafael  | 2022-05-10 | 22:40:01   |
| cjackson | 2022-05-10 | 22:07:07   |
| nmason   | 2022-05-08 | 11:51:38   |
| jreckley | 2022-05-10 | 19:31:19   |
| jlansky  | 2022-05-11 | 05:15:34   |
| acook    | 2022-05-08 | 04:56:30   |
| asundara | 2022-05-12 | 21:13:02   |
| ivelasco | 2022-05-09 | 17:20:54   |
| rjensen  | 2022-05-12 | 04:52:08   |
| acook    | 2022-05-11 | 21:46:00   |
| dtanaka  | 2022-05-09 | 09:45:18   |
| abernard | 2022-05-10 | 10:19:57   |
| tmitchel | 2022-05-11 | 14:13:41   |
| apatel   | 2022-05-10 | 22:00:09   |
| aalonso  | 2022-05-09 | 23:42:12   |
| aestrada | 2022-05-08 | 21:58:32   |
| abernard | 2022-05-09 | 11:53:41   |
| mrah     | 2022-05-08 | 17:16:13   |
| wjaffrey | 2022-05-11 | 19:55:15   |
| tmitchel | 2022-05-09 | 10:55:17   |
| mcouliba | 2022-05-09 | 06:57:42   |
| alevitsk | 2022-05-08 | 12:09:10   |
| zbernal  | 2022-05-10 | 17:46:45   |
| nmason   | 2022-05-11 | 15:55:48   |
| zbernal  | 2022-05-12 | 04:14:35   |
| bmoreno  | 2022-05-10 | 10:53:55   |
| wjaffrey | 2022-05-12 | 08:37:59   |
| smartell | 2022-05-10 | 05:55:53   |
| abernard | 2022-05-09 | 11:41:15   |
| cjackson | 2022-05-08 | 02:18:10   |
| aalonso  | 2022-05-11 | 12:50:38   |
| abernard | 2022-05-12 | 23:38:46   |
| lrodriqu | 2022-05-08 | 08:10:23   |
| jrafael  | 2022-05-11 | 09:26:17   |
| dtarly   | 2022-05-11 | 17:35:28   |
| dtanaka  | 2022-05-10 | 10:22:20   |
| apatel   | 2022-05-08 | 22:38:31   |
| aestrada | 2022-05-12 | 11:21:50   |
| dkot     | 2022-05-12 | 10:52:00   |
| gesparza | 2022-05-09 | 00:49:05   |
| jhill    | 2022-05-11 | 17:46:47   |
| pwashing | 2022-05-08 | 00:36:12   |
| jreckley | 2022-05-12 | 04:31:20   |
| tbarnes  | 2022-05-10 | 03:37:10   |
| dtarly   | 2022-05-12 | 11:23:42   |
| ivelasco | 2022-05-09 | 22:36:36   |
| jreckley | 2022-05-09 | 02:49:23   |
| gesparza | 2022-05-11 | 06:30:14   |
| mcouliba | 2022-05-12 | 11:54:14   |
| tmitchel | 2022-05-12 | 16:02:03   |
| sbaelish | 2022-05-08 | 12:01:22   |
| jreckley | 2022-05-09 | 16:51:44   |
| jhill    | 2022-05-11 | 09:10:54   |
| asundara | 2022-05-11 | 18:38:07   |
| cjackson | 2022-05-12 | 19:36:42   |
| tmitchel | 2022-05-12 | 06:15:41   |
| bisles   | 2022-05-12 | 20:25:57   |
| daquino  | 2022-05-09 | 21:30:48   |
| mcouliba | 2022-05-10 | 04:43:15   |
| mabadi   | 2022-05-09 | 00:01:54   |
| aestrada | 2022-05-10 | 22:00:26   |
| rjensen  | 2022-05-09 | 09:22:05   |
| gesparza | 2022-05-10 | 00:40:00   |
| smartell | 2022-05-10 | 10:51:22   |
| ivelasco | 2022-05-10 | 23:06:01   |
| tmitchel | 2022-05-10 | 20:33:27   |
| bsand    | 2022-05-08 | 00:19:11   |
| smartell | 2022-05-12 | 23:21:31   |
| tmitchel | 2022-05-11 | 23:07:13   |
| tmitchel | 2022-05-09 | 02:58:17   |
| btang    | 2022-05-10 | 22:00:36   |
| yappiah  | 2022-05-11 | 08:27:25   |
| bmoreno  | 2022-05-10 | 04:43:30   |
| asundara | 2022-05-12 | 10:51:21   |
| bisles   | 2022-05-11 | 08:36:19   |
| jrafael  | 2022-05-12 | 18:47:52   |
| abellmas | 2022-05-09 | 21:20:51   |
| jclark   | 2022-05-09 | 10:45:59   |
| drosas   | 2022-05-12 | 15:39:40   |
| mrah     | 2022-05-11 | 02:54:21   |
| bisles   | 2022-05-09 | 20:03:55   |
| rjensen  | 2022-05-12 | 23:26:03   |
| asundara | 2022-05-12 | 05:57:04   |
| iuduike  | 2022-05-09 | 06:46:40   |
| bsand    | 2022-05-09 | 14:06:33   |
| mabadi   | 2022-05-10 | 06:56:44   |
| jrafael  | 2022-05-12 | 02:42:37   |
| tmitchel | 2022-05-10 | 12:38:33   |
| apatel   | 2022-05-11 | 01:54:36   |
| btang    | 2022-05-10 | 13:17:29   |
| btang    | 2022-05-12 | 10:12:03   |
| gesparza | 2022-05-11 | 06:31:14   |
| jhill    | 2022-05-11 | 00:30:22   |
| daquino  | 2022-05-09 | 11:09:32   |
| ivelasco | 2022-05-08 | 09:06:02   |
| nmason   | 2022-05-10 | 02:25:55   |
| yappiah  | 2022-05-08 | 06:04:34   |
| daquino  | 2022-05-08 | 06:15:55   |
| jlansky  | 2022-05-11 | 01:07:11   |
| nmason   | 2022-05-08 | 14:40:02   |
| mabadi   | 2022-05-09 | 16:29:46   |
| mabadi   | 2022-05-12 | 10:24:43   |
| smartell | 2022-05-12 | 13:32:52   |
| jlansky  | 2022-05-12 | 10:57:35   |
| cgriffin | 2022-05-12 | 22:18:42   |
| btang    | 2022-05-11 | 17:08:51   |
| tmitchel | 2022-05-12 | 14:14:54   |
| smartell | 2022-05-09 | 19:30:32   |
| iuduike  | 2022-05-12 | 16:59:50   |
| jclark   | 2022-05-10 | 20:49:00   |
| abellmas | 2022-05-09 | 13:25:50   |
| yappiah  | 2022-05-09 | 04:51:22   |
| tmitchel | 2022-05-08 | 09:21:16   |
| jclark   | 2022-05-12 | 21:15:52   |
| jreckley | 2022-05-08 | 15:28:43   |
| tmitchel | 2022-05-10 | 05:45:16   |
| jclark   | 2022-05-12 | 15:47:45   |
| jlansky  | 2022-05-08 | 13:25:42   |
| alevitsk | 2022-05-08 | 08:10:43   |
| sbaelish | 2022-05-09 | 16:43:18   |
| drosas   | 2022-05-10 | 16:32:55   |
| mabadi   | 2022-05-08 | 08:06:50   |
| asundara | 2022-05-12 | 23:17:52   |
| lyamamot | 2022-05-10 | 12:26:27   |
| jhill    | 2022-05-10 | 00:17:09   |
| cward    | 2022-05-11 | 12:00:02   |
| wjaffrey | 2022-05-11 | 00:15:55   |
| sgilmore | 2022-05-08 | 12:27:22   |
| jclark   | 2022-05-12 | 04:08:17   |
| tmitchel | 2022-05-12 | 14:53:21   |
| abellmas | 2022-05-10 | 13:37:05   |
| lyamamot | 2022-05-10 | 06:01:31   |
| nmason   | 2022-05-11 | 05:29:36   |
| alevitsk | 2022-05-08 | 03:09:48   |
| jsoto    | 2022-05-10 | 13:34:58   |
| bisles   | 2022-05-09 | 04:29:17   |
| arusso   | 2022-05-09 | 00:36:26   |
| jsoto    | 2022-05-11 | 00:39:09   |
| nmason   | 2022-05-08 | 05:37:24   |
| jsoto    | 2022-05-09 | 05:09:21   |
| cjackson | 2022-05-08 | 06:46:07   |
| bisles   | 2022-05-10 | 08:32:03   |
| lrodriqu | 2022-05-08 | 07:11:29   |
| jclark   | 2022-05-12 | 14:11:04   |
| alevitsk | 2022-05-11 | 06:59:13   |
| acook    | 2022-05-10 | 09:56:48   |
| jsoto    | 2022-05-08 | 09:05:09   |
| yappiah  | 2022-05-12 | 10:37:22   |
| yappiah  | 2022-05-11 | 19:34:48   |
| jclark   | 2022-05-12 | 01:11:45   |
+----------+------------+------------+
200 rows in set (0.001 sec)

MariaDB [organization]> SELECT *
    -> FROM log_in_attempts;
+----------+----------+------------+------------+---------+-----------------+---------+
| event_id | username | login_date | login_time | country | ip_address      | success |
+----------+----------+------------+------------+---------+-----------------+---------+
|        1 | jrafael  | 2022-05-09 | 04:56:27   | CAN     | 192.168.243.140 |       1 |
|        2 | apatel   | 2022-05-10 | 20:27:27   | CAN     | 192.168.205.12  |       0 |
|        3 | dkot     | 2022-05-09 | 06:47:41   | USA     | 192.168.151.162 |       1 |
|        4 | dkot     | 2022-05-08 | 02:00:39   | USA     | 192.168.178.71  |       0 |
|        5 | jrafael  | 2022-05-11 | 03:05:59   | CANADA  | 192.168.86.232  |       0 |
|        6 | arutley  | 2022-05-12 | 17:00:59   | MEXICO  | 192.168.3.24    |       0 |
|        7 | eraab    | 2022-05-11 | 01:45:14   | CAN     | 192.168.170.243 |       1 |
|        8 | bisles   | 2022-05-08 | 01:30:17   | US      | 192.168.119.173 |       0 |
|        9 | yappiah  | 2022-05-11 | 13:47:29   | MEX     | 192.168.59.136  |       1 |
|       10 | jrafael  | 2022-05-12 | 09:33:19   | CANADA  | 192.168.228.221 |       0 |
|       11 | sgilmore | 2022-05-11 | 10:16:29   | CANADA  | 192.168.140.81  |       0 |
|       12 | dkot     | 2022-05-08 | 09:11:34   | USA     | 192.168.100.158 |       1 |
|       13 | mrah     | 2022-05-11 | 09:29:34   | USA     | 192.168.246.135 |       1 |
|       14 | sbaelish | 2022-05-10 | 10:20:18   | US      | 192.168.16.99   |       1 |
|       15 | lyamamot | 2022-05-09 | 17:17:26   | USA     | 192.168.183.51  |       0 |
|       16 | mcouliba | 2022-05-11 | 06:44:22   | CAN     | 192.168.172.189 |       1 |
|       17 | pwashing | 2022-05-11 | 02:33:02   | USA     | 192.168.81.89   |       1 |
|       18 | pwashing | 2022-05-11 | 19:28:50   | US      | 192.168.66.142  |       0 |
|       19 | jhill    | 2022-05-12 | 13:09:04   | US      | 192.168.142.245 |       1 |
|       20 | tshah    | 2022-05-12 | 18:56:36   | MEXICO  | 192.168.109.50  |       0 |
|       21 | iuduike  | 2022-05-11 | 17:50:00   | US      | 192.168.131.147 |       1 |
|       22 | rjensen  | 2022-05-11 | 00:59:26   | MEX     | 192.168.213.128 |       0 |
|       23 | yappiah  | 2022-05-10 | 18:11:53   | MEXICO  | 192.168.200.48  |       1 |
|       24 | arusso   | 2022-05-09 | 06:49:39   | MEXICO  | 192.168.171.192 |       1 |
|       25 | sbaelish | 2022-05-09 | 07:04:02   | US      | 192.168.33.137  |       1 |
|       26 | apatel   | 2022-05-08 | 17:27:00   | CANADA  | 192.168.123.105 |       1 |
|       27 | aalonso  | 2022-05-10 | 01:55:35   | MEX     | 192.168.103.210 |       0 |
|       28 | aestrada | 2022-05-09 | 19:28:12   | MEXICO  | 192.168.27.57   |       0 |
|       29 | bisles   | 2022-05-11 | 01:21:22   | US      | 192.168.85.186  |       0 |
|       30 | yappiah  | 2022-05-09 | 03:22:22   | MEX     | 192.168.124.48  |       1 |
|       31 | acook    | 2022-05-12 | 17:36:45   | CANADA  | 192.168.58.232  |       0 |
|       32 | acook    | 2022-05-09 | 02:52:02   | CANADA  | 192.168.142.239 |       0 |
|       33 | zbernal  | 2022-05-11 | 02:52:10   | US      | 192.168.72.59   |       1 |
|       34 | drosas   | 2022-05-11 | 21:02:04   | US      | 192.168.45.93   |       0 |
|       35 | tshah    | 2022-05-10 | 15:26:08   | MEX     | 192.168.92.147  |       0 |
|       36 | asundara | 2022-05-08 | 09:00:42   | US      | 192.168.78.151  |       1 |
|       37 | eraab    | 2022-05-10 | 06:03:41   | CANADA  | 192.168.152.148 |       0 |
|       38 | sbaelish | 2022-05-09 | 14:40:01   | USA     | 192.168.60.42   |       1 |
|       39 | yappiah  | 2022-05-09 | 07:56:40   | MEXICO  | 192.168.57.115  |       1 |
|       40 | aalonso  | 2022-05-12 | 15:15:46   | MEX     | 192.168.174.186 |       0 |
|       41 | apatel   | 2022-05-10 | 17:39:42   | CANADA  | 192.168.46.207  |       0 |
|       42 | cgriffin | 2022-05-09 | 23:04:05   | US      | 192.168.4.157   |       0 |
|       43 | mcouliba | 2022-05-08 | 02:35:34   | CANADA  | 192.168.16.208  |       0 |
|       44 | daquino  | 2022-05-08 | 07:02:35   | CANADA  | 192.168.168.144 |       0 |
|       45 | dtanaka  | 2022-05-11 | 10:28:54   | US      | 192.168.223.157 |       1 |
|       46 | eraab    | 2022-05-11 | 11:29:27   | CAN     | 192.168.24.12   |       0 |
|       47 | dkot     | 2022-05-08 | 05:06:45   | US      | 192.168.233.24  |       1 |
|       48 | asundara | 2022-05-11 | 03:18:45   | USA     | 192.168.72.10   |       1 |
|       49 | asundara | 2022-05-08 | 14:00:01   | US      | 192.168.173.213 |       0 |
|       50 | jclark   | 2022-05-10 | 10:48:02   | CANADA  | 192.168.174.117 |       0 |
|       51 | jrafael  | 2022-05-10 | 22:40:01   | CANADA  | 192.168.148.115 |       1 |
|       52 | cjackson | 2022-05-10 | 22:07:07   | CAN     | 192.168.58.57   |       0 |
|       53 | nmason   | 2022-05-08 | 11:51:38   | CAN     | 192.168.133.188 |       1 |
|       54 | jreckley | 2022-05-10 | 19:31:19   | MEXICO  | 192.168.167.152 |       1 |
|       55 | jlansky  | 2022-05-11 | 05:15:34   | US      | 192.168.6.170   |       0 |
|       56 | acook    | 2022-05-08 | 04:56:30   | CAN     | 192.168.209.130 |       1 |
|       57 | asundara | 2022-05-12 | 21:13:02   | US      | 192.168.211.201 |       1 |
|       58 | ivelasco | 2022-05-09 | 17:20:54   | CAN     | 192.168.57.162  |       0 |
|       59 | rjensen  | 2022-05-12 | 04:52:08   | MEX     | 192.168.54.140  |       0 |
|       60 | acook    | 2022-05-11 | 21:46:00   | CAN     | 192.168.54.45   |       1 |
|       61 | dtanaka  | 2022-05-09 | 09:45:18   | USA     | 192.168.98.221  |       1 |
|       62 | abernard | 2022-05-10 | 10:19:57   | MEXICO  | 192.168.156.224 |       1 |
|       63 | tmitchel | 2022-05-11 | 14:13:41   | MEXICO  | 192.168.110.131 |       0 |
|       64 | apatel   | 2022-05-10 | 22:00:09   | CANADA  | 192.168.172.71  |       1 |
|       65 | aalonso  | 2022-05-09 | 23:42:12   | MEX     | 192.168.52.37   |       1 |
|       66 | aestrada | 2022-05-08 | 21:58:32   | MEX     | 192.168.67.223  |       1 |
|       67 | abernard | 2022-05-09 | 11:53:41   | MEX     | 192.168.118.29  |       1 |
|       68 | mrah     | 2022-05-08 | 17:16:13   | US      | 192.168.42.248  |       1 |
|       69 | wjaffrey | 2022-05-11 | 19:55:15   | USA     | 192.168.100.17  |       0 |
|       70 | tmitchel | 2022-05-09 | 10:55:17   | MEXICO  | 192.168.87.199  |       1 |
|       71 | mcouliba | 2022-05-09 | 06:57:42   | CAN     | 192.168.55.169  |       0 |
|       72 | alevitsk | 2022-05-08 | 12:09:10   | CANADA  | 192.168.139.176 |       1 |
|       73 | zbernal  | 2022-05-10 | 17:46:45   | USA     | 192.168.80.46   |       0 |
|       74 | nmason   | 2022-05-11 | 15:55:48   | CAN     | 192.168.162.2   |       1 |
|       75 | zbernal  | 2022-05-12 | 04:14:35   | US      | 192.168.188.63  |       1 |
|       76 | bmoreno  | 2022-05-10 | 10:53:55   | CAN     | 192.168.61.200  |       0 |
|       77 | wjaffrey | 2022-05-12 | 08:37:59   | US      | 192.168.106.183 |       1 |
|       78 | smartell | 2022-05-10 | 05:55:53   | MEX     | 192.168.41.88   |       0 |
|       79 | abernard | 2022-05-09 | 11:41:15   | MEX     | 192.168.158.170 |       0 |
|       80 | cjackson | 2022-05-08 | 02:18:10   | CANADA  | 192.168.33.140  |       1 |
|       81 | aalonso  | 2022-05-11 | 12:50:38   | MEX     | 192.168.152.43  |       1 |
|       82 | abernard | 2022-05-12 | 23:38:46   | MEX     | 192.168.234.49  |       0 |
|       83 | lrodriqu | 2022-05-08 | 08:10:23   | USA     | 192.168.67.69   |       1 |
|       84 | jrafael  | 2022-05-11 | 09:26:17   | CAN     | 192.168.243.203 |       1 |
|       85 | dtarly   | 2022-05-11 | 17:35:28   | MEX     | 192.168.254.75  |       1 |
|       86 | dtanaka  | 2022-05-10 | 10:22:20   | USA     | 192.168.197.135 |       1 |
|       87 | apatel   | 2022-05-08 | 22:38:31   | CANADA  | 192.168.132.153 |       0 |
|       88 | aestrada | 2022-05-12 | 11:21:50   | MEXICO  | 192.168.153.77  |       1 |
|       89 | dkot     | 2022-05-12 | 10:52:00   | USA     | 192.168.128.75  |       1 |
|       90 | gesparza | 2022-05-09 | 00:49:05   | CANADA  | 192.168.87.201  |       0 |
|       91 | jhill    | 2022-05-11 | 17:46:47   | US      | 192.168.172.74  |       1 |
|       92 | pwashing | 2022-05-08 | 00:36:12   | US      | 192.168.247.219 |       0 |
|       93 | jreckley | 2022-05-12 | 04:31:20   | MEX     | 192.168.108.24  |       0 |
|       94 | tbarnes  | 2022-05-10 | 03:37:10   | MEX     | 192.168.74.202  |       0 |
|       95 | dtarly   | 2022-05-12 | 11:23:42   | MEX     | 192.168.203.198 |       1 |
|       96 | ivelasco | 2022-05-09 | 22:36:36   | CAN     | 192.168.84.194  |       0 |
|       97 | jreckley | 2022-05-09 | 02:49:23   | MEXICO  | 192.168.32.231  |       1 |
|       98 | gesparza | 2022-05-11 | 06:30:14   | CANADA  | 192.168.148.80  |       0 |
|       99 | mcouliba | 2022-05-12 | 11:54:14   | CANADA  | 192.168.218.160 |       1 |
|      100 | tmitchel | 2022-05-12 | 16:02:03   | MEXICO  | 192.168.97.225  |       0 |
|      101 | sbaelish | 2022-05-08 | 12:01:22   | US      | 192.168.145.158 |       0 |
|      102 | jreckley | 2022-05-09 | 16:51:44   | MEX     | 192.168.108.13  |       1 |
|      103 | jhill    | 2022-05-11 | 09:10:54   | US      | 192.168.60.153  |       0 |
|      104 | asundara | 2022-05-11 | 18:38:07   | US      | 192.168.96.200  |       0 |
|      105 | cjackson | 2022-05-12 | 19:36:42   | CAN     | 192.168.247.153 |       1 |
|      106 | tmitchel | 2022-05-12 | 06:15:41   | MEXICO  | 192.168.3.252   |       1 |
|      107 | bisles   | 2022-05-12 | 20:25:57   | USA     | 192.168.116.187 |       0 |
|      108 | daquino  | 2022-05-09 | 21:30:48   | CANADA  | 192.168.15.110  |       1 |
|      109 | mcouliba | 2022-05-10 | 04:43:15   | CANADA  | 192.168.39.246  |       1 |
|      110 | mabadi   | 2022-05-09 | 00:01:54   | USA     | 192.168.90.124  |       1 |
|      111 | aestrada | 2022-05-10 | 22:00:26   | MEXICO  | 192.168.76.27   |       0 |
|      112 | rjensen  | 2022-05-09 | 09:22:05   | MEX     | 192.168.69.116  |       1 |
|      113 | gesparza | 2022-05-10 | 00:40:00   | CAN     | 192.168.64.133  |       0 |
|      114 | smartell | 2022-05-10 | 10:51:22   | MEXICO  | 192.168.191.124 |       1 |
|      115 | ivelasco | 2022-05-10 | 23:06:01   | CAN     | 192.168.154.1   |       1 |
|      116 | tmitchel | 2022-05-10 | 20:33:27   | MEXICO  | 192.168.119.26  |       1 |
|      117 | bsand    | 2022-05-08 | 00:19:11   | USA     | 192.168.197.187 |       0 |
|      118 | smartell | 2022-05-12 | 23:21:31   | MEXICO  | 192.168.173.196 |       1 |
|      119 | tmitchel | 2022-05-11 | 23:07:13   | MEXICO  | 192.168.110.175 |       1 |
|      120 | tmitchel | 2022-05-09 | 02:58:17   | MEXICO  | 192.168.134.62  |       0 |
|      121 | btang    | 2022-05-10 | 22:00:36   | US      | 192.168.80.143  |       1 |
|      122 | yappiah  | 2022-05-11 | 08:27:25   | MEX     | 192.168.50.45   |       0 |
|      123 | bmoreno  | 2022-05-10 | 04:43:30   | CANADA  | 192.168.98.2    |       1 |
|      124 | asundara | 2022-05-12 | 10:51:21   | USA     | 192.168.136.29  |       1 |
|      125 | bisles   | 2022-05-11 | 08:36:19   | US      | 192.168.74.9    |       1 |
|      126 | jrafael  | 2022-05-12 | 18:47:52   | CAN     | 192.168.22.16   |       1 |
|      127 | abellmas | 2022-05-09 | 21:20:51   | CANADA  | 192.168.70.122  |       0 |
|      128 | jclark   | 2022-05-09 | 10:45:59   | CANADA  | 192.168.122.169 |       0 |
|      129 | drosas   | 2022-05-12 | 15:39:40   | USA     | 192.168.152.200 |       0 |
|      130 | mrah     | 2022-05-11 | 02:54:21   | USA     | 192.168.102.147 |       0 |
|      131 | bisles   | 2022-05-09 | 20:03:55   | US      | 192.168.113.171 |       0 |
|      132 | rjensen  | 2022-05-12 | 23:26:03   | MEX     | 192.168.9.166   |       1 |
|      133 | asundara | 2022-05-12 | 05:57:04   | USA     | 192.168.6.9     |       1 |
|      134 | iuduike  | 2022-05-09 | 06:46:40   | USA     | 192.168.22.115  |       1 |
|      135 | bsand    | 2022-05-09 | 14:06:33   | US      | 192.168.91.238  |       0 |
|      136 | mabadi   | 2022-05-10 | 06:56:44   | US      | 192.168.214.234 |       1 |
|      137 | jrafael  | 2022-05-12 | 02:42:37   | CAN     | 192.168.186.176 |       1 |
|      138 | tmitchel | 2022-05-10 | 12:38:33   | MEXICO  | 192.168.216.96  |       0 |
|      139 | apatel   | 2022-05-11 | 01:54:36   | CAN     | 192.168.95.222  |       0 |
|      140 | btang    | 2022-05-10 | 13:17:29   | US      | 192.168.249.111 |       0 |
|      141 | btang    | 2022-05-12 | 10:12:03   | USA     | 192.168.82.139  |       0 |
|      142 | gesparza | 2022-05-11 | 06:31:14   | CANADA  | 192.168.117.56  |       1 |
|      143 | jhill    | 2022-05-11 | 00:30:22   | USA     | 192.168.189.19  |       0 |
|      144 | daquino  | 2022-05-09 | 11:09:32   | CANADA  | 192.168.139.9   |       0 |
|      145 | ivelasco | 2022-05-08 | 09:06:02   | CANADA  | 192.168.39.196  |       1 |
|      146 | nmason   | 2022-05-10 | 02:25:55   | CANADA  | 192.168.37.147  |       0 |
|      147 | yappiah  | 2022-05-08 | 06:04:34   | MEX     | 192.168.65.245  |       0 |
|      148 | daquino  | 2022-05-08 | 06:15:55   | CANADA  | 192.168.135.6   |       1 |
|      149 | jlansky  | 2022-05-11 | 01:07:11   | USA     | 192.168.238.42  |       0 |
|      150 | nmason   | 2022-05-08 | 14:40:02   | CAN     | 192.168.204.124 |       0 |
|      151 | mabadi   | 2022-05-09 | 16:29:46   | USA     | 192.168.30.225  |       1 |
|      152 | mabadi   | 2022-05-12 | 10:24:43   | USA     | 192.168.96.244  |       0 |
|      153 | smartell | 2022-05-12 | 13:32:52   | MEXICO  | 192.168.218.219 |       0 |
|      154 | jlansky  | 2022-05-12 | 10:57:35   | US      | 192.168.23.63   |       1 |
|      155 | cgriffin | 2022-05-12 | 22:18:42   | USA     | 192.168.236.176 |       0 |
|      156 | btang    | 2022-05-11 | 17:08:51   | USA     | 192.168.243.95  |       0 |
|      157 | tmitchel | 2022-05-12 | 14:14:54   | MEXICO  | 192.168.179.119 |       1 |
|      158 | smartell | 2022-05-09 | 19:30:32   | MEXICO  | 192.168.190.178 |       1 |
|      159 | iuduike  | 2022-05-12 | 16:59:50   | USA     | 192.168.220.115 |       0 |
|      160 | jclark   | 2022-05-10 | 20:49:00   | CANADA  | 192.168.214.49  |       0 |
|      161 | abellmas | 2022-05-09 | 13:25:50   | CAN     | 192.168.180.205 |       0 |
|      162 | yappiah  | 2022-05-09 | 04:51:22   | MEXICO  | 192.168.162.100 |       0 |
|      163 | tmitchel | 2022-05-08 | 09:21:16   | MEX     | 192.168.119.29  |       0 |
|      164 | jclark   | 2022-05-12 | 21:15:52   | CAN     | 192.168.18.34   |       1 |
|      165 | jreckley | 2022-05-08 | 15:28:43   | MEXICO  | 192.168.34.193  |       0 |
|      166 | tmitchel | 2022-05-10 | 05:45:16   | MEX     | 192.168.80.129  |       0 |
|      167 | jclark   | 2022-05-12 | 15:47:45   | CAN     | 192.168.146.51  |       1 |
|      168 | jlansky  | 2022-05-08 | 13:25:42   | USA     | 192.168.210.94  |       1 |
|      169 | alevitsk | 2022-05-08 | 08:10:43   | CANADA  | 192.168.210.228 |       0 |
|      170 | sbaelish | 2022-05-09 | 16:43:18   | USA     | 192.168.65.113  |       0 |
|      171 | drosas   | 2022-05-10 | 16:32:55   | USA     | 192.168.92.218  |       0 |
|      172 | mabadi   | 2022-05-08 | 08:06:50   | US      | 192.168.180.41  |       1 |
|      173 | asundara | 2022-05-12 | 23:17:52   | US      | 192.168.58.217  |       1 |
|      174 | lyamamot | 2022-05-10 | 12:26:27   | US      | 192.168.228.122 |       0 |
|      175 | jhill    | 2022-05-10 | 00:17:09   | USA     | 192.168.130.218 |       0 |
|      176 | cward    | 2022-05-11 | 12:00:02   | MEX     | 192.168.133.88  |       0 |
|      177 | wjaffrey | 2022-05-11 | 00:15:55   | USA     | 192.168.144.165 |       0 |
|      178 | sgilmore | 2022-05-08 | 12:27:22   | CAN     | 192.168.52.216  |       0 |
|      179 | jclark   | 2022-05-12 | 04:08:17   | CAN     | 192.168.232.93  |       0 |
|      180 | tmitchel | 2022-05-12 | 14:53:21   | MEX     | 192.168.190.202 |       1 |
|      181 | abellmas | 2022-05-10 | 13:37:05   | CAN     | 192.168.60.111  |       0 |
|      182 | lyamamot | 2022-05-10 | 06:01:31   | USA     | 192.168.106.52  |       0 |
|      183 | nmason   | 2022-05-11 | 05:29:36   | CANADA  | 192.168.137.147 |       0 |
|      184 | alevitsk | 2022-05-08 | 03:09:48   | CAN     | 192.168.33.70   |       0 |
|      185 | jsoto    | 2022-05-10 | 13:34:58   | USA     | 192.168.151.91  |       0 |
|      186 | bisles   | 2022-05-09 | 04:29:17   | USA     | 192.168.40.72   |       0 |
|      187 | arusso   | 2022-05-09 | 00:36:26   | MEX     | 192.168.77.137  |       0 |
|      188 | jsoto    | 2022-05-11 | 00:39:09   | USA     | 192.168.21.88   |       0 |
|      189 | nmason   | 2022-05-08 | 05:37:24   | CANADA  | 192.168.168.117 |       1 |
|      190 | jsoto    | 2022-05-09 | 05:09:21   | USA     | 192.168.25.60   |       0 |
|      191 | cjackson | 2022-05-08 | 06:46:07   | CANADA  | 192.168.7.187   |       0 |
|      192 | bisles   | 2022-05-10 | 08:32:03   | USA     | 192.168.201.40  |       1 |
|      193 | lrodriqu | 2022-05-08 | 07:11:29   | US      | 192.168.125.240 |       0 |
|      194 | jclark   | 2022-05-12 | 14:11:04   | CAN     | 192.168.197.247 |       0 |
|      195 | alevitsk | 2022-05-11 | 06:59:13   | CANADA  | 192.168.236.78  |       1 |
|      196 | acook    | 2022-05-10 | 09:56:48   | CAN     | 192.168.52.90   |       0 |
|      197 | jsoto    | 2022-05-08 | 09:05:09   | US      | 192.168.36.21   |       0 |
|      198 | yappiah  | 2022-05-12 | 10:37:22   | MEXICO  | 192.168.103.106 |       1 |
|      199 | yappiah  | 2022-05-11 | 19:34:48   | MEXICO  | 192.168.44.232  |       0 |
|      200 | jclark   | 2022-05-12 | 01:11:45   | CANADA  | 192.168.91.103  |       1 |
+----------+----------+------------+------------+---------+-----------------+---------+
200 rows in set (0.003 sec)

Step 3: Order login attempts data

MariaDB [organization]> SELECT *
    -> FROM log_in_attempts
    -> ORDER BY login_date;
+----------+----------+------------+------------+---------+-----------------+---------+
| event_id | username | login_date | login_time | country | ip_address      | success |
+----------+----------+------------+------------+---------+-----------------+---------+
|      145 | ivelasco | 2022-05-08 | 09:06:02   | CANADA  | 192.168.39.196  |       1 |
|      163 | tmitchel | 2022-05-08 | 09:21:16   | MEX     | 192.168.119.29  |       0 |
|       36 | asundara | 2022-05-08 | 09:00:42   | US      | 192.168.78.151  |       1 |
|      165 | jreckley | 2022-05-08 | 15:28:43   | MEXICO  | 192.168.34.193  |       0 |
|      168 | jlansky  | 2022-05-08 | 13:25:42   | USA     | 192.168.210.94  |       1 |
|      169 | alevitsk | 2022-05-08 | 08:10:43   | CANADA  | 192.168.210.228 |       0 |
|       72 | alevitsk | 2022-05-08 | 12:09:10   | CANADA  | 192.168.139.176 |       1 |
|      101 | sbaelish | 2022-05-08 | 12:01:22   | US      | 192.168.145.158 |       0 |
|      172 | mabadi   | 2022-05-08 | 08:06:50   | US      | 192.168.180.41  |       1 |
|      150 | nmason   | 2022-05-08 | 14:40:02   | CAN     | 192.168.204.124 |       0 |
|       68 | mrah     | 2022-05-08 | 17:16:13   | US      | 192.168.42.248  |       1 |
|       66 | aestrada | 2022-05-08 | 21:58:32   | MEX     | 192.168.67.223  |       1 |
|       53 | nmason   | 2022-05-08 | 11:51:38   | CAN     | 192.168.133.188 |       1 |
|      147 | yappiah  | 2022-05-08 | 06:04:34   | MEX     | 192.168.65.245  |       0 |
|      148 | daquino  | 2022-05-08 | 06:15:55   | CANADA  | 192.168.135.6   |       1 |
|       49 | asundara | 2022-05-08 | 14:00:01   | US      | 192.168.173.213 |       0 |
|       47 | dkot     | 2022-05-08 | 05:06:45   | US      | 192.168.233.24  |       1 |
|       44 | daquino  | 2022-05-08 | 07:02:35   | CANADA  | 192.168.168.144 |       0 |
|       43 | mcouliba | 2022-05-08 | 02:35:34   | CANADA  | 192.168.16.208  |       0 |
|       56 | acook    | 2022-05-08 | 04:56:30   | CAN     | 192.168.209.130 |       1 |
|       80 | cjackson | 2022-05-08 | 02:18:10   | CANADA  | 192.168.33.140  |       1 |
|      117 | bsand    | 2022-05-08 | 00:19:11   | USA     | 192.168.197.187 |       0 |
|       12 | dkot     | 2022-05-08 | 09:11:34   | USA     | 192.168.100.158 |       1 |
|      189 | nmason   | 2022-05-08 | 05:37:24   | CANADA  | 192.168.168.117 |       1 |
|      191 | cjackson | 2022-05-08 | 06:46:07   | CANADA  | 192.168.7.187   |       0 |
|        8 | bisles   | 2022-05-08 | 01:30:17   | US      | 192.168.119.173 |       0 |
|      193 | lrodriqu | 2022-05-08 | 07:11:29   | US      | 192.168.125.240 |       0 |
|        4 | dkot     | 2022-05-08 | 02:00:39   | USA     | 192.168.178.71  |       0 |
|      197 | jsoto    | 2022-05-08 | 09:05:09   | US      | 192.168.36.21   |       0 |
|       26 | apatel   | 2022-05-08 | 17:27:00   | CANADA  | 192.168.123.105 |       1 |
|       92 | pwashing | 2022-05-08 | 00:36:12   | US      | 192.168.247.219 |       0 |
|      178 | sgilmore | 2022-05-08 | 12:27:22   | CAN     | 192.168.52.216  |       0 |
|       83 | lrodriqu | 2022-05-08 | 08:10:23   | USA     | 192.168.67.69   |       1 |
|      184 | alevitsk | 2022-05-08 | 03:09:48   | CAN     | 192.168.33.70   |       0 |
|       87 | apatel   | 2022-05-08 | 22:38:31   | CANADA  | 192.168.132.153 |       0 |
|       70 | tmitchel | 2022-05-09 | 10:55:17   | MEXICO  | 192.168.87.199  |       1 |
|       61 | dtanaka  | 2022-05-09 | 09:45:18   | USA     | 192.168.98.221  |       1 |
|       96 | ivelasco | 2022-05-09 | 22:36:36   | CAN     | 192.168.84.194  |       0 |
|       58 | ivelasco | 2022-05-09 | 17:20:54   | CAN     | 192.168.57.162  |       0 |
|      120 | tmitchel | 2022-05-09 | 02:58:17   | MEXICO  | 192.168.134.62  |       0 |
|       97 | jreckley | 2022-05-09 | 02:49:23   | MEXICO  | 192.168.32.231  |       1 |
|       79 | abernard | 2022-05-09 | 11:41:15   | MEX     | 192.168.158.170 |       0 |
|      144 | daquino  | 2022-05-09 | 11:09:32   | CANADA  | 192.168.139.9   |       0 |
|      135 | bsand    | 2022-05-09 | 14:06:33   | US      | 192.168.91.238  |       0 |
|      134 | iuduike  | 2022-05-09 | 06:46:40   | USA     | 192.168.22.115  |       1 |
|      102 | jreckley | 2022-05-09 | 16:51:44   | MEX     | 192.168.108.13  |       1 |
|      112 | rjensen  | 2022-05-09 | 09:22:05   | MEX     | 192.168.69.116  |       1 |
|      131 | bisles   | 2022-05-09 | 20:03:55   | US      | 192.168.113.171 |       0 |
|       90 | gesparza | 2022-05-09 | 00:49:05   | CANADA  | 192.168.87.201  |       0 |
|      110 | mabadi   | 2022-05-09 | 00:01:54   | USA     | 192.168.90.124  |       1 |
|       71 | mcouliba | 2022-05-09 | 06:57:42   | CAN     | 192.168.55.169  |       0 |
|       67 | abernard | 2022-05-09 | 11:53:41   | MEX     | 192.168.118.29  |       1 |
|      108 | daquino  | 2022-05-09 | 21:30:48   | CANADA  | 192.168.15.110  |       1 |
|      128 | jclark   | 2022-05-09 | 10:45:59   | CANADA  | 192.168.122.169 |       0 |
|      127 | abellmas | 2022-05-09 | 21:20:51   | CANADA  | 192.168.70.122  |       0 |
|       65 | aalonso  | 2022-05-09 | 23:42:12   | MEX     | 192.168.52.37   |       1 |
|      162 | yappiah  | 2022-05-09 | 04:51:22   | MEXICO  | 192.168.162.100 |       0 |
|       32 | acook    | 2022-05-09 | 02:52:02   | CANADA  | 192.168.142.239 |       0 |
|       30 | yappiah  | 2022-05-09 | 03:22:22   | MEX     | 192.168.124.48  |       1 |
|      170 | sbaelish | 2022-05-09 | 16:43:18   | USA     | 192.168.65.113  |       0 |
|       28 | aestrada | 2022-05-09 | 19:28:12   | MEXICO  | 192.168.27.57   |       0 |
|      187 | arusso   | 2022-05-09 | 00:36:26   | MEX     | 192.168.77.137  |       0 |
|        1 | jrafael  | 2022-05-09 | 04:56:27   | CAN     | 192.168.243.140 |       1 |
|      186 | bisles   | 2022-05-09 | 04:29:17   | USA     | 192.168.40.72   |       0 |
|       15 | lyamamot | 2022-05-09 | 17:17:26   | USA     | 192.168.183.51  |       0 |
|       24 | arusso   | 2022-05-09 | 06:49:39   | MEXICO  | 192.168.171.192 |       1 |
|      190 | jsoto    | 2022-05-09 | 05:09:21   | USA     | 192.168.25.60   |       0 |
|       39 | yappiah  | 2022-05-09 | 07:56:40   | MEXICO  | 192.168.57.115  |       1 |
|        3 | dkot     | 2022-05-09 | 06:47:41   | USA     | 192.168.151.162 |       1 |
|      151 | mabadi   | 2022-05-09 | 16:29:46   | USA     | 192.168.30.225  |       1 |
|       25 | sbaelish | 2022-05-09 | 07:04:02   | US      | 192.168.33.137  |       1 |
|       38 | sbaelish | 2022-05-09 | 14:40:01   | USA     | 192.168.60.42   |       1 |
|      158 | smartell | 2022-05-09 | 19:30:32   | MEXICO  | 192.168.190.178 |       1 |
|       42 | cgriffin | 2022-05-09 | 23:04:05   | US      | 192.168.4.157   |       0 |
|      161 | abellmas | 2022-05-09 | 13:25:50   | CAN     | 192.168.180.205 |       0 |
|      113 | gesparza | 2022-05-10 | 00:40:00   | CAN     | 192.168.64.133  |       0 |
|      185 | jsoto    | 2022-05-10 | 13:34:58   | USA     | 192.168.151.91  |       0 |
|      111 | aestrada | 2022-05-10 | 22:00:26   | MEXICO  | 192.168.76.27   |       0 |
|      182 | lyamamot | 2022-05-10 | 06:01:31   | USA     | 192.168.106.52  |       0 |
|       76 | bmoreno  | 2022-05-10 | 10:53:55   | CAN     | 192.168.61.200  |       0 |
|      192 | bisles   | 2022-05-10 | 08:32:03   | USA     | 192.168.201.40  |       1 |
|      109 | mcouliba | 2022-05-10 | 04:43:15   | CANADA  | 192.168.39.246  |       1 |
|      196 | acook    | 2022-05-10 | 09:56:48   | CAN     | 192.168.52.90   |       0 |
|      114 | smartell | 2022-05-10 | 10:51:22   | MEXICO  | 192.168.191.124 |       1 |
|      115 | ivelasco | 2022-05-10 | 23:06:01   | CAN     | 192.168.154.1   |       1 |
|      138 | tmitchel | 2022-05-10 | 12:38:33   | MEXICO  | 192.168.216.96  |       0 |
|      160 | jclark   | 2022-05-10 | 20:49:00   | CANADA  | 192.168.214.49  |       0 |
|      146 | nmason   | 2022-05-10 | 02:25:55   | CANADA  | 192.168.37.147  |       0 |
|      166 | tmitchel | 2022-05-10 | 05:45:16   | MEX     | 192.168.80.129  |       0 |
|      171 | drosas   | 2022-05-10 | 16:32:55   | USA     | 192.168.92.218  |       0 |
|      123 | bmoreno  | 2022-05-10 | 04:43:30   | CANADA  | 192.168.98.2    |       1 |
|      121 | btang    | 2022-05-10 | 22:00:36   | US      | 192.168.80.143  |       1 |
|      136 | mabadi   | 2022-05-10 | 06:56:44   | US      | 192.168.214.234 |       1 |
|      174 | lyamamot | 2022-05-10 | 12:26:27   | US      | 192.168.228.122 |       0 |
|      175 | jhill    | 2022-05-10 | 00:17:09   | USA     | 192.168.130.218 |       0 |
|      116 | tmitchel | 2022-05-10 | 20:33:27   | MEXICO  | 192.168.119.26  |       1 |
|      181 | abellmas | 2022-05-10 | 13:37:05   | CAN     | 192.168.60.111  |       0 |
|      140 | btang    | 2022-05-10 | 13:17:29   | US      | 192.168.249.111 |       0 |
|       35 | tshah    | 2022-05-10 | 15:26:08   | MEX     | 192.168.92.147  |       0 |
|       27 | aalonso  | 2022-05-10 | 01:55:35   | MEX     | 192.168.103.210 |       0 |
|       37 | eraab    | 2022-05-10 | 06:03:41   | CANADA  | 192.168.152.148 |       0 |
|       62 | abernard | 2022-05-10 | 10:19:57   | MEXICO  | 192.168.156.224 |       1 |
|       86 | dtanaka  | 2022-05-10 | 10:22:20   | USA     | 192.168.197.135 |       1 |
|       73 | zbernal  | 2022-05-10 | 17:46:45   | USA     | 192.168.80.46   |       0 |
|       64 | apatel   | 2022-05-10 | 22:00:09   | CANADA  | 192.168.172.71  |       1 |
|       51 | jrafael  | 2022-05-10 | 22:40:01   | CANADA  | 192.168.148.115 |       1 |
|       94 | tbarnes  | 2022-05-10 | 03:37:10   | MEX     | 192.168.74.202  |       0 |
|       14 | sbaelish | 2022-05-10 | 10:20:18   | US      | 192.168.16.99   |       1 |
|        2 | apatel   | 2022-05-10 | 20:27:27   | CAN     | 192.168.205.12  |       0 |
|       54 | jreckley | 2022-05-10 | 19:31:19   | MEXICO  | 192.168.167.152 |       1 |
|       50 | jclark   | 2022-05-10 | 10:48:02   | CANADA  | 192.168.174.117 |       0 |
|       78 | smartell | 2022-05-10 | 05:55:53   | MEX     | 192.168.41.88   |       0 |
|       52 | cjackson | 2022-05-10 | 22:07:07   | CAN     | 192.168.58.57   |       0 |
|       41 | apatel   | 2022-05-10 | 17:39:42   | CANADA  | 192.168.46.207  |       0 |
|       23 | yappiah  | 2022-05-10 | 18:11:53   | MEXICO  | 192.168.200.48  |       1 |
|       45 | dtanaka  | 2022-05-11 | 10:28:54   | US      | 192.168.223.157 |       1 |
|      176 | cward    | 2022-05-11 | 12:00:02   | MEX     | 192.168.133.88  |       0 |
|       46 | eraab    | 2022-05-11 | 11:29:27   | CAN     | 192.168.24.12   |       0 |
|      156 | btang    | 2022-05-11 | 17:08:51   | USA     | 192.168.243.95  |       0 |
|       60 | acook    | 2022-05-11 | 21:46:00   | CAN     | 192.168.54.45   |       1 |
|      149 | jlansky  | 2022-05-11 | 01:07:11   | USA     | 192.168.238.42  |       0 |
|       48 | asundara | 2022-05-11 | 03:18:45   | USA     | 192.168.72.10   |       1 |
|       55 | jlansky  | 2022-05-11 | 05:15:34   | US      | 192.168.6.170   |       0 |
|      143 | jhill    | 2022-05-11 | 00:30:22   | USA     | 192.168.189.19  |       0 |
|       34 | drosas   | 2022-05-11 | 21:02:04   | US      | 192.168.45.93   |       0 |
|        5 | jrafael  | 2022-05-11 | 03:05:59   | CANADA  | 192.168.86.232  |       0 |
|      195 | alevitsk | 2022-05-11 | 06:59:13   | CANADA  | 192.168.236.78  |       1 |
|        7 | eraab    | 2022-05-11 | 01:45:14   | CAN     | 192.168.170.243 |       1 |
|       11 | sgilmore | 2022-05-11 | 10:16:29   | CANADA  | 192.168.140.81  |       0 |
|       13 | mrah     | 2022-05-11 | 09:29:34   | USA     | 192.168.246.135 |       1 |
|       16 | mcouliba | 2022-05-11 | 06:44:22   | CAN     | 192.168.172.189 |       1 |
|       17 | pwashing | 2022-05-11 | 02:33:02   | USA     | 192.168.81.89   |       1 |
|      183 | nmason   | 2022-05-11 | 05:29:36   | CANADA  | 192.168.137.147 |       0 |
|       18 | pwashing | 2022-05-11 | 19:28:50   | US      | 192.168.66.142  |       0 |
|      177 | wjaffrey | 2022-05-11 | 00:15:55   | USA     | 192.168.144.165 |       0 |
|       21 | iuduike  | 2022-05-11 | 17:50:00   | US      | 192.168.131.147 |       1 |
|       22 | rjensen  | 2022-05-11 | 00:59:26   | MEX     | 192.168.213.128 |       0 |
|        9 | yappiah  | 2022-05-11 | 13:47:29   | MEX     | 192.168.59.136  |       1 |
|       29 | bisles   | 2022-05-11 | 01:21:22   | US      | 192.168.85.186  |       0 |
|       33 | zbernal  | 2022-05-11 | 02:52:10   | US      | 192.168.72.59   |       1 |
|      199 | yappiah  | 2022-05-11 | 19:34:48   | MEXICO  | 192.168.44.232  |       0 |
|      142 | gesparza | 2022-05-11 | 06:31:14   | CANADA  | 192.168.117.56  |       1 |
|       84 | jrafael  | 2022-05-11 | 09:26:17   | CAN     | 192.168.243.203 |       1 |
|      130 | mrah     | 2022-05-11 | 02:54:21   | USA     | 192.168.102.147 |       0 |
|       74 | nmason   | 2022-05-11 | 15:55:48   | CAN     | 192.168.162.2   |       1 |
|      125 | bisles   | 2022-05-11 | 08:36:19   | US      | 192.168.74.9    |       1 |
|       91 | jhill    | 2022-05-11 | 17:46:47   | US      | 192.168.172.74  |       1 |
|      188 | jsoto    | 2022-05-11 | 00:39:09   | USA     | 192.168.21.88   |       0 |
|      122 | yappiah  | 2022-05-11 | 08:27:25   | MEX     | 192.168.50.45   |       0 |
|      119 | tmitchel | 2022-05-11 | 23:07:13   | MEXICO  | 192.168.110.175 |       1 |
|       81 | aalonso  | 2022-05-11 | 12:50:38   | MEX     | 192.168.152.43  |       1 |
|       85 | dtarly   | 2022-05-11 | 17:35:28   | MEX     | 192.168.254.75  |       1 |
|      104 | asundara | 2022-05-11 | 18:38:07   | US      | 192.168.96.200  |       0 |
|      103 | jhill    | 2022-05-11 | 09:10:54   | US      | 192.168.60.153  |       0 |
|       63 | tmitchel | 2022-05-11 | 14:13:41   | MEXICO  | 192.168.110.131 |       0 |
|       98 | gesparza | 2022-05-11 | 06:30:14   | CANADA  | 192.168.148.80  |       0 |
|      139 | apatel   | 2022-05-11 | 01:54:36   | CAN     | 192.168.95.222  |       0 |
|       69 | wjaffrey | 2022-05-11 | 19:55:15   | USA     | 192.168.100.17  |       0 |
|      179 | jclark   | 2022-05-12 | 04:08:17   | CAN     | 192.168.232.93  |       0 |
|       20 | tshah    | 2022-05-12 | 18:56:36   | MEXICO  | 192.168.109.50  |       0 |
|      198 | yappiah  | 2022-05-12 | 10:37:22   | MEXICO  | 192.168.103.106 |       1 |
|      180 | tmitchel | 2022-05-12 | 14:53:21   | MEX     | 192.168.190.202 |       1 |
|       19 | jhill    | 2022-05-12 | 13:09:04   | US      | 192.168.142.245 |       1 |
|      100 | tmitchel | 2022-05-12 | 16:02:03   | MEXICO  | 192.168.97.225  |       0 |
|       99 | mcouliba | 2022-05-12 | 11:54:14   | CANADA  | 192.168.218.160 |       1 |
|       88 | aestrada | 2022-05-12 | 11:21:50   | MEXICO  | 192.168.153.77  |       1 |
|        6 | arutley  | 2022-05-12 | 17:00:59   | MEXICO  | 192.168.3.24    |       0 |
|      194 | jclark   | 2022-05-12 | 14:11:04   | CAN     | 192.168.197.247 |       0 |
|       10 | jrafael  | 2022-05-12 | 09:33:19   | CANADA  | 192.168.228.221 |       0 |
|      105 | cjackson | 2022-05-12 | 19:36:42   | CAN     | 192.168.247.153 |       1 |
|       89 | dkot     | 2022-05-12 | 10:52:00   | USA     | 192.168.128.75  |       1 |
|      106 | tmitchel | 2022-05-12 | 06:15:41   | MEXICO  | 192.168.3.252   |       1 |
|      107 | bisles   | 2022-05-12 | 20:25:57   | USA     | 192.168.116.187 |       0 |
|       95 | dtarly   | 2022-05-12 | 11:23:42   | MEX     | 192.168.203.198 |       1 |
|       93 | jreckley | 2022-05-12 | 04:31:20   | MEX     | 192.168.108.24  |       0 |
|      200 | jclark   | 2022-05-12 | 01:11:45   | CANADA  | 192.168.91.103  |       1 |
|       82 | abernard | 2022-05-12 | 23:38:46   | MEX     | 192.168.234.49  |       0 |
|      157 | tmitchel | 2022-05-12 | 14:14:54   | MEXICO  | 192.168.179.119 |       1 |
|      155 | cgriffin | 2022-05-12 | 22:18:42   | USA     | 192.168.236.176 |       0 |
|      154 | jlansky  | 2022-05-12 | 10:57:35   | US      | 192.168.23.63   |       1 |
|      153 | smartell | 2022-05-12 | 13:32:52   | MEXICO  | 192.168.218.219 |       0 |
|      152 | mabadi   | 2022-05-12 | 10:24:43   | USA     | 192.168.96.244  |       0 |
|      132 | rjensen  | 2022-05-12 | 23:26:03   | MEX     | 192.168.9.166   |       1 |
|      133 | asundara | 2022-05-12 | 05:57:04   | USA     | 192.168.6.9     |       1 |
|      137 | jrafael  | 2022-05-12 | 02:42:37   | CAN     | 192.168.186.176 |       1 |
|       59 | rjensen  | 2022-05-12 | 04:52:08   | MEX     | 192.168.54.140  |       0 |
|       57 | asundara | 2022-05-12 | 21:13:02   | US      | 192.168.211.201 |       1 |
|      129 | drosas   | 2022-05-12 | 15:39:40   | USA     | 192.168.152.200 |       0 |
|      159 | iuduike  | 2022-05-12 | 16:59:50   | USA     | 192.168.220.115 |       0 |
|      173 | asundara | 2022-05-12 | 23:17:52   | US      | 192.168.58.217  |       1 |
|      118 | smartell | 2022-05-12 | 23:21:31   | MEXICO  | 192.168.173.196 |       1 |
|       77 | wjaffrey | 2022-05-12 | 08:37:59   | US      | 192.168.106.183 |       1 |
|       31 | acook    | 2022-05-12 | 17:36:45   | CANADA  | 192.168.58.232  |       0 |
|      167 | jclark   | 2022-05-12 | 15:47:45   | CAN     | 192.168.146.51  |       1 |
|       75 | zbernal  | 2022-05-12 | 04:14:35   | US      | 192.168.188.63  |       1 |
|      124 | asundara | 2022-05-12 | 10:51:21   | USA     | 192.168.136.29  |       1 |
|      164 | jclark   | 2022-05-12 | 21:15:52   | CAN     | 192.168.18.34   |       1 |
|       40 | aalonso  | 2022-05-12 | 15:15:46   | MEX     | 192.168.174.186 |       0 |
|      126 | jrafael  | 2022-05-12 | 18:47:52   | CAN     | 192.168.22.16   |       1 |
|      141 | btang    | 2022-05-12 | 10:12:03   | USA     | 192.168.82.139  |       0 |
+----------+----------+------------+------------+---------+-----------------+---------+
200 rows in set (0.018 sec)

MariaDB [organization]> SELECT *
    -> FROM log_in_attempts
    -> ORDER BY login_date, login_time;
+----------+----------+------------+------------+---------+-----------------+---------+
| event_id | username | login_date | login_time | country | ip_address      | success |
+----------+----------+------------+------------+---------+-----------------+---------+
|      117 | bsand    | 2022-05-08 | 00:19:11   | USA     | 192.168.197.187 |       0 |
|       92 | pwashing | 2022-05-08 | 00:36:12   | US      | 192.168.247.219 |       0 |
|        8 | bisles   | 2022-05-08 | 01:30:17   | US      | 192.168.119.173 |       0 |
|        4 | dkot     | 2022-05-08 | 02:00:39   | USA     | 192.168.178.71  |       0 |
|       80 | cjackson | 2022-05-08 | 02:18:10   | CANADA  | 192.168.33.140  |       1 |
|       43 | mcouliba | 2022-05-08 | 02:35:34   | CANADA  | 192.168.16.208  |       0 |
|      184 | alevitsk | 2022-05-08 | 03:09:48   | CAN     | 192.168.33.70   |       0 |
|       56 | acook    | 2022-05-08 | 04:56:30   | CAN     | 192.168.209.130 |       1 |
|       47 | dkot     | 2022-05-08 | 05:06:45   | US      | 192.168.233.24  |       1 |
|      189 | nmason   | 2022-05-08 | 05:37:24   | CANADA  | 192.168.168.117 |       1 |
|      147 | yappiah  | 2022-05-08 | 06:04:34   | MEX     | 192.168.65.245  |       0 |
|      148 | daquino  | 2022-05-08 | 06:15:55   | CANADA  | 192.168.135.6   |       1 |
|      191 | cjackson | 2022-05-08 | 06:46:07   | CANADA  | 192.168.7.187   |       0 |
|       44 | daquino  | 2022-05-08 | 07:02:35   | CANADA  | 192.168.168.144 |       0 |
|      193 | lrodriqu | 2022-05-08 | 07:11:29   | US      | 192.168.125.240 |       0 |
|      172 | mabadi   | 2022-05-08 | 08:06:50   | US      | 192.168.180.41  |       1 |
|       83 | lrodriqu | 2022-05-08 | 08:10:23   | USA     | 192.168.67.69   |       1 |
|      169 | alevitsk | 2022-05-08 | 08:10:43   | CANADA  | 192.168.210.228 |       0 |
|       36 | asundara | 2022-05-08 | 09:00:42   | US      | 192.168.78.151  |       1 |
|      197 | jsoto    | 2022-05-08 | 09:05:09   | US      | 192.168.36.21   |       0 |
|      145 | ivelasco | 2022-05-08 | 09:06:02   | CANADA  | 192.168.39.196  |       1 |
|       12 | dkot     | 2022-05-08 | 09:11:34   | USA     | 192.168.100.158 |       1 |
|      163 | tmitchel | 2022-05-08 | 09:21:16   | MEX     | 192.168.119.29  |       0 |
|       53 | nmason   | 2022-05-08 | 11:51:38   | CAN     | 192.168.133.188 |       1 |
|      101 | sbaelish | 2022-05-08 | 12:01:22   | US      | 192.168.145.158 |       0 |
|       72 | alevitsk | 2022-05-08 | 12:09:10   | CANADA  | 192.168.139.176 |       1 |
|      178 | sgilmore | 2022-05-08 | 12:27:22   | CAN     | 192.168.52.216  |       0 |
|      168 | jlansky  | 2022-05-08 | 13:25:42   | USA     | 192.168.210.94  |       1 |
|       49 | asundara | 2022-05-08 | 14:00:01   | US      | 192.168.173.213 |       0 |
|      150 | nmason   | 2022-05-08 | 14:40:02   | CAN     | 192.168.204.124 |       0 |
|      165 | jreckley | 2022-05-08 | 15:28:43   | MEXICO  | 192.168.34.193  |       0 |
|       68 | mrah     | 2022-05-08 | 17:16:13   | US      | 192.168.42.248  |       1 |
|       26 | apatel   | 2022-05-08 | 17:27:00   | CANADA  | 192.168.123.105 |       1 |
|       66 | aestrada | 2022-05-08 | 21:58:32   | MEX     | 192.168.67.223  |       1 |
|       87 | apatel   | 2022-05-08 | 22:38:31   | CANADA  | 192.168.132.153 |       0 |
|      110 | mabadi   | 2022-05-09 | 00:01:54   | USA     | 192.168.90.124  |       1 |
|      187 | arusso   | 2022-05-09 | 00:36:26   | MEX     | 192.168.77.137  |       0 |
|       90 | gesparza | 2022-05-09 | 00:49:05   | CANADA  | 192.168.87.201  |       0 |
|       97 | jreckley | 2022-05-09 | 02:49:23   | MEXICO  | 192.168.32.231  |       1 |
|       32 | acook    | 2022-05-09 | 02:52:02   | CANADA  | 192.168.142.239 |       0 |
|      120 | tmitchel | 2022-05-09 | 02:58:17   | MEXICO  | 192.168.134.62  |       0 |
|       30 | yappiah  | 2022-05-09 | 03:22:22   | MEX     | 192.168.124.48  |       1 |
|      186 | bisles   | 2022-05-09 | 04:29:17   | USA     | 192.168.40.72   |       0 |
|      162 | yappiah  | 2022-05-09 | 04:51:22   | MEXICO  | 192.168.162.100 |       0 |
|        1 | jrafael  | 2022-05-09 | 04:56:27   | CAN     | 192.168.243.140 |       1 |
|      190 | jsoto    | 2022-05-09 | 05:09:21   | USA     | 192.168.25.60   |       0 |
|      134 | iuduike  | 2022-05-09 | 06:46:40   | USA     | 192.168.22.115  |       1 |
|        3 | dkot     | 2022-05-09 | 06:47:41   | USA     | 192.168.151.162 |       1 |
|       24 | arusso   | 2022-05-09 | 06:49:39   | MEXICO  | 192.168.171.192 |       1 |
|       71 | mcouliba | 2022-05-09 | 06:57:42   | CAN     | 192.168.55.169  |       0 |
|       25 | sbaelish | 2022-05-09 | 07:04:02   | US      | 192.168.33.137  |       1 |
|       39 | yappiah  | 2022-05-09 | 07:56:40   | MEXICO  | 192.168.57.115  |       1 |
|      112 | rjensen  | 2022-05-09 | 09:22:05   | MEX     | 192.168.69.116  |       1 |
|       61 | dtanaka  | 2022-05-09 | 09:45:18   | USA     | 192.168.98.221  |       1 |
|      128 | jclark   | 2022-05-09 | 10:45:59   | CANADA  | 192.168.122.169 |       0 |
|       70 | tmitchel | 2022-05-09 | 10:55:17   | MEXICO  | 192.168.87.199  |       1 |
|      144 | daquino  | 2022-05-09 | 11:09:32   | CANADA  | 192.168.139.9   |       0 |
|       79 | abernard | 2022-05-09 | 11:41:15   | MEX     | 192.168.158.170 |       0 |
|       67 | abernard | 2022-05-09 | 11:53:41   | MEX     | 192.168.118.29  |       1 |
|      161 | abellmas | 2022-05-09 | 13:25:50   | CAN     | 192.168.180.205 |       0 |
|      135 | bsand    | 2022-05-09 | 14:06:33   | US      | 192.168.91.238  |       0 |
|       38 | sbaelish | 2022-05-09 | 14:40:01   | USA     | 192.168.60.42   |       1 |
|      151 | mabadi   | 2022-05-09 | 16:29:46   | USA     | 192.168.30.225  |       1 |
|      170 | sbaelish | 2022-05-09 | 16:43:18   | USA     | 192.168.65.113  |       0 |
|      102 | jreckley | 2022-05-09 | 16:51:44   | MEX     | 192.168.108.13  |       1 |
|       15 | lyamamot | 2022-05-09 | 17:17:26   | USA     | 192.168.183.51  |       0 |
|       58 | ivelasco | 2022-05-09 | 17:20:54   | CAN     | 192.168.57.162  |       0 |
|       28 | aestrada | 2022-05-09 | 19:28:12   | MEXICO  | 192.168.27.57   |       0 |
|      158 | smartell | 2022-05-09 | 19:30:32   | MEXICO  | 192.168.190.178 |       1 |
|      131 | bisles   | 2022-05-09 | 20:03:55   | US      | 192.168.113.171 |       0 |
|      127 | abellmas | 2022-05-09 | 21:20:51   | CANADA  | 192.168.70.122  |       0 |
|      108 | daquino  | 2022-05-09 | 21:30:48   | CANADA  | 192.168.15.110  |       1 |
|       96 | ivelasco | 2022-05-09 | 22:36:36   | CAN     | 192.168.84.194  |       0 |
|       42 | cgriffin | 2022-05-09 | 23:04:05   | US      | 192.168.4.157   |       0 |
|       65 | aalonso  | 2022-05-09 | 23:42:12   | MEX     | 192.168.52.37   |       1 |
|      175 | jhill    | 2022-05-10 | 00:17:09   | USA     | 192.168.130.218 |       0 |
|      113 | gesparza | 2022-05-10 | 00:40:00   | CAN     | 192.168.64.133  |       0 |
|       27 | aalonso  | 2022-05-10 | 01:55:35   | MEX     | 192.168.103.210 |       0 |
|      146 | nmason   | 2022-05-10 | 02:25:55   | CANADA  | 192.168.37.147  |       0 |
|       94 | tbarnes  | 2022-05-10 | 03:37:10   | MEX     | 192.168.74.202  |       0 |
|      109 | mcouliba | 2022-05-10 | 04:43:15   | CANADA  | 192.168.39.246  |       1 |
|      123 | bmoreno  | 2022-05-10 | 04:43:30   | CANADA  | 192.168.98.2    |       1 |
|      166 | tmitchel | 2022-05-10 | 05:45:16   | MEX     | 192.168.80.129  |       0 |
|       78 | smartell | 2022-05-10 | 05:55:53   | MEX     | 192.168.41.88   |       0 |
|      182 | lyamamot | 2022-05-10 | 06:01:31   | USA     | 192.168.106.52  |       0 |
|       37 | eraab    | 2022-05-10 | 06:03:41   | CANADA  | 192.168.152.148 |       0 |
|      136 | mabadi   | 2022-05-10 | 06:56:44   | US      | 192.168.214.234 |       1 |
|      192 | bisles   | 2022-05-10 | 08:32:03   | USA     | 192.168.201.40  |       1 |
|      196 | acook    | 2022-05-10 | 09:56:48   | CAN     | 192.168.52.90   |       0 |
|       62 | abernard | 2022-05-10 | 10:19:57   | MEXICO  | 192.168.156.224 |       1 |
|       14 | sbaelish | 2022-05-10 | 10:20:18   | US      | 192.168.16.99   |       1 |
|       86 | dtanaka  | 2022-05-10 | 10:22:20   | USA     | 192.168.197.135 |       1 |
|       50 | jclark   | 2022-05-10 | 10:48:02   | CANADA  | 192.168.174.117 |       0 |
|      114 | smartell | 2022-05-10 | 10:51:22   | MEXICO  | 192.168.191.124 |       1 |
|       76 | bmoreno  | 2022-05-10 | 10:53:55   | CAN     | 192.168.61.200  |       0 |
|      174 | lyamamot | 2022-05-10 | 12:26:27   | US      | 192.168.228.122 |       0 |
|      138 | tmitchel | 2022-05-10 | 12:38:33   | MEXICO  | 192.168.216.96  |       0 |
|      140 | btang    | 2022-05-10 | 13:17:29   | US      | 192.168.249.111 |       0 |
|      185 | jsoto    | 2022-05-10 | 13:34:58   | USA     | 192.168.151.91  |       0 |
|      181 | abellmas | 2022-05-10 | 13:37:05   | CAN     | 192.168.60.111  |       0 |
|       35 | tshah    | 2022-05-10 | 15:26:08   | MEX     | 192.168.92.147  |       0 |
|      171 | drosas   | 2022-05-10 | 16:32:55   | USA     | 192.168.92.218  |       0 |
|       41 | apatel   | 2022-05-10 | 17:39:42   | CANADA  | 192.168.46.207  |       0 |
|       73 | zbernal  | 2022-05-10 | 17:46:45   | USA     | 192.168.80.46   |       0 |
|       23 | yappiah  | 2022-05-10 | 18:11:53   | MEXICO  | 192.168.200.48  |       1 |
|       54 | jreckley | 2022-05-10 | 19:31:19   | MEXICO  | 192.168.167.152 |       1 |
|        2 | apatel   | 2022-05-10 | 20:27:27   | CAN     | 192.168.205.12  |       0 |
|      116 | tmitchel | 2022-05-10 | 20:33:27   | MEXICO  | 192.168.119.26  |       1 |
|      160 | jclark   | 2022-05-10 | 20:49:00   | CANADA  | 192.168.214.49  |       0 |
|       64 | apatel   | 2022-05-10 | 22:00:09   | CANADA  | 192.168.172.71  |       1 |
|      111 | aestrada | 2022-05-10 | 22:00:26   | MEXICO  | 192.168.76.27   |       0 |
|      121 | btang    | 2022-05-10 | 22:00:36   | US      | 192.168.80.143  |       1 |
|       52 | cjackson | 2022-05-10 | 22:07:07   | CAN     | 192.168.58.57   |       0 |
|       51 | jrafael  | 2022-05-10 | 22:40:01   | CANADA  | 192.168.148.115 |       1 |
|      115 | ivelasco | 2022-05-10 | 23:06:01   | CAN     | 192.168.154.1   |       1 |
|      177 | wjaffrey | 2022-05-11 | 00:15:55   | USA     | 192.168.144.165 |       0 |
|      143 | jhill    | 2022-05-11 | 00:30:22   | USA     | 192.168.189.19  |       0 |
|      188 | jsoto    | 2022-05-11 | 00:39:09   | USA     | 192.168.21.88   |       0 |
|       22 | rjensen  | 2022-05-11 | 00:59:26   | MEX     | 192.168.213.128 |       0 |
|      149 | jlansky  | 2022-05-11 | 01:07:11   | USA     | 192.168.238.42  |       0 |
|       29 | bisles   | 2022-05-11 | 01:21:22   | US      | 192.168.85.186  |       0 |
|        7 | eraab    | 2022-05-11 | 01:45:14   | CAN     | 192.168.170.243 |       1 |
|      139 | apatel   | 2022-05-11 | 01:54:36   | CAN     | 192.168.95.222  |       0 |
|       17 | pwashing | 2022-05-11 | 02:33:02   | USA     | 192.168.81.89   |       1 |
|       33 | zbernal  | 2022-05-11 | 02:52:10   | US      | 192.168.72.59   |       1 |
|      130 | mrah     | 2022-05-11 | 02:54:21   | USA     | 192.168.102.147 |       0 |
|        5 | jrafael  | 2022-05-11 | 03:05:59   | CANADA  | 192.168.86.232  |       0 |
|       48 | asundara | 2022-05-11 | 03:18:45   | USA     | 192.168.72.10   |       1 |
|       55 | jlansky  | 2022-05-11 | 05:15:34   | US      | 192.168.6.170   |       0 |
|      183 | nmason   | 2022-05-11 | 05:29:36   | CANADA  | 192.168.137.147 |       0 |
|       98 | gesparza | 2022-05-11 | 06:30:14   | CANADA  | 192.168.148.80  |       0 |
|      142 | gesparza | 2022-05-11 | 06:31:14   | CANADA  | 192.168.117.56  |       1 |
|       16 | mcouliba | 2022-05-11 | 06:44:22   | CAN     | 192.168.172.189 |       1 |
|      195 | alevitsk | 2022-05-11 | 06:59:13   | CANADA  | 192.168.236.78  |       1 |
|      122 | yappiah  | 2022-05-11 | 08:27:25   | MEX     | 192.168.50.45   |       0 |
|      125 | bisles   | 2022-05-11 | 08:36:19   | US      | 192.168.74.9    |       1 |
|      103 | jhill    | 2022-05-11 | 09:10:54   | US      | 192.168.60.153  |       0 |
|       84 | jrafael  | 2022-05-11 | 09:26:17   | CAN     | 192.168.243.203 |       1 |
|       13 | mrah     | 2022-05-11 | 09:29:34   | USA     | 192.168.246.135 |       1 |
|       11 | sgilmore | 2022-05-11 | 10:16:29   | CANADA  | 192.168.140.81  |       0 |
|       45 | dtanaka  | 2022-05-11 | 10:28:54   | US      | 192.168.223.157 |       1 |
|       46 | eraab    | 2022-05-11 | 11:29:27   | CAN     | 192.168.24.12   |       0 |
|      176 | cward    | 2022-05-11 | 12:00:02   | MEX     | 192.168.133.88  |       0 |
|       81 | aalonso  | 2022-05-11 | 12:50:38   | MEX     | 192.168.152.43  |       1 |
|        9 | yappiah  | 2022-05-11 | 13:47:29   | MEX     | 192.168.59.136  |       1 |
|       63 | tmitchel | 2022-05-11 | 14:13:41   | MEXICO  | 192.168.110.131 |       0 |
|       74 | nmason   | 2022-05-11 | 15:55:48   | CAN     | 192.168.162.2   |       1 |
|      156 | btang    | 2022-05-11 | 17:08:51   | USA     | 192.168.243.95  |       0 |
|       85 | dtarly   | 2022-05-11 | 17:35:28   | MEX     | 192.168.254.75  |       1 |
|       91 | jhill    | 2022-05-11 | 17:46:47   | US      | 192.168.172.74  |       1 |
|       21 | iuduike  | 2022-05-11 | 17:50:00   | US      | 192.168.131.147 |       1 |
|      104 | asundara | 2022-05-11 | 18:38:07   | US      | 192.168.96.200  |       0 |
|       18 | pwashing | 2022-05-11 | 19:28:50   | US      | 192.168.66.142  |       0 |
|      199 | yappiah  | 2022-05-11 | 19:34:48   | MEXICO  | 192.168.44.232  |       0 |
|       69 | wjaffrey | 2022-05-11 | 19:55:15   | USA     | 192.168.100.17  |       0 |
|       34 | drosas   | 2022-05-11 | 21:02:04   | US      | 192.168.45.93   |       0 |
|       60 | acook    | 2022-05-11 | 21:46:00   | CAN     | 192.168.54.45   |       1 |
|      119 | tmitchel | 2022-05-11 | 23:07:13   | MEXICO  | 192.168.110.175 |       1 |
|      200 | jclark   | 2022-05-12 | 01:11:45   | CANADA  | 192.168.91.103  |       1 |
|      137 | jrafael  | 2022-05-12 | 02:42:37   | CAN     | 192.168.186.176 |       1 |
|      179 | jclark   | 2022-05-12 | 04:08:17   | CAN     | 192.168.232.93  |       0 |
|       75 | zbernal  | 2022-05-12 | 04:14:35   | US      | 192.168.188.63  |       1 |
|       93 | jreckley | 2022-05-12 | 04:31:20   | MEX     | 192.168.108.24  |       0 |
|       59 | rjensen  | 2022-05-12 | 04:52:08   | MEX     | 192.168.54.140  |       0 |
|      133 | asundara | 2022-05-12 | 05:57:04   | USA     | 192.168.6.9     |       1 |
|      106 | tmitchel | 2022-05-12 | 06:15:41   | MEXICO  | 192.168.3.252   |       1 |
|       77 | wjaffrey | 2022-05-12 | 08:37:59   | US      | 192.168.106.183 |       1 |
|       10 | jrafael  | 2022-05-12 | 09:33:19   | CANADA  | 192.168.228.221 |       0 |
|      141 | btang    | 2022-05-12 | 10:12:03   | USA     | 192.168.82.139  |       0 |
|      152 | mabadi   | 2022-05-12 | 10:24:43   | USA     | 192.168.96.244  |       0 |
|      198 | yappiah  | 2022-05-12 | 10:37:22   | MEXICO  | 192.168.103.106 |       1 |
|      124 | asundara | 2022-05-12 | 10:51:21   | USA     | 192.168.136.29  |       1 |
|       89 | dkot     | 2022-05-12 | 10:52:00   | USA     | 192.168.128.75  |       1 |
|      154 | jlansky  | 2022-05-12 | 10:57:35   | US      | 192.168.23.63   |       1 |
|       88 | aestrada | 2022-05-12 | 11:21:50   | MEXICO  | 192.168.153.77  |       1 |
|       95 | dtarly   | 2022-05-12 | 11:23:42   | MEX     | 192.168.203.198 |       1 |
|       99 | mcouliba | 2022-05-12 | 11:54:14   | CANADA  | 192.168.218.160 |       1 |
|       19 | jhill    | 2022-05-12 | 13:09:04   | US      | 192.168.142.245 |       1 |
|      153 | smartell | 2022-05-12 | 13:32:52   | MEXICO  | 192.168.218.219 |       0 |
|      194 | jclark   | 2022-05-12 | 14:11:04   | CAN     | 192.168.197.247 |       0 |
|      157 | tmitchel | 2022-05-12 | 14:14:54   | MEXICO  | 192.168.179.119 |       1 |
|      180 | tmitchel | 2022-05-12 | 14:53:21   | MEX     | 192.168.190.202 |       1 |
|       40 | aalonso  | 2022-05-12 | 15:15:46   | MEX     | 192.168.174.186 |       0 |
|      129 | drosas   | 2022-05-12 | 15:39:40   | USA     | 192.168.152.200 |       0 |
|      167 | jclark   | 2022-05-12 | 15:47:45   | CAN     | 192.168.146.51  |       1 |
|      100 | tmitchel | 2022-05-12 | 16:02:03   | MEXICO  | 192.168.97.225  |       0 |
|      159 | iuduike  | 2022-05-12 | 16:59:50   | USA     | 192.168.220.115 |       0 |
|        6 | arutley  | 2022-05-12 | 17:00:59   | MEXICO  | 192.168.3.24    |       0 |
|       31 | acook    | 2022-05-12 | 17:36:45   | CANADA  | 192.168.58.232  |       0 |
|      126 | jrafael  | 2022-05-12 | 18:47:52   | CAN     | 192.168.22.16   |       1 |
|       20 | tshah    | 2022-05-12 | 18:56:36   | MEXICO  | 192.168.109.50  |       0 |
|      105 | cjackson | 2022-05-12 | 19:36:42   | CAN     | 192.168.247.153 |       1 |
|      107 | bisles   | 2022-05-12 | 20:25:57   | USA     | 192.168.116.187 |       0 |
|       57 | asundara | 2022-05-12 | 21:13:02   | US      | 192.168.211.201 |       1 |
|      164 | jclark   | 2022-05-12 | 21:15:52   | CAN     | 192.168.18.34   |       1 |
|      155 | cgriffin | 2022-05-12 | 22:18:42   | USA     | 192.168.236.176 |       0 |
|      173 | asundara | 2022-05-12 | 23:17:52   | US      | 192.168.58.217  |       1 |
|      118 | smartell | 2022-05-12 | 23:21:31   | MEXICO  | 192.168.173.196 |       1 |
|      132 | rjensen  | 2022-05-12 | 23:26:03   | MEX     | 192.168.9.166   |       1 |
|       82 | abernard | 2022-05-12 | 23:38:46   | MEX     | 192.168.234.49  |       0 |
+----------+----------+------------+------------+---------+-----------------+---------+
200 rows in set (0.001 sec)
