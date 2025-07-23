Step 1: Match employees with their machines. Use the following query to fetch all records from the machines table.

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
200 rows in set (0.001 sec

# To complete a join, you need to link the tables being joined using a common column. For the employees and machines tables, the common column is the device_id.

MariaDB [organization]> SELECT * 
    -> FROM machines
    -> INNER JOIN employees ON machines.device_id = employees.device_id;
+--------------+------------------+----------------+---------------+-------------+-------------+--------------+----------+------------------------+-------------+
| device_id    | operating_system | email_client   | OS_patch_date | employee_id | employee_id | device_id    | username | department             | office      |
+--------------+------------------+----------------+---------------+-------------+-------------+--------------+----------+------------------------+-------------+
| a320b137c219 | OS 2             | Email Client 2 | 2021-03-01    |        1000 |        1000 | a320b137c219 | elarson  | Marketing              | East-170    |
| b239c825d303 | OS 1             | Email Client 1 | 2021-03-01    |        1001 |        1001 | b239c825d303 | bmoreno  | Marketing              | Central-276 |
| c116d593e558 | OS 3             | Email Client 1 | 2021-09-01    |        1002 |        1002 | c116d593e558 | tshah    | Human Resources        | North-434   |
| d394e816f943 | OS 3             | Email Client 2 | 2021-03-01    |        1003 |        1003 | d394e816f943 | sgilmore | Finance                | South-153   |
| e218f877g788 | OS 2             | Email Client 1 | 2021-09-01    |        1004 |        1004 | e218f877g788 | eraab    | Human Resources        | South-127   |
| f551g340h864 | OS 3             | Email Client 2 | 2021-12-01    |        1005 |        1005 | f551g340h864 | gesparza | Human Resources        | South-366   |
| g329h357i597 | OS 1             | Email Client 2 | 2021-06-01    |        1006 |        1006 | g329h357i597 | alevitsk | Information Technology | East-320    |
| h174i497j413 | OS 2             | Email Client 1 | 2021-03-01    |        1007 |        1007 | h174i497j413 | wjaffrey | Finance                | North-406   |
| i858j583k571 | OS 2             | Email Client 2 | 2021-06-01    |        1008 |        1008 | i858j583k571 | abernard | Finance                | South-170   |
| k242l212m542 | OS 1             | Email Client 1 | 2021-03-01    |        1010 |        1010 | k242l212m542 | jlansky  | Finance                | South-109   |
| l748m120n401 | OS 3             | Email Client 1 | 2021-09-01    |        1011 |        1011 | l748m120n401 | drosas   | Sales                  | South-292   |
| m756n668o146 | OS 1             | Email Client 2 | 2021-09-01    |        1012 |        1012 | m756n668o146 | nmason   | Information Technology | North-160   |
| n205o559p243 | OS 1             | Email Client 2 | 2021-06-01    |        1013 |        1013 | n205o559p243 | zbernal  | Information Technology | South-229   |
| p611q262r945 | OS 1             | Email Client 2 | 2021-03-01    |        1015 |        1015 | p611q262r945 | jsoto    | Finance                | North-271   |
| q793r736s288 | OS 2             | Email Client 1 | 2021-03-01    |        1016 |        1016 | q793r736s288 | sbaelish | Human Resources        | North-229   |
| r550s824t230 | OS 2             | Email Client 1 | 2021-03-01    |        1017 |        1017 | r550s824t230 | jclark   | Finance                | North-188   |
| s310t540u653 | OS 1             | Email Client 2 | 2021-12-01    |        1018 |        1018 | s310t540u653 | abellmas | Finance                | North-403   |
| t815u205v470 | OS 3             | Email Client 1 | 2021-06-01    |        1019 |        1019 | t815u205v470 | mcouliba | Information Technology | North-108   |
| u899v381w363 | OS 3             | Email Client 1 | 2021-06-01    |        1020 |        1020 | u899v381w363 | arutley  | Marketing              | South-351   |
| v200w121x977 | OS 2             | Email Client 2 | 2021-03-01    |        1021 |        1021 | v200w121x977 | smartell | Information Technology | South-138   |
| w237x430y567 | OS 2             | Email Client 2 | 2021-06-01    |        1022 |        1022 | w237x430y567 | arusso   | Finance                | West-465    |
| x253y759z103 | OS 1             | Email Client 2 | 2021-12-01    |        1023 |        1023 | x253y759z103 | aalonso  | Information Technology | West-393    |
| y976z753a267 | OS 2             | Email Client 2 | 2021-06-01    |        1024 |        1024 | y976z753a267 | iuduike  | Sales                  | South-215   |
| z381a365b233 | OS 3             | Email Client 2 | 2021-12-01    |        1025 |        1025 | z381a365b233 | jhill    | Sales                  | North-115   |
| a998b568c863 | OS 3             | Email Client 1 | 2021-12-01    |        1026 |        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |
| b806c503d354 | OS 2             | Email Client 1 | 2021-12-01    |        1027 |        1027 | b806c503d354 | mrah     | Marketing              | West-246    |
| c603d749e374 | OS 1             | Email Client 1 | 2021-12-01    |        1028 |        1028 | c603d749e374 | aestrada | Human Resources        | West-121    |
| d336e475f676 | OS 2             | Email Client 2 | 2021-06-01    |        1029 |        1029 | d336e475f676 | ivelasco | Finance                | East-156    |
| e391f189g913 | OS 3             | Email Client 2 | 2021-12-01    |        1030 |        1030 | e391f189g913 | mabadi   | Marketing              | West-375    |
| f419g188h578 | OS 1             | Email Client 1 | 2021-06-01    |        1031 |        1031 | f419g188h578 | dkot     | Marketing              | West-408    |
| g773h303i639 | OS 2             | Email Client 2 | 2021-12-01    |        1032 |        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |
| i679j565k940 | OS 1             | Email Client 1 | 2021-03-01    |        1034 |        1034 | i679j565k940 | bsand    | Human Resources        | East-484    |
| j236k303l245 | OS 1             | Email Client 1 | 2021-12-01    |        1035 |        1035 | j236k303l245 | bisles   | Sales                  | South-171   |
| k550l533m205 | OS 3             | Email Client 2 | 2021-09-01    |        1036 |        1036 | k550l533m205 | rjensen  | Marketing              | Central-239 |
| l693m585n528 | OS 3             | Email Client 1 | 2021-06-01    |        1037 |        1037 | l693m585n528 | dtanaka  | Information Technology | West-468    |
| m873n636o225 | OS 1             | Email Client 2 | 2021-06-01    |        1038 |        1038 | m873n636o225 | btang    | Human Resources        | Central-260 |
| n253o917p623 | OS 1             | Email Client 2 | 2021-09-01    |        1039 |        1039 | n253o917p623 | cjackson | Sales                  | East-378    |
| o783p832q294 | OS 2             | Email Client 2 | 2021-09-01    |        1040 |        1040 | o783p832q294 | dtarly   | Human Resources        | East-237    |
| p929q222r778 | OS 3             | Email Client 1 | 2021-06-01    |        1041 |        1041 | p929q222r778 | cgriffin | Sales                  | North-208   |
| q175r338s833 | OS 3             | Email Client 1 | 2021-06-01    |        1042 |        1042 | q175r338s833 | acook    | Human Resources        | West-381    |
| s429t157u159 | OS 1             | Email Client 1 | 2021-03-01    |        1044 |        1044 | s429t157u159 | tbarnes  | Finance                | West-415    |
| t567u844v434 | OS 3             | Email Client 2 | 2021-12-01    |        1045 |        1045 | t567u844v434 | pwashing | Finance                | East-115    |
| u429v921w138 | OS 2             | Email Client 2 | 2021-12-01    |        1046 |        1046 | u429v921w138 | daquino  | Finance                | West-280    |
| v109w587x644 | OS 2             | Email Client 2 | 2021-03-01    |        1047 |        1047 | v109w587x644 | cward    | Finance                | West-373    |
| w167x592y375 | OS 3             | Email Client 1 | 2021-12-01    |        1048 |        1048 | w167x592y375 | tmitchel | Finance                | South-288   |
| y132z930a114 | OS 2             | Email Client 2 | 2021-06-01    |        1050 |        1050 | y132z930a114 | csimmons | Finance                | North-468   |
| z451a308b518 | OS 2             | Email Client 1 | 2021-03-01    |        1051 |        1051 | z451a308b518 | itraora  | Marketing              | Central-134 |
| a192b174c940 | OS 2             | Email Client 1 | 2021-06-01    |        1052 |        1052 | a192b174c940 | jdarosa  | Marketing              | East-195    |
| b979c871d361 | OS 2             | Email Client 1 | 2021-03-01    |        1053 |        1053 | b979c871d361 | nemmanue | Human Resources        | Central-259 |
| c547d140e477 | OS 2             | Email Client 1 | 2021-03-01    |        1054 |        1054 | c547d140e477 | tcook    | Information Technology | West-248    |
| d831e972f553 | OS 1             | Email Client 1 | 2021-09-01    |        1055 |        1055 | d831e972f553 | awilliam | Marketing              | Central-256 |
| e782f537g683 | OS 1             | Email Client 1 | 2021-03-01    |        1056 |        1056 | e782f537g683 | ankala   | Marketing              | North-139   |
| f370g535h632 | OS 2             | Email Client 2 | 2021-09-01    |        1057 |        1057 | f370g535h632 | mscott   | Sales                  | South-270   |
| g264h852i697 | OS 3             | Email Client 1 | 2021-03-01    |        1058 |        1058 | g264h852i697 | madebowa | Marketing              | South-119   |
| h832i322j795 | OS 1             | Email Client 1 | 2021-09-01    |        1059 |        1059 | h832i322j795 | jnguyen  | Marketing              | South-255   |
| i446j874k974 | OS 3             | Email Client 1 | 2021-03-01    |        1060 |        1060 | i446j874k974 | tbecker  | Information Technology | North-164   |
| j255k281l925 | OS 3             | Email Client 1 | 2021-06-01    |        1061 |        1061 | j255k281l925 | nhersh   | Human Resources        | East-163    |
| k367l639m697 | OS 1             | Email Client 1 | 2021-12-01    |        1062 |        1062 | k367l639m697 | redwards | Finance                | North-180   |
| l686m140n569 | OS 3             | Email Client 2 | 2021-12-01    |        1063 |        1063 | l686m140n569 | lpope    | Sales                  | East-226    |
| n428o322p522 | OS 1             | Email Client 1 | 2021-12-01    |        1065 |        1065 | n428o322p522 | imoore   | Human Resources        | West-490    |
| o678p794q957 | OS 1             | Email Client 1 | 2021-09-01    |        1066 |        1066 | o678p794q957 | ttyrell  | Sales                  | Central-444 |
| p288q432r721 | OS 3             | Email Client 2 | 2021-12-01    |        1067 |        1067 | p288q432r721 | lwhite   | Marketing              | North-277   |
| q689r187s648 | OS 2             | Email Client 1 | 2021-12-01    |        1068 |        1068 | q689r187s648 | djames   | Information Technology | West-438    |
| s772t175u409 | OS 1             | Email Client 1 | 2021-06-01    |        1070 |        1070 | s772t175u409 | tbailey  | Human Resources        | North-204   |
| t244u829v723 | OS 1             | Email Client 2 | 2021-06-01    |        1071 |        1071 | t244u829v723 | zdutchma | Sales                  | West-348    |
| u905v920w694 | OS 1             | Email Client 1 | 2021-09-01    |        1072 |        1072 | u905v920w694 | esmith   | Sales                  | East-421    |
| v135w241x773 | OS 2             | Email Client 2 | 2021-12-01    |        1073 |        1073 | v135w241x773 | srobinso | Marketing              | Central-494 |
| w622x645y348 | OS 3             | Email Client 1 | 2021-03-01    |        1074 |        1074 | w622x645y348 | dcoleman | Information Technology | East-126    |
| x573y883z772 | OS 1             | Email Client 1 | 2021-12-01    |        1075 |        1075 | x573y883z772 | fbautist | Marketing              | East-267    |
| y347z204a710 | OS 2             | Email Client 2 | 2021-12-01    |        1076 |        1076 | y347z204a710 | fgarcia  | Finance                | Central-270 |
| z654a154b259 | OS 2             | Email Client 2 | 2021-12-01    |        1077 |        1077 | z654a154b259 | ldavis   | Human Resources        | East-241    |
| a667b270c984 | OS 1             | Email Client 1 | 2021-03-01    |        1078 |        1078 | a667b270c984 | sharley  | Sales                  | North-418   |
| b433c245d868 | OS 1             | Email Client 1 | 2021-06-01    |        1079 |        1079 | b433c245d868 | gmedina  | Marketing              | North-456   |
| c568d742e974 | OS 2             | Email Client 2 | 2021-09-01    |        1080 |        1080 | c568d742e974 | gmoon    | Marketing              | North-156   |
| d647e310f618 | OS 2             | Email Client 2 | 2021-06-01    |        1081 |        1081 | d647e310f618 | qcorbit  | Finance                | South-290   |
| e301f659g551 | OS 3             | Email Client 2 | 2021-12-01    |        1082 |        1082 | e301f659g551 | mjohnson | Information Technology | East-151    |
| f840g812h544 | OS 1             | Email Client 2 | 2021-12-01    |        1083 |        1083 | f840g812h544 | gkoshi   | Finance                | West-165    |
| g950h972i991 | OS 2             | Email Client 1 | 2021-12-01    |        1084 |        1084 | g950h972i991 | nhuynh   | Human Resources        | South-155   |
| h339i498j269 | OS 1             | Email Client 1 | 2021-03-01    |        1085 |        1085 | h339i498j269 | cperez   | Sales                  | East-325    |
| i281j129k749 | OS 3             | Email Client 1 | 2021-06-01    |        1086 |        1086 | i281j129k749 | lmajumda | Sales                  | West-499    |
| j803k645l251 | OS 2             | Email Client 1 | 2021-12-01    |        1087 |        1087 | j803k645l251 | ibisset  | Information Technology | North-230   |
| k865l965m233 | OS 3             | Email Client 2 | 2021-12-01    |        1088 |        1088 | k865l965m233 | rgosh    | Marketing              | East-157    |
| l358m929n154 | OS 3             | Email Client 2 | 2021-03-01    |        1089 |        1089 | l358m929n154 | jpark2   | Sales                  | West-251    |
| m891n748o375 | OS 2             | Email Client 2 | 2021-12-01    |        1090 |        1090 | m891n748o375 | cpatel   | Information Technology | South-351   |
| n378o313p469 | OS 3             | Email Client 2 | 2021-12-01    |        1091 |        1091 | n378o313p469 | rtran    | Sales                  | Central-230 |
| o391p779q935 | OS 1             | Email Client 2 | 2021-06-01    |        1092 |        1092 | o391p779q935 | lpark    | Sales                  | West-227    |
| p765q957r699 | OS 2             | Email Client 1 | 2021-06-01    |        1093 |        1093 | p765q957r699 | etargary | Human Resources        | Central-247 |
| r194s893t593 | OS 1             | Email Client 2 | 2021-06-01    |        1095 |        1095 | r194s893t593 | glopez   | Information Technology | East-457    |
| s375t538u194 | OS 2             | Email Client 1 | 2021-12-01    |        1096 |        1096 | s375t538u194 | kjeffers | Information Technology | East-419    |
| t363u179v368 | OS 3             | Email Client 2 | 2021-03-01    |        1097 |        1097 | t363u179v368 | jlee     | Human Resources        | South-254   |
| u671v146w618 | OS 1             | Email Client 2 | 2021-09-01    |        1098 |        1098 | u671v146w618 | tarchamb | Sales                  | North-423   |
| v283w690x104 | OS 1             | Email Client 1 | 2021-03-01    |        1099 |        1099 | v283w690x104 | anaser   | Finance                | West-357    |
| w326x611y598 | OS 1             | Email Client 2 | 2021-03-01    |        1100 |        1100 | w326x611y598 | mjin     | Human Resources        | Central-371 |
| x701y250z303 | OS 3             | Email Client 2 | 2021-03-01    |        1101 |        1101 | x701y250z303 | ichowdhu | Human Resources        | East-233    |
| y943z930a241 | OS 1             | Email Client 2 | 2021-09-01    |        1102 |        1102 | y943z930a241 | kselassi | Marketing              | South-378   |
| a821b452c176 | OS 2             | Email Client 2 | 2021-12-01    |        1104 |        1104 | a821b452c176 | mreed    | Information Technology | West-288    |
| b551c837d758 | OS 3             | Email Client 1 | 2021-03-01    |        1105 |        1105 | b551c837d758 | kmei     | Finance                | Central-232 |
| c597d792e215 | OS 2             | Email Client 1 | 2021-09-01    |        1106 |        1106 | c597d792e215 | jcohen   | Marketing              | South-395   |
| d168e758f876 | OS 2             | Email Client 1 | 2021-09-01    |        1107 |        1107 | d168e758f876 | akajwara | Sales                  | North-471   |
| e113f288g203 | OS 2             | Email Client 2 | 2021-03-01    |        1108 |        1108 | e113f288g203 | jwashing | Human Resources        | North-226   |
| f229g533h679 | OS 2             | Email Client 2 | 2021-03-01    |        1109 |        1109 | f229g533h679 | nlocklea | Sales                  | East-196    |
| g567h376i314 | OS 3             | Email Client 1 | 2021-12-01    |        1110 |        1110 | g567h376i314 | pchaudhu | Sales                  | Central-428 |
| h835i179j862 | OS 2             | Email Client 2 | 2021-06-01    |        1111 |        1111 | h835i179j862 | jlee     | Sales                  | West-309    |
| i772j807k175 | OS 2             | Email Client 1 | 2021-12-01    |        1112 |        1112 | i772j807k175 | ccruz    | Information Technology | South-298   |
| j781k420l510 | OS 1             | Email Client 1 | 2021-09-01    |        1113 |        1113 | j781k420l510 | pjaimes  | Human Resources        | East-366    |
| l552m734n118 | OS 2             | Email Client 2 | 2021-03-01    |        1115 |        1115 | l552m734n118 | esmith2  | Information Technology | Central-204 |
| m272n572o874 | OS 3             | Email Client 2 | 2021-09-01    |        1116 |        1116 | m272n572o874 | nzhao    | Sales                  | South-100   |
| n683o758p820 | OS 2             | Email Client 1 | 2021-12-01    |        1117 |        1117 | n683o758p820 | dahmad   | Sales                  | West-405    |
| o305p208q337 | OS 3             | Email Client 2 | 2021-03-01    |        1118 |        1118 | o305p208q337 | jpark3   | Sales                  | South-329   |
| p164q780r999 | OS 3             | Email Client 2 | 2021-12-01    |        1119 |        1119 | p164q780r999 | omubarak | Sales                  | West-409    |
| q912r119s313 | OS 2             | Email Client 1 | 2021-06-01    |        1120 |        1120 | q912r119s313 | rbradsha | Marketing              | Central-200 |
| r628s557t397 | OS 1             | Email Client 1 | 2021-12-01    |        1121 |        1121 | r628s557t397 | mrojas   | Sales                  | East-288    |
| s103t952u851 | OS 2             | Email Client 2 | 2021-03-01    |        1122 |        1122 | s103t952u851 | btorres  | Finance                | West-319    |
| t479u468v151 | OS 1             | Email Client 1 | 2021-06-01    |        1123 |        1123 | t479u468v151 | ekonya   | Human Resources        | South-445   |
| u340v931w764 | OS 2             | Email Client 2 | 2021-09-01    |        1124 |        1124 | u340v931w764 | claw     | Human Resources        | Central-172 |
| v491w553x421 | OS 2             | Email Client 2 | 2021-03-01    |        1125 |        1125 | v491w553x421 | mrodgers | Marketing              | South-490   |
| w190x708y760 | OS 3             | Email Client 2 | 2021-03-01    |        1126 |        1126 | w190x708y760 | lmiller  | Information Technology | West-296    |
| x127y181z890 | OS 2             | Email Client 1 | 2021-06-01    |        1127 |        1127 | x127y181z890 | jterranc | Information Technology | Central-256 |
| y103z561a649 | OS 2             | Email Client 1 | 2021-03-01    |        1128 |        1128 | y103z561a649 | mpirato  | Human Resources        | West-205    |
| z566a147b347 | OS 1             | Email Client 1 | 2021-12-01    |        1129 |        1129 | z566a147b347 | plopez   | Marketing              | West-326    |
| a317b635c465 | OS 1             | Email Client 2 | 2021-03-01    |        1130 |        1130 | a317b635c465 | tsnow    | Sales                  | Central-451 |
| b265c937d713 | OS 2             | Email Client 1 | 2021-09-01    |        1131 |        1131 | b265c937d713 | asierra  | Information Technology | South-159   |
| c150d982e144 | OS 2             | Email Client 2 | 2021-06-01    |        1132 |        1132 | c150d982e144 | creddy   | Human Resources        | Central-210 |
| d693e351f221 | OS 2             | Email Client 2 | 2021-09-01    |        1133 |        1133 | d693e351f221 | pfrey    | Marketing              | Central-164 |
| e395f616g566 | OS 2             | Email Client 2 | 2021-03-01    |        1134 |        1134 | e395f616g566 | akhatri  | Human Resources        | West-159    |
| f934g229h883 | OS 2             | Email Client 2 | 2021-03-01    |        1135 |        1135 | f934g229h883 | khamamot | Information Technology | East-186    |
| g299h520i457 | OS 2             | Email Client 1 | 2021-09-01    |        1136 |        1136 | g299h520i457 | jhawes   | Finance                | West-416    |
| h165i539j638 | OS 3             | Email Client 1 | 2021-03-01    |        1137 |        1137 | h165i539j638 | mwood    | Human Resources        | South-166   |
| i671j355k725 | OS 2             | Email Client 2 | 2021-03-01    |        1138 |        1138 | i671j355k725 | sromero  | Finance                | South-329   |
| j637k986l199 | OS 2             | Email Client 1 | 2021-06-01    |        1139 |        1139 | j637k986l199 | emorton  | Human Resources        | North-300   |
| k982l199m839 | OS 2             | Email Client 2 | 2021-03-01    |        1140 |        1140 | k982l199m839 | apatel2  | Human Resources        | East-385    |
| l282m821n717 | OS 1             | Email Client 1 | 2021-12-01    |        1141 |        1141 | l282m821n717 | cochuba  | Human Resources        | South-282   |
| m674n127o823 | OS 3             | Email Client 2 | 2021-03-01    |        1142 |        1142 | m674n127o823 | lsilva   | Finance                | East-440    |
| n704o364p471 | OS 2             | Email Client 2 | 2021-09-01    |        1143 |        1143 | n704o364p471 | sstark   | Information Technology | East-282    |
| p752q137r169 | OS 3             | Email Client 2 | 2021-12-01    |        1145 |        1145 | p752q137r169 | msosa    | Human Resources        | South-345   |
| q228r135s755 | OS 1             | Email Client 2 | 2021-09-01    |        1146 |        1146 | q228r135s755 | ulemere  | Human Resources        | Central-171 |
| r454s225t299 | OS 2             | Email Client 2 | 2021-12-01    |        1147 |        1147 | r454s225t299 | tvega    | Finance                | West-177    |
| s328t505u907 | OS 3             | Email Client 2 | 2021-12-01    |        1148 |        1148 | s328t505u907 | dharvey  | Finance                | South-181   |
| t709u492v884 | OS 1             | Email Client 2 | 2021-06-01    |        1149 |        1149 | t709u492v884 | klim     | Information Technology | South-411   |
| u554v512w139 | OS 1             | Email Client 1 | 2021-03-01    |        1150 |        1150 | u554v512w139 | lmarin   | Marketing              | Central-364 |
| v852w513x954 | OS 2             | Email Client 1 | 2021-12-01    |        1151 |        1151 | v852w513x954 | sshah    | Human Resources        | North-272   |
| x677y330z296 | OS 1             | Email Client 2 | 2021-06-01    |        1153 |        1153 | x677y330z296 | ncardena | Marketing              | Central-363 |
| y765z123a548 | OS 2             | Email Client 2 | 2021-06-01    |        1154 |        1154 | y765z123a548 | obryand  | Marketing              | North-182   |
| z942a966b589 | OS 3             | Email Client 1 | 2021-09-01    |        1155 |        1155 | z942a966b589 | zjones   | Human Resources        | East-122    |
| a184b775c707 | OS 1             | Email Client 1 | 2021-09-01    |        1156 |        1156 | a184b775c707 | dellery  | Marketing              | East-417    |
| b264c773d977 | OS 2             | Email Client 2 | 2021-03-01    |        1157 |        1157 | b264c773d977 | lstein   | Human Resources        | Central-343 |
| c406d877e950 | OS 2             | Email Client 1 | 2021-06-01    |        1158 |        1158 | c406d877e950 | bnaser   | Human Resources        | Central-243 |
| d881e710f732 | OS 3             | Email Client 2 | 2021-03-01    |        1159 |        1159 | d881e710f732 | jshen    | Finance                | East-193    |
| e127f591g924 | OS 3             | Email Client 2 | 2021-12-01    |        1160 |        1160 | e127f591g924 | spham    | Marketing              | West-353    |
| f951g408h866 | OS 1             | Email Client 2 | 2021-03-01    |        1161 |        1161 | f951g408h866 | jjenkins | Information Technology | East-433    |
| g953h643i618 | OS 2             | Email Client 2 | 2021-06-01    |        1162 |        1162 | g953h643i618 | iortega  | Information Technology | West-381    |
| h679i515j339 | OS 3             | Email Client 1 | 2021-09-01    |        1163 |        1163 | h679i515j339 | cwilliam | Marketing              | East-216    |
| i682j513k442 | OS 3             | Email Client 1 | 2021-03-01    |        1164 |        1164 | i682j513k442 | fsmeltz  | Finance                | North-163   |
| j713k893l832 | OS 2             | Email Client 1 | 2021-03-01    |        1165 |        1165 | j713k893l832 | nwords   | Marketing              | South-128   |
| k495l234m708 | OS 1             | Email Client 2 | 2021-09-01    |        1166 |        1166 | k495l234m708 | nyoung   | Marketing              | Central-397 |
| l738m922n515 | OS 1             | Email Client 1 | 2021-03-01    |        1167 |        1167 | l738m922n515 | tblackwe | Marketing              | North-443   |
| m778n920o426 | OS 2             | Email Client 2 | 2021-06-01    |        1168 |        1168 | m778n920o426 | jharris  | Information Technology | South-305   |
| o156p302q359 | OS 2             | Email Client 1 | 2021-03-01    |        1170 |        1170 | o156p302q359 | lalvarez | Human Resources        | North-278   |
| p834q238r776 | OS 3             | Email Client 2 | 2021-03-01    |        1171 |        1171 | p834q238r776 | plopez2  | Information Technology | Central-496 |
| q372r826s628 | OS 2             | Email Client 1 | 2021-09-01    |        1172 |        1172 | q372r826s628 | akhan    | Marketing              | Central-360 |
| r537s849t690 | OS 1             | Email Client 2 | 2021-09-01    |        1173 |        1173 | r537s849t690 | ialcazar | Marketing              | South-429   |
| s371t911u987 | OS 1             | Email Client 2 | 2021-06-01    |        1174 |        1174 | s371t911u987 | eortiz   | Finance                | North-428   |
| t959u687v394 | OS 2             | Email Client 2 | 2021-06-01    |        1175 |        1175 | t959u687v394 | jclark2  | Finance                | North-194   |
| u849v569w521 | OS 2             | Email Client 1 | 2021-06-01    |        1176 |        1176 | u849v569w521 | nliu     | Sales                  | West-220    |
| v691w183x928 | OS 1             | Email Client 2 | 2021-09-01    |        1177 |        1177 | v691w183x928 | aezra    | Human Resources        | East-190    |
| w986x187y885 | OS 3             | Email Client 2 | 2021-12-01    |        1178 |        1178 | w986x187y885 | nlannist | Marketing              | North-196   |
| x174y934z376 | OS 1             | Email Client 2 | 2021-06-01    |        1179 |        1179 | x174y934z376 | asalas   | Human Resources        | North-445   |
| y131z211a578 | OS 2             | Email Client 1 | 2021-03-01    |        1180 |        1180 | y131z211a578 | medwards | Human Resources        | Central-340 |
| z803a233b718 | OS 1             | Email Client 2 | 2021-12-01    |        1181 |        1181 | z803a233b718 | sessa    | Finance                | South-207   |
| a305b818c708 | OS 3             | Email Client 2 | 2021-06-01    |        1182 |        1182 | a305b818c708 | mmora    | Information Technology | Central-250 |
| b566c710d544 | OS 1             | Email Client 1 | 2021-06-01    |        1183 |        1183 | b566c710d544 | lquraish | Human Resources        | East-400    |
| c986d200e170 | OS 2             | Email Client 2 | 2021-09-01    |        1184 |        1184 | c986d200e170 | ptsosie  | Human Resources        | Central-247 |
| d790e839f461 | OS 1             | Email Client 1 | 2021-06-01    |        1185 |        1185 | d790e839f461 | revens   | Sales                  | North-330   |
| e281f433g404 | OS 1             | Email Client 2 | 2021-12-01    |        1186 |        1186 | e281f433g404 | sacosta  | Sales                  | North-460   |
| f963g637h851 | OS 1             | Email Client 1 | 2021-06-01    |        1187 |        1187 | f963g637h851 | bbode    | Finance                | East-351    |
| g164h566i795 | OS 1             | Email Client 1 | 2021-09-01    |        1188 |        1188 | g164h566i795 | noshiro  | Finance                | West-252    |
| h784i120j837 | OS 3             | Email Client 2 | 2021-12-01    |        1189 |        1189 | h784i120j837 | slefkowi | Human Resources        | West-342    |
| k570l183m949 | OS 3             | Email Client 1 | 2021-12-01    |        1192 |        1192 | k570l183m949 | rlaghari | Information Technology | East-138    |
| l186m618n319 | OS 1             | Email Client 2 | 2021-12-01    |        1193 |        1193 | l186m618n319 | esantiag | Information Technology | Central-300 |
| m340n287o441 | OS 2             | Email Client 2 | 2021-09-01    |        1194 |        1194 | m340n287o441 | zwarren  | Human Resources        | West-212    |
| n516o853p957 | OS 1             | Email Client 1 | 2021-09-01    |        1195 |        1195 | n516o853p957 | orainier | Finance                | East-346    |
| o225p357q829 | OS 3             | Email Client 1 | 2021-12-01    |        1196 |        1196 | o225p357q829 | sshah2   | Information Technology | South-385   |
| p791q114r509 | OS 2             | Email Client 1 | 2021-09-01    |        1197 |        1197 | p791q114r509 | aabara   | Information Technology | North-159   |
| q308r573s459 | OS 3             | Email Client 1 | 2021-03-01    |        1198 |        1198 | q308r573s459 | jmartine | Marketing              | South-117   |
| r520s571t459 | OS 2             | Email Client 2 | 2021-03-01    |        1199 |        1199 | r520s571t459 | areyes   | Human Resources        | East-100    |
+--------------+------------------+----------------+---------------+-------------+-------------+--------------+----------+------------------------+-------------+
185 rows in set (0.001 sec)

Step 2: Provide additional data by executing the query below to link the machines and employees tables using a left join.
    
MariaDB [organization]> SELECT *
    -> FROM machines
    -> LEFT JOIN employees ON machines.device_id = employees.device_id;
+--------------+------------------+----------------+---------------+-------------+-------------+--------------+----------+------------------------+-------------+
| device_id    | operating_system | email_client   | OS_patch_date | employee_id | employee_id | device_id    | username | department             | office      |
+--------------+------------------+----------------+---------------+-------------+-------------+--------------+----------+------------------------+-------------+
| a320b137c219 | OS 2             | Email Client 2 | 2021-03-01    |        1000 |        1000 | a320b137c219 | elarson  | Marketing              | East-170    |
| b239c825d303 | OS 1             | Email Client 1 | 2021-03-01    |        1001 |        1001 | b239c825d303 | bmoreno  | Marketing              | Central-276 |
| c116d593e558 | OS 3             | Email Client 1 | 2021-09-01    |        1002 |        1002 | c116d593e558 | tshah    | Human Resources        | North-434   |
| d394e816f943 | OS 3             | Email Client 2 | 2021-03-01    |        1003 |        1003 | d394e816f943 | sgilmore | Finance                | South-153   |
| e218f877g788 | OS 2             | Email Client 1 | 2021-09-01    |        1004 |        1004 | e218f877g788 | eraab    | Human Resources        | South-127   |
| f551g340h864 | OS 3             | Email Client 2 | 2021-12-01    |        1005 |        1005 | f551g340h864 | gesparza | Human Resources        | South-366   |
| g329h357i597 | OS 1             | Email Client 2 | 2021-06-01    |        1006 |        1006 | g329h357i597 | alevitsk | Information Technology | East-320    |
| h174i497j413 | OS 2             | Email Client 1 | 2021-03-01    |        1007 |        1007 | h174i497j413 | wjaffrey | Finance                | North-406   |
| i858j583k571 | OS 2             | Email Client 2 | 2021-06-01    |        1008 |        1008 | i858j583k571 | abernard | Finance                | South-170   |
| k242l212m542 | OS 1             | Email Client 1 | 2021-03-01    |        1010 |        1010 | k242l212m542 | jlansky  | Finance                | South-109   |
| l748m120n401 | OS 3             | Email Client 1 | 2021-09-01    |        1011 |        1011 | l748m120n401 | drosas   | Sales                  | South-292   |
| m756n668o146 | OS 1             | Email Client 2 | 2021-09-01    |        1012 |        1012 | m756n668o146 | nmason   | Information Technology | North-160   |
| n205o559p243 | OS 1             | Email Client 2 | 2021-06-01    |        1013 |        1013 | n205o559p243 | zbernal  | Information Technology | South-229   |
| p611q262r945 | OS 1             | Email Client 2 | 2021-03-01    |        1015 |        1015 | p611q262r945 | jsoto    | Finance                | North-271   |
| q793r736s288 | OS 2             | Email Client 1 | 2021-03-01    |        1016 |        1016 | q793r736s288 | sbaelish | Human Resources        | North-229   |
| r550s824t230 | OS 2             | Email Client 1 | 2021-03-01    |        1017 |        1017 | r550s824t230 | jclark   | Finance                | North-188   |
| s310t540u653 | OS 1             | Email Client 2 | 2021-12-01    |        1018 |        1018 | s310t540u653 | abellmas | Finance                | North-403   |
| t815u205v470 | OS 3             | Email Client 1 | 2021-06-01    |        1019 |        1019 | t815u205v470 | mcouliba | Information Technology | North-108   |
| u899v381w363 | OS 3             | Email Client 1 | 2021-06-01    |        1020 |        1020 | u899v381w363 | arutley  | Marketing              | South-351   |
| v200w121x977 | OS 2             | Email Client 2 | 2021-03-01    |        1021 |        1021 | v200w121x977 | smartell | Information Technology | South-138   |
| w237x430y567 | OS 2             | Email Client 2 | 2021-06-01    |        1022 |        1022 | w237x430y567 | arusso   | Finance                | West-465    |
| x253y759z103 | OS 1             | Email Client 2 | 2021-12-01    |        1023 |        1023 | x253y759z103 | aalonso  | Information Technology | West-393    |
| y976z753a267 | OS 2             | Email Client 2 | 2021-06-01    |        1024 |        1024 | y976z753a267 | iuduike  | Sales                  | South-215   |
| z381a365b233 | OS 3             | Email Client 2 | 2021-12-01    |        1025 |        1025 | z381a365b233 | jhill    | Sales                  | North-115   |
| a998b568c863 | OS 3             | Email Client 1 | 2021-12-01    |        1026 |        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |
| b806c503d354 | OS 2             | Email Client 1 | 2021-12-01    |        1027 |        1027 | b806c503d354 | mrah     | Marketing              | West-246    |
| c603d749e374 | OS 1             | Email Client 1 | 2021-12-01    |        1028 |        1028 | c603d749e374 | aestrada | Human Resources        | West-121    |
| d336e475f676 | OS 2             | Email Client 2 | 2021-06-01    |        1029 |        1029 | d336e475f676 | ivelasco | Finance                | East-156    |
| e391f189g913 | OS 3             | Email Client 2 | 2021-12-01    |        1030 |        1030 | e391f189g913 | mabadi   | Marketing              | West-375    |
| f419g188h578 | OS 1             | Email Client 1 | 2021-06-01    |        1031 |        1031 | f419g188h578 | dkot     | Marketing              | West-408    |
| g773h303i639 | OS 2             | Email Client 2 | 2021-12-01    |        1032 |        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |
| i679j565k940 | OS 1             | Email Client 1 | 2021-03-01    |        1034 |        1034 | i679j565k940 | bsand    | Human Resources        | East-484    |
| j236k303l245 | OS 1             | Email Client 1 | 2021-12-01    |        1035 |        1035 | j236k303l245 | bisles   | Sales                  | South-171   |
| k550l533m205 | OS 3             | Email Client 2 | 2021-09-01    |        1036 |        1036 | k550l533m205 | rjensen  | Marketing              | Central-239 |
| l693m585n528 | OS 3             | Email Client 1 | 2021-06-01    |        1037 |        1037 | l693m585n528 | dtanaka  | Information Technology | West-468    |
| m873n636o225 | OS 1             | Email Client 2 | 2021-06-01    |        1038 |        1038 | m873n636o225 | btang    | Human Resources        | Central-260 |
| n253o917p623 | OS 1             | Email Client 2 | 2021-09-01    |        1039 |        1039 | n253o917p623 | cjackson | Sales                  | East-378    |
| o783p832q294 | OS 2             | Email Client 2 | 2021-09-01    |        1040 |        1040 | o783p832q294 | dtarly   | Human Resources        | East-237    |
| p929q222r778 | OS 3             | Email Client 1 | 2021-06-01    |        1041 |        1041 | p929q222r778 | cgriffin | Sales                  | North-208   |
| q175r338s833 | OS 3             | Email Client 1 | 2021-06-01    |        1042 |        1042 | q175r338s833 | acook    | Human Resources        | West-381    |
| s429t157u159 | OS 1             | Email Client 1 | 2021-03-01    |        1044 |        1044 | s429t157u159 | tbarnes  | Finance                | West-415    |
| t567u844v434 | OS 3             | Email Client 2 | 2021-12-01    |        1045 |        1045 | t567u844v434 | pwashing | Finance                | East-115    |
| u429v921w138 | OS 2             | Email Client 2 | 2021-12-01    |        1046 |        1046 | u429v921w138 | daquino  | Finance                | West-280    |
| v109w587x644 | OS 2             | Email Client 2 | 2021-03-01    |        1047 |        1047 | v109w587x644 | cward    | Finance                | West-373    |
| w167x592y375 | OS 3             | Email Client 1 | 2021-12-01    |        1048 |        1048 | w167x592y375 | tmitchel | Finance                | South-288   |
| y132z930a114 | OS 2             | Email Client 2 | 2021-06-01    |        1050 |        1050 | y132z930a114 | csimmons | Finance                | North-468   |
| z451a308b518 | OS 2             | Email Client 1 | 2021-03-01    |        1051 |        1051 | z451a308b518 | itraora  | Marketing              | Central-134 |
| a192b174c940 | OS 2             | Email Client 1 | 2021-06-01    |        1052 |        1052 | a192b174c940 | jdarosa  | Marketing              | East-195    |
| b979c871d361 | OS 2             | Email Client 1 | 2021-03-01    |        1053 |        1053 | b979c871d361 | nemmanue | Human Resources        | Central-259 |
| c547d140e477 | OS 2             | Email Client 1 | 2021-03-01    |        1054 |        1054 | c547d140e477 | tcook    | Information Technology | West-248    |
| d831e972f553 | OS 1             | Email Client 1 | 2021-09-01    |        1055 |        1055 | d831e972f553 | awilliam | Marketing              | Central-256 |
| e782f537g683 | OS 1             | Email Client 1 | 2021-03-01    |        1056 |        1056 | e782f537g683 | ankala   | Marketing              | North-139   |
| f370g535h632 | OS 2             | Email Client 2 | 2021-09-01    |        1057 |        1057 | f370g535h632 | mscott   | Sales                  | South-270   |
| g264h852i697 | OS 3             | Email Client 1 | 2021-03-01    |        1058 |        1058 | g264h852i697 | madebowa | Marketing              | South-119   |
| h832i322j795 | OS 1             | Email Client 1 | 2021-09-01    |        1059 |        1059 | h832i322j795 | jnguyen  | Marketing              | South-255   |
| i446j874k974 | OS 3             | Email Client 1 | 2021-03-01    |        1060 |        1060 | i446j874k974 | tbecker  | Information Technology | North-164   |
| j255k281l925 | OS 3             | Email Client 1 | 2021-06-01    |        1061 |        1061 | j255k281l925 | nhersh   | Human Resources        | East-163    |
| k367l639m697 | OS 1             | Email Client 1 | 2021-12-01    |        1062 |        1062 | k367l639m697 | redwards | Finance                | North-180   |
| l686m140n569 | OS 3             | Email Client 2 | 2021-12-01    |        1063 |        1063 | l686m140n569 | lpope    | Sales                  | East-226    |
| n428o322p522 | OS 1             | Email Client 1 | 2021-12-01    |        1065 |        1065 | n428o322p522 | imoore   | Human Resources        | West-490    |
| o678p794q957 | OS 1             | Email Client 1 | 2021-09-01    |        1066 |        1066 | o678p794q957 | ttyrell  | Sales                  | Central-444 |
| p288q432r721 | OS 3             | Email Client 2 | 2021-12-01    |        1067 |        1067 | p288q432r721 | lwhite   | Marketing              | North-277   |
| q689r187s648 | OS 2             | Email Client 1 | 2021-12-01    |        1068 |        1068 | q689r187s648 | djames   | Information Technology | West-438    |
| s772t175u409 | OS 1             | Email Client 1 | 2021-06-01    |        1070 |        1070 | s772t175u409 | tbailey  | Human Resources        | North-204   |
| t244u829v723 | OS 1             | Email Client 2 | 2021-06-01    |        1071 |        1071 | t244u829v723 | zdutchma | Sales                  | West-348    |
| u905v920w694 | OS 1             | Email Client 1 | 2021-09-01    |        1072 |        1072 | u905v920w694 | esmith   | Sales                  | East-421    |
| v135w241x773 | OS 2             | Email Client 2 | 2021-12-01    |        1073 |        1073 | v135w241x773 | srobinso | Marketing              | Central-494 |
| w622x645y348 | OS 3             | Email Client 1 | 2021-03-01    |        1074 |        1074 | w622x645y348 | dcoleman | Information Technology | East-126    |
| x573y883z772 | OS 1             | Email Client 1 | 2021-12-01    |        1075 |        1075 | x573y883z772 | fbautist | Marketing              | East-267    |
| y347z204a710 | OS 2             | Email Client 2 | 2021-12-01    |        1076 |        1076 | y347z204a710 | fgarcia  | Finance                | Central-270 |
| z654a154b259 | OS 2             | Email Client 2 | 2021-12-01    |        1077 |        1077 | z654a154b259 | ldavis   | Human Resources        | East-241    |
| a667b270c984 | OS 1             | Email Client 1 | 2021-03-01    |        1078 |        1078 | a667b270c984 | sharley  | Sales                  | North-418   |
| b433c245d868 | OS 1             | Email Client 1 | 2021-06-01    |        1079 |        1079 | b433c245d868 | gmedina  | Marketing              | North-456   |
| c568d742e974 | OS 2             | Email Client 2 | 2021-09-01    |        1080 |        1080 | c568d742e974 | gmoon    | Marketing              | North-156   |
| d647e310f618 | OS 2             | Email Client 2 | 2021-06-01    |        1081 |        1081 | d647e310f618 | qcorbit  | Finance                | South-290   |
| e301f659g551 | OS 3             | Email Client 2 | 2021-12-01    |        1082 |        1082 | e301f659g551 | mjohnson | Information Technology | East-151    |
| f840g812h544 | OS 1             | Email Client 2 | 2021-12-01    |        1083 |        1083 | f840g812h544 | gkoshi   | Finance                | West-165    |
| g950h972i991 | OS 2             | Email Client 1 | 2021-12-01    |        1084 |        1084 | g950h972i991 | nhuynh   | Human Resources        | South-155   |
| h339i498j269 | OS 1             | Email Client 1 | 2021-03-01    |        1085 |        1085 | h339i498j269 | cperez   | Sales                  | East-325    |
| i281j129k749 | OS 3             | Email Client 1 | 2021-06-01    |        1086 |        1086 | i281j129k749 | lmajumda | Sales                  | West-499    |
| j803k645l251 | OS 2             | Email Client 1 | 2021-12-01    |        1087 |        1087 | j803k645l251 | ibisset  | Information Technology | North-230   |
| k865l965m233 | OS 3             | Email Client 2 | 2021-12-01    |        1088 |        1088 | k865l965m233 | rgosh    | Marketing              | East-157    |
| l358m929n154 | OS 3             | Email Client 2 | 2021-03-01    |        1089 |        1089 | l358m929n154 | jpark2   | Sales                  | West-251    |
| m891n748o375 | OS 2             | Email Client 2 | 2021-12-01    |        1090 |        1090 | m891n748o375 | cpatel   | Information Technology | South-351   |
| n378o313p469 | OS 3             | Email Client 2 | 2021-12-01    |        1091 |        1091 | n378o313p469 | rtran    | Sales                  | Central-230 |
| o391p779q935 | OS 1             | Email Client 2 | 2021-06-01    |        1092 |        1092 | o391p779q935 | lpark    | Sales                  | West-227    |
| p765q957r699 | OS 2             | Email Client 1 | 2021-06-01    |        1093 |        1093 | p765q957r699 | etargary | Human Resources        | Central-247 |
| r194s893t593 | OS 1             | Email Client 2 | 2021-06-01    |        1095 |        1095 | r194s893t593 | glopez   | Information Technology | East-457    |
| s375t538u194 | OS 2             | Email Client 1 | 2021-12-01    |        1096 |        1096 | s375t538u194 | kjeffers | Information Technology | East-419    |
| t363u179v368 | OS 3             | Email Client 2 | 2021-03-01    |        1097 |        1097 | t363u179v368 | jlee     | Human Resources        | South-254   |
| u671v146w618 | OS 1             | Email Client 2 | 2021-09-01    |        1098 |        1098 | u671v146w618 | tarchamb | Sales                  | North-423   |
| v283w690x104 | OS 1             | Email Client 1 | 2021-03-01    |        1099 |        1099 | v283w690x104 | anaser   | Finance                | West-357    |
| w326x611y598 | OS 1             | Email Client 2 | 2021-03-01    |        1100 |        1100 | w326x611y598 | mjin     | Human Resources        | Central-371 |
| x701y250z303 | OS 3             | Email Client 2 | 2021-03-01    |        1101 |        1101 | x701y250z303 | ichowdhu | Human Resources        | East-233    |
| y943z930a241 | OS 1             | Email Client 2 | 2021-09-01    |        1102 |        1102 | y943z930a241 | kselassi | Marketing              | South-378   |
| a821b452c176 | OS 2             | Email Client 2 | 2021-12-01    |        1104 |        1104 | a821b452c176 | mreed    | Information Technology | West-288    |
| b551c837d758 | OS 3             | Email Client 1 | 2021-03-01    |        1105 |        1105 | b551c837d758 | kmei     | Finance                | Central-232 |
| c597d792e215 | OS 2             | Email Client 1 | 2021-09-01    |        1106 |        1106 | c597d792e215 | jcohen   | Marketing              | South-395   |
| d168e758f876 | OS 2             | Email Client 1 | 2021-09-01    |        1107 |        1107 | d168e758f876 | akajwara | Sales                  | North-471   |
| e113f288g203 | OS 2             | Email Client 2 | 2021-03-01    |        1108 |        1108 | e113f288g203 | jwashing | Human Resources        | North-226   |
| f229g533h679 | OS 2             | Email Client 2 | 2021-03-01    |        1109 |        1109 | f229g533h679 | nlocklea | Sales                  | East-196    |
| g567h376i314 | OS 3             | Email Client 1 | 2021-12-01    |        1110 |        1110 | g567h376i314 | pchaudhu | Sales                  | Central-428 |
| h835i179j862 | OS 2             | Email Client 2 | 2021-06-01    |        1111 |        1111 | h835i179j862 | jlee     | Sales                  | West-309    |
| i772j807k175 | OS 2             | Email Client 1 | 2021-12-01    |        1112 |        1112 | i772j807k175 | ccruz    | Information Technology | South-298   |
| j781k420l510 | OS 1             | Email Client 1 | 2021-09-01    |        1113 |        1113 | j781k420l510 | pjaimes  | Human Resources        | East-366    |
| l552m734n118 | OS 2             | Email Client 2 | 2021-03-01    |        1115 |        1115 | l552m734n118 | esmith2  | Information Technology | Central-204 |
| m272n572o874 | OS 3             | Email Client 2 | 2021-09-01    |        1116 |        1116 | m272n572o874 | nzhao    | Sales                  | South-100   |
| n683o758p820 | OS 2             | Email Client 1 | 2021-12-01    |        1117 |        1117 | n683o758p820 | dahmad   | Sales                  | West-405    |
| o305p208q337 | OS 3             | Email Client 2 | 2021-03-01    |        1118 |        1118 | o305p208q337 | jpark3   | Sales                  | South-329   |
| p164q780r999 | OS 3             | Email Client 2 | 2021-12-01    |        1119 |        1119 | p164q780r999 | omubarak | Sales                  | West-409    |
| q912r119s313 | OS 2             | Email Client 1 | 2021-06-01    |        1120 |        1120 | q912r119s313 | rbradsha | Marketing              | Central-200 |
| r628s557t397 | OS 1             | Email Client 1 | 2021-12-01    |        1121 |        1121 | r628s557t397 | mrojas   | Sales                  | East-288    |
| s103t952u851 | OS 2             | Email Client 2 | 2021-03-01    |        1122 |        1122 | s103t952u851 | btorres  | Finance                | West-319    |
| t479u468v151 | OS 1             | Email Client 1 | 2021-06-01    |        1123 |        1123 | t479u468v151 | ekonya   | Human Resources        | South-445   |
| u340v931w764 | OS 2             | Email Client 2 | 2021-09-01    |        1124 |        1124 | u340v931w764 | claw     | Human Resources        | Central-172 |
| v491w553x421 | OS 2             | Email Client 2 | 2021-03-01    |        1125 |        1125 | v491w553x421 | mrodgers | Marketing              | South-490   |
| w190x708y760 | OS 3             | Email Client 2 | 2021-03-01    |        1126 |        1126 | w190x708y760 | lmiller  | Information Technology | West-296    |
| x127y181z890 | OS 2             | Email Client 1 | 2021-06-01    |        1127 |        1127 | x127y181z890 | jterranc | Information Technology | Central-256 |
| y103z561a649 | OS 2             | Email Client 1 | 2021-03-01    |        1128 |        1128 | y103z561a649 | mpirato  | Human Resources        | West-205    |
| z566a147b347 | OS 1             | Email Client 1 | 2021-12-01    |        1129 |        1129 | z566a147b347 | plopez   | Marketing              | West-326    |
| a317b635c465 | OS 1             | Email Client 2 | 2021-03-01    |        1130 |        1130 | a317b635c465 | tsnow    | Sales                  | Central-451 |
| b265c937d713 | OS 2             | Email Client 1 | 2021-09-01    |        1131 |        1131 | b265c937d713 | asierra  | Information Technology | South-159   |
| c150d982e144 | OS 2             | Email Client 2 | 2021-06-01    |        1132 |        1132 | c150d982e144 | creddy   | Human Resources        | Central-210 |
| d693e351f221 | OS 2             | Email Client 2 | 2021-09-01    |        1133 |        1133 | d693e351f221 | pfrey    | Marketing              | Central-164 |
| e395f616g566 | OS 2             | Email Client 2 | 2021-03-01    |        1134 |        1134 | e395f616g566 | akhatri  | Human Resources        | West-159    |
| f934g229h883 | OS 2             | Email Client 2 | 2021-03-01    |        1135 |        1135 | f934g229h883 | khamamot | Information Technology | East-186    |
| g299h520i457 | OS 2             | Email Client 1 | 2021-09-01    |        1136 |        1136 | g299h520i457 | jhawes   | Finance                | West-416    |
| h165i539j638 | OS 3             | Email Client 1 | 2021-03-01    |        1137 |        1137 | h165i539j638 | mwood    | Human Resources        | South-166   |
| i671j355k725 | OS 2             | Email Client 2 | 2021-03-01    |        1138 |        1138 | i671j355k725 | sromero  | Finance                | South-329   |
| j637k986l199 | OS 2             | Email Client 1 | 2021-06-01    |        1139 |        1139 | j637k986l199 | emorton  | Human Resources        | North-300   |
| k982l199m839 | OS 2             | Email Client 2 | 2021-03-01    |        1140 |        1140 | k982l199m839 | apatel2  | Human Resources        | East-385    |
| l282m821n717 | OS 1             | Email Client 1 | 2021-12-01    |        1141 |        1141 | l282m821n717 | cochuba  | Human Resources        | South-282   |
| m674n127o823 | OS 3             | Email Client 2 | 2021-03-01    |        1142 |        1142 | m674n127o823 | lsilva   | Finance                | East-440    |
| n704o364p471 | OS 2             | Email Client 2 | 2021-09-01    |        1143 |        1143 | n704o364p471 | sstark   | Information Technology | East-282    |
| p752q137r169 | OS 3             | Email Client 2 | 2021-12-01    |        1145 |        1145 | p752q137r169 | msosa    | Human Resources        | South-345   |
| q228r135s755 | OS 1             | Email Client 2 | 2021-09-01    |        1146 |        1146 | q228r135s755 | ulemere  | Human Resources        | Central-171 |
| r454s225t299 | OS 2             | Email Client 2 | 2021-12-01    |        1147 |        1147 | r454s225t299 | tvega    | Finance                | West-177    |
| s328t505u907 | OS 3             | Email Client 2 | 2021-12-01    |        1148 |        1148 | s328t505u907 | dharvey  | Finance                | South-181   |
| t709u492v884 | OS 1             | Email Client 2 | 2021-06-01    |        1149 |        1149 | t709u492v884 | klim     | Information Technology | South-411   |
| u554v512w139 | OS 1             | Email Client 1 | 2021-03-01    |        1150 |        1150 | u554v512w139 | lmarin   | Marketing              | Central-364 |
| v852w513x954 | OS 2             | Email Client 1 | 2021-12-01    |        1151 |        1151 | v852w513x954 | sshah    | Human Resources        | North-272   |
| x677y330z296 | OS 1             | Email Client 2 | 2021-06-01    |        1153 |        1153 | x677y330z296 | ncardena | Marketing              | Central-363 |
| y765z123a548 | OS 2             | Email Client 2 | 2021-06-01    |        1154 |        1154 | y765z123a548 | obryand  | Marketing              | North-182   |
| z942a966b589 | OS 3             | Email Client 1 | 2021-09-01    |        1155 |        1155 | z942a966b589 | zjones   | Human Resources        | East-122    |
| a184b775c707 | OS 1             | Email Client 1 | 2021-09-01    |        1156 |        1156 | a184b775c707 | dellery  | Marketing              | East-417    |
| b264c773d977 | OS 2             | Email Client 2 | 2021-03-01    |        1157 |        1157 | b264c773d977 | lstein   | Human Resources        | Central-343 |
| c406d877e950 | OS 2             | Email Client 1 | 2021-06-01    |        1158 |        1158 | c406d877e950 | bnaser   | Human Resources        | Central-243 |
| d881e710f732 | OS 3             | Email Client 2 | 2021-03-01    |        1159 |        1159 | d881e710f732 | jshen    | Finance                | East-193    |
| e127f591g924 | OS 3             | Email Client 2 | 2021-12-01    |        1160 |        1160 | e127f591g924 | spham    | Marketing              | West-353    |
| f951g408h866 | OS 1             | Email Client 2 | 2021-03-01    |        1161 |        1161 | f951g408h866 | jjenkins | Information Technology | East-433    |
| g953h643i618 | OS 2             | Email Client 2 | 2021-06-01    |        1162 |        1162 | g953h643i618 | iortega  | Information Technology | West-381    |
| h679i515j339 | OS 3             | Email Client 1 | 2021-09-01    |        1163 |        1163 | h679i515j339 | cwilliam | Marketing              | East-216    |
| i682j513k442 | OS 3             | Email Client 1 | 2021-03-01    |        1164 |        1164 | i682j513k442 | fsmeltz  | Finance                | North-163   |
| j713k893l832 | OS 2             | Email Client 1 | 2021-03-01    |        1165 |        1165 | j713k893l832 | nwords   | Marketing              | South-128   |
| k495l234m708 | OS 1             | Email Client 2 | 2021-09-01    |        1166 |        1166 | k495l234m708 | nyoung   | Marketing              | Central-397 |
| l738m922n515 | OS 1             | Email Client 1 | 2021-03-01    |        1167 |        1167 | l738m922n515 | tblackwe | Marketing              | North-443   |
| m778n920o426 | OS 2             | Email Client 2 | 2021-06-01    |        1168 |        1168 | m778n920o426 | jharris  | Information Technology | South-305   |
| o156p302q359 | OS 2             | Email Client 1 | 2021-03-01    |        1170 |        1170 | o156p302q359 | lalvarez | Human Resources        | North-278   |
| p834q238r776 | OS 3             | Email Client 2 | 2021-03-01    |        1171 |        1171 | p834q238r776 | plopez2  | Information Technology | Central-496 |
| q372r826s628 | OS 2             | Email Client 1 | 2021-09-01    |        1172 |        1172 | q372r826s628 | akhan    | Marketing              | Central-360 |
| r537s849t690 | OS 1             | Email Client 2 | 2021-09-01    |        1173 |        1173 | r537s849t690 | ialcazar | Marketing              | South-429   |
| s371t911u987 | OS 1             | Email Client 2 | 2021-06-01    |        1174 |        1174 | s371t911u987 | eortiz   | Finance                | North-428   |
| t959u687v394 | OS 2             | Email Client 2 | 2021-06-01    |        1175 |        1175 | t959u687v394 | jclark2  | Finance                | North-194   |
| u849v569w521 | OS 2             | Email Client 1 | 2021-06-01    |        1176 |        1176 | u849v569w521 | nliu     | Sales                  | West-220    |
| v691w183x928 | OS 1             | Email Client 2 | 2021-09-01    |        1177 |        1177 | v691w183x928 | aezra    | Human Resources        | East-190    |
| w986x187y885 | OS 3             | Email Client 2 | 2021-12-01    |        1178 |        1178 | w986x187y885 | nlannist | Marketing              | North-196   |
| x174y934z376 | OS 1             | Email Client 2 | 2021-06-01    |        1179 |        1179 | x174y934z376 | asalas   | Human Resources        | North-445   |
| y131z211a578 | OS 2             | Email Client 1 | 2021-03-01    |        1180 |        1180 | y131z211a578 | medwards | Human Resources        | Central-340 |
| z803a233b718 | OS 1             | Email Client 2 | 2021-12-01    |        1181 |        1181 | z803a233b718 | sessa    | Finance                | South-207   |
| a305b818c708 | OS 3             | Email Client 2 | 2021-06-01    |        1182 |        1182 | a305b818c708 | mmora    | Information Technology | Central-250 |
| b566c710d544 | OS 1             | Email Client 1 | 2021-06-01    |        1183 |        1183 | b566c710d544 | lquraish | Human Resources        | East-400    |
| c986d200e170 | OS 2             | Email Client 2 | 2021-09-01    |        1184 |        1184 | c986d200e170 | ptsosie  | Human Resources        | Central-247 |
| d790e839f461 | OS 1             | Email Client 1 | 2021-06-01    |        1185 |        1185 | d790e839f461 | revens   | Sales                  | North-330   |
| e281f433g404 | OS 1             | Email Client 2 | 2021-12-01    |        1186 |        1186 | e281f433g404 | sacosta  | Sales                  | North-460   |
| f963g637h851 | OS 1             | Email Client 1 | 2021-06-01    |        1187 |        1187 | f963g637h851 | bbode    | Finance                | East-351    |
| g164h566i795 | OS 1             | Email Client 1 | 2021-09-01    |        1188 |        1188 | g164h566i795 | noshiro  | Finance                | West-252    |
| h784i120j837 | OS 3             | Email Client 2 | 2021-12-01    |        1189 |        1189 | h784i120j837 | slefkowi | Human Resources        | West-342    |
| k570l183m949 | OS 3             | Email Client 1 | 2021-12-01    |        1192 |        1192 | k570l183m949 | rlaghari | Information Technology | East-138    |
| l186m618n319 | OS 1             | Email Client 2 | 2021-12-01    |        1193 |        1193 | l186m618n319 | esantiag | Information Technology | Central-300 |
| m340n287o441 | OS 2             | Email Client 2 | 2021-09-01    |        1194 |        1194 | m340n287o441 | zwarren  | Human Resources        | West-212    |
| n516o853p957 | OS 1             | Email Client 1 | 2021-09-01    |        1195 |        1195 | n516o853p957 | orainier | Finance                | East-346    |
| o225p357q829 | OS 3             | Email Client 1 | 2021-12-01    |        1196 |        1196 | o225p357q829 | sshah2   | Information Technology | South-385   |
| p791q114r509 | OS 2             | Email Client 1 | 2021-09-01    |        1197 |        1197 | p791q114r509 | aabara   | Information Technology | North-159   |
| q308r573s459 | OS 3             | Email Client 1 | 2021-03-01    |        1198 |        1198 | q308r573s459 | jmartine | Marketing              | South-117   |
| r520s571t459 | OS 2             | Email Client 2 | 2021-03-01    |        1199 |        1199 | r520s571t459 | areyes   | Human Resources        | East-100    |
| a398b471c573 | OS 3             | Email Client 2 | 2021-12-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| b157c491d493 | OS 2             | Email Client 1 | 2021-03-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| c185d679e493 | OS 1             | Email Client 2 | 2021-09-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| d280e557f635 | OS 3             | Email Client 1 | 2021-03-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| e121f951g937 | OS 3             | Email Client 2 | 2021-06-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| f117g394h201 | OS 1             | Email Client 2 | 2021-03-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| g770h829i938 | OS 2             | Email Client 1 | 2021-09-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| s918t412u294 | OS 3             | Email Client 2 | 2021-12-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| t801u630v138 | OS 2             | Email Client 2 | 2021-03-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| u113v483w811 | OS 3             | Email Client 2 | 2021-06-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| v846w200x439 | OS 1             | Email Client 1 | 2021-06-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| w981x771y326 | OS 2             | Email Client 2 | 2021-06-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| x561y839z458 | OS 2             | Email Client 1 | 2021-09-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| y246z508a775 | OS 2             | Email Client 1 | 2021-12-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
| z821a946b264 | OS 3             | Email Client 2 | 2021-06-01    |           0 |        NULL | NULL         | NULL     | NULL                   | NULL        |
+--------------+------------------+----------------+---------------+-------------+-------------+--------------+----------+------------------------+-------------+
200 rows in set (0.001 sec)

# Use the following query to connect the machines and employees tables with a right join.
    
MariaDB [organization]> SELECT * 
    -> FROM machines
    -> RIGHT JOIN employees ON machines.device_id = employees.device_id;
+--------------+------------------+----------------+---------------+-------------+-------------+--------------+----------+------------------------+-------------+
| device_id    | operating_system | email_client   | OS_patch_date | employee_id | employee_id | device_id    | username | department             | office      |
+--------------+------------------+----------------+---------------+-------------+-------------+--------------+----------+------------------------+-------------+
| a320b137c219 | OS 2             | Email Client 2 | 2021-03-01    |        1000 |        1000 | a320b137c219 | elarson  | Marketing              | East-170    |
| b239c825d303 | OS 1             | Email Client 1 | 2021-03-01    |        1001 |        1001 | b239c825d303 | bmoreno  | Marketing              | Central-276 |
| c116d593e558 | OS 3             | Email Client 1 | 2021-09-01    |        1002 |        1002 | c116d593e558 | tshah    | Human Resources        | North-434   |
| d394e816f943 | OS 3             | Email Client 2 | 2021-03-01    |        1003 |        1003 | d394e816f943 | sgilmore | Finance                | South-153   |
| e218f877g788 | OS 2             | Email Client 1 | 2021-09-01    |        1004 |        1004 | e218f877g788 | eraab    | Human Resources        | South-127   |
| f551g340h864 | OS 3             | Email Client 2 | 2021-12-01    |        1005 |        1005 | f551g340h864 | gesparza | Human Resources        | South-366   |
| g329h357i597 | OS 1             | Email Client 2 | 2021-06-01    |        1006 |        1006 | g329h357i597 | alevitsk | Information Technology | East-320    |
| h174i497j413 | OS 2             | Email Client 1 | 2021-03-01    |        1007 |        1007 | h174i497j413 | wjaffrey | Finance                | North-406   |
| i858j583k571 | OS 2             | Email Client 2 | 2021-06-01    |        1008 |        1008 | i858j583k571 | abernard | Finance                | South-170   |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1009 | NULL         | lrodriqu | Sales                  | South-134   |
| k242l212m542 | OS 1             | Email Client 1 | 2021-03-01    |        1010 |        1010 | k242l212m542 | jlansky  | Finance                | South-109   |
| l748m120n401 | OS 3             | Email Client 1 | 2021-09-01    |        1011 |        1011 | l748m120n401 | drosas   | Sales                  | South-292   |
| m756n668o146 | OS 1             | Email Client 2 | 2021-09-01    |        1012 |        1012 | m756n668o146 | nmason   | Information Technology | North-160   |
| n205o559p243 | OS 1             | Email Client 2 | 2021-06-01    |        1013 |        1013 | n205o559p243 | zbernal  | Information Technology | South-229   |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1014 | NULL         | asundara | Information Technology | West-219    |
| p611q262r945 | OS 1             | Email Client 2 | 2021-03-01    |        1015 |        1015 | p611q262r945 | jsoto    | Finance                | North-271   |
| q793r736s288 | OS 2             | Email Client 1 | 2021-03-01    |        1016 |        1016 | q793r736s288 | sbaelish | Human Resources        | North-229   |
| r550s824t230 | OS 2             | Email Client 1 | 2021-03-01    |        1017 |        1017 | r550s824t230 | jclark   | Finance                | North-188   |
| s310t540u653 | OS 1             | Email Client 2 | 2021-12-01    |        1018 |        1018 | s310t540u653 | abellmas | Finance                | North-403   |
| t815u205v470 | OS 3             | Email Client 1 | 2021-06-01    |        1019 |        1019 | t815u205v470 | mcouliba | Information Technology | North-108   |
| u899v381w363 | OS 3             | Email Client 1 | 2021-06-01    |        1020 |        1020 | u899v381w363 | arutley  | Marketing              | South-351   |
| v200w121x977 | OS 2             | Email Client 2 | 2021-03-01    |        1021 |        1021 | v200w121x977 | smartell | Information Technology | South-138   |
| w237x430y567 | OS 2             | Email Client 2 | 2021-06-01    |        1022 |        1022 | w237x430y567 | arusso   | Finance                | West-465    |
| x253y759z103 | OS 1             | Email Client 2 | 2021-12-01    |        1023 |        1023 | x253y759z103 | aalonso  | Information Technology | West-393    |
| y976z753a267 | OS 2             | Email Client 2 | 2021-06-01    |        1024 |        1024 | y976z753a267 | iuduike  | Sales                  | South-215   |
| z381a365b233 | OS 3             | Email Client 2 | 2021-12-01    |        1025 |        1025 | z381a365b233 | jhill    | Sales                  | North-115   |
| a998b568c863 | OS 3             | Email Client 1 | 2021-12-01    |        1026 |        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |
| b806c503d354 | OS 2             | Email Client 1 | 2021-12-01    |        1027 |        1027 | b806c503d354 | mrah     | Marketing              | West-246    |
| c603d749e374 | OS 1             | Email Client 1 | 2021-12-01    |        1028 |        1028 | c603d749e374 | aestrada | Human Resources        | West-121    |
| d336e475f676 | OS 2             | Email Client 2 | 2021-06-01    |        1029 |        1029 | d336e475f676 | ivelasco | Finance                | East-156    |
| e391f189g913 | OS 3             | Email Client 2 | 2021-12-01    |        1030 |        1030 | e391f189g913 | mabadi   | Marketing              | West-375    |
| f419g188h578 | OS 1             | Email Client 1 | 2021-06-01    |        1031 |        1031 | f419g188h578 | dkot     | Marketing              | West-408    |
| g773h303i639 | OS 2             | Email Client 2 | 2021-12-01    |        1032 |        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1033 | NULL         | yappiah  | Information Technology | West-387    |
| i679j565k940 | OS 1             | Email Client 1 | 2021-03-01    |        1034 |        1034 | i679j565k940 | bsand    | Human Resources        | East-484    |
| j236k303l245 | OS 1             | Email Client 1 | 2021-12-01    |        1035 |        1035 | j236k303l245 | bisles   | Sales                  | South-171   |
| k550l533m205 | OS 3             | Email Client 2 | 2021-09-01    |        1036 |        1036 | k550l533m205 | rjensen  | Marketing              | Central-239 |
| l693m585n528 | OS 3             | Email Client 1 | 2021-06-01    |        1037 |        1037 | l693m585n528 | dtanaka  | Information Technology | West-468    |
| m873n636o225 | OS 1             | Email Client 2 | 2021-06-01    |        1038 |        1038 | m873n636o225 | btang    | Human Resources        | Central-260 |
| n253o917p623 | OS 1             | Email Client 2 | 2021-09-01    |        1039 |        1039 | n253o917p623 | cjackson | Sales                  | East-378    |
| o783p832q294 | OS 2             | Email Client 2 | 2021-09-01    |        1040 |        1040 | o783p832q294 | dtarly   | Human Resources        | East-237    |
| p929q222r778 | OS 3             | Email Client 1 | 2021-06-01    |        1041 |        1041 | p929q222r778 | cgriffin | Sales                  | North-208   |
| q175r338s833 | OS 3             | Email Client 1 | 2021-06-01    |        1042 |        1042 | q175r338s833 | acook    | Human Resources        | West-381    |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1043 | NULL         | lyamamot | Information Technology | East-354    |
| s429t157u159 | OS 1             | Email Client 1 | 2021-03-01    |        1044 |        1044 | s429t157u159 | tbarnes  | Finance                | West-415    |
| t567u844v434 | OS 3             | Email Client 2 | 2021-12-01    |        1045 |        1045 | t567u844v434 | pwashing | Finance                | East-115    |
| u429v921w138 | OS 2             | Email Client 2 | 2021-12-01    |        1046 |        1046 | u429v921w138 | daquino  | Finance                | West-280    |
| v109w587x644 | OS 2             | Email Client 2 | 2021-03-01    |        1047 |        1047 | v109w587x644 | cward    | Finance                | West-373    |
| w167x592y375 | OS 3             | Email Client 1 | 2021-12-01    |        1048 |        1048 | w167x592y375 | tmitchel | Finance                | South-288   |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1049 | NULL         | jreckley | Finance                | Central-295 |
| y132z930a114 | OS 2             | Email Client 2 | 2021-06-01    |        1050 |        1050 | y132z930a114 | csimmons | Finance                | North-468   |
| z451a308b518 | OS 2             | Email Client 1 | 2021-03-01    |        1051 |        1051 | z451a308b518 | itraora  | Marketing              | Central-134 |
| a192b174c940 | OS 2             | Email Client 1 | 2021-06-01    |        1052 |        1052 | a192b174c940 | jdarosa  | Marketing              | East-195    |
| b979c871d361 | OS 2             | Email Client 1 | 2021-03-01    |        1053 |        1053 | b979c871d361 | nemmanue | Human Resources        | Central-259 |
| c547d140e477 | OS 2             | Email Client 1 | 2021-03-01    |        1054 |        1054 | c547d140e477 | tcook    | Information Technology | West-248    |
| d831e972f553 | OS 1             | Email Client 1 | 2021-09-01    |        1055 |        1055 | d831e972f553 | awilliam | Marketing              | Central-256 |
| e782f537g683 | OS 1             | Email Client 1 | 2021-03-01    |        1056 |        1056 | e782f537g683 | ankala   | Marketing              | North-139   |
| f370g535h632 | OS 2             | Email Client 2 | 2021-09-01    |        1057 |        1057 | f370g535h632 | mscott   | Sales                  | South-270   |
| g264h852i697 | OS 3             | Email Client 1 | 2021-03-01    |        1058 |        1058 | g264h852i697 | madebowa | Marketing              | South-119   |
| h832i322j795 | OS 1             | Email Client 1 | 2021-09-01    |        1059 |        1059 | h832i322j795 | jnguyen  | Marketing              | South-255   |
| i446j874k974 | OS 3             | Email Client 1 | 2021-03-01    |        1060 |        1060 | i446j874k974 | tbecker  | Information Technology | North-164   |
| j255k281l925 | OS 3             | Email Client 1 | 2021-06-01    |        1061 |        1061 | j255k281l925 | nhersh   | Human Resources        | East-163    |
| k367l639m697 | OS 1             | Email Client 1 | 2021-12-01    |        1062 |        1062 | k367l639m697 | redwards | Finance                | North-180   |
| l686m140n569 | OS 3             | Email Client 2 | 2021-12-01    |        1063 |        1063 | l686m140n569 | lpope    | Sales                  | East-226    |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1064 | NULL         | ejones   | Marketing              | South-477   |
| n428o322p522 | OS 1             | Email Client 1 | 2021-12-01    |        1065 |        1065 | n428o322p522 | imoore   | Human Resources        | West-490    |
| o678p794q957 | OS 1             | Email Client 1 | 2021-09-01    |        1066 |        1066 | o678p794q957 | ttyrell  | Sales                  | Central-444 |
| p288q432r721 | OS 3             | Email Client 2 | 2021-12-01    |        1067 |        1067 | p288q432r721 | lwhite   | Marketing              | North-277   |
| q689r187s648 | OS 2             | Email Client 1 | 2021-12-01    |        1068 |        1068 | q689r187s648 | djames   | Information Technology | West-438    |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1069 | NULL         | jpark    | Finance                | East-110    |
| s772t175u409 | OS 1             | Email Client 1 | 2021-06-01    |        1070 |        1070 | s772t175u409 | tbailey  | Human Resources        | North-204   |
| t244u829v723 | OS 1             | Email Client 2 | 2021-06-01    |        1071 |        1071 | t244u829v723 | zdutchma | Sales                  | West-348    |
| u905v920w694 | OS 1             | Email Client 1 | 2021-09-01    |        1072 |        1072 | u905v920w694 | esmith   | Sales                  | East-421    |
| v135w241x773 | OS 2             | Email Client 2 | 2021-12-01    |        1073 |        1073 | v135w241x773 | srobinso | Marketing              | Central-494 |
| w622x645y348 | OS 3             | Email Client 1 | 2021-03-01    |        1074 |        1074 | w622x645y348 | dcoleman | Information Technology | East-126    |
| x573y883z772 | OS 1             | Email Client 1 | 2021-12-01    |        1075 |        1075 | x573y883z772 | fbautist | Marketing              | East-267    |
| y347z204a710 | OS 2             | Email Client 2 | 2021-12-01    |        1076 |        1076 | y347z204a710 | fgarcia  | Finance                | Central-270 |
| z654a154b259 | OS 2             | Email Client 2 | 2021-12-01    |        1077 |        1077 | z654a154b259 | ldavis   | Human Resources        | East-241    |
| a667b270c984 | OS 1             | Email Client 1 | 2021-03-01    |        1078 |        1078 | a667b270c984 | sharley  | Sales                  | North-418   |
| b433c245d868 | OS 1             | Email Client 1 | 2021-06-01    |        1079 |        1079 | b433c245d868 | gmedina  | Marketing              | North-456   |
| c568d742e974 | OS 2             | Email Client 2 | 2021-09-01    |        1080 |        1080 | c568d742e974 | gmoon    | Marketing              | North-156   |
| d647e310f618 | OS 2             | Email Client 2 | 2021-06-01    |        1081 |        1081 | d647e310f618 | qcorbit  | Finance                | South-290   |
| e301f659g551 | OS 3             | Email Client 2 | 2021-12-01    |        1082 |        1082 | e301f659g551 | mjohnson | Information Technology | East-151    |
| f840g812h544 | OS 1             | Email Client 2 | 2021-12-01    |        1083 |        1083 | f840g812h544 | gkoshi   | Finance                | West-165    |
| g950h972i991 | OS 2             | Email Client 1 | 2021-12-01    |        1084 |        1084 | g950h972i991 | nhuynh   | Human Resources        | South-155   |
| h339i498j269 | OS 1             | Email Client 1 | 2021-03-01    |        1085 |        1085 | h339i498j269 | cperez   | Sales                  | East-325    |
| i281j129k749 | OS 3             | Email Client 1 | 2021-06-01    |        1086 |        1086 | i281j129k749 | lmajumda | Sales                  | West-499    |
| j803k645l251 | OS 2             | Email Client 1 | 2021-12-01    |        1087 |        1087 | j803k645l251 | ibisset  | Information Technology | North-230   |
| k865l965m233 | OS 3             | Email Client 2 | 2021-12-01    |        1088 |        1088 | k865l965m233 | rgosh    | Marketing              | East-157    |
| l358m929n154 | OS 3             | Email Client 2 | 2021-03-01    |        1089 |        1089 | l358m929n154 | jpark2   | Sales                  | West-251    |
| m891n748o375 | OS 2             | Email Client 2 | 2021-12-01    |        1090 |        1090 | m891n748o375 | cpatel   | Information Technology | South-351   |
| n378o313p469 | OS 3             | Email Client 2 | 2021-12-01    |        1091 |        1091 | n378o313p469 | rtran    | Sales                  | Central-230 |
| o391p779q935 | OS 1             | Email Client 2 | 2021-06-01    |        1092 |        1092 | o391p779q935 | lpark    | Sales                  | West-227    |
| p765q957r699 | OS 2             | Email Client 1 | 2021-06-01    |        1093 |        1093 | p765q957r699 | etargary | Human Resources        | Central-247 |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1094 | NULL         | hhadzic  | Information Technology | Central-463 |
| r194s893t593 | OS 1             | Email Client 2 | 2021-06-01    |        1095 |        1095 | r194s893t593 | glopez   | Information Technology | East-457    |
| s375t538u194 | OS 2             | Email Client 1 | 2021-12-01    |        1096 |        1096 | s375t538u194 | kjeffers | Information Technology | East-419    |
| t363u179v368 | OS 3             | Email Client 2 | 2021-03-01    |        1097 |        1097 | t363u179v368 | jlee     | Human Resources        | South-254   |
| u671v146w618 | OS 1             | Email Client 2 | 2021-09-01    |        1098 |        1098 | u671v146w618 | tarchamb | Sales                  | North-423   |
| v283w690x104 | OS 1             | Email Client 1 | 2021-03-01    |        1099 |        1099 | v283w690x104 | anaser   | Finance                | West-357    |
| w326x611y598 | OS 1             | Email Client 2 | 2021-03-01    |        1100 |        1100 | w326x611y598 | mjin     | Human Resources        | Central-371 |
| x701y250z303 | OS 3             | Email Client 2 | 2021-03-01    |        1101 |        1101 | x701y250z303 | ichowdhu | Human Resources        | East-233    |
| y943z930a241 | OS 1             | Email Client 2 | 2021-09-01    |        1102 |        1102 | y943z930a241 | kselassi | Marketing              | South-378   |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1103 | NULL         | randerss | Marketing              | East-460    |
| a821b452c176 | OS 2             | Email Client 2 | 2021-12-01    |        1104 |        1104 | a821b452c176 | mreed    | Information Technology | West-288    |
| b551c837d758 | OS 3             | Email Client 1 | 2021-03-01    |        1105 |        1105 | b551c837d758 | kmei     | Finance                | Central-232 |
| c597d792e215 | OS 2             | Email Client 1 | 2021-09-01    |        1106 |        1106 | c597d792e215 | jcohen   | Marketing              | South-395   |
| d168e758f876 | OS 2             | Email Client 1 | 2021-09-01    |        1107 |        1107 | d168e758f876 | akajwara | Sales                  | North-471   |
| e113f288g203 | OS 2             | Email Client 2 | 2021-03-01    |        1108 |        1108 | e113f288g203 | jwashing | Human Resources        | North-226   |
| f229g533h679 | OS 2             | Email Client 2 | 2021-03-01    |        1109 |        1109 | f229g533h679 | nlocklea | Sales                  | East-196    |
| g567h376i314 | OS 3             | Email Client 1 | 2021-12-01    |        1110 |        1110 | g567h376i314 | pchaudhu | Sales                  | Central-428 |
| h835i179j862 | OS 2             | Email Client 2 | 2021-06-01    |        1111 |        1111 | h835i179j862 | jlee     | Sales                  | West-309    |
| i772j807k175 | OS 2             | Email Client 1 | 2021-12-01    |        1112 |        1112 | i772j807k175 | ccruz    | Information Technology | South-298   |
| j781k420l510 | OS 1             | Email Client 1 | 2021-09-01    |        1113 |        1113 | j781k420l510 | pjaimes  | Human Resources        | East-366    |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1114 | NULL         | xgreene  | Marketing              | North-335   |
| l552m734n118 | OS 2             | Email Client 2 | 2021-03-01    |        1115 |        1115 | l552m734n118 | esmith2  | Information Technology | Central-204 |
| m272n572o874 | OS 3             | Email Client 2 | 2021-09-01    |        1116 |        1116 | m272n572o874 | nzhao    | Sales                  | South-100   |
| n683o758p820 | OS 2             | Email Client 1 | 2021-12-01    |        1117 |        1117 | n683o758p820 | dahmad   | Sales                  | West-405    |
| o305p208q337 | OS 3             | Email Client 2 | 2021-03-01    |        1118 |        1118 | o305p208q337 | jpark3   | Sales                  | South-329   |
| p164q780r999 | OS 3             | Email Client 2 | 2021-12-01    |        1119 |        1119 | p164q780r999 | omubarak | Sales                  | West-409    |
| q912r119s313 | OS 2             | Email Client 1 | 2021-06-01    |        1120 |        1120 | q912r119s313 | rbradsha | Marketing              | Central-200 |
| r628s557t397 | OS 1             | Email Client 1 | 2021-12-01    |        1121 |        1121 | r628s557t397 | mrojas   | Sales                  | East-288    |
| s103t952u851 | OS 2             | Email Client 2 | 2021-03-01    |        1122 |        1122 | s103t952u851 | btorres  | Finance                | West-319    |
| t479u468v151 | OS 1             | Email Client 1 | 2021-06-01    |        1123 |        1123 | t479u468v151 | ekonya   | Human Resources        | South-445   |
| u340v931w764 | OS 2             | Email Client 2 | 2021-09-01    |        1124 |        1124 | u340v931w764 | claw     | Human Resources        | Central-172 |
| v491w553x421 | OS 2             | Email Client 2 | 2021-03-01    |        1125 |        1125 | v491w553x421 | mrodgers | Marketing              | South-490   |
| w190x708y760 | OS 3             | Email Client 2 | 2021-03-01    |        1126 |        1126 | w190x708y760 | lmiller  | Information Technology | West-296    |
| x127y181z890 | OS 2             | Email Client 1 | 2021-06-01    |        1127 |        1127 | x127y181z890 | jterranc | Information Technology | Central-256 |
| y103z561a649 | OS 2             | Email Client 1 | 2021-03-01    |        1128 |        1128 | y103z561a649 | mpirato  | Human Resources        | West-205    |
| z566a147b347 | OS 1             | Email Client 1 | 2021-12-01    |        1129 |        1129 | z566a147b347 | plopez   | Marketing              | West-326    |
| a317b635c465 | OS 1             | Email Client 2 | 2021-03-01    |        1130 |        1130 | a317b635c465 | tsnow    | Sales                  | Central-451 |
| b265c937d713 | OS 2             | Email Client 1 | 2021-09-01    |        1131 |        1131 | b265c937d713 | asierra  | Information Technology | South-159   |
| c150d982e144 | OS 2             | Email Client 2 | 2021-06-01    |        1132 |        1132 | c150d982e144 | creddy   | Human Resources        | Central-210 |
| d693e351f221 | OS 2             | Email Client 2 | 2021-09-01    |        1133 |        1133 | d693e351f221 | pfrey    | Marketing              | Central-164 |
| e395f616g566 | OS 2             | Email Client 2 | 2021-03-01    |        1134 |        1134 | e395f616g566 | akhatri  | Human Resources        | West-159    |
| f934g229h883 | OS 2             | Email Client 2 | 2021-03-01    |        1135 |        1135 | f934g229h883 | khamamot | Information Technology | East-186    |
| g299h520i457 | OS 2             | Email Client 1 | 2021-09-01    |        1136 |        1136 | g299h520i457 | jhawes   | Finance                | West-416    |
| h165i539j638 | OS 3             | Email Client 1 | 2021-03-01    |        1137 |        1137 | h165i539j638 | mwood    | Human Resources        | South-166   |
| i671j355k725 | OS 2             | Email Client 2 | 2021-03-01    |        1138 |        1138 | i671j355k725 | sromero  | Finance                | South-329   |
| j637k986l199 | OS 2             | Email Client 1 | 2021-06-01    |        1139 |        1139 | j637k986l199 | emorton  | Human Resources        | North-300   |
| k982l199m839 | OS 2             | Email Client 2 | 2021-03-01    |        1140 |        1140 | k982l199m839 | apatel2  | Human Resources        | East-385    |
| l282m821n717 | OS 1             | Email Client 1 | 2021-12-01    |        1141 |        1141 | l282m821n717 | cochuba  | Human Resources        | South-282   |
| m674n127o823 | OS 3             | Email Client 2 | 2021-03-01    |        1142 |        1142 | m674n127o823 | lsilva   | Finance                | East-440    |
| n704o364p471 | OS 2             | Email Client 2 | 2021-09-01    |        1143 |        1143 | n704o364p471 | sstark   | Information Technology | East-282    |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1144 | NULL         | erobinso | Finance                | Central-266 |
| p752q137r169 | OS 3             | Email Client 2 | 2021-12-01    |        1145 |        1145 | p752q137r169 | msosa    | Human Resources        | South-345   |
| q228r135s755 | OS 1             | Email Client 2 | 2021-09-01    |        1146 |        1146 | q228r135s755 | ulemere  | Human Resources        | Central-171 |
| r454s225t299 | OS 2             | Email Client 2 | 2021-12-01    |        1147 |        1147 | r454s225t299 | tvega    | Finance                | West-177    |
| s328t505u907 | OS 3             | Email Client 2 | 2021-12-01    |        1148 |        1148 | s328t505u907 | dharvey  | Finance                | South-181   |
| t709u492v884 | OS 1             | Email Client 2 | 2021-06-01    |        1149 |        1149 | t709u492v884 | klim     | Information Technology | South-411   |
| u554v512w139 | OS 1             | Email Client 1 | 2021-03-01    |        1150 |        1150 | u554v512w139 | lmarin   | Marketing              | Central-364 |
| v852w513x954 | OS 2             | Email Client 1 | 2021-12-01    |        1151 |        1151 | v852w513x954 | sshah    | Human Resources        | North-272   |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1152 | NULL         | nwilliam | Marketing              | Central-170 |
| x677y330z296 | OS 1             | Email Client 2 | 2021-06-01    |        1153 |        1153 | x677y330z296 | ncardena | Marketing              | Central-363 |
| y765z123a548 | OS 2             | Email Client 2 | 2021-06-01    |        1154 |        1154 | y765z123a548 | obryand  | Marketing              | North-182   |
| z942a966b589 | OS 3             | Email Client 1 | 2021-09-01    |        1155 |        1155 | z942a966b589 | zjones   | Human Resources        | East-122    |
| a184b775c707 | OS 1             | Email Client 1 | 2021-09-01    |        1156 |        1156 | a184b775c707 | dellery  | Marketing              | East-417    |
| b264c773d977 | OS 2             | Email Client 2 | 2021-03-01    |        1157 |        1157 | b264c773d977 | lstein   | Human Resources        | Central-343 |
| c406d877e950 | OS 2             | Email Client 1 | 2021-06-01    |        1158 |        1158 | c406d877e950 | bnaser   | Human Resources        | Central-243 |
| d881e710f732 | OS 3             | Email Client 2 | 2021-03-01    |        1159 |        1159 | d881e710f732 | jshen    | Finance                | East-193    |
| e127f591g924 | OS 3             | Email Client 2 | 2021-12-01    |        1160 |        1160 | e127f591g924 | spham    | Marketing              | West-353    |
| f951g408h866 | OS 1             | Email Client 2 | 2021-03-01    |        1161 |        1161 | f951g408h866 | jjenkins | Information Technology | East-433    |
| g953h643i618 | OS 2             | Email Client 2 | 2021-06-01    |        1162 |        1162 | g953h643i618 | iortega  | Information Technology | West-381    |
| h679i515j339 | OS 3             | Email Client 1 | 2021-09-01    |        1163 |        1163 | h679i515j339 | cwilliam | Marketing              | East-216    |
| i682j513k442 | OS 3             | Email Client 1 | 2021-03-01    |        1164 |        1164 | i682j513k442 | fsmeltz  | Finance                | North-163   |
| j713k893l832 | OS 2             | Email Client 1 | 2021-03-01    |        1165 |        1165 | j713k893l832 | nwords   | Marketing              | South-128   |
| k495l234m708 | OS 1             | Email Client 2 | 2021-09-01    |        1166 |        1166 | k495l234m708 | nyoung   | Marketing              | Central-397 |
| l738m922n515 | OS 1             | Email Client 1 | 2021-03-01    |        1167 |        1167 | l738m922n515 | tblackwe | Marketing              | North-443   |
| m778n920o426 | OS 2             | Email Client 2 | 2021-06-01    |        1168 |        1168 | m778n920o426 | jharris  | Information Technology | South-305   |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1169 | NULL         | mmitchel | Sales                  | Central-250 |
| o156p302q359 | OS 2             | Email Client 1 | 2021-03-01    |        1170 |        1170 | o156p302q359 | lalvarez | Human Resources        | North-278   |
| p834q238r776 | OS 3             | Email Client 2 | 2021-03-01    |        1171 |        1171 | p834q238r776 | plopez2  | Information Technology | Central-496 |
| q372r826s628 | OS 2             | Email Client 1 | 2021-09-01    |        1172 |        1172 | q372r826s628 | akhan    | Marketing              | Central-360 |
| r537s849t690 | OS 1             | Email Client 2 | 2021-09-01    |        1173 |        1173 | r537s849t690 | ialcazar | Marketing              | South-429   |
| s371t911u987 | OS 1             | Email Client 2 | 2021-06-01    |        1174 |        1174 | s371t911u987 | eortiz   | Finance                | North-428   |
| t959u687v394 | OS 2             | Email Client 2 | 2021-06-01    |        1175 |        1175 | t959u687v394 | jclark2  | Finance                | North-194   |
| u849v569w521 | OS 2             | Email Client 1 | 2021-06-01    |        1176 |        1176 | u849v569w521 | nliu     | Sales                  | West-220    |
| v691w183x928 | OS 1             | Email Client 2 | 2021-09-01    |        1177 |        1177 | v691w183x928 | aezra    | Human Resources        | East-190    |
| w986x187y885 | OS 3             | Email Client 2 | 2021-12-01    |        1178 |        1178 | w986x187y885 | nlannist | Marketing              | North-196   |
| x174y934z376 | OS 1             | Email Client 2 | 2021-06-01    |        1179 |        1179 | x174y934z376 | asalas   | Human Resources        | North-445   |
| y131z211a578 | OS 2             | Email Client 1 | 2021-03-01    |        1180 |        1180 | y131z211a578 | medwards | Human Resources        | Central-340 |
| z803a233b718 | OS 1             | Email Client 2 | 2021-12-01    |        1181 |        1181 | z803a233b718 | sessa    | Finance                | South-207   |
| a305b818c708 | OS 3             | Email Client 2 | 2021-06-01    |        1182 |        1182 | a305b818c708 | mmora    | Information Technology | Central-250 |
| b566c710d544 | OS 1             | Email Client 1 | 2021-06-01    |        1183 |        1183 | b566c710d544 | lquraish | Human Resources        | East-400    |
| c986d200e170 | OS 2             | Email Client 2 | 2021-09-01    |        1184 |        1184 | c986d200e170 | ptsosie  | Human Resources        | Central-247 |
| d790e839f461 | OS 1             | Email Client 1 | 2021-06-01    |        1185 |        1185 | d790e839f461 | revens   | Sales                  | North-330   |
| e281f433g404 | OS 1             | Email Client 2 | 2021-12-01    |        1186 |        1186 | e281f433g404 | sacosta  | Sales                  | North-460   |
| f963g637h851 | OS 1             | Email Client 1 | 2021-06-01    |        1187 |        1187 | f963g637h851 | bbode    | Finance                | East-351    |
| g164h566i795 | OS 1             | Email Client 1 | 2021-09-01    |        1188 |        1188 | g164h566i795 | noshiro  | Finance                | West-252    |
| h784i120j837 | OS 3             | Email Client 2 | 2021-12-01    |        1189 |        1189 | h784i120j837 | slefkowi | Human Resources        | West-342    |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1190 | NULL         | kcarter  | Marketing              | Central-270 |
| NULL         | NULL             | NULL           | NULL          |        NULL |        1191 | NULL         | shakimi  | Marketing              | Central-366 |
| k570l183m949 | OS 3             | Email Client 1 | 2021-12-01    |        1192 |        1192 | k570l183m949 | rlaghari | Information Technology | East-138    |
| l186m618n319 | OS 1             | Email Client 2 | 2021-12-01    |        1193 |        1193 | l186m618n319 | esantiag | Information Technology | Central-300 |
| m340n287o441 | OS 2             | Email Client 2 | 2021-09-01    |        1194 |        1194 | m340n287o441 | zwarren  | Human Resources        | West-212    |
| n516o853p957 | OS 1             | Email Client 1 | 2021-09-01    |        1195 |        1195 | n516o853p957 | orainier | Finance                | East-346    |
| o225p357q829 | OS 3             | Email Client 1 | 2021-12-01    |        1196 |        1196 | o225p357q829 | sshah2   | Information Technology | South-385   |
| p791q114r509 | OS 2             | Email Client 1 | 2021-09-01    |        1197 |        1197 | p791q114r509 | aabara   | Information Technology | North-159   |
| q308r573s459 | OS 3             | Email Client 1 | 2021-03-01    |        1198 |        1198 | q308r573s459 | jmartine | Marketing              | South-117   |
| r520s571t459 | OS 2             | Email Client 2 | 2021-03-01    |        1199 |        1199 | r520s571t459 | areyes   | Human Resources        | East-100    |
+--------------+------------------+----------------+---------------+-------------+-------------+--------------+----------+------------------------+-------------+
200 rows in set (0.002 sec)

Step 3: Retrieve data on login attempts by running this query to perform an inner join between the employees and log_in_attempts tables.
    
MariaDB [organization]> SELECT *
    -> FROM employees
    -> INNER JOIN log_in_attempts ON employees.username = log_in_attempts.username;
| employee_id | device_id    | username | department             | office      | event_id | username | login_date | login_time | country | ip_address      | success |
+-------------+--------------+----------+------------------------+-------------+----------+----------+------------+------------+---------+-----------------+---------+
|        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |        1 | jrafael  | 2022-05-09 | 04:56:27   | CAN     | 192.168.243.140 |       0 |
|        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |        2 | apatel   | 2022-05-10 | 20:27:27   | CAN     | 192.168.205.12  |       0 |
|        1031 | f419g188h578 | dkot     | Marketing              | West-408    |        3 | dkot     | 2022-05-09 | 06:47:41   | USA     | 192.168.151.162 |       0 |
|        1031 | f419g188h578 | dkot     | Marketing              | West-408    |        4 | dkot     | 2022-05-08 | 02:00:39   | USA     | 192.168.178.71  |       0 |
|        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |        5 | jrafael  | 2022-05-11 | 03:05:59   | CANADA  | 192.168.86.232  |       0 |
|        1020 | u899v381w363 | arutley  | Marketing              | South-351   |        6 | arutley  | 2022-05-12 | 17:00:59   | MEXICO  | 192.168.3.24    |       0 |
|        1004 | e218f877g788 | eraab    | Human Resources        | South-127   |        7 | eraab    | 2022-05-11 | 01:45:14   | CAN     | 192.168.170.243 |       0 |
|        1035 | j236k303l245 | bisles   | Sales                  | South-171   |        8 | bisles   | 2022-05-08 | 01:30:17   | US      | 192.168.119.173 |       0 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |        9 | yappiah  | 2022-05-11 | 13:47:29   | MEX     | 192.168.59.136  |       0 |
|        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |       10 | jrafael  | 2022-05-12 | 09:33:19   | CANADA  | 192.168.228.221 |       0 |
|        1003 | d394e816f943 | sgilmore | Finance                | South-153   |       11 | sgilmore | 2022-05-11 | 10:16:29   | CANADA  | 192.168.140.81  |       0 |
|        1031 | f419g188h578 | dkot     | Marketing              | West-408    |       12 | dkot     | 2022-05-08 | 09:11:34   | USA     | 192.168.100.158 |       0 |
|        1027 | b806c503d354 | mrah     | Marketing              | West-246    |       13 | mrah     | 2022-05-11 | 09:29:34   | USA     | 192.168.246.135 |       0 |
|        1016 | q793r736s288 | sbaelish | Human Resources        | North-229   |       14 | sbaelish | 2022-05-10 | 10:20:18   | US      | 192.168.16.99   |       0 |
|        1043 | NULL         | lyamamot | Information Technology | East-354    |       15 | lyamamot | 2022-05-09 | 17:17:26   | USA     | 192.168.183.51  |       0 |
|        1019 | t815u205v470 | mcouliba | Information Technology | North-108   |       16 | mcouliba | 2022-05-11 | 06:44:22   | CAN     | 192.168.172.189 |       0 |
|        1045 | t567u844v434 | pwashing | Finance                | East-115    |       17 | pwashing | 2022-05-11 | 02:33:02   | USA     | 192.168.81.89   |       0 |
|        1045 | t567u844v434 | pwashing | Finance                | East-115    |       18 | pwashing | 2022-05-11 | 19:28:50   | US      | 192.168.66.142  |       0 |
|        1025 | z381a365b233 | jhill    | Sales                  | North-115   |       19 | jhill    | 2022-05-12 | 13:09:04   | US      | 192.168.142.245 |       0 |
|        1002 | c116d593e558 | tshah    | Human Resources        | North-434   |       20 | tshah    | 2022-05-12 | 18:56:36   | MEXICO  | 192.168.109.50  |       0 |
|        1024 | y976z753a267 | iuduike  | Sales                  | South-215   |       21 | iuduike  | 2022-05-11 | 17:50:00   | US      | 192.168.131.147 |       0 |
|        1036 | k550l533m205 | rjensen  | Marketing              | Central-239 |       22 | rjensen  | 2022-05-11 | 00:59:26   | MEX     | 192.168.213.128 |       0 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |       23 | yappiah  | 2022-05-10 | 18:11:53   | MEXICO  | 192.168.200.48  |       0 |
|        1022 | w237x430y567 | arusso   | Finance                | West-465    |       24 | arusso   | 2022-05-09 | 06:49:39   | MEXICO  | 192.168.171.192 |       0 |
|        1016 | q793r736s288 | sbaelish | Human Resources        | North-229   |       25 | sbaelish | 2022-05-09 | 07:04:02   | US      | 192.168.33.137  |       0 |
|        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |       26 | apatel   | 2022-05-08 | 17:27:00   | CANADA  | 192.168.123.105 |       0 |
|        1023 | x253y759z103 | aalonso  | Information Technology | West-393    |       27 | aalonso  | 2022-05-10 | 01:55:35   | MEX     | 192.168.103.210 |       0 |
|        1028 | c603d749e374 | aestrada | Human Resources        | West-121    |       28 | aestrada | 2022-05-09 | 19:28:12   | MEXICO  | 192.168.27.57   |       0 |
|        1035 | j236k303l245 | bisles   | Sales                  | South-171   |       29 | bisles   | 2022-05-11 | 01:21:22   | US      | 192.168.85.186  |       0 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |       30 | yappiah  | 2022-05-09 | 03:22:22   | MEX     | 192.168.124.48  |       0 |
|        1042 | q175r338s833 | acook    | Human Resources        | West-381    |       31 | acook    | 2022-05-12 | 17:36:45   | CANADA  | 192.168.58.232  |       0 |
|        1042 | q175r338s833 | acook    | Human Resources        | West-381    |       32 | acook    | 2022-05-09 | 02:52:02   | CANADA  | 192.168.142.239 |       0 |
|        1013 | n205o559p243 | zbernal  | Information Technology | South-229   |       33 | zbernal  | 2022-05-11 | 02:52:10   | US      | 192.168.72.59   |       0 |
|        1011 | l748m120n401 | drosas   | Sales                  | South-292   |       34 | drosas   | 2022-05-11 | 21:02:04   | US      | 192.168.45.93   |       0 |
|        1002 | c116d593e558 | tshah    | Human Resources        | North-434   |       35 | tshah    | 2022-05-10 | 15:26:08   | MEX     | 192.168.92.147  |       0 |
|        1014 | NULL         | asundara | Information Technology | West-219    |       36 | asundara | 2022-05-08 | 09:00:42   | US      | 192.168.78.151  |       0 |
|        1004 | e218f877g788 | eraab    | Human Resources        | South-127   |       37 | eraab    | 2022-05-10 | 06:03:41   | CANADA  | 192.168.152.148 |       0 |
|        1016 | q793r736s288 | sbaelish | Human Resources        | North-229   |       38 | sbaelish | 2022-05-09 | 14:40:01   | USA     | 192.168.60.42   |       0 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |       39 | yappiah  | 2022-05-09 | 07:56:40   | MEXICO  | 192.168.57.115  |       0 |
|        1023 | x253y759z103 | aalonso  | Information Technology | West-393    |       40 | aalonso  | 2022-05-12 | 15:15:46   | MEX     | 192.168.174.186 |       0 |
|        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |       41 | apatel   | 2022-05-10 | 17:39:42   | CANADA  | 192.168.46.207  |       0 |
|        1041 | p929q222r778 | cgriffin | Sales                  | North-208   |       42 | cgriffin | 2022-05-09 | 23:04:05   | US      | 192.168.4.157   |       0 |
|        1019 | t815u205v470 | mcouliba | Information Technology | North-108   |       43 | mcouliba | 2022-05-08 | 02:35:34   | CANADA  | 192.168.16.208  |       0 |
|        1046 | u429v921w138 | daquino  | Finance                | West-280    |       44 | daquino  | 2022-05-08 | 07:02:35   | CANADA  | 192.168.168.144 |       0 |
|        1037 | l693m585n528 | dtanaka  | Information Technology | West-468    |       45 | dtanaka  | 2022-05-11 | 10:28:54   | US      | 192.168.223.157 |       0 |
|        1004 | e218f877g788 | eraab    | Human Resources        | South-127   |       46 | eraab    | 2022-05-11 | 11:29:27   | CAN     | 192.168.24.12   |       0 |
|        1031 | f419g188h578 | dkot     | Marketing              | West-408    |       47 | dkot     | 2022-05-08 | 05:06:45   | US      | 192.168.233.24  |       0 |
|        1014 | NULL         | asundara | Information Technology | West-219    |       48 | asundara | 2022-05-11 | 03:18:45   | USA     | 192.168.72.10   |       0 |
|        1014 | NULL         | asundara | Information Technology | West-219    |       49 | asundara | 2022-05-08 | 14:00:01   | US      | 192.168.173.213 |       0 |
|        1017 | r550s824t230 | jclark   | Finance                | North-188   |       50 | jclark   | 2022-05-10 | 10:48:02   | CANADA  | 192.168.174.117 |       0 |
|        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |       51 | jrafael  | 2022-05-10 | 22:40:01   | CANADA  | 192.168.148.115 |       0 |
|        1039 | n253o917p623 | cjackson | Sales                  | East-378    |       52 | cjackson | 2022-05-10 | 22:07:07   | CAN     | 192.168.58.57   |       0 |
|        1012 | m756n668o146 | nmason   | Information Technology | North-160   |       53 | nmason   | 2022-05-08 | 11:51:38   | CAN     | 192.168.133.188 |       0 |
|        1049 | NULL         | jreckley | Finance                | Central-295 |       54 | jreckley | 2022-05-10 | 19:31:19   | MEXICO  | 192.168.167.152 |       0 |
|        1010 | k242l212m542 | jlansky  | Finance                | South-109   |       55 | jlansky  | 2022-05-11 | 05:15:34   | US      | 192.168.6.170   |       0 |
|        1042 | q175r338s833 | acook    | Human Resources        | West-381    |       56 | acook    | 2022-05-08 | 04:56:30   | CAN     | 192.168.209.130 |       0 |
|        1014 | NULL         | asundara | Information Technology | West-219    |       57 | asundara | 2022-05-12 | 21:13:02   | US      | 192.168.211.201 |       0 |
|        1029 | d336e475f676 | ivelasco | Finance                | East-156    |       58 | ivelasco | 2022-05-09 | 17:20:54   | CAN     | 192.168.57.162  |       0 |
|        1036 | k550l533m205 | rjensen  | Marketing              | Central-239 |       59 | rjensen  | 2022-05-12 | 04:52:08   | MEX     | 192.168.54.140  |       0 |
|        1042 | q175r338s833 | acook    | Human Resources        | West-381    |       60 | acook    | 2022-05-11 | 21:46:00   | CAN     | 192.168.54.45   |       0 |
|        1037 | l693m585n528 | dtanaka  | Information Technology | West-468    |       61 | dtanaka  | 2022-05-09 | 09:45:18   | USA     | 192.168.98.221  |       0 |
|        1008 | i858j583k571 | abernard | Finance                | South-170   |       62 | abernard | 2022-05-10 | 10:19:57   | MEXICO  | 192.168.156.224 |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |       63 | tmitchel | 2022-05-11 | 14:13:41   | MEXICO  | 192.168.110.131 |       0 |
|        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |       64 | apatel   | 2022-05-10 | 22:00:09   | CANADA  | 192.168.172.71  |       0 |
|        1023 | x253y759z103 | aalonso  | Information Technology | West-393    |       65 | aalonso  | 2022-05-09 | 23:42:12   | MEX     | 192.168.52.37   |       0 |
|        1028 | c603d749e374 | aestrada | Human Resources        | West-121    |       66 | aestrada | 2022-05-08 | 21:58:32   | MEX     | 192.168.67.223  |       0 |
|        1008 | i858j583k571 | abernard | Finance                | South-170   |       67 | abernard | 2022-05-09 | 11:53:41   | MEX     | 192.168.118.29  |       0 |
|        1027 | b806c503d354 | mrah     | Marketing              | West-246    |       68 | mrah     | 2022-05-08 | 17:16:13   | US      | 192.168.42.248  |       0 |
|        1007 | h174i497j413 | wjaffrey | Finance                | North-406   |       69 | wjaffrey | 2022-05-11 | 19:55:15   | USA     | 192.168.100.17  |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |       70 | tmitchel | 2022-05-09 | 10:55:17   | MEXICO  | 192.168.87.199  |       0 |
|        1019 | t815u205v470 | mcouliba | Information Technology | North-108   |       71 | mcouliba | 2022-05-09 | 06:57:42   | CAN     | 192.168.55.169  |       0 |
|        1006 | g329h357i597 | alevitsk | Information Technology | East-320    |       72 | alevitsk | 2022-05-08 | 12:09:10   | CANADA  | 192.168.139.176 |       0 |
|        1013 | n205o559p243 | zbernal  | Information Technology | South-229   |       73 | zbernal  | 2022-05-10 | 17:46:45   | USA     | 192.168.80.46   |       0 |
|        1012 | m756n668o146 | nmason   | Information Technology | North-160   |       74 | nmason   | 2022-05-11 | 15:55:48   | CAN     | 192.168.162.2   |       0 |
|        1013 | n205o559p243 | zbernal  | Information Technology | South-229   |       75 | zbernal  | 2022-05-12 | 04:14:35   | US      | 192.168.188.63  |       0 |
|        1001 | b239c825d303 | bmoreno  | Marketing              | Central-276 |       76 | bmoreno  | 2022-05-10 | 10:53:55   | CAN     | 192.168.61.200  |       0 |
|        1007 | h174i497j413 | wjaffrey | Finance                | North-406   |       77 | wjaffrey | 2022-05-12 | 08:37:59   | US      | 192.168.106.183 |       0 |
|        1021 | v200w121x977 | smartell | Information Technology | South-138   |       78 | smartell | 2022-05-10 | 05:55:53   | MEX     | 192.168.41.88   |       0 |
|        1008 | i858j583k571 | abernard | Finance                | South-170   |       79 | abernard | 2022-05-09 | 11:41:15   | MEX     | 192.168.158.170 |       0 |
|        1039 | n253o917p623 | cjackson | Sales                  | East-378    |       80 | cjackson | 2022-05-08 | 02:18:10   | CANADA  | 192.168.33.140  |       0 |
|        1023 | x253y759z103 | aalonso  | Information Technology | West-393    |       81 | aalonso  | 2022-05-11 | 12:50:38   | MEX     | 192.168.152.43  |       0 |
|        1008 | i858j583k571 | abernard | Finance                | South-170   |       82 | abernard | 2022-05-12 | 23:38:46   | MEX     | 192.168.234.49  |       0 |
|        1009 | NULL         | lrodriqu | Sales                  | South-134   |       83 | lrodriqu | 2022-05-08 | 08:10:23   | USA     | 192.168.67.69   |       0 |
|        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |       84 | jrafael  | 2022-05-11 | 09:26:17   | CAN     | 192.168.243.203 |       0 |
|        1040 | o783p832q294 | dtarly   | Human Resources        | East-237    |       85 | dtarly   | 2022-05-11 | 17:35:28   | MEX     | 192.168.254.75  |       0 |
|        1037 | l693m585n528 | dtanaka  | Information Technology | West-468    |       86 | dtanaka  | 2022-05-10 | 10:22:20   | USA     | 192.168.197.135 |       0 |
|        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |       87 | apatel   | 2022-05-08 | 22:38:31   | CANADA  | 192.168.132.153 |       0 |
|        1028 | c603d749e374 | aestrada | Human Resources        | West-121    |       88 | aestrada | 2022-05-12 | 11:21:50   | MEXICO  | 192.168.153.77  |       0 |
|        1031 | f419g188h578 | dkot     | Marketing              | West-408    |       89 | dkot     | 2022-05-12 | 10:52:00   | USA     | 192.168.128.75  |       0 |
|        1005 | f551g340h864 | gesparza | Human Resources        | South-366   |       90 | gesparza | 2022-05-09 | 00:49:05   | CANADA  | 192.168.87.201  |       0 |
|        1025 | z381a365b233 | jhill    | Sales                  | North-115   |       91 | jhill    | 2022-05-11 | 17:46:47   | US      | 192.168.172.74  |       0 |
|        1045 | t567u844v434 | pwashing | Finance                | East-115    |       92 | pwashing | 2022-05-08 | 00:36:12   | US      | 192.168.247.219 |       0 |
|        1049 | NULL         | jreckley | Finance                | Central-295 |       93 | jreckley | 2022-05-12 | 04:31:20   | MEX     | 192.168.108.24  |       0 |
|        1044 | s429t157u159 | tbarnes  | Finance                | West-415    |       94 | tbarnes  | 2022-05-10 | 03:37:10   | MEX     | 192.168.74.202  |       0 |
|        1040 | o783p832q294 | dtarly   | Human Resources        | East-237    |       95 | dtarly   | 2022-05-12 | 11:23:42   | MEX     | 192.168.203.198 |       0 |
|        1029 | d336e475f676 | ivelasco | Finance                | East-156    |       96 | ivelasco | 2022-05-09 | 22:36:36   | CAN     | 192.168.84.194  |       0 |
|        1049 | NULL         | jreckley | Finance                | Central-295 |       97 | jreckley | 2022-05-09 | 02:49:23   | MEXICO  | 192.168.32.231  |       0 |
|        1005 | f551g340h864 | gesparza | Human Resources        | South-366   |       98 | gesparza | 2022-05-11 | 06:30:14   | CANADA  | 192.168.148.80  |       0 |
|        1019 | t815u205v470 | mcouliba | Information Technology | North-108   |       99 | mcouliba | 2022-05-12 | 11:54:14   | CANADA  | 192.168.218.160 |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      100 | tmitchel | 2022-05-12 | 16:02:03   | MEXICO  | 192.168.97.225  |       0 |
|        1016 | q793r736s288 | sbaelish | Human Resources        | North-229   |      101 | sbaelish | 2022-05-08 | 12:01:22   | US      | 192.168.145.158 |       0 |
|        1049 | NULL         | jreckley | Finance                | Central-295 |      102 | jreckley | 2022-05-09 | 16:51:44   | MEX     | 192.168.108.13  |       0 |
|        1025 | z381a365b233 | jhill    | Sales                  | North-115   |      103 | jhill    | 2022-05-11 | 09:10:54   | US      | 192.168.60.153  |       0 |
|        1014 | NULL         | asundara | Information Technology | West-219    |      104 | asundara | 2022-05-11 | 18:38:07   | US      | 192.168.96.200  |       0 |
|        1039 | n253o917p623 | cjackson | Sales                  | East-378    |      105 | cjackson | 2022-05-12 | 19:36:42   | CAN     | 192.168.247.153 |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      106 | tmitchel | 2022-05-12 | 06:15:41   | MEXICO  | 192.168.3.252   |       0 |
|        1035 | j236k303l245 | bisles   | Sales                  | South-171   |      107 | bisles   | 2022-05-12 | 20:25:57   | USA     | 192.168.116.187 |       0 |
|        1046 | u429v921w138 | daquino  | Finance                | West-280    |      108 | daquino  | 2022-05-09 | 21:30:48   | CANADA  | 192.168.15.110  |       0 |
|        1019 | t815u205v470 | mcouliba | Information Technology | North-108   |      109 | mcouliba | 2022-05-10 | 04:43:15   | CANADA  | 192.168.39.246  |       0 |
|        1030 | e391f189g913 | mabadi   | Marketing              | West-375    |      110 | mabadi   | 2022-05-09 | 00:01:54   | USA     | 192.168.90.124  |       0 |
|        1028 | c603d749e374 | aestrada | Human Resources        | West-121    |      111 | aestrada | 2022-05-10 | 22:00:26   | MEXICO  | 192.168.76.27   |       0 |
|        1036 | k550l533m205 | rjensen  | Marketing              | Central-239 |      112 | rjensen  | 2022-05-09 | 09:22:05   | MEX     | 192.168.69.116  |       0 |
|        1005 | f551g340h864 | gesparza | Human Resources        | South-366   |      113 | gesparza | 2022-05-10 | 00:40:00   | CAN     | 192.168.64.133  |       0 |
|        1021 | v200w121x977 | smartell | Information Technology | South-138   |      114 | smartell | 2022-05-10 | 10:51:22   | MEXICO  | 192.168.191.124 |       0 |
|        1029 | d336e475f676 | ivelasco | Finance                | East-156    |      115 | ivelasco | 2022-05-10 | 23:06:01   | CAN     | 192.168.154.1   |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      116 | tmitchel | 2022-05-10 | 20:33:27   | MEXICO  | 192.168.119.26  |       0 |
|        1034 | i679j565k940 | bsand    | Human Resources        | East-484    |      117 | bsand    | 2022-05-08 | 00:19:11   | USA     | 192.168.197.187 |       0 |
|        1021 | v200w121x977 | smartell | Information Technology | South-138   |      118 | smartell | 2022-05-12 | 23:21:31   | MEXICO  | 192.168.173.196 |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      119 | tmitchel | 2022-05-11 | 23:07:13   | MEXICO  | 192.168.110.175 |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      120 | tmitchel | 2022-05-09 | 02:58:17   | MEXICO  | 192.168.134.62  |       0 |
|        1038 | m873n636o225 | btang    | Human Resources        | Central-260 |      121 | btang    | 2022-05-10 | 22:00:36   | US      | 192.168.80.143  |       0 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |      122 | yappiah  | 2022-05-11 | 08:27:25   | MEX     | 192.168.50.45   |       0 |
|        1001 | b239c825d303 | bmoreno  | Marketing              | Central-276 |      123 | bmoreno  | 2022-05-10 | 04:43:30   | CANADA  | 192.168.98.2    |       0 |
|        1014 | NULL         | asundara | Information Technology | West-219    |      124 | asundara | 2022-05-12 | 10:51:21   | USA     | 192.168.136.29  |       0 |
|        1035 | j236k303l245 | bisles   | Sales                  | South-171   |      125 | bisles   | 2022-05-11 | 08:36:19   | US      | 192.168.74.9    |       0 |
|        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |      126 | jrafael  | 2022-05-12 | 18:47:52   | CAN     | 192.168.22.16   |       0 |
|        1018 | s310t540u653 | abellmas | Finance                | North-403   |      127 | abellmas | 2022-05-09 | 21:20:51   | CANADA  | 192.168.70.122  |       0 |
|        1017 | r550s824t230 | jclark   | Finance                | North-188   |      128 | jclark   | 2022-05-09 | 10:45:59   | CANADA  | 192.168.122.169 |       0 |
|        1011 | l748m120n401 | drosas   | Sales                  | South-292   |      129 | drosas   | 2022-05-12 | 15:39:40   | USA     | 192.168.152.200 |       0 |
|        1027 | b806c503d354 | mrah     | Marketing              | West-246    |      130 | mrah     | 2022-05-11 | 02:54:21   | USA     | 192.168.102.147 |       0 |
|        1035 | j236k303l245 | bisles   | Sales                  | South-171   |      131 | bisles   | 2022-05-09 | 20:03:55   | US      | 192.168.113.171 |       0 |
|        1036 | k550l533m205 | rjensen  | Marketing              | Central-239 |      132 | rjensen  | 2022-05-12 | 23:26:03   | MEX     | 192.168.9.166   |       0 |
|        1014 | NULL         | asundara | Information Technology | West-219    |      133 | asundara | 2022-05-12 | 05:57:04   | USA     | 192.168.6.9     |       0 |
|        1024 | y976z753a267 | iuduike  | Sales                  | South-215   |      134 | iuduike  | 2022-05-09 | 06:46:40   | USA     | 192.168.22.115  |       0 |
|        1034 | i679j565k940 | bsand    | Human Resources        | East-484    |      135 | bsand    | 2022-05-09 | 14:06:33   | US      | 192.168.91.238  |       0 |
|        1030 | e391f189g913 | mabadi   | Marketing              | West-375    |      136 | mabadi   | 2022-05-10 | 06:56:44   | US      | 192.168.214.234 |       0 |
|        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |      137 | jrafael  | 2022-05-12 | 02:42:37   | CAN     | 192.168.186.176 |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      138 | tmitchel | 2022-05-10 | 12:38:33   | MEXICO  | 192.168.216.96  |       0 |
|        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |      139 | apatel   | 2022-05-11 | 01:54:36   | CAN     | 192.168.95.222  |       0 |
|        1038 | m873n636o225 | btang    | Human Resources        | Central-260 |      140 | btang    | 2022-05-10 | 13:17:29   | US      | 192.168.249.111 |       0 |
|        1038 | m873n636o225 | btang    | Human Resources        | Central-260 |      141 | btang    | 2022-05-12 | 10:12:03   | USA     | 192.168.82.139  |       0 |
|        1005 | f551g340h864 | gesparza | Human Resources        | South-366   |      142 | gesparza | 2022-05-11 | 06:31:14   | CANADA  | 192.168.117.56  |       0 |
|        1025 | z381a365b233 | jhill    | Sales                  | North-115   |      143 | jhill    | 2022-05-11 | 00:30:22   | USA     | 192.168.189.19  |       0 |
|        1046 | u429v921w138 | daquino  | Finance                | West-280    |      144 | daquino  | 2022-05-09 | 11:09:32   | CANADA  | 192.168.139.9   |       0 |
|        1029 | d336e475f676 | ivelasco | Finance                | East-156    |      145 | ivelasco | 2022-05-08 | 09:06:02   | CANADA  | 192.168.39.196  |       0 |
|        1012 | m756n668o146 | nmason   | Information Technology | North-160   |      146 | nmason   | 2022-05-10 | 02:25:55   | CANADA  | 192.168.37.147  |       0 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |      147 | yappiah  | 2022-05-08 | 06:04:34   | MEX     | 192.168.65.245  |       0 |
|        1046 | u429v921w138 | daquino  | Finance                | West-280    |      148 | daquino  | 2022-05-08 | 06:15:55   | CANADA  | 192.168.135.6   |       0 |
|        1010 | k242l212m542 | jlansky  | Finance                | South-109   |      149 | jlansky  | 2022-05-11 | 01:07:11   | USA     | 192.168.238.42  |       0 |
|        1012 | m756n668o146 | nmason   | Information Technology | North-160   |      150 | nmason   | 2022-05-08 | 14:40:02   | CAN     | 192.168.204.124 |       0 |
|        1030 | e391f189g913 | mabadi   | Marketing              | West-375    |      151 | mabadi   | 2022-05-09 | 16:29:46   | USA     | 192.168.30.225  |       0 |
|        1030 | e391f189g913 | mabadi   | Marketing              | West-375    |      152 | mabadi   | 2022-05-12 | 10:24:43   | USA     | 192.168.96.244  |       0 |
|        1021 | v200w121x977 | smartell | Information Technology | South-138   |      153 | smartell | 2022-05-12 | 13:32:52   | MEXICO  | 192.168.218.219 |       0 |
|        1010 | k242l212m542 | jlansky  | Finance                | South-109   |      154 | jlansky  | 2022-05-12 | 10:57:35   | US      | 192.168.23.63   |       0 |
|        1041 | p929q222r778 | cgriffin | Sales                  | North-208   |      155 | cgriffin | 2022-05-12 | 22:18:42   | USA     | 192.168.236.176 |       0 |
|        1038 | m873n636o225 | btang    | Human Resources        | Central-260 |      156 | btang    | 2022-05-11 | 17:08:51   | USA     | 192.168.243.95  |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      157 | tmitchel | 2022-05-12 | 14:14:54   | MEXICO  | 192.168.179.119 |       0 |
|        1021 | v200w121x977 | smartell | Information Technology | South-138   |      158 | smartell | 2022-05-09 | 19:30:32   | MEXICO  | 192.168.190.178 |       0 |
|        1024 | y976z753a267 | iuduike  | Sales                  | South-215   |      159 | iuduike  | 2022-05-12 | 16:59:50   | USA     | 192.168.220.115 |       0 |
|        1017 | r550s824t230 | jclark   | Finance                | North-188   |      160 | jclark   | 2022-05-10 | 20:49:00   | CANADA  | 192.168.214.49  |       0 |
|        1018 | s310t540u653 | abellmas | Finance                | North-403   |      161 | abellmas | 2022-05-09 | 13:25:50   | CAN     | 192.168.180.205 |       0 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |      162 | yappiah  | 2022-05-09 | 04:51:22   | MEXICO  | 192.168.162.100 |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      163 | tmitchel | 2022-05-08 | 09:21:16   | MEX     | 192.168.119.29  |       0 |
|        1017 | r550s824t230 | jclark   | Finance                | North-188   |      164 | jclark   | 2022-05-12 | 21:15:52   | CAN     | 192.168.18.34   |       0 |
|        1049 | NULL         | jreckley | Finance                | Central-295 |      165 | jreckley | 2022-05-08 | 15:28:43   | MEXICO  | 192.168.34.193  |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      166 | tmitchel | 2022-05-10 | 05:45:16   | MEX     | 192.168.80.129  |       0 |
|        1017 | r550s824t230 | jclark   | Finance                | North-188   |      167 | jclark   | 2022-05-12 | 15:47:45   | CAN     | 192.168.146.51  |       0 |
|        1010 | k242l212m542 | jlansky  | Finance                | South-109   |      168 | jlansky  | 2022-05-08 | 13:25:42   | USA     | 192.168.210.94  |       0 |
|        1006 | g329h357i597 | alevitsk | Information Technology | East-320    |      169 | alevitsk | 2022-05-08 | 08:10:43   | CANADA  | 192.168.210.228 |       0 |
|        1016 | q793r736s288 | sbaelish | Human Resources        | North-229   |      170 | sbaelish | 2022-05-09 | 16:43:18   | USA     | 192.168.65.113  |       0 |
|        1011 | l748m120n401 | drosas   | Sales                  | South-292   |      171 | drosas   | 2022-05-10 | 16:32:55   | USA     | 192.168.92.218  |       0 |
|        1030 | e391f189g913 | mabadi   | Marketing              | West-375    |      172 | mabadi   | 2022-05-08 | 08:06:50   | US      | 192.168.180.41  |       0 |
|        1014 | NULL         | asundara | Information Technology | West-219    |      173 | asundara | 2022-05-12 | 23:17:52   | US      | 192.168.58.217  |       0 |
|        1043 | NULL         | lyamamot | Information Technology | East-354    |      174 | lyamamot | 2022-05-10 | 12:26:27   | US      | 192.168.228.122 |       0 |
|        1025 | z381a365b233 | jhill    | Sales                  | North-115   |      175 | jhill    | 2022-05-10 | 00:17:09   | USA     | 192.168.130.218 |       0 |
|        1047 | v109w587x644 | cward    | Finance                | West-373    |      176 | cward    | 2022-05-11 | 12:00:02   | MEX     | 192.168.133.88  |       0 |
|        1007 | h174i497j413 | wjaffrey | Finance                | North-406   |      177 | wjaffrey | 2022-05-11 | 00:15:55   | USA     | 192.168.144.165 |       0 |
|        1003 | d394e816f943 | sgilmore | Finance                | South-153   |      178 | sgilmore | 2022-05-08 | 12:27:22   | CAN     | 192.168.52.216  |       0 |
|        1017 | r550s824t230 | jclark   | Finance                | North-188   |      179 | jclark   | 2022-05-12 | 04:08:17   | CAN     | 192.168.232.93  |       0 |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |      180 | tmitchel | 2022-05-12 | 14:53:21   | MEX     | 192.168.190.202 |       0 |
|        1018 | s310t540u653 | abellmas | Finance                | North-403   |      181 | abellmas | 2022-05-10 | 13:37:05   | CAN     | 192.168.60.111  |       0 |
|        1043 | NULL         | lyamamot | Information Technology | East-354    |      182 | lyamamot | 2022-05-10 | 06:01:31   | USA     | 192.168.106.52  |       0 |
|        1012 | m756n668o146 | nmason   | Information Technology | North-160   |      183 | nmason   | 2022-05-11 | 05:29:36   | CANADA  | 192.168.137.147 |       0 |
|        1006 | g329h357i597 | alevitsk | Information Technology | East-320    |      184 | alevitsk | 2022-05-08 | 03:09:48   | CAN     | 192.168.33.70   |       0 |
|        1015 | p611q262r945 | jsoto    | Finance                | North-271   |      185 | jsoto    | 2022-05-10 | 13:34:58   | USA     | 192.168.151.91  |       0 |
|        1035 | j236k303l245 | bisles   | Sales                  | South-171   |      186 | bisles   | 2022-05-09 | 04:29:17   | USA     | 192.168.40.72   |       0 |
|        1022 | w237x430y567 | arusso   | Finance                | West-465    |      187 | arusso   | 2022-05-09 | 00:36:26   | MEX     | 192.168.77.137  |       0 |
|        1015 | p611q262r945 | jsoto    | Finance                | North-271   |      188 | jsoto    | 2022-05-11 | 00:39:09   | USA     | 192.168.21.88   |       0 |
|        1012 | m756n668o146 | nmason   | Information Technology | North-160   |      189 | nmason   | 2022-05-08 | 05:37:24   | CANADA  | 192.168.168.117 |       0 |
|        1015 | p611q262r945 | jsoto    | Finance                | North-271   |      190 | jsoto    | 2022-05-09 | 05:09:21   | USA     | 192.168.25.60   |       0 |
|        1039 | n253o917p623 | cjackson | Sales                  | East-378    |      191 | cjackson | 2022-05-08 | 06:46:07   | CANADA  | 192.168.7.187   |       0 |
|        1035 | j236k303l245 | bisles   | Sales                  | South-171   |      192 | bisles   | 2022-05-10 | 08:32:03   | USA     | 192.168.201.40  |       0 |
|        1009 | NULL         | lrodriqu | Sales                  | South-134   |      193 | lrodriqu | 2022-05-08 | 07:11:29   | US      | 192.168.125.240 |       0 |
|        1017 | r550s824t230 | jclark   | Finance                | North-188   |      194 | jclark   | 2022-05-12 | 14:11:04   | CAN     | 192.168.197.247 |       0 |
|        1006 | g329h357i597 | alevitsk | Information Technology | East-320    |      195 | alevitsk | 2022-05-11 | 06:59:13   | CANADA  | 192.168.236.78  |       0 |
|        1042 | q175r338s833 | acook    | Human Resources        | West-381    |      196 | acook    | 2022-05-10 | 09:56:48   | CAN     | 192.168.52.90   |       0 |
|        1015 | p611q262r945 | jsoto    | Finance                | North-271   |      197 | jsoto    | 2022-05-08 | 09:05:09   | US      | 192.168.36.21   |       0 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |      198 | yappiah  | 2022-05-12 | 10:37:22   | MEXICO  | 192.168.103.106 |       0 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |      199 | yappiah  | 2022-05-11 | 19:34:48   | MEXICO  | 192.168.44.232  |       0 |
|        1017 | r550s824t230 | jclark   | Finance                | North-188   |      200 | jclark   | 2022-05-12 | 01:11:45   | CANADA  | 192.168.91.103  |       0 |
+-------------+--------------+----------+------------------------+-------------+----------+----------+------------+------------+---------+-----------------+---------+
200 rows in set (0.015 sec)
