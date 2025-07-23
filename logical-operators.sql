Step 1: Retrieve failed login attempts that occurred after business hours using the AND operator to filter for these specific conditions.
    
MariaDB [organization]> SELECT *
    -> FROM log_in_attempts
    -> WHERE login_time > '18:00' AND success = 0;
+----------+----------+------------+------------+---------+-----------------+---------+
| event_id | username | login_date | login_time | country | ip_address      | success |
+----------+----------+------------+------------+---------+-----------------+---------+
|        2 | apatel   | 2022-05-10 | 20:27:27   | CAN     | 192.168.205.12  |       0 |
|       18 | pwashing | 2022-05-11 | 19:28:50   | US      | 192.168.66.142  |       0 |
|       20 | tshah    | 2022-05-12 | 18:56:36   | MEXICO  | 192.168.109.50  |       0 |
|       28 | aestrada | 2022-05-09 | 19:28:12   | MEXICO  | 192.168.27.57   |       0 |
|       34 | drosas   | 2022-05-11 | 21:02:04   | US      | 192.168.45.93   |       0 |
|       42 | cgriffin | 2022-05-09 | 23:04:05   | US      | 192.168.4.157   |       0 |
|       52 | cjackson | 2022-05-10 | 22:07:07   | CAN     | 192.168.58.57   |       0 |
|       69 | wjaffrey | 2022-05-11 | 19:55:15   | USA     | 192.168.100.17  |       0 |
|       82 | abernard | 2022-05-12 | 23:38:46   | MEX     | 192.168.234.49  |       0 |
|       87 | apatel   | 2022-05-08 | 22:38:31   | CANADA  | 192.168.132.153 |       0 |
|       96 | ivelasco | 2022-05-09 | 22:36:36   | CAN     | 192.168.84.194  |       0 |
|      104 | asundara | 2022-05-11 | 18:38:07   | US      | 192.168.96.200  |       0 |
|      107 | bisles   | 2022-05-12 | 20:25:57   | USA     | 192.168.116.187 |       0 |
|      111 | aestrada | 2022-05-10 | 22:00:26   | MEXICO  | 192.168.76.27   |       0 |
|      127 | abellmas | 2022-05-09 | 21:20:51   | CANADA  | 192.168.70.122  |       0 |
|      131 | bisles   | 2022-05-09 | 20:03:55   | US      | 192.168.113.171 |       0 |
|      155 | cgriffin | 2022-05-12 | 22:18:42   | USA     | 192.168.236.176 |       0 |
|      160 | jclark   | 2022-05-10 | 20:49:00   | CANADA  | 192.168.214.49  |       0 |
|      199 | yappiah  | 2022-05-11 | 19:34:48   | MEXICO  | 192.168.44.232  |       0 |
+----------+----------+------------+------------+---------+-----------------+---------+
19 rows in set (0.274 sec)

Step 2: Retrieve login attempts for specific dates, using the OR operator to find failed login attempts on the selected days.
    
MariaDB [organization]> SELECT *
    -> FROM log_in_attempts
    -> WHERE login_date = '2022-05-08' OR login_date = '2022-05-09';
+----------+----------+------------+------------+---------+-----------------+---------+
| event_id | username | login_date | login_time | country | ip_address      | success |
+----------+----------+------------+------------+---------+-----------------+---------+
|        1 | jrafael  | 2022-05-09 | 04:56:27   | CAN     | 192.168.243.140 |       1 |
|        3 | dkot     | 2022-05-09 | 06:47:41   | USA     | 192.168.151.162 |       1 |
|        4 | dkot     | 2022-05-08 | 02:00:39   | USA     | 192.168.178.71  |       0 |
|        8 | bisles   | 2022-05-08 | 01:30:17   | US      | 192.168.119.173 |       0 |
|       12 | dkot     | 2022-05-08 | 09:11:34   | USA     | 192.168.100.158 |       1 |
|       15 | lyamamot | 2022-05-09 | 17:17:26   | USA     | 192.168.183.51  |       0 |
|       24 | arusso   | 2022-05-09 | 06:49:39   | MEXICO  | 192.168.171.192 |       1 |
|       25 | sbaelish | 2022-05-09 | 07:04:02   | US      | 192.168.33.137  |       1 |
|       26 | apatel   | 2022-05-08 | 17:27:00   | CANADA  | 192.168.123.105 |       1 |
|       28 | aestrada | 2022-05-09 | 19:28:12   | MEXICO  | 192.168.27.57   |       0 |
|       30 | yappiah  | 2022-05-09 | 03:22:22   | MEX     | 192.168.124.48  |       1 |
|       32 | acook    | 2022-05-09 | 02:52:02   | CANADA  | 192.168.142.239 |       0 |
|       36 | asundara | 2022-05-08 | 09:00:42   | US      | 192.168.78.151  |       1 |
|       38 | sbaelish | 2022-05-09 | 14:40:01   | USA     | 192.168.60.42   |       1 |
|       39 | yappiah  | 2022-05-09 | 07:56:40   | MEXICO  | 192.168.57.115  |       1 |
|       42 | cgriffin | 2022-05-09 | 23:04:05   | US      | 192.168.4.157   |       0 |
|       43 | mcouliba | 2022-05-08 | 02:35:34   | CANADA  | 192.168.16.208  |       0 |
|       44 | daquino  | 2022-05-08 | 07:02:35   | CANADA  | 192.168.168.144 |       0 |
|       47 | dkot     | 2022-05-08 | 05:06:45   | US      | 192.168.233.24  |       1 |
|       49 | asundara | 2022-05-08 | 14:00:01   | US      | 192.168.173.213 |       0 |
|       53 | nmason   | 2022-05-08 | 11:51:38   | CAN     | 192.168.133.188 |       1 |
|       56 | acook    | 2022-05-08 | 04:56:30   | CAN     | 192.168.209.130 |       1 |
|       58 | ivelasco | 2022-05-09 | 17:20:54   | CAN     | 192.168.57.162  |       0 |
|       61 | dtanaka  | 2022-05-09 | 09:45:18   | USA     | 192.168.98.221  |       1 |
|       65 | aalonso  | 2022-05-09 | 23:42:12   | MEX     | 192.168.52.37   |       1 |
|       66 | aestrada | 2022-05-08 | 21:58:32   | MEX     | 192.168.67.223  |       1 |
|       67 | abernard | 2022-05-09 | 11:53:41   | MEX     | 192.168.118.29  |       1 |
|       68 | mrah     | 2022-05-08 | 17:16:13   | US      | 192.168.42.248  |       1 |
|       70 | tmitchel | 2022-05-09 | 10:55:17   | MEXICO  | 192.168.87.199  |       1 |
|       71 | mcouliba | 2022-05-09 | 06:57:42   | CAN     | 192.168.55.169  |       0 |
|       72 | alevitsk | 2022-05-08 | 12:09:10   | CANADA  | 192.168.139.176 |       1 |
|       79 | abernard | 2022-05-09 | 11:41:15   | MEX     | 192.168.158.170 |       0 |
|       80 | cjackson | 2022-05-08 | 02:18:10   | CANADA  | 192.168.33.140  |       1 |
|       83 | lrodriqu | 2022-05-08 | 08:10:23   | USA     | 192.168.67.69   |       1 |
|       87 | apatel   | 2022-05-08 | 22:38:31   | CANADA  | 192.168.132.153 |       0 |
|       90 | gesparza | 2022-05-09 | 00:49:05   | CANADA  | 192.168.87.201  |       0 |
|       92 | pwashing | 2022-05-08 | 00:36:12   | US      | 192.168.247.219 |       0 |
|       96 | ivelasco | 2022-05-09 | 22:36:36   | CAN     | 192.168.84.194  |       0 |
|       97 | jreckley | 2022-05-09 | 02:49:23   | MEXICO  | 192.168.32.231  |       1 |
|      101 | sbaelish | 2022-05-08 | 12:01:22   | US      | 192.168.145.158 |       0 |
|      102 | jreckley | 2022-05-09 | 16:51:44   | MEX     | 192.168.108.13  |       1 |
|      108 | daquino  | 2022-05-09 | 21:30:48   | CANADA  | 192.168.15.110  |       1 |
|      110 | mabadi   | 2022-05-09 | 00:01:54   | USA     | 192.168.90.124  |       1 |
|      112 | rjensen  | 2022-05-09 | 09:22:05   | MEX     | 192.168.69.116  |       1 |
|      117 | bsand    | 2022-05-08 | 00:19:11   | USA     | 192.168.197.187 |       0 |
|      120 | tmitchel | 2022-05-09 | 02:58:17   | MEXICO  | 192.168.134.62  |       0 |
|      127 | abellmas | 2022-05-09 | 21:20:51   | CANADA  | 192.168.70.122  |       0 |
|      128 | jclark   | 2022-05-09 | 10:45:59   | CANADA  | 192.168.122.169 |       0 |
|      131 | bisles   | 2022-05-09 | 20:03:55   | US      | 192.168.113.171 |       0 |
|      134 | iuduike  | 2022-05-09 | 06:46:40   | USA     | 192.168.22.115  |       1 |
|      135 | bsand    | 2022-05-09 | 14:06:33   | US      | 192.168.91.238  |       0 |
|      144 | daquino  | 2022-05-09 | 11:09:32   | CANADA  | 192.168.139.9   |       0 |
|      145 | ivelasco | 2022-05-08 | 09:06:02   | CANADA  | 192.168.39.196  |       1 |
|      147 | yappiah  | 2022-05-08 | 06:04:34   | MEX     | 192.168.65.245  |       0 |
|      148 | daquino  | 2022-05-08 | 06:15:55   | CANADA  | 192.168.135.6   |       1 |
|      150 | nmason   | 2022-05-08 | 14:40:02   | CAN     | 192.168.204.124 |       0 |
|      151 | mabadi   | 2022-05-09 | 16:29:46   | USA     | 192.168.30.225  |       1 |
|      158 | smartell | 2022-05-09 | 19:30:32   | MEXICO  | 192.168.190.178 |       1 |
|      161 | abellmas | 2022-05-09 | 13:25:50   | CAN     | 192.168.180.205 |       0 |
|      162 | yappiah  | 2022-05-09 | 04:51:22   | MEXICO  | 192.168.162.100 |       0 |
|      163 | tmitchel | 2022-05-08 | 09:21:16   | MEX     | 192.168.119.29  |       0 |
|      165 | jreckley | 2022-05-08 | 15:28:43   | MEXICO  | 192.168.34.193  |       0 |
|      168 | jlansky  | 2022-05-08 | 13:25:42   | USA     | 192.168.210.94  |       1 |
|      169 | alevitsk | 2022-05-08 | 08:10:43   | CANADA  | 192.168.210.228 |       0 |
|      170 | sbaelish | 2022-05-09 | 16:43:18   | USA     | 192.168.65.113  |       0 |
|      172 | mabadi   | 2022-05-08 | 08:06:50   | US      | 192.168.180.41  |       1 |
|      178 | sgilmore | 2022-05-08 | 12:27:22   | CAN     | 192.168.52.216  |       0 |
|      184 | alevitsk | 2022-05-08 | 03:09:48   | CAN     | 192.168.33.70   |       0 |
|      186 | bisles   | 2022-05-09 | 04:29:17   | USA     | 192.168.40.72   |       0 |
|      187 | arusso   | 2022-05-09 | 00:36:26   | MEX     | 192.168.77.137  |       0 |
|      189 | nmason   | 2022-05-08 | 05:37:24   | CANADA  | 192.168.168.117 |       1 |
|      190 | jsoto    | 2022-05-09 | 05:09:21   | USA     | 192.168.25.60   |       0 |
|      191 | cjackson | 2022-05-08 | 06:46:07   | CANADA  | 192.168.7.187   |       0 |
|      193 | lrodriqu | 2022-05-08 | 07:11:29   | US      | 192.168.125.240 |       0 |
|      197 | jsoto    | 2022-05-08 | 09:05:09   | US      | 192.168.36.21   |       0 |
+----------+----------+------------+------------+---------+-----------------+---------+
75 rows in set (0.009 sec)

Step 3: Get login attempts from locations other than Mexico. Use this query to filter and retrieve attempts that occurred outside of Mexico. 
    
MariaDB [organization]> SELECT *
    -> FROM log_in_attempts
    -> WHERE NOT country LIKE 'MEX%';
+----------+----------+------------+------------+---------+-----------------+---------+
| event_id | username | login_date | login_time | country | ip_address      | success |
+----------+----------+------------+------------+---------+-----------------+---------+
|        1 | jrafael  | 2022-05-09 | 04:56:27   | CAN     | 192.168.243.140 |       1 |
|        2 | apatel   | 2022-05-10 | 20:27:27   | CAN     | 192.168.205.12  |       0 |
|        3 | dkot     | 2022-05-09 | 06:47:41   | USA     | 192.168.151.162 |       1 |
|        4 | dkot     | 2022-05-08 | 02:00:39   | USA     | 192.168.178.71  |       0 |
|        5 | jrafael  | 2022-05-11 | 03:05:59   | CANADA  | 192.168.86.232  |       0 |
|        7 | eraab    | 2022-05-11 | 01:45:14   | CAN     | 192.168.170.243 |       1 |
|        8 | bisles   | 2022-05-08 | 01:30:17   | US      | 192.168.119.173 |       0 |
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
|       21 | iuduike  | 2022-05-11 | 17:50:00   | US      | 192.168.131.147 |       1 |
|       25 | sbaelish | 2022-05-09 | 07:04:02   | US      | 192.168.33.137  |       1 |
|       26 | apatel   | 2022-05-08 | 17:27:00   | CANADA  | 192.168.123.105 |       1 |
|       29 | bisles   | 2022-05-11 | 01:21:22   | US      | 192.168.85.186  |       0 |
|       31 | acook    | 2022-05-12 | 17:36:45   | CANADA  | 192.168.58.232  |       0 |
|       32 | acook    | 2022-05-09 | 02:52:02   | CANADA  | 192.168.142.239 |       0 |
|       33 | zbernal  | 2022-05-11 | 02:52:10   | US      | 192.168.72.59   |       1 |
|       34 | drosas   | 2022-05-11 | 21:02:04   | US      | 192.168.45.93   |       0 |
|       36 | asundara | 2022-05-08 | 09:00:42   | US      | 192.168.78.151  |       1 |
|       37 | eraab    | 2022-05-10 | 06:03:41   | CANADA  | 192.168.152.148 |       0 |
|       38 | sbaelish | 2022-05-09 | 14:40:01   | USA     | 192.168.60.42   |       1 |
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
|       55 | jlansky  | 2022-05-11 | 05:15:34   | US      | 192.168.6.170   |       0 |
|       56 | acook    | 2022-05-08 | 04:56:30   | CAN     | 192.168.209.130 |       1 |
|       57 | asundara | 2022-05-12 | 21:13:02   | US      | 192.168.211.201 |       1 |
|       58 | ivelasco | 2022-05-09 | 17:20:54   | CAN     | 192.168.57.162  |       0 |
|       60 | acook    | 2022-05-11 | 21:46:00   | CAN     | 192.168.54.45   |       1 |
|       61 | dtanaka  | 2022-05-09 | 09:45:18   | USA     | 192.168.98.221  |       1 |
|       64 | apatel   | 2022-05-10 | 22:00:09   | CANADA  | 192.168.172.71  |       1 |
|       68 | mrah     | 2022-05-08 | 17:16:13   | US      | 192.168.42.248  |       1 |
|       69 | wjaffrey | 2022-05-11 | 19:55:15   | USA     | 192.168.100.17  |       0 |
|       71 | mcouliba | 2022-05-09 | 06:57:42   | CAN     | 192.168.55.169  |       0 |
|       72 | alevitsk | 2022-05-08 | 12:09:10   | CANADA  | 192.168.139.176 |       1 |
|       73 | zbernal  | 2022-05-10 | 17:46:45   | USA     | 192.168.80.46   |       0 |
|       74 | nmason   | 2022-05-11 | 15:55:48   | CAN     | 192.168.162.2   |       1 |
|       75 | zbernal  | 2022-05-12 | 04:14:35   | US      | 192.168.188.63  |       1 |
|       76 | bmoreno  | 2022-05-10 | 10:53:55   | CAN     | 192.168.61.200  |       0 |
|       77 | wjaffrey | 2022-05-12 | 08:37:59   | US      | 192.168.106.183 |       1 |
|       80 | cjackson | 2022-05-08 | 02:18:10   | CANADA  | 192.168.33.140  |       1 |
|       83 | lrodriqu | 2022-05-08 | 08:10:23   | USA     | 192.168.67.69   |       1 |
|       84 | jrafael  | 2022-05-11 | 09:26:17   | CAN     | 192.168.243.203 |       1 |
|       86 | dtanaka  | 2022-05-10 | 10:22:20   | USA     | 192.168.197.135 |       1 |
|       87 | apatel   | 2022-05-08 | 22:38:31   | CANADA  | 192.168.132.153 |       0 |
|       89 | dkot     | 2022-05-12 | 10:52:00   | USA     | 192.168.128.75  |       1 |
|       90 | gesparza | 2022-05-09 | 00:49:05   | CANADA  | 192.168.87.201  |       0 |
|       91 | jhill    | 2022-05-11 | 17:46:47   | US      | 192.168.172.74  |       1 |
|       92 | pwashing | 2022-05-08 | 00:36:12   | US      | 192.168.247.219 |       0 |
|       96 | ivelasco | 2022-05-09 | 22:36:36   | CAN     | 192.168.84.194  |       0 |
|       98 | gesparza | 2022-05-11 | 06:30:14   | CANADA  | 192.168.148.80  |       0 |
|       99 | mcouliba | 2022-05-12 | 11:54:14   | CANADA  | 192.168.218.160 |       1 |
|      101 | sbaelish | 2022-05-08 | 12:01:22   | US      | 192.168.145.158 |       0 |
|      103 | jhill    | 2022-05-11 | 09:10:54   | US      | 192.168.60.153  |       0 |
|      104 | asundara | 2022-05-11 | 18:38:07   | US      | 192.168.96.200  |       0 |
|      105 | cjackson | 2022-05-12 | 19:36:42   | CAN     | 192.168.247.153 |       1 |
|      107 | bisles   | 2022-05-12 | 20:25:57   | USA     | 192.168.116.187 |       0 |
|      108 | daquino  | 2022-05-09 | 21:30:48   | CANADA  | 192.168.15.110  |       1 |
|      109 | mcouliba | 2022-05-10 | 04:43:15   | CANADA  | 192.168.39.246  |       1 |
|      110 | mabadi   | 2022-05-09 | 00:01:54   | USA     | 192.168.90.124  |       1 |
|      113 | gesparza | 2022-05-10 | 00:40:00   | CAN     | 192.168.64.133  |       0 |
|      115 | ivelasco | 2022-05-10 | 23:06:01   | CAN     | 192.168.154.1   |       1 |
|      117 | bsand    | 2022-05-08 | 00:19:11   | USA     | 192.168.197.187 |       0 |
|      121 | btang    | 2022-05-10 | 22:00:36   | US      | 192.168.80.143  |       1 |
|      123 | bmoreno  | 2022-05-10 | 04:43:30   | CANADA  | 192.168.98.2    |       1 |
|      124 | asundara | 2022-05-12 | 10:51:21   | USA     | 192.168.136.29  |       1 |
|      125 | bisles   | 2022-05-11 | 08:36:19   | US      | 192.168.74.9    |       1 |
|      126 | jrafael  | 2022-05-12 | 18:47:52   | CAN     | 192.168.22.16   |       1 |
|      127 | abellmas | 2022-05-09 | 21:20:51   | CANADA  | 192.168.70.122  |       0 |
|      128 | jclark   | 2022-05-09 | 10:45:59   | CANADA  | 192.168.122.169 |       0 |
|      129 | drosas   | 2022-05-12 | 15:39:40   | USA     | 192.168.152.200 |       0 |
|      130 | mrah     | 2022-05-11 | 02:54:21   | USA     | 192.168.102.147 |       0 |
|      131 | bisles   | 2022-05-09 | 20:03:55   | US      | 192.168.113.171 |       0 |
|      133 | asundara | 2022-05-12 | 05:57:04   | USA     | 192.168.6.9     |       1 |
|      134 | iuduike  | 2022-05-09 | 06:46:40   | USA     | 192.168.22.115  |       1 |
|      135 | bsand    | 2022-05-09 | 14:06:33   | US      | 192.168.91.238  |       0 |
|      136 | mabadi   | 2022-05-10 | 06:56:44   | US      | 192.168.214.234 |       1 |
|      137 | jrafael  | 2022-05-12 | 02:42:37   | CAN     | 192.168.186.176 |       1 |
|      139 | apatel   | 2022-05-11 | 01:54:36   | CAN     | 192.168.95.222  |       0 |
|      140 | btang    | 2022-05-10 | 13:17:29   | US      | 192.168.249.111 |       0 |
|      141 | btang    | 2022-05-12 | 10:12:03   | USA     | 192.168.82.139  |       0 |
|      142 | gesparza | 2022-05-11 | 06:31:14   | CANADA  | 192.168.117.56  |       1 |
|      143 | jhill    | 2022-05-11 | 00:30:22   | USA     | 192.168.189.19  |       0 |
|      144 | daquino  | 2022-05-09 | 11:09:32   | CANADA  | 192.168.139.9   |       0 |
|      145 | ivelasco | 2022-05-08 | 09:06:02   | CANADA  | 192.168.39.196  |       1 |
|      146 | nmason   | 2022-05-10 | 02:25:55   | CANADA  | 192.168.37.147  |       0 |
|      148 | daquino  | 2022-05-08 | 06:15:55   | CANADA  | 192.168.135.6   |       1 |
|      149 | jlansky  | 2022-05-11 | 01:07:11   | USA     | 192.168.238.42  |       0 |
|      150 | nmason   | 2022-05-08 | 14:40:02   | CAN     | 192.168.204.124 |       0 |
|      151 | mabadi   | 2022-05-09 | 16:29:46   | USA     | 192.168.30.225  |       1 |
|      152 | mabadi   | 2022-05-12 | 10:24:43   | USA     | 192.168.96.244  |       0 |
|      154 | jlansky  | 2022-05-12 | 10:57:35   | US      | 192.168.23.63   |       1 |
|      155 | cgriffin | 2022-05-12 | 22:18:42   | USA     | 192.168.236.176 |       0 |
|      156 | btang    | 2022-05-11 | 17:08:51   | USA     | 192.168.243.95  |       0 |
|      159 | iuduike  | 2022-05-12 | 16:59:50   | USA     | 192.168.220.115 |       0 |
|      160 | jclark   | 2022-05-10 | 20:49:00   | CANADA  | 192.168.214.49  |       0 |
|      161 | abellmas | 2022-05-09 | 13:25:50   | CAN     | 192.168.180.205 |       0 |
|      164 | jclark   | 2022-05-12 | 21:15:52   | CAN     | 192.168.18.34   |       1 |
|      167 | jclark   | 2022-05-12 | 15:47:45   | CAN     | 192.168.146.51  |       1 |
|      168 | jlansky  | 2022-05-08 | 13:25:42   | USA     | 192.168.210.94  |       1 |
|      169 | alevitsk | 2022-05-08 | 08:10:43   | CANADA  | 192.168.210.228 |       0 |
|      170 | sbaelish | 2022-05-09 | 16:43:18   | USA     | 192.168.65.113  |       0 |
|      171 | drosas   | 2022-05-10 | 16:32:55   | USA     | 192.168.92.218  |       0 |
|      172 | mabadi   | 2022-05-08 | 08:06:50   | US      | 192.168.180.41  |       1 |
|      173 | asundara | 2022-05-12 | 23:17:52   | US      | 192.168.58.217  |       1 |
|      174 | lyamamot | 2022-05-10 | 12:26:27   | US      | 192.168.228.122 |       0 |
|      175 | jhill    | 2022-05-10 | 00:17:09   | USA     | 192.168.130.218 |       0 |
|      177 | wjaffrey | 2022-05-11 | 00:15:55   | USA     | 192.168.144.165 |       0 |
|      178 | sgilmore | 2022-05-08 | 12:27:22   | CAN     | 192.168.52.216  |       0 |
|      179 | jclark   | 2022-05-12 | 04:08:17   | CAN     | 192.168.232.93  |       0 |
|      181 | abellmas | 2022-05-10 | 13:37:05   | CAN     | 192.168.60.111  |       0 |
|      182 | lyamamot | 2022-05-10 | 06:01:31   | USA     | 192.168.106.52  |       0 |
|      183 | nmason   | 2022-05-11 | 05:29:36   | CANADA  | 192.168.137.147 |       0 |
|      184 | alevitsk | 2022-05-08 | 03:09:48   | CAN     | 192.168.33.70   |       0 |
|      185 | jsoto    | 2022-05-10 | 13:34:58   | USA     | 192.168.151.91  |       0 |
|      186 | bisles   | 2022-05-09 | 04:29:17   | USA     | 192.168.40.72   |       0 |
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
|      200 | jclark   | 2022-05-12 | 01:11:45   | CANADA  | 192.168.91.103  |       1 |
+----------+----------+------------+------------+---------+-----------------+---------+
144 rows in set (0.004 sec)

Step 4: Retrieve employees in Marketing. Run the following query to view the columns and values in the employees table.
    
MariaDB [organization]> SELECT *
    -> FROM employees;
+-------------+--------------+----------+------------------------+-------------+
| employee_id | device_id    | username | department             | office      |
+-------------+--------------+----------+------------------------+-------------+
|        1000 | a320b137c219 | elarson  | Marketing              | East-170    |
|        1001 | b239c825d303 | bmoreno  | Marketing              | Central-276 |
|        1002 | c116d593e558 | tshah    | Human Resources        | North-434   |
|        1003 | d394e816f943 | sgilmore | Finance                | South-153   |
|        1004 | e218f877g788 | eraab    | Human Resources        | South-127   |
|        1005 | f551g340h864 | gesparza | Human Resources        | South-366   |
|        1006 | g329h357i597 | alevitsk | Information Technology | East-320    |
|        1007 | h174i497j413 | wjaffrey | Finance                | North-406   |
|        1008 | i858j583k571 | abernard | Finance                | South-170   |
|        1009 | NULL         | lrodriqu | Sales                  | South-134   |
|        1010 | k242l212m542 | jlansky  | Finance                | South-109   |
|        1011 | l748m120n401 | drosas   | Sales                  | South-292   |
|        1012 | m756n668o146 | nmason   | Information Technology | North-160   |
|        1013 | n205o559p243 | zbernal  | Information Technology | South-229   |
|        1014 | NULL         | asundara | Information Technology | West-219    |
|        1015 | p611q262r945 | jsoto    | Finance                | North-271   |
|        1016 | q793r736s288 | sbaelish | Human Resources        | North-229   |
|        1017 | r550s824t230 | jclark   | Finance                | North-188   |
|        1018 | s310t540u653 | abellmas | Finance                | North-403   |
|        1019 | t815u205v470 | mcouliba | Information Technology | North-108   |
|        1020 | u899v381w363 | arutley  | Marketing              | South-351   |
|        1021 | v200w121x977 | smartell | Information Technology | South-138   |
|        1022 | w237x430y567 | arusso   | Finance                | West-465    |
|        1023 | x253y759z103 | aalonso  | Information Technology | West-393    |
|        1024 | y976z753a267 | iuduike  | Sales                  | South-215   |
|        1025 | z381a365b233 | jhill    | Sales                  | North-115   |
|        1026 | a998b568c863 | apatel   | Human Resources        | West-320    |
|        1027 | b806c503d354 | mrah     | Marketing              | West-246    |
|        1028 | c603d749e374 | aestrada | Human Resources        | West-121    |
|        1029 | d336e475f676 | ivelasco | Finance                | East-156    |
|        1030 | e391f189g913 | mabadi   | Marketing              | West-375    |
|        1031 | f419g188h578 | dkot     | Marketing              | West-408    |
|        1032 | g773h303i639 | jrafael  | Information Technology | Central-309 |
|        1033 | NULL         | yappiah  | Information Technology | West-387    |
|        1034 | i679j565k940 | bsand    | Human Resources        | East-484    |
|        1035 | j236k303l245 | bisles   | Sales                  | South-171   |
|        1036 | k550l533m205 | rjensen  | Marketing              | Central-239 |
|        1037 | l693m585n528 | dtanaka  | Information Technology | West-468    |
|        1038 | m873n636o225 | btang    | Human Resources        | Central-260 |
|        1039 | n253o917p623 | cjackson | Sales                  | East-378    |
|        1040 | o783p832q294 | dtarly   | Human Resources        | East-237    |
|        1041 | p929q222r778 | cgriffin | Sales                  | North-208   |
|        1042 | q175r338s833 | acook    | Human Resources        | West-381    |
|        1043 | NULL         | lyamamot | Information Technology | East-354    |
|        1044 | s429t157u159 | tbarnes  | Finance                | West-415    |
|        1045 | t567u844v434 | pwashing | Finance                | East-115    |
|        1046 | u429v921w138 | daquino  | Finance                | West-280    |
|        1047 | v109w587x644 | cward    | Finance                | West-373    |
|        1048 | w167x592y375 | tmitchel | Finance                | South-288   |
|        1049 | NULL         | jreckley | Finance                | Central-295 |
|        1050 | y132z930a114 | csimmons | Finance                | North-468   |
|        1051 | z451a308b518 | itraora  | Marketing              | Central-134 |
|        1052 | a192b174c940 | jdarosa  | Marketing              | East-195    |
|        1053 | b979c871d361 | nemmanue | Human Resources        | Central-259 |
|        1054 | c547d140e477 | tcook    | Information Technology | West-248    |
|        1055 | d831e972f553 | awilliam | Marketing              | Central-256 |
|        1056 | e782f537g683 | ankala   | Marketing              | North-139   |
|        1057 | f370g535h632 | mscott   | Sales                  | South-270   |
|        1058 | g264h852i697 | madebowa | Marketing              | South-119   |
|        1059 | h832i322j795 | jnguyen  | Marketing              | South-255   |
|        1060 | i446j874k974 | tbecker  | Information Technology | North-164   |
|        1061 | j255k281l925 | nhersh   | Human Resources        | East-163    |
|        1062 | k367l639m697 | redwards | Finance                | North-180   |
|        1063 | l686m140n569 | lpope    | Sales                  | East-226    |
|        1064 | NULL         | ejones   | Marketing              | South-477   |
|        1065 | n428o322p522 | imoore   | Human Resources        | West-490    |
|        1066 | o678p794q957 | ttyrell  | Sales                  | Central-444 |
|        1067 | p288q432r721 | lwhite   | Marketing              | North-277   |
|        1068 | q689r187s648 | djames   | Information Technology | West-438    |
|        1069 | NULL         | jpark    | Finance                | East-110    |
|        1070 | s772t175u409 | tbailey  | Human Resources        | North-204   |
|        1071 | t244u829v723 | zdutchma | Sales                  | West-348    |
|        1072 | u905v920w694 | esmith   | Sales                  | East-421    |
|        1073 | v135w241x773 | srobinso | Marketing              | Central-494 |
|        1074 | w622x645y348 | dcoleman | Information Technology | East-126    |
|        1075 | x573y883z772 | fbautist | Marketing              | East-267    |
|        1076 | y347z204a710 | fgarcia  | Finance                | Central-270 |
|        1077 | z654a154b259 | ldavis   | Human Resources        | East-241    |
|        1078 | a667b270c984 | sharley  | Sales                  | North-418   |
|        1079 | b433c245d868 | gmedina  | Marketing              | North-456   |
|        1080 | c568d742e974 | gmoon    | Marketing              | North-156   |
|        1081 | d647e310f618 | qcorbit  | Finance                | South-290   |
|        1082 | e301f659g551 | mjohnson | Information Technology | East-151    |
|        1083 | f840g812h544 | gkoshi   | Finance                | West-165    |
|        1084 | g950h972i991 | nhuynh   | Human Resources        | South-155   |
|        1085 | h339i498j269 | cperez   | Sales                  | East-325    |
|        1086 | i281j129k749 | lmajumda | Sales                  | West-499    |
|        1087 | j803k645l251 | ibisset  | Information Technology | North-230   |
|        1088 | k865l965m233 | rgosh    | Marketing              | East-157    |
|        1089 | l358m929n154 | jpark2   | Sales                  | West-251    |
|        1090 | m891n748o375 | cpatel   | Information Technology | South-351   |
|        1091 | n378o313p469 | rtran    | Sales                  | Central-230 |
|        1092 | o391p779q935 | lpark    | Sales                  | West-227    |
|        1093 | p765q957r699 | etargary | Human Resources        | Central-247 |
|        1094 | NULL         | hhadzic  | Information Technology | Central-463 |
|        1095 | r194s893t593 | glopez   | Information Technology | East-457    |
|        1096 | s375t538u194 | kjeffers | Information Technology | East-419    |
|        1097 | t363u179v368 | jlee     | Human Resources        | South-254   |
|        1098 | u671v146w618 | tarchamb | Sales                  | North-423   |
|        1099 | v283w690x104 | anaser   | Finance                | West-357    |
|        1100 | w326x611y598 | mjin     | Human Resources        | Central-371 |
|        1101 | x701y250z303 | ichowdhu | Human Resources        | East-233    |
|        1102 | y943z930a241 | kselassi | Marketing              | South-378   |
|        1103 | NULL         | randerss | Marketing              | East-460    |
|        1104 | a821b452c176 | mreed    | Information Technology | West-288    |
|        1105 | b551c837d758 | kmei     | Finance                | Central-232 |
|        1106 | c597d792e215 | jcohen   | Marketing              | South-395   |
|        1107 | d168e758f876 | akajwara | Sales                  | North-471   |
|        1108 | e113f288g203 | jwashing | Human Resources        | North-226   |
|        1109 | f229g533h679 | nlocklea | Sales                  | East-196    |
|        1110 | g567h376i314 | pchaudhu | Sales                  | Central-428 |
|        1111 | h835i179j862 | jlee     | Sales                  | West-309    |
|        1112 | i772j807k175 | ccruz    | Information Technology | South-298   |
|        1113 | j781k420l510 | pjaimes  | Human Resources        | East-366    |
|        1114 | NULL         | xgreene  | Marketing              | North-335   |
|        1115 | l552m734n118 | esmith2  | Information Technology | Central-204 |
|        1116 | m272n572o874 | nzhao    | Sales                  | South-100   |
|        1117 | n683o758p820 | dahmad   | Sales                  | West-405    |
|        1118 | o305p208q337 | jpark3   | Sales                  | South-329   |
|        1119 | p164q780r999 | omubarak | Sales                  | West-409    |
|        1120 | q912r119s313 | rbradsha | Marketing              | Central-200 |
|        1121 | r628s557t397 | mrojas   | Sales                  | East-288    |
|        1122 | s103t952u851 | btorres  | Finance                | West-319    |
|        1123 | t479u468v151 | ekonya   | Human Resources        | South-445   |
|        1124 | u340v931w764 | claw     | Human Resources        | Central-172 |
|        1125 | v491w553x421 | mrodgers | Marketing              | South-490   |
|        1126 | w190x708y760 | lmiller  | Information Technology | West-296    |
|        1127 | x127y181z890 | jterranc | Information Technology | Central-256 |
|        1128 | y103z561a649 | mpirato  | Human Resources        | West-205    |
|        1129 | z566a147b347 | plopez   | Marketing              | West-326    |
|        1130 | a317b635c465 | tsnow    | Sales                  | Central-451 |
|        1131 | b265c937d713 | asierra  | Information Technology | South-159   |
|        1132 | c150d982e144 | creddy   | Human Resources        | Central-210 |
|        1133 | d693e351f221 | pfrey    | Marketing              | Central-164 |
|        1134 | e395f616g566 | akhatri  | Human Resources        | West-159    |
|        1135 | f934g229h883 | khamamot | Information Technology | East-186    |
|        1136 | g299h520i457 | jhawes   | Finance                | West-416    |
|        1137 | h165i539j638 | mwood    | Human Resources        | South-166   |
|        1138 | i671j355k725 | sromero  | Finance                | South-329   |
|        1139 | j637k986l199 | emorton  | Human Resources        | North-300   |
|        1140 | k982l199m839 | apatel2  | Human Resources        | East-385    |
|        1141 | l282m821n717 | cochuba  | Human Resources        | South-282   |
|        1142 | m674n127o823 | lsilva   | Finance                | East-440    |
|        1143 | n704o364p471 | sstark   | Information Technology | East-282    |
|        1144 | NULL         | erobinso | Finance                | Central-266 |
|        1145 | p752q137r169 | msosa    | Human Resources        | South-345   |
|        1146 | q228r135s755 | ulemere  | Human Resources        | Central-171 |
|        1147 | r454s225t299 | tvega    | Finance                | West-177    |
|        1148 | s328t505u907 | dharvey  | Finance                | South-181   |
|        1149 | t709u492v884 | klim     | Information Technology | South-411   |
|        1150 | u554v512w139 | lmarin   | Marketing              | Central-364 |
|        1151 | v852w513x954 | sshah    | Human Resources        | North-272   |
|        1152 | NULL         | nwilliam | Marketing              | Central-170 |
|        1153 | x677y330z296 | ncardena | Marketing              | Central-363 |
|        1154 | y765z123a548 | obryand  | Marketing              | North-182   |
|        1155 | z942a966b589 | zjones   | Human Resources        | East-122    |
|        1156 | a184b775c707 | dellery  | Marketing              | East-417    |
|        1157 | b264c773d977 | lstein   | Human Resources        | Central-343 |
|        1158 | c406d877e950 | bnaser   | Human Resources        | Central-243 |
|        1159 | d881e710f732 | jshen    | Finance                | East-193    |
|        1160 | e127f591g924 | spham    | Marketing              | West-353    |
|        1161 | f951g408h866 | jjenkins | Information Technology | East-433    |
|        1162 | g953h643i618 | iortega  | Information Technology | West-381    |
|        1163 | h679i515j339 | cwilliam | Marketing              | East-216    |
|        1164 | i682j513k442 | fsmeltz  | Finance                | North-163   |
|        1165 | j713k893l832 | nwords   | Marketing              | South-128   |
|        1166 | k495l234m708 | nyoung   | Marketing              | Central-397 |
|        1167 | l738m922n515 | tblackwe | Marketing              | North-443   |
|        1168 | m778n920o426 | jharris  | Information Technology | South-305   |
|        1169 | NULL         | mmitchel | Sales                  | Central-250 |
|        1170 | o156p302q359 | lalvarez | Human Resources        | North-278   |
|        1171 | p834q238r776 | plopez2  | Information Technology | Central-496 |
|        1172 | q372r826s628 | akhan    | Marketing              | Central-360 |
|        1173 | r537s849t690 | ialcazar | Marketing              | South-429   |
|        1174 | s371t911u987 | eortiz   | Finance                | North-428   |
|        1175 | t959u687v394 | jclark2  | Finance                | North-194   |
|        1176 | u849v569w521 | nliu     | Sales                  | West-220    |
|        1177 | v691w183x928 | aezra    | Human Resources        | East-190    |
|        1178 | w986x187y885 | nlannist | Marketing              | North-196   |
|        1179 | x174y934z376 | asalas   | Human Resources        | North-445   |
|        1180 | y131z211a578 | medwards | Human Resources        | Central-340 |
|        1181 | z803a233b718 | sessa    | Finance                | South-207   |
|        1182 | a305b818c708 | mmora    | Information Technology | Central-250 |
|        1183 | b566c710d544 | lquraish | Human Resources        | East-400    |
|        1184 | c986d200e170 | ptsosie  | Human Resources        | Central-247 |
|        1185 | d790e839f461 | revens   | Sales                  | North-330   |
|        1186 | e281f433g404 | sacosta  | Sales                  | North-460   |
|        1187 | f963g637h851 | bbode    | Finance                | East-351    |
|        1188 | g164h566i795 | noshiro  | Finance                | West-252    |
|        1189 | h784i120j837 | slefkowi | Human Resources        | West-342    |
|        1190 | NULL         | kcarter  | Marketing              | Central-270 |
|        1191 | NULL         | shakimi  | Marketing              | Central-366 |
|        1192 | k570l183m949 | rlaghari | Information Technology | East-138    |
|        1193 | l186m618n319 | esantiag | Information Technology | Central-300 |
|        1194 | m340n287o441 | zwarren  | Human Resources        | West-212    |
|        1195 | n516o853p957 | orainier | Finance                | East-346    |
|        1196 | o225p357q829 | sshah2   | Information Technology | South-385   |
|        1197 | p791q114r509 | aabara   | Information Technology | North-159   |
|        1198 | q308r573s459 | jmartine | Marketing              | South-117   |
|        1199 | r520s571t459 | areyes   | Human Resources        | East-100    |
+-------------+--------------+----------+------------------------+-------------+
200 rows in set (0.002 sec)

# Write a query to fetch all columns from the employees table, applying filters on the department and office columns. The query should return records for employees in the 'Marketing' department who are based in any office within the East building ( 'East-170', 'East-320').

MariaDB [organization]> SELECT * 
    -> FROM employees
    -> WHERE 'Marketing' = department AND office LIKE 'East%';
+-------------+--------------+----------+------------+----------+
| employee_id | device_id    | username | department | office   |
+-------------+--------------+----------+------------+----------+
|        1000 | a320b137c219 | elarson  | Marketing  | East-170 |
|        1052 | a192b174c940 | jdarosa  | Marketing  | East-195 |
|        1075 | x573y883z772 | fbautist | Marketing  | East-267 |
|        1088 | k865l965m233 | rgosh    | Marketing  | East-157 |
|        1103 | NULL         | randerss | Marketing  | East-460 |
|        1156 | a184b775c707 | dellery  | Marketing  | East-417 |
|        1163 | h679i515j339 | cwilliam | Marketing  | East-216 |
+-------------+--------------+----------+------------+----------+
7 rows in set (0.001 sec)

Step 5: Write a SQL query to retrieve records for employees in the 'Finance' or the 'Sales' department.
    
MariaDB [organization]> SELECT *
    -> FROM employees
    -> WHERE department = 'Finance' OR department = 'Sales';
+-------------+--------------+----------+------------+-------------+
| employee_id | device_id    | username | department | office      |
+-------------+--------------+----------+------------+-------------+
|        1003 | d394e816f943 | sgilmore | Finance    | South-153   |
|        1007 | h174i497j413 | wjaffrey | Finance    | North-406   |
|        1008 | i858j583k571 | abernard | Finance    | South-170   |
|        1009 | NULL         | lrodriqu | Sales      | South-134   |
|        1010 | k242l212m542 | jlansky  | Finance    | South-109   |
|        1011 | l748m120n401 | drosas   | Sales      | South-292   |
|        1015 | p611q262r945 | jsoto    | Finance    | North-271   |
|        1017 | r550s824t230 | jclark   | Finance    | North-188   |
|        1018 | s310t540u653 | abellmas | Finance    | North-403   |
|        1022 | w237x430y567 | arusso   | Finance    | West-465    |
|        1024 | y976z753a267 | iuduike  | Sales      | South-215   |
|        1025 | z381a365b233 | jhill    | Sales      | North-115   |
|        1029 | d336e475f676 | ivelasco | Finance    | East-156    |
|        1035 | j236k303l245 | bisles   | Sales      | South-171   |
|        1039 | n253o917p623 | cjackson | Sales      | East-378    |
|        1041 | p929q222r778 | cgriffin | Sales      | North-208   |
|        1044 | s429t157u159 | tbarnes  | Finance    | West-415    |
|        1045 | t567u844v434 | pwashing | Finance    | East-115    |
|        1046 | u429v921w138 | daquino  | Finance    | West-280    |
|        1047 | v109w587x644 | cward    | Finance    | West-373    |
|        1048 | w167x592y375 | tmitchel | Finance    | South-288   |
|        1049 | NULL         | jreckley | Finance    | Central-295 |
|        1050 | y132z930a114 | csimmons | Finance    | North-468   |
|        1057 | f370g535h632 | mscott   | Sales      | South-270   |
|        1062 | k367l639m697 | redwards | Finance    | North-180   |
|        1063 | l686m140n569 | lpope    | Sales      | East-226    |
|        1066 | o678p794q957 | ttyrell  | Sales      | Central-444 |
|        1069 | NULL         | jpark    | Finance    | East-110    |
|        1071 | t244u829v723 | zdutchma | Sales      | West-348    |
|        1072 | u905v920w694 | esmith   | Sales      | East-421    |
|        1076 | y347z204a710 | fgarcia  | Finance    | Central-270 |
|        1078 | a667b270c984 | sharley  | Sales      | North-418   |
|        1081 | d647e310f618 | qcorbit  | Finance    | South-290   |
|        1083 | f840g812h544 | gkoshi   | Finance    | West-165    |
|        1085 | h339i498j269 | cperez   | Sales      | East-325    |
|        1086 | i281j129k749 | lmajumda | Sales      | West-499    |
|        1089 | l358m929n154 | jpark2   | Sales      | West-251    |
|        1091 | n378o313p469 | rtran    | Sales      | Central-230 |
|        1092 | o391p779q935 | lpark    | Sales      | West-227    |
|        1098 | u671v146w618 | tarchamb | Sales      | North-423   |
|        1099 | v283w690x104 | anaser   | Finance    | West-357    |
|        1105 | b551c837d758 | kmei     | Finance    | Central-232 |
|        1107 | d168e758f876 | akajwara | Sales      | North-471   |
|        1109 | f229g533h679 | nlocklea | Sales      | East-196    |
|        1110 | g567h376i314 | pchaudhu | Sales      | Central-428 |
|        1111 | h835i179j862 | jlee     | Sales      | West-309    |
|        1116 | m272n572o874 | nzhao    | Sales      | South-100   |
|        1117 | n683o758p820 | dahmad   | Sales      | West-405    |
|        1118 | o305p208q337 | jpark3   | Sales      | South-329   |
|        1119 | p164q780r999 | omubarak | Sales      | West-409    |
|        1121 | r628s557t397 | mrojas   | Sales      | East-288    |
|        1122 | s103t952u851 | btorres  | Finance    | West-319    |
|        1130 | a317b635c465 | tsnow    | Sales      | Central-451 |
|        1136 | g299h520i457 | jhawes   | Finance    | West-416    |
|        1138 | i671j355k725 | sromero  | Finance    | South-329   |
|        1142 | m674n127o823 | lsilva   | Finance    | East-440    |
|        1144 | NULL         | erobinso | Finance    | Central-266 |
|        1147 | r454s225t299 | tvega    | Finance    | West-177    |
|        1148 | s328t505u907 | dharvey  | Finance    | South-181   |
|        1159 | d881e710f732 | jshen    | Finance    | East-193    |
|        1164 | i682j513k442 | fsmeltz  | Finance    | North-163   |
|        1169 | NULL         | mmitchel | Sales      | Central-250 |
|        1174 | s371t911u987 | eortiz   | Finance    | North-428   |
|        1175 | t959u687v394 | jclark2  | Finance    | North-194   |
|        1176 | u849v569w521 | nliu     | Sales      | West-220    |
|        1181 | z803a233b718 | sessa    | Finance    | South-207   |
|        1185 | d790e839f461 | revens   | Sales      | North-330   |
|        1186 | e281f433g404 | sacosta  | Sales      | North-460   |
|        1187 | f963g637h851 | bbode    | Finance    | East-351    |
|        1188 | g164h566i795 | noshiro  | Finance    | West-252    |
|        1195 | n516o853p957 | orainier | Finance    | East-346    |
+-------------+--------------+----------+------------+-------------+
71 rows in set (0.004 sec)

Step 6: Write a SQL query to retrieve records for employees who are not in the 'Information Technology' department.
    
MariaDB [organization]> SELECT*
    -> FROM employees
    -> WHERE NOT department = 'Information Technology';
+-------------+--------------+----------+-----------------+-------------+
| employee_id | device_id    | username | department      | office      |
+-------------+--------------+----------+-----------------+-------------+
|        1000 | a320b137c219 | elarson  | Marketing       | East-170    |
|        1001 | b239c825d303 | bmoreno  | Marketing       | Central-276 |
|        1002 | c116d593e558 | tshah    | Human Resources | North-434   |
|        1003 | d394e816f943 | sgilmore | Finance         | South-153   |
|        1004 | e218f877g788 | eraab    | Human Resources | South-127   |
|        1005 | f551g340h864 | gesparza | Human Resources | South-366   |
|        1007 | h174i497j413 | wjaffrey | Finance         | North-406   |
|        1008 | i858j583k571 | abernard | Finance         | South-170   |
|        1009 | NULL         | lrodriqu | Sales           | South-134   |
|        1010 | k242l212m542 | jlansky  | Finance         | South-109   |
|        1011 | l748m120n401 | drosas   | Sales           | South-292   |
|        1015 | p611q262r945 | jsoto    | Finance         | North-271   |
|        1016 | q793r736s288 | sbaelish | Human Resources | North-229   |
|        1017 | r550s824t230 | jclark   | Finance         | North-188   |
|        1018 | s310t540u653 | abellmas | Finance         | North-403   |
|        1020 | u899v381w363 | arutley  | Marketing       | South-351   |
|        1022 | w237x430y567 | arusso   | Finance         | West-465    |
|        1024 | y976z753a267 | iuduike  | Sales           | South-215   |
|        1025 | z381a365b233 | jhill    | Sales           | North-115   |
|        1026 | a998b568c863 | apatel   | Human Resources | West-320    |
|        1027 | b806c503d354 | mrah     | Marketing       | West-246    |
|        1028 | c603d749e374 | aestrada | Human Resources | West-121    |
|        1029 | d336e475f676 | ivelasco | Finance         | East-156    |
|        1030 | e391f189g913 | mabadi   | Marketing       | West-375    |
|        1031 | f419g188h578 | dkot     | Marketing       | West-408    |
|        1034 | i679j565k940 | bsand    | Human Resources | East-484    |
|        1035 | j236k303l245 | bisles   | Sales           | South-171   |
|        1036 | k550l533m205 | rjensen  | Marketing       | Central-239 |
|        1038 | m873n636o225 | btang    | Human Resources | Central-260 |
|        1039 | n253o917p623 | cjackson | Sales           | East-378    |
|        1040 | o783p832q294 | dtarly   | Human Resources | East-237    |
|        1041 | p929q222r778 | cgriffin | Sales           | North-208   |
|        1042 | q175r338s833 | acook    | Human Resources | West-381    |
|        1044 | s429t157u159 | tbarnes  | Finance         | West-415    |
|        1045 | t567u844v434 | pwashing | Finance         | East-115    |
|        1046 | u429v921w138 | daquino  | Finance         | West-280    |
|        1047 | v109w587x644 | cward    | Finance         | West-373    |
|        1048 | w167x592y375 | tmitchel | Finance         | South-288   |
|        1049 | NULL         | jreckley | Finance         | Central-295 |
|        1050 | y132z930a114 | csimmons | Finance         | North-468   |
|        1051 | z451a308b518 | itraora  | Marketing       | Central-134 |
|        1052 | a192b174c940 | jdarosa  | Marketing       | East-195    |
|        1053 | b979c871d361 | nemmanue | Human Resources | Central-259 |
|        1055 | d831e972f553 | awilliam | Marketing       | Central-256 |
|        1056 | e782f537g683 | ankala   | Marketing       | North-139   |
|        1057 | f370g535h632 | mscott   | Sales           | South-270   |
|        1058 | g264h852i697 | madebowa | Marketing       | South-119   |
|        1059 | h832i322j795 | jnguyen  | Marketing       | South-255   |
|        1061 | j255k281l925 | nhersh   | Human Resources | East-163    |
|        1062 | k367l639m697 | redwards | Finance         | North-180   |
|        1063 | l686m140n569 | lpope    | Sales           | East-226    |
|        1064 | NULL         | ejones   | Marketing       | South-477   |
|        1065 | n428o322p522 | imoore   | Human Resources | West-490    |
|        1066 | o678p794q957 | ttyrell  | Sales           | Central-444 |
|        1067 | p288q432r721 | lwhite   | Marketing       | North-277   |
|        1069 | NULL         | jpark    | Finance         | East-110    |
|        1070 | s772t175u409 | tbailey  | Human Resources | North-204   |
|        1071 | t244u829v723 | zdutchma | Sales           | West-348    |
|        1072 | u905v920w694 | esmith   | Sales           | East-421    |
|        1073 | v135w241x773 | srobinso | Marketing       | Central-494 |
|        1075 | x573y883z772 | fbautist | Marketing       | East-267    |
|        1076 | y347z204a710 | fgarcia  | Finance         | Central-270 |
|        1077 | z654a154b259 | ldavis   | Human Resources | East-241    |
|        1078 | a667b270c984 | sharley  | Sales           | North-418   |
|        1079 | b433c245d868 | gmedina  | Marketing       | North-456   |
|        1080 | c568d742e974 | gmoon    | Marketing       | North-156   |
|        1081 | d647e310f618 | qcorbit  | Finance         | South-290   |
|        1083 | f840g812h544 | gkoshi   | Finance         | West-165    |
|        1084 | g950h972i991 | nhuynh   | Human Resources | South-155   |
|        1085 | h339i498j269 | cperez   | Sales           | East-325    |
|        1086 | i281j129k749 | lmajumda | Sales           | West-499    |
|        1088 | k865l965m233 | rgosh    | Marketing       | East-157    |
|        1089 | l358m929n154 | jpark2   | Sales           | West-251    |
|        1091 | n378o313p469 | rtran    | Sales           | Central-230 |
|        1092 | o391p779q935 | lpark    | Sales           | West-227    |
|        1093 | p765q957r699 | etargary | Human Resources | Central-247 |
|        1097 | t363u179v368 | jlee     | Human Resources | South-254   |
|        1098 | u671v146w618 | tarchamb | Sales           | North-423   |
|        1099 | v283w690x104 | anaser   | Finance         | West-357    |
|        1100 | w326x611y598 | mjin     | Human Resources | Central-371 |
|        1101 | x701y250z303 | ichowdhu | Human Resources | East-233    |
|        1102 | y943z930a241 | kselassi | Marketing       | South-378   |
|        1103 | NULL         | randerss | Marketing       | East-460    |
|        1105 | b551c837d758 | kmei     | Finance         | Central-232 |
|        1106 | c597d792e215 | jcohen   | Marketing       | South-395   |
|        1107 | d168e758f876 | akajwara | Sales           | North-471   |
|        1108 | e113f288g203 | jwashing | Human Resources | North-226   |
|        1109 | f229g533h679 | nlocklea | Sales           | East-196    |
|        1110 | g567h376i314 | pchaudhu | Sales           | Central-428 |
|        1111 | h835i179j862 | jlee     | Sales           | West-309    |
|        1113 | j781k420l510 | pjaimes  | Human Resources | East-366    |
|        1114 | NULL         | xgreene  | Marketing       | North-335   |
|        1116 | m272n572o874 | nzhao    | Sales           | South-100   |
|        1117 | n683o758p820 | dahmad   | Sales           | West-405    |
|        1118 | o305p208q337 | jpark3   | Sales           | South-329   |
|        1119 | p164q780r999 | omubarak | Sales           | West-409    |
|        1120 | q912r119s313 | rbradsha | Marketing       | Central-200 |
|        1121 | r628s557t397 | mrojas   | Sales           | East-288    |
|        1122 | s103t952u851 | btorres  | Finance         | West-319    |
|        1123 | t479u468v151 | ekonya   | Human Resources | South-445   |
|        1124 | u340v931w764 | claw     | Human Resources | Central-172 |
|        1125 | v491w553x421 | mrodgers | Marketing       | South-490   |
|        1128 | y103z561a649 | mpirato  | Human Resources | West-205    |
|        1129 | z566a147b347 | plopez   | Marketing       | West-326    |
|        1130 | a317b635c465 | tsnow    | Sales           | Central-451 |
|        1132 | c150d982e144 | creddy   | Human Resources | Central-210 |
|        1133 | d693e351f221 | pfrey    | Marketing       | Central-164 |
|        1134 | e395f616g566 | akhatri  | Human Resources | West-159    |
|        1136 | g299h520i457 | jhawes   | Finance         | West-416    |
|        1137 | h165i539j638 | mwood    | Human Resources | South-166   |
|        1138 | i671j355k725 | sromero  | Finance         | South-329   |
|        1139 | j637k986l199 | emorton  | Human Resources | North-300   |
|        1140 | k982l199m839 | apatel2  | Human Resources | East-385    |
|        1141 | l282m821n717 | cochuba  | Human Resources | South-282   |
|        1142 | m674n127o823 | lsilva   | Finance         | East-440    |
|        1144 | NULL         | erobinso | Finance         | Central-266 |
|        1145 | p752q137r169 | msosa    | Human Resources | South-345   |
|        1146 | q228r135s755 | ulemere  | Human Resources | Central-171 |
|        1147 | r454s225t299 | tvega    | Finance         | West-177    |
|        1148 | s328t505u907 | dharvey  | Finance         | South-181   |
|        1150 | u554v512w139 | lmarin   | Marketing       | Central-364 |
|        1151 | v852w513x954 | sshah    | Human Resources | North-272   |
|        1152 | NULL         | nwilliam | Marketing       | Central-170 |
|        1153 | x677y330z296 | ncardena | Marketing       | Central-363 |
|        1154 | y765z123a548 | obryand  | Marketing       | North-182   |
|        1155 | z942a966b589 | zjones   | Human Resources | East-122    |
|        1156 | a184b775c707 | dellery  | Marketing       | East-417    |
|        1157 | b264c773d977 | lstein   | Human Resources | Central-343 |
|        1158 | c406d877e950 | bnaser   | Human Resources | Central-243 |
|        1159 | d881e710f732 | jshen    | Finance         | East-193    |
|        1160 | e127f591g924 | spham    | Marketing       | West-353    |
|        1163 | h679i515j339 | cwilliam | Marketing       | East-216    |
|        1164 | i682j513k442 | fsmeltz  | Finance         | North-163   |
|        1165 | j713k893l832 | nwords   | Marketing       | South-128   |
|        1166 | k495l234m708 | nyoung   | Marketing       | Central-397 |
|        1167 | l738m922n515 | tblackwe | Marketing       | North-443   |
|        1169 | NULL         | mmitchel | Sales           | Central-250 |
|        1170 | o156p302q359 | lalvarez | Human Resources | North-278   |
|        1172 | q372r826s628 | akhan    | Marketing       | Central-360 |
|        1173 | r537s849t690 | ialcazar | Marketing       | South-429   |
|        1174 | s371t911u987 | eortiz   | Finance         | North-428   |
|        1175 | t959u687v394 | jclark2  | Finance         | North-194   |
|        1176 | u849v569w521 | nliu     | Sales           | West-220    |
|        1177 | v691w183x928 | aezra    | Human Resources | East-190    |
|        1178 | w986x187y885 | nlannist | Marketing       | North-196   |
|        1179 | x174y934z376 | asalas   | Human Resources | North-445   |
|        1180 | y131z211a578 | medwards | Human Resources | Central-340 |
|        1181 | z803a233b718 | sessa    | Finance         | South-207   |
|        1183 | b566c710d544 | lquraish | Human Resources | East-400    |
|        1184 | c986d200e170 | ptsosie  | Human Resources | Central-247 |
|        1185 | d790e839f461 | revens   | Sales           | North-330   |
|        1186 | e281f433g404 | sacosta  | Sales           | North-460   |
|        1187 | f963g637h851 | bbode    | Finance         | East-351    |
|        1188 | g164h566i795 | noshiro  | Finance         | West-252    |
|        1189 | h784i120j837 | slefkowi | Human Resources | West-342    |
|        1190 | NULL         | kcarter  | Marketing       | Central-270 |
|        1191 | NULL         | shakimi  | Marketing       | Central-366 |
|        1194 | m340n287o441 | zwarren  | Human Resources | West-212    |
|        1195 | n516o853p957 | orainier | Finance         | East-346    |
|        1198 | q308r573s459 | jmartine | Marketing       | South-117   |
|        1199 | r520s571t459 | areyes   | Human Resources | East-100    |
+-------------+--------------+----------+-----------------+-------------+
161 rows in set (0.001 sec)
