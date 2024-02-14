using Pkg; Pkg.activate("../../../")
using AlgebraicSolving
P, (x1, x2, x3, x4, u1, u2, u3, u4) = polynomial_ring(GF(1618453), vcat(["x$i" for i in 1:4], ["u$i" for i in 1:4]), ordering = :degrevlex);
x = [x1,x2,x3,x4];
u = [u1,u2,u3,u4];
F = [727369*x[1]^5 + 1328305*x[1]^4*x[2] + 688123*x[1]^4*x[3] + 957864*x[1]^4*x[4] + 475868*x[1]^4 + 1076726*x[1]^3*x[2]^2 + 1493149*x[1]^3*x[2]*x[3] + 1013362*x[1]^3*x[2]*x[4] + 88883*x[1]^3*x[2] + 1533462*x[1]^3*x[3]^2 + 1381776*x[1]^3*x[3]*x[4] + 938383*x[1]^3*x[3] + 491524*x[1]^3*x[4]^2 + 854970*x[1]^3*x[4] + 489410*x[1]^3 + 904765*x[1]^2*x[2]^3 + 1557353*x[1]^2*x[2]^2*x[3] + 1396912*x[1]^2*x[2]^2*x[4] + 1113441*x[1]^2*x[2]^2 + 489793*x[1]^2*x[2]*x[3]^2 + 828141*x[1]^2*x[2]*x[3]*x[4] + 1211182*x[1]^2*x[2]*x[3] + 500433*x[1]^2*x[2]*x[4]^2 + 472654*x[1]^2*x[2]*x[4] + 83261*x[1]^2*x[2] + 511321*x[1]^2*x[3]^3 + 322381*x[1]^2*x[3]^2*x[4] + 197070*x[1]^2*x[3]^2 + 1254409*x[1]^2*x[3]*x[4]^2 + 628145*x[1]^2*x[3]*x[4] + 600573*x[1]^2*x[3] + 1277986*x[1]^2*x[4]^3 + 1401783*x[1]^2*x[4]^2 + 949593*x[1]^2*x[4] + 795460*x[1]^2 + 1011696*x[1]*x[2]^4 + 1505473*x[1]*x[2]^3*x[3] + 2465*x[1]*x[2]^3*x[4] + 1202128*x[1]*x[2]^3 + 143434*x[1]*x[2]^2*x[3]^2 + 1501853*x[1]*x[2]^2*x[3]*x[4] + 128256*x[1]*x[2]^2*x[3] + 1251944*x[1]*x[2]^2*x[4]^2 + 317541*x[1]*x[2]^2*x[4] + 1227959*x[1]*x[2]^2 + 936029*x[1]*x[2]*x[3]^3 + 1297752*x[1]*x[2]*x[3]^2*x[4] + 196332*x[1]*x[2]*x[3]^2 + 917763*x[1]*x[2]*x[3]*x[4]^2 + 1408902*x[1]*x[2]*x[3]*x[4] + 784173*x[1]*x[2]*x[3] + 581688*x[1]*x[2]*x[4]^3 + 629503*x[1]*x[2]*x[4]^2 + 544656*x[1]*x[2]*x[4] + 1391956*x[1]*x[2] + 426012*x[1]*x[3]^4 + 657096*x[1]*x[3]^3*x[4] + 754045*x[1]*x[3]^3 + 676831*x[1]*x[3]^2*x[4]^2 + 18535*x[1]*x[3]^2*x[4] + 1215411*x[1]*x[3]^2 + 1055722*x[1]*x[3]*x[4]^3 + 1234098*x[1]*x[3]*x[4]^2 + 1060198*x[1]*x[3]*x[4] + 1426748*x[1]*x[3] + 807132*x[1]*x[4]^4 + 353518*x[1]*x[4]^3 + 327833*x[1]*x[4]^2 + 1195771*x[1]*x[4] + 1511027*x[1] + 739619*x[2]^5 + 1475533*x[2]^4*x[3] + 346160*x[2]^4*x[4] + 1336580*x[2]^4 + 943519*x[2]^3*x[3]^2 + 349707*x[2]^3*x[3]*x[4] + 1285401*x[2]^3*x[3] + 1569632*x[2]^3*x[4]^2 + 1051529*x[2]^3*x[4] + 708581*x[2]^3 + 1023682*x[2]^2*x[3]^3 + 596917*x[2]^2*x[3]^2*x[4] + 1591059*x[2]^2*x[3]^2 + 1072723*x[2]^2*x[3]*x[4]^2 + 1122414*x[2]^2*x[3]*x[4] + 50739*x[2]^2*x[3] + 1026065*x[2]^2*x[4]^3 + 987669*x[2]^2*x[4]^2 + 210595*x[2]^2*x[4] + 943704*x[2]^2 + 304951*x[2]*x[3]^4 + 1374181*x[2]*x[3]^3*x[4] + 1433325*x[2]*x[3]^3 + 40133*x[2]*x[3]^2*x[4]^2 + 347067*x[2]*x[3]^2*x[4] + 861406*x[2]*x[3]^2 + 1148846*x[2]*x[3]*x[4]^3 + 444660*x[2]*x[3]*x[4]^2 + 1030522*x[2]*x[3]*x[4] + 901922*x[2]*x[3] + 710454*x[2]*x[4]^4 + 867147*x[2]*x[4]^3 + 18474*x[2]*x[4]^2 + 729413*x[2]*x[4] + 64825*x[2] + 897223*x[3]^5 + 1432635*x[3]^4*x[4] + 1221451*x[3]^4 + 401886*x[3]^3*x[4]^2 + 480727*x[3]^3*x[4] + 490044*x[3]^3 + 264275*x[3]^2*x[4]^3 + 1341346*x[3]^2*x[4]^2 + 302551*x[3]^2*x[4] + 953008*x[3]^2 + 437481*x[3]*x[4]^4 + 1428779*x[3]*x[4]^3 + 1059297*x[3]*x[4]^2 + 395696*x[3]*x[4] + 224831*x[3] + 655660*x[4]^5 + 1086643*x[4]^4 + 756341*x[4]^3 + 1526180*x[4]^2 + 1589229*x[4] + 816636, 580296*x[1]^5 + 1348333*x[1]^4*x[2] + 250608*x[1]^4*x[3] + 1210182*x[1]^4*x[4] + 1038157*x[1]^4*u[1] + 818575*x[1]^4*u[2] + 1440687*x[1]^4 + 342491*x[1]^3*x[2]^2 + 894025*x[1]^3*x[2]*x[3] + 456811*x[1]^3*x[2]*x[4] + 1069998*x[1]^3*x[2]*u[1] + 702731*x[1]^3*x[2]*u[2] + 971633*x[1]^3*x[2] + 638867*x[1]^3*x[3]^2 + 1580624*x[1]^3*x[3]*x[4] + 1367845*x[1]^3*x[3]*u[1] + 968828*x[1]^3*x[3]*u[2] + 814542*x[1]^3*x[3] + 617587*x[1]^3*x[4]^2 + 408271*x[1]^3*x[4]*u[1] + 429353*x[1]^3*x[4]*u[2] + 673145*x[1]^3*x[4] + 177766*x[1]^3*u[1] + 1048415*x[1]^3*u[2] + 1451931*x[1]^3 + 1603694*x[1]^2*x[2]^3 + 1544509*x[1]^2*x[2]^2*x[3] + 1210023*x[1]^2*x[2]^2*x[4] + 573231*x[1]^2*x[2]^2*u[1] + 13456*x[1]^2*x[2]^2*u[2] + 1412795*x[1]^2*x[2]^2 + 534771*x[1]^2*x[2]*x[3]^2 + 664791*x[1]^2*x[2]*x[3]*x[4] + 1374053*x[1]^2*x[2]*x[3]*u[1] + 751824*x[1]^2*x[2]*x[3]*u[2] + 261915*x[1]^2*x[2]*x[3] + 1178274*x[1]^2*x[2]*x[4]^2 + 732289*x[1]^2*x[2]*x[4]*u[1] + 393640*x[1]^2*x[2]*x[4]*u[2] + 622750*x[1]^2*x[2]*x[4] + 1216858*x[1]^2*x[2]*u[1] + 1085155*x[1]^2*x[2]*u[2] + 1261530*x[1]^2*x[2] + 1364848*x[1]^2*x[3]^3 + 641402*x[1]^2*x[3]^2*x[4] + 979586*x[1]^2*x[3]^2*u[1] + 509946*x[1]^2*x[3]^2*u[2] + 1225789*x[1]^2*x[3]^2 + 1401380*x[1]^2*x[3]*x[4]^2 + 37829*x[1]^2*x[3]*x[4]*u[1] + 1420062*x[1]^2*x[3]*x[4]*u[2] + 419102*x[1]^2*x[3]*x[4] + 803911*x[1]^2*x[3]*u[1] + 843514*x[1]^2*x[3]*u[2] + 50107*x[1]^2*x[3] + 455077*x[1]^2*x[4]^3 + 1000866*x[1]^2*x[4]^2*u[1] + 287762*x[1]^2*x[4]^2*u[2] + 359447*x[1]^2*x[4]^2 + 945308*x[1]^2*x[4]*u[1] + 1343992*x[1]^2*x[4]*u[2] + 529141*x[1]^2*x[4] + 166522*x[1]^2*u[1] + 300446*x[1]^2*u[2] + 452994*x[1]^2 + 1078229*x[1]*x[2]^4 + 898960*x[1]*x[2]^3*x[3] + 1199915*x[1]*x[2]^3*x[4] + 1303*x[1]*x[2]^3*u[1] + 1236299*x[1]*x[2]^3*u[2] + 234936*x[1]*x[2]^3 + 1153417*x[1]*x[2]^2*x[3]^2 + 1214322*x[1]*x[2]^2*x[3]*x[4] + 940573*x[1]*x[2]^2*x[3]*u[1] + 244400*x[1]*x[2]^2*x[3]*u[2] + 369228*x[1]*x[2]^2*x[3] + 676205*x[1]*x[2]^2*x[4]^2 + 14790*x[1]*x[2]^2*x[4]*u[1] + 886164*x[1]*x[2]^2*x[4]*u[2] + 436801*x[1]*x[2]^2*x[4] + 738956*x[1]*x[2]^2*u[1] + 401595*x[1]*x[2]^2*u[2] + 936917*x[1]*x[2]^2 + 1187462*x[1]*x[2]*x[3]^3 + 520309*x[1]*x[2]*x[3]^2*x[4] + 573736*x[1]*x[2]*x[3]^2*u[1] + 1277734*x[1]*x[2]*x[3]^2*u[2] + 897856*x[1]*x[2]*x[3]^2 + 726744*x[1]*x[2]*x[3]*x[4]^2 + 1152053*x[1]*x[2]*x[3]*x[4]*u[1] + 1542795*x[1]*x[2]*x[3]*x[4]*u[2] + 1259830*x[1]*x[2]*x[3]*x[4] + 513024*x[1]*x[2]*x[3]*u[1] + 10631*x[1]*x[2]*x[3]*u[2] + 580883*x[1]*x[2]*x[3] + 1007684*x[1]*x[2]*x[4]^3 + 152417*x[1]*x[2]*x[4]^2*u[1] + 1235174*x[1]*x[2]*x[4]^2*u[2] + 38003*x[1]*x[2]*x[4]^2 + 1270164*x[1]*x[2]*x[4]*u[1] + 1346290*x[1]*x[2]*x[4]*u[2] + 1337539*x[1]*x[2]*x[4] + 56477*x[1]*x[2]*u[1] + 1285409*x[1]*x[2]*u[2] + 1025477*x[1]*x[2] + 1008551*x[1]*x[3]^4 + 488544*x[1]*x[3]^3*x[4] + 253605*x[1]*x[3]^3*u[1] + 1191622*x[1]*x[3]^3*u[2] + 370256*x[1]*x[3]^3 + 1538187*x[1]*x[3]^2*x[4]^2 + 977051*x[1]*x[3]^2*x[4]*u[1] + 328929*x[1]*x[3]^2*x[4]*u[2] + 924319*x[1]*x[3]^2*x[4] + 392664*x[1]*x[3]^2*u[1] + 830173*x[1]*x[3]^2*u[2] + 1514094*x[1]*x[3]^2 + 939214*x[1]*x[3]*x[4]^3 + 217073*x[1]*x[3]*x[4]^2*u[1] + 1456176*x[1]*x[3]*x[4]^2*u[2] + 729133*x[1]*x[3]*x[4]^2 + 1199351*x[1]*x[3]*x[4]*u[1] + 724326*x[1]*x[3]*x[4]*u[2] + 1175862*x[1]*x[3]*x[4] + 1568346*x[1]*x[3]*u[1] + 834614*x[1]*x[3]*u[2] + 1433062*x[1]*x[3] + 197545*x[1]*x[4]^4 + 1163376*x[1]*x[4]^3*u[1] + 1361868*x[1]*x[4]^3*u[2] + 1502612*x[1]*x[4]^3 + 1259006*x[1]*x[4]^2*u[1] + 866680*x[1]*x[4]^2*u[2] + 1581505*x[1]*x[4]^2 + 1089312*x[1]*x[4]*u[1] + 1056987*x[1]*x[4]*u[2] + 159627*x[1]*x[4] + 1165459*x[1]*u[1] + 55066*x[1]*u[2] + 1488803*x[1] + 404939*x[2]^5 + 1392493*x[2]^4*x[3] + 4930*x[2]^4*x[4] + 922378*x[2]^4*u[1] + 1213514*x[2]^4*u[2] + 785803*x[2]^4 + 286868*x[2]^3*x[3]^2 + 1385253*x[2]^3*x[3]*x[4] + 475093*x[2]^3*x[3]*u[1] + 225960*x[2]^3*x[3]*u[2] + 256512*x[2]^3*x[3] + 885435*x[2]^3*x[4]^2 + 1150827*x[2]^3*x[4]*u[1] + 1613523*x[2]^3*x[4]*u[2] + 635082*x[2]^3*x[4] + 981922*x[2]^3*u[1] + 832650*x[2]^3*u[2] + 837465*x[2]^3 + 253605*x[2]^2*x[3]^3 + 977051*x[2]^2*x[3]^2*x[4] + 805755*x[2]^2*x[3]^2*u[1] + 1331585*x[2]^2*x[3]^2*u[2] + 392664*x[2]^2*x[3]^2 + 217073*x[2]^2*x[3]*x[4]^2 + 479789*x[2]^2*x[3]*x[4]*u[1] + 233200*x[2]^2*x[3]*x[4]*u[2] + 1199351*x[2]^2*x[3]*x[4] + 1238594*x[2]^2*x[3]*u[1] + 1361941*x[2]^2*x[3]*u[2] + 1568346*x[2]^2*x[3] + 1163376*x[2]^2*x[4]^3 + 1325527*x[2]^2*x[4]^2*u[1] + 733018*x[2]^2*x[4]^2*u[2] + 1259006*x[2]^2*x[4]^2 + 1453815*x[2]^2*x[4]*u[1] + 983371*x[2]^2*x[4]*u[2] + 1089312*x[2]^2*x[4] + 1014580*x[2]^2*u[1] + 780988*x[2]^2*u[2] + 1165459*x[2]^2 + 852024*x[2]*x[3]^4 + 1314192*x[2]*x[3]^3*x[4] + 857822*x[2]*x[3]^3*u[1] + 1364848*x[2]*x[3]^3*u[2] + 1508090*x[2]*x[3]^3 + 1353662*x[2]*x[3]^2*x[4]^2 + 769215*x[2]*x[3]^2*x[4]*u[1] + 641402*x[2]*x[3]^2*x[4]*u[2] + 37070*x[2]*x[3]^2*x[4] + 1508877*x[2]*x[3]^2*u[1] + 1225789*x[2]*x[3]^2*u[2] + 812369*x[2]*x[3]^2 + 492991*x[2]*x[3]*x[4]^3 + 1053986*x[2]*x[3]*x[4]^2*u[1] + 1401380*x[2]*x[3]*x[4]^2*u[2] + 849743*x[2]*x[3]*x[4]^2 + 1252750*x[2]*x[3]*x[4]*u[1] + 419102*x[2]*x[3]*x[4]*u[2] + 501943*x[2]*x[3]*x[4] + 202956*x[2]*x[3]*u[1] + 50107*x[2]*x[3]*u[2] + 1235043*x[2]*x[3] + 1614264*x[2]*x[4]^4 + 867354*x[2]*x[4]^3*u[1] + 455077*x[2]*x[4]^3*u[2] + 707036*x[2]*x[4]^3 + 713770*x[2]*x[4]^2*u[1] + 359447*x[2]*x[4]^2*u[2] + 655666*x[2]*x[4]^2 + 842380*x[2]*x[4]*u[1] + 529141*x[2]*x[4]*u[2] + 773089*x[2]*x[4] + 537910*x[2]*u[1] + 452994*x[2]*u[2] + 1403601*x[2] + 609902*x[3]^4*u[1] + 766429*x[3]^4*u[2] + 1129909*x[3]^3*x[4]*u[1] + 304261*x[3]^3*x[4]*u[2] + 1248197*x[3]^3*u[1] + 110363*x[3]^3*u[2] + 80266*x[3]^2*x[4]^2*u[1] + 264791*x[3]^2*x[4]^2*u[2] + 694134*x[3]^2*x[4]*u[1] + 1581383*x[3]^2*x[4]*u[2] + 104359*x[3]^2*u[1] + 806084*x[3]^2*u[2] + 679239*x[3]*x[4]^3*u[1] + 1125462*x[3]*x[4]^3*u[2] + 889320*x[3]*x[4]^2*u[1] + 768710*x[3]*x[4]^2*u[2] + 442591*x[3]*x[4]*u[1] + 1116510*x[3]*x[4]*u[2] + 185391*x[3]*u[1] + 383410*x[3]*u[2] + 1420908*x[4]^4*u[1] + 4189*x[4]^4*u[2] + 115841*x[4]^3*u[1] + 911417*x[4]^3*u[2] + 36948*x[4]^2*u[1] + 962787*x[4]^2*u[2] + 1458826*x[4]*u[1] + 845364*x[4]*u[2] + 129650*u[1] + 214852*u[2], 242207*x[1]^5 + 250608*x[1]^4*x[2] + 1139842*x[1]^4*x[3] + 473354*x[1]^4*x[4] + 1376246*x[1]^4*u[1] + 818575*x[1]^4*u[3] + 1360140*x[1]^4 + 122200*x[1]^3*x[2]^2 + 575003*x[1]^3*x[2]*x[3] + 1580624*x[1]^3*x[2]*x[4] + 1367845*x[1]^3*x[2]*u[1] + 702731*x[1]^3*x[2]*u[3] + 814542*x[1]^3*x[2] + 818605*x[1]^3*x[3]^2 + 1518029*x[1]^3*x[3]*x[4] + 1278489*x[1]^3*x[3]*u[1] + 968828*x[1]^3*x[3]*u[3] + 1400211*x[1]^3*x[3] + 728088*x[1]^3*x[4]^2 + 1145099*x[1]^3*x[4]*u[1] + 429353*x[1]^3*x[4]*u[3] + 362163*x[1]^3*x[4] + 258313*x[1]^3*u[1] + 1048415*x[1]^3*u[3] + 417307*x[1]^3 + 225960*x[1]^2*x[2]^3 + 1031261*x[1]^2*x[2]^2*x[3] + 233200*x[1]^2*x[2]^2*x[4] + 1496253*x[1]^2*x[2]^2*u[1] + 13456*x[1]^2*x[2]^2*u[3] + 1361941*x[1]^2*x[2]^2 + 105814*x[1]^2*x[2]*x[3]^2 + 889164*x[1]^2*x[2]*x[3]*x[4] + 340719*x[1]^2*x[2]*x[3]*u[1] + 751824*x[1]^2*x[2]*x[3]*u[3] + 1366423*x[1]^2*x[2]*x[3] + 1401380*x[1]^2*x[2]*x[4]^2 + 37829*x[1]^2*x[2]*x[4]*u[1] + 393640*x[1]^2*x[2]*x[4]*u[3] + 419102*x[1]^2*x[2]*x[4] + 803911*x[1]^2*x[2]*u[1] + 1085155*x[1]^2*x[2]*u[3] + 50107*x[1]^2*x[2] + 937317*x[1]^2*x[3]^3 + 1111174*x[1]^2*x[3]^2*x[4] + 1449473*x[1]^2*x[3]^2*u[1] + 509946*x[1]^2*x[3]^2*u[3] + 1106028*x[1]^2*x[3]^2 + 241820*x[1]^2*x[3]*x[4]^2 + 1289524*x[1]^2*x[3]*x[4]*u[1] + 1420062*x[1]^2*x[3]*x[4]*u[3] + 200321*x[1]^2*x[3]*x[4] + 788280*x[1]^2*x[3]*u[1] + 843514*x[1]^2*x[3]*u[3] + 1311722*x[1]^2*x[3] + 1125462*x[1]^2*x[4]^3 + 890365*x[1]^2*x[4]^2*u[1] + 287762*x[1]^2*x[4]^2*u[3] + 768710*x[1]^2*x[4]^2 + 1256290*x[1]^2*x[4]*u[1] + 1343992*x[1]^2*x[4]*u[3] + 1116510*x[1]^2*x[4] + 1201146*x[1]^2*u[1] + 300446*x[1]^2*u[3] + 383410*x[1]^2 + 285840*x[1]*x[2]^4 + 1463437*x[1]*x[2]^3*x[3] + 919039*x[1]*x[2]^3*x[4] + 1392493*x[1]*x[2]^3*u[1] + 1236299*x[1]*x[2]^3*u[3] + 666104*x[1]*x[2]^3 + 87320*x[1]*x[2]^2*x[3]^2 + 1581527*x[1]*x[2]^2*x[3]*x[4] + 573736*x[1]*x[2]^2*x[3]*u[1] + 244400*x[1]*x[2]^2*x[3]*u[3] + 1326434*x[1]*x[2]^2*x[3] + 1091460*x[1]*x[2]^2*x[4]^2 + 1385253*x[1]*x[2]^2*x[4]*u[1] + 886164*x[1]*x[2]^2*x[4]*u[3] + 992078*x[1]*x[2]^2*x[4] + 256512*x[1]*x[2]^2*u[1] + 401595*x[1]*x[2]^2*u[3] + 1516975*x[1]*x[2]^2 + 1138017*x[1]*x[2]*x[3]^3 + 1541290*x[1]*x[2]*x[3]^2*x[4] + 760815*x[1]*x[2]*x[3]^2*u[1] + 1277734*x[1]*x[2]*x[3]^2*u[3] + 1100137*x[1]*x[2]*x[3]^2 + 222747*x[1]*x[2]*x[3]*x[4]^2 + 335649*x[1]*x[2]*x[3]*x[4]*u[1] + 1542795*x[1]*x[2]*x[3]*x[4]*u[3] + 502348*x[1]*x[2]*x[3]*x[4] + 785328*x[1]*x[2]*x[3]*u[1] + 10631*x[1]*x[2]*x[3]*u[3] + 124326*x[1]*x[2]*x[3] + 939214*x[1]*x[2]*x[4]^3 + 217073*x[1]*x[2]*x[4]^2*u[1] + 1235174*x[1]*x[2]*x[4]^2*u[3] + 729133*x[1]*x[2]*x[4]^2 + 1199351*x[1]*x[2]*x[4]*u[1] + 1346290*x[1]*x[2]*x[4]*u[3] + 1175862*x[1]*x[2]*x[4] + 1568346*x[1]*x[2]*u[1] + 1285409*x[1]*x[2]*u[3] + 1433062*x[1]*x[2] + 1165319*x[1]*x[3]^4 + 1157615*x[1]*x[3]^3*x[4] + 171190*x[1]*x[3]^3*u[1] + 1191622*x[1]*x[3]^3*u[3] + 727390*x[1]*x[3]^3 + 987867*x[1]*x[3]^2*x[4]^2 + 705670*x[1]*x[3]^2*x[4]*u[1] + 328929*x[1]*x[3]^2*x[4]*u[3] + 1246671*x[1]*x[3]^2*x[4] + 1287364*x[1]*x[3]^2*u[1] + 830173*x[1]*x[3]^2*u[3] + 1080481*x[1]*x[3]^2 + 817938*x[1]*x[3]*x[4]^3 + 1088871*x[1]*x[3]*x[4]^2*u[1] + 1456176*x[1]*x[3]*x[4]^2*u[3] + 241748*x[1]*x[3]*x[4]^2 + 74140*x[1]*x[3]*x[4]*u[1] + 724326*x[1]*x[3]*x[4]*u[3] + 969715*x[1]*x[3]*x[4] + 6285*x[1]*x[3]*u[1] + 834614*x[1]*x[3]*u[3] + 988261*x[1]*x[3] + 743491*x[1]*x[4]^4 + 492991*x[1]*x[4]^3*u[1] + 1361868*x[1]*x[4]^3*u[3] + 379348*x[1]*x[4]^3 + 849743*x[1]*x[4]^2*u[1] + 866680*x[1]*x[4]^2*u[3] + 1118312*x[1]*x[4]^2 + 501943*x[1]*x[4]*u[1] + 1056987*x[1]*x[4]*u[3] + 827061*x[1]*x[4] + 1235043*x[1]*u[1] + 55066*x[1]*u[3] + 1168791*x[1] + 404939*x[2]^4*x[3] + 1332613*x[2]^4*u[1] + 1213514*x[2]^4*u[3] + 1392493*x[2]^3*x[3]^2 + 4930*x[2]^3*x[3]*x[4] + 537170*x[2]^3*x[3]*u[1] + 225960*x[2]^3*x[3]*u[3] + 785803*x[2]^3*x[3] + 699414*x[2]^3*x[4]*u[1] + 1613523*x[2]^3*x[4]*u[3] + 952349*x[2]^3*u[1] + 832650*x[2]^3*u[3] + 286868*x[2]^2*x[3]^3 + 1385253*x[2]^2*x[3]^2*x[4] + 1286733*x[2]^2*x[3]^2*u[1] + 1331585*x[2]^2*x[3]^2*u[3] + 256512*x[2]^2*x[3]^2 + 885435*x[2]^2*x[3]*x[4]^2 + 769215*x[2]^2*x[3]*x[4]*u[1] + 233200*x[2]^2*x[3]*x[4]*u[3] + 635082*x[2]^2*x[3]*x[4] + 1508877*x[2]^2*x[3]*u[1] + 1361941*x[2]^2*x[3]*u[3] + 837465*x[2]^2*x[3] + 526993*x[2]^2*x[4]^2*u[1] + 733018*x[2]^2*x[4]^2*u[3] + 626375*x[2]^2*x[4]*u[1] + 983371*x[2]^2*x[4]*u[3] + 101478*x[2]^2*u[1] + 780988*x[2]^2*u[3] + 253605*x[2]*x[3]^4 + 977051*x[2]*x[3]^3*x[4] + 821155*x[2]*x[3]^3*u[1] + 1364848*x[2]*x[3]^3*u[3] + 392664*x[2]*x[3]^3 + 217073*x[2]*x[3]^2*x[4]^2 + 152821*x[2]*x[3]^2*x[4]*u[1] + 641402*x[2]*x[3]^2*x[4]*u[3] + 1199351*x[2]*x[3]^2*x[4] + 507685*x[2]*x[3]^2*u[1] + 1225789*x[2]*x[3]^2*u[3] + 1568346*x[2]*x[3]^2 + 1163376*x[2]*x[3]*x[4]^3 + 160532*x[2]*x[3]*x[4]^2*u[1] + 1401380*x[2]*x[3]*x[4]^2*u[3] + 1259006*x[2]*x[3]*x[4]^2 + 1388268*x[2]*x[3]*x[4]*u[1] + 419102*x[2]*x[3]*x[4]*u[3] + 1089312*x[2]*x[3]*x[4] + 208718*x[2]*x[3]*u[1] + 50107*x[2]*x[3]*u[3] + 1165459*x[2]*x[3] + 679239*x[2]*x[4]^3*u[1] + 455077*x[2]*x[4]^3*u[3] + 889320*x[2]*x[4]^2*u[1] + 359447*x[2]*x[4]^2*u[3] + 442591*x[2]*x[4]*u[1] + 529141*x[2]*x[4]*u[3] + 185391*x[2]*u[1] + 452994*x[2]*u[3] + 852024*x[3]^5 + 1314192*x[3]^4*x[4] + 879965*x[3]^4*u[1] + 766429*x[3]^4*u[3] + 1508090*x[3]^4 + 1353662*x[3]^3*x[4]^2 + 131909*x[3]^3*x[4]*u[1] + 304261*x[3]^3*x[4]*u[3] + 37070*x[3]^3*x[4] + 60890*x[3]^3*u[1] + 110363*x[3]^3*u[3] + 812369*x[3]^3 + 492991*x[3]^2*x[4]^3 + 792863*x[3]^2*x[4]^2*u[1] + 264791*x[3]^2*x[4]^2*u[3] + 849743*x[3]^2*x[4]^2 + 1265909*x[3]^2*x[4]*u[1] + 1581383*x[3]^2*x[4]*u[3] + 501943*x[3]^2*x[4] + 1321811*x[3]^2*u[1] + 806084*x[3]^2*u[3] + 1235043*x[3]^2 + 1614264*x[3]*x[4]^4 + 1057100*x[3]*x[4]^3*u[1] + 1125462*x[3]*x[4]^3*u[3] + 707036*x[3]*x[4]^3 + 510025*x[3]*x[4]^2*u[1] + 768710*x[3]*x[4]^2*u[3] + 655666*x[3]*x[4]^2 + 1210204*x[3]*x[4]*u[1] + 1116510*x[3]*x[4]*u[3] + 773089*x[3]*x[4] + 575126*x[3]*u[1] + 383410*x[3]*u[3] + 1403601*x[3] + 874962*x[4]^4*u[1] + 4189*x[4]^4*u[3] + 1239105*x[4]^3*u[1] + 911417*x[4]^3*u[3] + 500141*x[4]^2*u[1] + 962787*x[4]^2*u[3] + 791392*x[4]*u[1] + 845364*x[4]*u[3] + 449662*u[1] + 214852*u[3], 242207*x[1]^4*x[2] + 1038157*x[1]^4*x[3] + 1376246*x[1]^4*u[2] + 580296*x[1]^4*u[3] + 250608*x[1]^3*x[2]^2 + 1409962*x[1]^3*x[2]*x[3] + 473354*x[1]^3*x[2]*x[4] + 1367845*x[1]^3*x[2]*u[2] + 548455*x[1]^3*x[2]*u[3] + 1360140*x[1]^3*x[2] + 1367845*x[1]^3*x[3]^2 + 408271*x[1]^3*x[3]*x[4] + 1278489*x[1]^3*x[3]*u[2] + 250608*x[1]^3*x[3]*u[3] + 177766*x[1]^3*x[3] + 1145099*x[1]^3*x[4]*u[2] + 1210182*x[1]^3*x[4]*u[3] + 258313*x[1]^3*u[2] + 1440687*x[1]^3*u[3] + 122200*x[1]^2*x[2]^3 + 232512*x[1]^2*x[2]^2*x[3] + 1580624*x[1]^2*x[2]^2*x[4] + 1496253*x[1]^2*x[2]^2*u[2] + 1045222*x[1]^2*x[2]^2*u[3] + 814542*x[1]^2*x[2]^2 + 1543033*x[1]^2*x[2]*x[3]^2 + 1061218*x[1]^2*x[2]*x[3]*x[4] + 340719*x[1]^2*x[2]*x[3]*u[2] + 244400*x[1]^2*x[2]*x[3]*u[3] + 428578*x[1]^2*x[2]*x[3] + 728088*x[1]^2*x[2]*x[4]^2 + 37829*x[1]^2*x[2]*x[4]*u[2] + 886164*x[1]^2*x[2]*x[4]*u[3] + 362163*x[1]^2*x[2]*x[4] + 803911*x[1]^2*x[2]*u[2] + 401595*x[1]^2*x[2]*u[3] + 417307*x[1]^2*x[2] + 979586*x[1]^2*x[3]^3 + 37829*x[1]^2*x[3]^2*x[4] + 1449473*x[1]^2*x[3]^2*u[2] + 638867*x[1]^2*x[3]^2*u[3] + 803911*x[1]^2*x[3]^2 + 1000866*x[1]^2*x[3]*x[4]^2 + 1289524*x[1]^2*x[3]*x[4]*u[2] + 1580624*x[1]^2*x[3]*x[4]*u[3] + 945308*x[1]^2*x[3]*x[4] + 788280*x[1]^2*x[3]*u[2] + 814542*x[1]^2*x[3]*u[3] + 166522*x[1]^2*x[3] + 890365*x[1]^2*x[4]^2*u[2] + 617587*x[1]^2*x[4]^2*u[3] + 1256290*x[1]^2*x[4]*u[2] + 673145*x[1]^2*x[4]*u[3] + 1201146*x[1]^2*u[2] + 1451931*x[1]^2*u[3] + 225960*x[1]*x[2]^4 + 1046020*x[1]*x[2]^3*x[3] + 233200*x[1]*x[2]^3*x[4] + 1392493*x[1]*x[2]^3*u[2] + 1617150*x[1]*x[2]^3*u[3] + 1361941*x[1]*x[2]^3 + 179758*x[1]*x[2]^2*x[3]^2 + 1297594*x[1]*x[2]^2*x[3]*x[4] + 573736*x[1]*x[2]^2*x[3]*u[2] + 677880*x[1]*x[2]^2*x[3]*u[3] + 1572081*x[1]*x[2]^2*x[3] + 1401380*x[1]*x[2]^2*x[4]^2 + 1385253*x[1]*x[2]^2*x[4]*u[2] + 1603663*x[1]*x[2]^2*x[4]*u[3] + 419102*x[1]*x[2]^2*x[4] + 256512*x[1]*x[2]^2*u[2] + 879497*x[1]*x[2]^2*u[3] + 50107*x[1]*x[2]^2 + 402546*x[1]*x[2]*x[3]^3 + 446383*x[1]*x[2]*x[3]^2*x[4] + 760815*x[1]*x[2]*x[3]^2*u[2] + 1044717*x[1]*x[2]*x[3]^2*u[3] + 844113*x[1]*x[2]*x[3]^2 + 681999*x[1]*x[2]*x[3]*x[4]^2 + 335649*x[1]*x[2]*x[3]*x[4]*u[2] + 466400*x[1]*x[2]*x[3]*x[4]*u[3] + 1196024*x[1]*x[2]*x[3]*x[4] + 785328*x[1]*x[2]*x[3]*u[2] + 1105429*x[1]*x[2]*x[3]*u[3] + 50192*x[1]*x[2]*x[3] + 1125462*x[1]*x[2]*x[4]^3 + 217073*x[1]*x[2]*x[4]^2*u[2] + 1466036*x[1]*x[2]*x[4]^2*u[3] + 768710*x[1]*x[2]*x[4]^2 + 1199351*x[1]*x[2]*x[4]*u[2] + 348289*x[1]*x[2]*x[4]*u[3] + 1116510*x[1]*x[2]*x[4] + 1568346*x[1]*x[2]*u[2] + 1561976*x[1]*x[2]*u[3] + 383410*x[1]*x[2] + 253605*x[1]*x[3]^4 + 977051*x[1]*x[3]^3*x[4] + 171190*x[1]*x[3]^3*u[2] + 1364848*x[1]*x[3]^3*u[3] + 392664*x[1]*x[3]^3 + 217073*x[1]*x[3]^2*x[4]^2 + 705670*x[1]*x[3]^2*x[4]*u[2] + 641402*x[1]*x[3]^2*x[4]*u[3] + 1199351*x[1]*x[3]^2*x[4] + 1287364*x[1]*x[3]^2*u[2] + 1225789*x[1]*x[3]^2*u[3] + 1568346*x[1]*x[3]^2 + 1163376*x[1]*x[3]*x[4]^3 + 1088871*x[1]*x[3]*x[4]^2*u[2] + 1401380*x[1]*x[3]*x[4]^2*u[3] + 1259006*x[1]*x[3]*x[4]^2 + 74140*x[1]*x[3]*x[4]*u[2] + 419102*x[1]*x[3]*x[4]*u[3] + 1089312*x[1]*x[3]*x[4] + 6285*x[1]*x[3]*u[2] + 50107*x[1]*x[3]*u[3] + 1165459*x[1]*x[3] + 492991*x[1]*x[4]^3*u[2] + 455077*x[1]*x[4]^3*u[3] + 849743*x[1]*x[4]^2*u[2] + 359447*x[1]*x[4]^2*u[3] + 501943*x[1]*x[4]*u[2] + 529141*x[1]*x[4]*u[3] + 1235043*x[1]*u[2] + 452994*x[1]*u[3] + 285840*x[2]^5 + 385208*x[2]^4*x[3] + 919039*x[2]^4*x[4] + 1332613*x[2]^4*u[2] + 696075*x[2]^4*u[3] + 666104*x[2]^4 + 806813*x[2]^3*x[3]^2 + 381612*x[2]^3*x[3]*x[4] + 537170*x[2]^3*x[3]*u[2] + 1143360*x[2]^3*x[3]*u[3] + 1091498*x[2]^3*x[3] + 1091460*x[2]^3*x[4]^2 + 699414*x[2]^3*x[4]*u[2] + 467626*x[2]^3*x[4]*u[3] + 992078*x[2]^3*x[4] + 952349*x[2]^3*u[2] + 636531*x[2]^3*u[3] + 1516975*x[2]^3 + 1603053*x[2]^2*x[3]^3 + 326968*x[2]^2*x[3]^2*x[4] + 1286733*x[2]^2*x[3]^2*u[2] + 812698*x[2]^2*x[3]^2*u[3] + 730909*x[2]^2*x[3]^2 + 1164995*x[2]^2*x[3]*x[4]^2 + 769215*x[2]^2*x[3]*x[4]*u[2] + 1138664*x[2]^2*x[3]*x[4]*u[3] + 65547*x[2]^2*x[3]*x[4] + 1508877*x[2]^2*x[3]*u[2] + 379859*x[2]^2*x[3]*u[3] + 805862*x[2]^2*x[3] + 939214*x[2]^2*x[4]^3 + 526993*x[2]^2*x[4]^2*u[2] + 292926*x[2]^2*x[4]^2*u[3] + 729133*x[2]^2*x[4]^2 + 626375*x[2]^2*x[4]*u[2] + 164638*x[2]^2*x[4]*u[3] + 1175862*x[2]^2*x[4] + 101478*x[2]^2*u[2] + 603873*x[2]^2*u[3] + 1433062*x[2]^2 + 1596310*x[2]*x[3]^4 + 637306*x[2]*x[3]^3*x[4] + 821155*x[2]*x[3]^3*u[2] + 760631*x[2]*x[3]^3*u[3] + 1447987*x[2]*x[3]^3 + 261123*x[2]*x[3]^2*x[4]^2 + 152821*x[2]*x[3]^2*x[4]*u[2] + 849238*x[2]*x[3]^2*x[4]*u[3] + 1605294*x[2]*x[3]^2*x[4] + 507685*x[2]*x[3]^2*u[2] + 109576*x[2]*x[3]^2*u[3] + 499598*x[2]*x[3]^2 + 1428707*x[2]*x[3]*x[4]^3 + 160532*x[2]*x[3]*x[4]^2*u[2] + 564467*x[2]*x[3]*x[4]^2*u[3] + 203745*x[2]*x[3]*x[4]^2 + 1388268*x[2]*x[3]*x[4]*u[2] + 365703*x[2]*x[3]*x[4]*u[3] + 1250629*x[2]*x[3]*x[4] + 208718*x[2]*x[3]*u[2] + 1415497*x[2]*x[3]*u[3] + 1581237*x[2]*x[3] + 743491*x[2]*x[4]^4 + 679239*x[2]*x[4]^3*u[2] + 751099*x[2]*x[4]^3*u[3] + 379348*x[2]*x[4]^3 + 889320*x[2]*x[4]^2*u[2] + 904683*x[2]*x[4]^2*u[3] + 1118312*x[2]*x[4]^2 + 442591*x[2]*x[4]*u[2] + 776073*x[2]*x[4]*u[3] + 827061*x[2]*x[4] + 185391*x[2]*u[2] + 1080543*x[2]*u[3] + 1168791*x[2] + 609902*x[3]^5 + 1129909*x[3]^4*x[4] + 879965*x[3]^4*u[2] + 1008551*x[3]^4*u[3] + 1248197*x[3]^4 + 80266*x[3]^3*x[4]^2 + 131909*x[3]^3*x[4]*u[2] + 488544*x[3]^3*x[4]*u[3] + 694134*x[3]^3*x[4] + 60890*x[3]^3*u[2] + 370256*x[3]^3*u[3] + 104359*x[3]^3 + 679239*x[3]^2*x[4]^3 + 792863*x[3]^2*x[4]^2*u[2] + 1538187*x[3]^2*x[4]^2*u[3] + 889320*x[3]^2*x[4]^2 + 1265909*x[3]^2*x[4]*u[2] + 924319*x[3]^2*x[4]*u[3] + 442591*x[3]^2*x[4] + 1321811*x[3]^2*u[2] + 1514094*x[3]^2*u[3] + 185391*x[3]^2 + 1420908*x[3]*x[4]^4 + 1057100*x[3]*x[4]^3*u[2] + 939214*x[3]*x[4]^3*u[3] + 115841*x[3]*x[4]^3 + 510025*x[3]*x[4]^2*u[2] + 729133*x[3]*x[4]^2*u[3] + 36948*x[3]*x[4]^2 + 1210204*x[3]*x[4]*u[2] + 1175862*x[3]*x[4]*u[3] + 1458826*x[3]*x[4] + 575126*x[3]*u[2] + 1433062*x[3]*u[3] + 129650*x[3] + 874962*x[4]^4*u[2] + 197545*x[4]^4*u[3] + 1239105*x[4]^3*u[2] + 1502612*x[4]^3*u[3] + 500141*x[4]^2*u[2] + 1581505*x[4]^2*u[3] + 791392*x[4]*u[2] + 159627*x[4]*u[3] + 449662*u[2] + 1488803*u[3], 1321178*x[1]^5 + 1210182*x[1]^4*x[2] + 473354*x[1]^4*x[3] + 452235*x[1]^4*x[4] + 297275*x[1]^4*u[1] + 818575*x[1]^4*u[4] + 1526966*x[1]^4 + 443082*x[1]^3*x[2]^2 + 1580624*x[1]^3*x[2]*x[3] + 532443*x[1]^3*x[2]*x[4] + 408271*x[1]^3*x[2]*u[1] + 702731*x[1]^3*x[2]*u[4] + 673145*x[1]^3*x[2] + 973691*x[1]^3*x[3]^2 + 487348*x[1]^3*x[3]*x[4] + 1145099*x[1]^3*x[3]*u[1] + 968828*x[1]^3*x[3]*u[4] + 362163*x[1]^3*x[3] + 1613449*x[1]^3*x[4]^2 + 347643*x[1]^3*x[4]*u[1] + 429353*x[1]^3*x[4]*u[4] + 1436718*x[1]^3*x[4] + 91487*x[1]^3*u[1] + 1048415*x[1]^3*u[4] + 1337720*x[1]^3 + 1613523*x[1]^2*x[2]^3 + 233200*x[1]^2*x[2]^2*x[3] + 1452580*x[1]^2*x[2]^2*x[4] + 1175371*x[1]^2*x[2]^2*u[1] + 13456*x[1]^2*x[2]^2*u[4] + 983371*x[1]^2*x[2]^2 + 641402*x[1]^2*x[2]*x[3]^2 + 432483*x[1]^2*x[2]*x[3]*x[4] + 37829*x[1]^2*x[2]*x[3]*u[1] + 751824*x[1]^2*x[2]*x[3]*u[4] + 419102*x[1]^2*x[2]*x[3] + 971591*x[1]^2*x[2]*x[4]^2 + 383279*x[1]^2*x[2]*x[4]*u[1] + 393640*x[1]^2*x[2]*x[4]*u[4] + 1252192*x[1]^2*x[2]*x[4] + 945308*x[1]^2*x[2]*u[1] + 1085155*x[1]^2*x[2]*u[4] + 529141*x[1]^2*x[2] + 304261*x[1]^2*x[3]^3 + 19636*x[1]^2*x[3]^2*x[4] + 644762*x[1]^2*x[3]^2*u[1] + 509946*x[1]^2*x[3]^2*u[4] + 1581383*x[1]^2*x[3]^2 + 337871*x[1]^2*x[3]*x[4]^2 + 162277*x[1]^2*x[3]*x[4]*u[1] + 1420062*x[1]^2*x[3]*x[4]*u[4] + 693906*x[1]^2*x[3]*x[4] + 1256290*x[1]^2*x[3]*u[1] + 843514*x[1]^2*x[3]*u[4] + 1116510*x[1]^2*x[3] + 1347447*x[1]^2*x[4]^3 + 1194104*x[1]^2*x[4]^2*u[1] + 287762*x[1]^2*x[4]^2*u[4] + 1390259*x[1]^2*x[4]^2 + 751773*x[1]^2*x[4]*u[1] + 1343992*x[1]^2*x[4]*u[4] + 6675*x[1]^2*x[4] + 280733*x[1]^2*u[1] + 300446*x[1]^2*u[4] + 845364*x[1]^2 + 926133*x[1]*x[2]^4 + 919039*x[1]*x[2]^3*x[3] + 577438*x[1]*x[2]^3*x[4] + 4930*x[1]*x[2]^3*u[1] + 1236299*x[1]*x[2]^3*u[4] + 1133848*x[1]*x[2]^3 + 424619*x[1]*x[2]^2*x[3]^2 + 320067*x[1]*x[2]^2*x[3]*x[4] + 1385253*x[1]*x[2]^2*x[3]*u[1] + 244400*x[1]*x[2]^2*x[3]*u[4] + 992078*x[1]*x[2]^2*x[3] + 1049711*x[1]*x[2]^2*x[4]^2 + 152417*x[1]*x[2]^2*x[4]*u[1] + 886164*x[1]*x[2]^2*x[4]*u[4] + 503088*x[1]*x[2]^2*x[4] + 635082*x[1]*x[2]^2*u[1] + 401595*x[1]*x[2]^2*u[4] + 1197263*x[1]*x[2]^2 + 488544*x[1]*x[2]*x[3]^3 + 180187*x[1]*x[2]*x[3]^2*x[4] + 977051*x[1]*x[2]*x[3]^2*u[1] + 1277734*x[1]*x[2]*x[3]^2*u[4] + 924319*x[1]*x[2]*x[3]^2 + 1274847*x[1]*x[2]*x[3]*x[4]^2 + 434146*x[1]*x[2]*x[3]*x[4]*u[1] + 1542795*x[1]*x[2]*x[3]*x[4]*u[4] + 1447635*x[1]*x[2]*x[3]*x[4] + 1199351*x[1]*x[2]*x[3]*u[1] + 10631*x[1]*x[2]*x[3]*u[4] + 1175862*x[1]*x[2]*x[3] + 1173459*x[1]*x[2]*x[4]^3 + 253222*x[1]*x[2]*x[4]^2*u[1] + 1235174*x[1]*x[2]*x[4]^2*u[4] + 1543093*x[1]*x[2]*x[4]^2 + 899559*x[1]*x[2]*x[4]*u[1] + 1346290*x[1]*x[2]*x[4]*u[4] + 259148*x[1]*x[2]*x[4] + 1089312*x[1]*x[2]*u[1] + 1285409*x[1]*x[2]*u[4] + 159627*x[1]*x[2] + 371636*x[1]*x[3]^4 + 437740*x[1]*x[3]^3*x[4] + 1314192*x[1]*x[3]^3*u[1] + 1191622*x[1]*x[3]^3*u[4] + 656999*x[1]*x[3]^3 + 1322327*x[1]*x[3]^2*x[4]^2 + 1088871*x[1]*x[3]^2*x[4]*u[1] + 328929*x[1]*x[3]^2*x[4]*u[4] + 278255*x[1]*x[3]^2*x[4] + 37070*x[1]*x[3]^2*u[1] + 830173*x[1]*x[3]^2*u[4] + 1013351*x[1]*x[3]^2 + 1517788*x[1]*x[3]*x[4]^3 + 1478973*x[1]*x[3]*x[4]^2*u[1] + 1456176*x[1]*x[3]*x[4]^2*u[4] + 413718*x[1]*x[3]*x[4]^2 + 81033*x[1]*x[3]*x[4]*u[1] + 724326*x[1]*x[3]*x[4]*u[4] + 1402010*x[1]*x[3]*x[4] + 501943*x[1]*x[3]*u[1] + 834614*x[1]*x[3]*u[4] + 827061*x[1]*x[3] + 173797*x[1]*x[4]^4 + 1601697*x[1]*x[4]^3*u[1] + 1361868*x[1]*x[4]^3*u[4] + 150894*x[1]*x[4]^3 + 502655*x[1]*x[4]^2*u[1] + 866680*x[1]*x[4]^2*u[4] + 878779*x[1]*x[4]^2 + 1311332*x[1]*x[4]*u[1] + 1056987*x[1]*x[4]*u[4] + 314026*x[1]*x[4] + 773089*x[1]*u[1] + 55066*x[1]*u[4] + 58448*x[1] + 404939*x[2]^4*x[4] + 692320*x[2]^4*u[1] + 1213514*x[2]^4*u[4] + 1392493*x[2]^3*x[3]*x[4] + 699414*x[2]^3*x[3]*u[1] + 225960*x[2]^3*x[3]*u[4] + 4930*x[2]^3*x[4]^2 + 1423169*x[2]^3*x[4]*u[1] + 1613523*x[2]^3*x[4]*u[4] + 785803*x[2]^3*x[4] + 484605*x[2]^3*u[1] + 832650*x[2]^3*u[4] + 286868*x[2]^2*x[3]^2*x[4] + 1193834*x[2]^2*x[3]^2*u[1] + 1331585*x[2]^2*x[3]^2*u[4] + 1385253*x[2]^2*x[3]*x[4]^2 + 1053986*x[2]^2*x[3]*x[4]*u[1] + 233200*x[2]^2*x[3]*x[4]*u[4] + 256512*x[2]^2*x[3]*x[4] + 626375*x[2]^2*x[3]*u[1] + 1361941*x[2]^2*x[3]*u[4] + 885435*x[2]^2*x[4]^3 + 1301031*x[2]^2*x[4]^2*u[1] + 733018*x[2]^2*x[4]^2*u[4] + 635082*x[2]^2*x[4]^2 + 713770*x[2]^2*x[4]*u[1] + 983371*x[2]^2*x[4]*u[4] + 837465*x[2]^2*x[4] + 421190*x[2]^2*u[1] + 780988*x[2]^2*u[4] + 253605*x[2]*x[3]^3*x[4] + 1129909*x[2]*x[3]^3*u[1] + 1364848*x[2]*x[3]^3*u[4] + 977051*x[2]*x[3]^2*x[4]^2 + 160532*x[2]*x[3]^2*x[4]*u[1] + 641402*x[2]*x[3]^2*x[4]*u[4] + 392664*x[2]*x[3]^2*x[4] + 694134*x[2]*x[3]^2*u[1] + 1225789*x[2]*x[3]^2*u[4] + 217073*x[2]*x[3]*x[4]^3 + 419264*x[2]*x[3]*x[4]^2*u[1] + 1401380*x[2]*x[3]*x[4]^2*u[4] + 1199351*x[2]*x[3]*x[4]^2 + 160187*x[2]*x[3]*x[4]*u[1] + 419102*x[2]*x[3]*x[4]*u[4] + 1568346*x[2]*x[3]*x[4] + 442591*x[2]*x[3]*u[1] + 50107*x[2]*x[3]*u[4] + 1163376*x[2]*x[4]^4 + 828273*x[2]*x[4]^3*u[1] + 455077*x[2]*x[4]^3*u[4] + 1259006*x[2]*x[4]^3 + 347523*x[2]*x[4]^2*u[1] + 359447*x[2]*x[4]^2*u[4] + 1089312*x[2]*x[4]^2 + 73896*x[2]*x[4]*u[1] + 529141*x[2]*x[4]*u[4] + 1165459*x[2]*x[4] + 1458826*x[2]*u[1] + 452994*x[2]*u[4] + 852024*x[3]^4*x[4] + 1246817*x[3]^4*u[1] + 766429*x[3]^4*u[4] + 1314192*x[3]^3*x[4]^2 + 1607544*x[3]^3*x[4]*u[1] + 304261*x[3]^3*x[4]*u[4] + 1508090*x[3]^3*x[4] + 961454*x[3]^3*u[1] + 110363*x[3]^3*u[4] + 1353662*x[3]^2*x[4]^3 + 1585650*x[3]^2*x[4]^2*u[1] + 264791*x[3]^2*x[4]^2*u[4] + 37070*x[3]^2*x[4]^2 + 510025*x[3]^2*x[4]*u[1] + 1581383*x[3]^2*x[4]*u[4] + 812369*x[3]^2*x[4] + 605102*x[3]^2*u[1] + 806084*x[3]^2*u[4] + 492991*x[3]*x[4]^4 + 262942*x[3]*x[4]^3*u[1] + 1125462*x[3]*x[4]^3*u[4] + 849743*x[3]*x[4]^3 + 480409*x[3]*x[4]^2*u[1] + 768710*x[3]*x[4]^2*u[4] + 501943*x[3]*x[4]^2 + 1000282*x[3]*x[4]*u[1] + 1116510*x[3]*x[4]*u[4] + 1235043*x[3]*x[4] + 791392*x[3]*u[1] + 383410*x[3]*u[4] + 1614264*x[4]^5 + 82788*x[4]^4*u[1] + 4189*x[4]^4*u[4] + 707036*x[4]^4 + 600879*x[4]^3*u[1] + 911417*x[4]^3*u[4] + 655666*x[4]^3 + 1301140*x[4]^2*u[1] + 962787*x[4]^2*u[4] + 773089*x[4]^2 + 1249361*x[4]*u[1] + 845364*x[4]*u[4] + 1403601*x[4] + 1560005*u[1] + 214852*u[4], 1321178*x[1]^4*x[2] + 1038157*x[1]^4*x[4] + 297275*x[1]^4*u[2] + 580296*x[1]^4*u[4] + 1210182*x[1]^3*x[2]^2 + 473354*x[1]^3*x[2]*x[3] + 722355*x[1]^3*x[2]*x[4] + 408271*x[1]^3*x[2]*u[2] + 548455*x[1]^3*x[2]*u[4] + 1526966*x[1]^3*x[2] + 1367845*x[1]^3*x[3]*x[4] + 1145099*x[1]^3*x[3]*u[2] + 250608*x[1]^3*x[3]*u[4] + 408271*x[1]^3*x[4]^2 + 347643*x[1]^3*x[4]*u[2] + 1210182*x[1]^3*x[4]*u[4] + 177766*x[1]^3*x[4] + 91487*x[1]^3*u[2] + 1440687*x[1]^3*u[4] + 443082*x[1]^2*x[2]^3 + 1580624*x[1]^2*x[2]^2*x[3] + 189952*x[1]^2*x[2]^2*x[4] + 1175371*x[1]^2*x[2]^2*u[2] + 1045222*x[1]^2*x[2]^2*u[4] + 673145*x[1]^2*x[2]^2 + 973691*x[1]^2*x[2]*x[3]^2 + 1211776*x[1]^2*x[2]*x[3]*x[4] + 37829*x[1]^2*x[2]*x[3]*u[2] + 244400*x[1]^2*x[2]*x[3]*u[4] + 362163*x[1]^2*x[2]*x[3] + 1156638*x[1]^2*x[2]*x[4]^2 + 383279*x[1]^2*x[2]*x[4]*u[2] + 886164*x[1]^2*x[2]*x[4]*u[4] + 465085*x[1]^2*x[2]*x[4] + 945308*x[1]^2*x[2]*u[2] + 401595*x[1]^2*x[2]*u[4] + 1337720*x[1]^2*x[2] + 979586*x[1]^2*x[3]^2*x[4] + 644762*x[1]^2*x[3]^2*u[2] + 638867*x[1]^2*x[3]^2*u[4] + 37829*x[1]^2*x[3]*x[4]^2 + 162277*x[1]^2*x[3]*x[4]*u[2] + 1580624*x[1]^2*x[3]*x[4]*u[4] + 803911*x[1]^2*x[3]*x[4] + 1256290*x[1]^2*x[3]*u[2] + 814542*x[1]^2*x[3]*u[4] + 1000866*x[1]^2*x[4]^3 + 1194104*x[1]^2*x[4]^2*u[2] + 617587*x[1]^2*x[4]^2*u[4] + 945308*x[1]^2*x[4]^2 + 751773*x[1]^2*x[4]*u[2] + 673145*x[1]^2*x[4]*u[4] + 166522*x[1]^2*x[4] + 280733*x[1]^2*u[2] + 1451931*x[1]^2*u[4] + 1613523*x[1]*x[2]^4 + 233200*x[1]*x[2]^3*x[3] + 1467339*x[1]*x[2]^3*x[4] + 4930*x[1]*x[2]^3*u[2] + 1617150*x[1]*x[2]^3*u[4] + 983371*x[1]*x[2]^3 + 641402*x[1]*x[2]^2*x[3]^2 + 506427*x[1]*x[2]^2*x[3]*x[4] + 1385253*x[1]*x[2]^2*x[3]*u[2] + 677880*x[1]*x[2]^2*x[3]*u[4] + 419102*x[1]*x[2]^2*x[3] + 1380021*x[1]*x[2]^2*x[4]^2 + 152417*x[1]*x[2]^2*x[4]*u[2] + 1603663*x[1]*x[2]^2*x[4]*u[4] + 1457850*x[1]*x[2]^2*x[4] + 635082*x[1]*x[2]^2*u[2] + 879497*x[1]*x[2]^2*u[4] + 529141*x[1]*x[2]^2 + 304261*x[1]*x[2]*x[3]^3 + 1103318*x[1]*x[2]*x[3]^2*x[4] + 977051*x[1]*x[2]*x[3]^2*u[2] + 1044717*x[1]*x[2]*x[3]^2*u[4] + 1581383*x[1]*x[2]*x[3]^2 + 1291533*x[1]*x[2]*x[3]*x[4]^2 + 434146*x[1]*x[2]*x[3]*x[4]*u[2] + 466400*x[1]*x[2]*x[3]*x[4]*u[4] + 431991*x[1]*x[2]*x[3]*x[4] + 1199351*x[1]*x[2]*x[3]*u[2] + 1105429*x[1]*x[2]*x[3]*u[4] + 1116510*x[1]*x[2]*x[3] + 169173*x[1]*x[2]*x[4]^3 + 253222*x[1]*x[2]*x[4]^2*u[2] + 1466036*x[1]*x[2]*x[4]^2*u[4] + 767509*x[1]*x[2]*x[4]^2 + 899559*x[1]*x[2]*x[4]*u[2] + 348289*x[1]*x[2]*x[4]*u[4] + 363598*x[1]*x[2]*x[4] + 1089312*x[1]*x[2]*u[2] + 1561976*x[1]*x[2]*u[4] + 845364*x[1]*x[2] + 253605*x[1]*x[3]^3*x[4] + 1314192*x[1]*x[3]^3*u[2] + 1364848*x[1]*x[3]^3*u[4] + 977051*x[1]*x[3]^2*x[4]^2 + 1088871*x[1]*x[3]^2*x[4]*u[2] + 641402*x[1]*x[3]^2*x[4]*u[4] + 392664*x[1]*x[3]^2*x[4] + 37070*x[1]*x[3]^2*u[2] + 1225789*x[1]*x[3]^2*u[4] + 217073*x[1]*x[3]*x[4]^3 + 1478973*x[1]*x[3]*x[4]^2*u[2] + 1401380*x[1]*x[3]*x[4]^2*u[4] + 1199351*x[1]*x[3]*x[4]^2 + 81033*x[1]*x[3]*x[4]*u[2] + 419102*x[1]*x[3]*x[4]*u[4] + 1568346*x[1]*x[3]*x[4] + 501943*x[1]*x[3]*u[2] + 50107*x[1]*x[3]*u[4] + 1163376*x[1]*x[4]^4 + 1601697*x[1]*x[4]^3*u[2] + 455077*x[1]*x[4]^3*u[4] + 1259006*x[1]*x[4]^3 + 502655*x[1]*x[4]^2*u[2] + 359447*x[1]*x[4]^2*u[4] + 1089312*x[1]*x[4]^2 + 1311332*x[1]*x[4]*u[2] + 529141*x[1]*x[4]*u[4] + 1165459*x[1]*x[4] + 773089*x[1]*u[2] + 452994*x[1]*u[4] + 926133*x[2]^5 + 919039*x[2]^4*x[3] + 1117662*x[2]^4*x[4] + 692320*x[2]^4*u[2] + 696075*x[2]^4*u[4] + 1133848*x[2]^4 + 424619*x[2]^3*x[3]^2 + 1039560*x[2]^3*x[3]*x[4] + 699414*x[2]^3*x[3]*u[2] + 1143360*x[2]^3*x[3]*u[4] + 992078*x[2]^3*x[3] + 1468249*x[2]^3*x[4]^2 + 1423169*x[2]^3*x[4]*u[2] + 467626*x[2]^3*x[4]*u[4] + 268152*x[2]^3*x[4] + 484605*x[2]^3*u[2] + 636531*x[2]^3*u[4] + 1197263*x[2]^3 + 488544*x[2]^2*x[3]^3 + 645223*x[2]^2*x[3]^2*x[4] + 1193834*x[2]^2*x[3]^2*u[2] + 812698*x[2]^2*x[3]^2*u[4] + 924319*x[2]^2*x[3]^2 + 60525*x[2]^2*x[3]*x[4]^2 + 1053986*x[2]^2*x[3]*x[4]*u[2] + 1138664*x[2]^2*x[3]*x[4]*u[4] + 1078407*x[2]^2*x[3]*x[4] + 626375*x[2]^2*x[3]*u[2] + 379859*x[2]^2*x[3]*u[4] + 1175862*x[2]^2*x[3] + 497254*x[2]^2*x[4]^3 + 1301031*x[2]^2*x[4]^2*u[2] + 292926*x[2]^2*x[4]^2*u[4] + 1106292*x[2]^2*x[4]^2 + 713770*x[2]^2*x[4]*u[2] + 164638*x[2]^2*x[4]*u[4] + 940684*x[2]^2*x[4] + 421190*x[2]^2*u[2] + 603873*x[2]^2*u[4] + 159627*x[2]^2 + 371636*x[2]*x[3]^4 + 868731*x[2]*x[3]^3*x[4] + 1129909*x[2]*x[3]^3*u[2] + 760631*x[2]*x[3]^3*u[4] + 656999*x[2]*x[3]^3 + 802018*x[2]*x[3]^2*x[4]^2 + 160532*x[2]*x[3]^2*x[4]*u[2] + 849238*x[2]*x[3]^2*x[4]*u[4] + 998852*x[2]*x[3]^2*x[4] + 694134*x[2]*x[3]^2*u[2] + 109576*x[2]*x[3]^2*u[4] + 1013351*x[2]*x[3]^2 + 791044*x[2]*x[3]*x[4]^3 + 419264*x[2]*x[3]*x[4]^2*u[2] + 564467*x[2]*x[3]*x[4]^2*u[4] + 772341*x[2]*x[3]*x[4]^2 + 160187*x[2]*x[3]*x[4]*u[2] + 365703*x[2]*x[3]*x[4]*u[4] + 821127*x[2]*x[3]*x[4] + 442591*x[2]*x[3]*u[2] + 1415497*x[2]*x[3]*u[4] + 827061*x[2]*x[3] + 784566*x[2]*x[4]^4 + 828273*x[2]*x[4]^3*u[2] + 751099*x[2]*x[4]^3*u[4] + 112891*x[2]*x[4]^3 + 347523*x[2]*x[4]^2*u[2] + 904683*x[2]*x[4]^2*u[4] + 1159693*x[2]*x[4]^2 + 73896*x[2]*x[4]*u[2] + 776073*x[2]*x[4]*u[4] + 907002*x[2]*x[4] + 1458826*x[2]*u[2] + 1080543*x[2]*u[4] + 58448*x[2] + 609902*x[3]^4*x[4] + 1246817*x[3]^4*u[2] + 1008551*x[3]^4*u[4] + 1129909*x[3]^3*x[4]^2 + 1607544*x[3]^3*x[4]*u[2] + 488544*x[3]^3*x[4]*u[4] + 1248197*x[3]^3*x[4] + 961454*x[3]^3*u[2] + 370256*x[3]^3*u[4] + 80266*x[3]^2*x[4]^3 + 1585650*x[3]^2*x[4]^2*u[2] + 1538187*x[3]^2*x[4]^2*u[4] + 694134*x[3]^2*x[4]^2 + 510025*x[3]^2*x[4]*u[2] + 924319*x[3]^2*x[4]*u[4] + 104359*x[3]^2*x[4] + 605102*x[3]^2*u[2] + 1514094*x[3]^2*u[4] + 679239*x[3]*x[4]^4 + 262942*x[3]*x[4]^3*u[2] + 939214*x[3]*x[4]^3*u[4] + 889320*x[3]*x[4]^3 + 480409*x[3]*x[4]^2*u[2] + 729133*x[3]*x[4]^2*u[4] + 442591*x[3]*x[4]^2 + 1000282*x[3]*x[4]*u[2] + 1175862*x[3]*x[4]*u[4] + 185391*x[3]*x[4] + 791392*x[3]*u[2] + 1433062*x[3]*u[4] + 1420908*x[4]^5 + 82788*x[4]^4*u[2] + 197545*x[4]^4*u[4] + 115841*x[4]^4 + 600879*x[4]^3*u[2] + 1502612*x[4]^3*u[4] + 36948*x[4]^3 + 1301140*x[4]^2*u[2] + 1581505*x[4]^2*u[4] + 1458826*x[4]^2 + 1249361*x[4]*u[2] + 159627*x[4]*u[4] + 129650*x[4] + 1560005*u[2] + 1488803*u[4], 1321178*x[1]^4*x[3] + 1376246*x[1]^4*x[4] + 297275*x[1]^4*u[3] + 242207*x[1]^4*u[4] + 1210182*x[1]^3*x[2]*x[3] + 1367845*x[1]^3*x[2]*x[4] + 408271*x[1]^3*x[2]*u[3] + 250608*x[1]^3*x[2]*u[4] + 473354*x[1]^3*x[3]^2 + 930846*x[1]^3*x[3]*x[4] + 1145099*x[1]^3*x[3]*u[3] + 339964*x[1]^3*x[3]*u[4] + 1526966*x[1]^3*x[3] + 1145099*x[1]^3*x[4]^2 + 347643*x[1]^3*x[4]*u[3] + 473354*x[1]^3*x[4]*u[4] + 258313*x[1]^3*x[4] + 91487*x[1]^3*u[3] + 1360140*x[1]^3*u[4] + 443082*x[1]^2*x[2]^2*x[3] + 1496253*x[1]^2*x[2]^2*x[4] + 1175371*x[1]^2*x[2]^2*u[3] + 122200*x[1]^2*x[2]^2*u[4] + 1580624*x[1]^2*x[2]*x[3]^2 + 1575893*x[1]^2*x[2]*x[3]*x[4] + 37829*x[1]^2*x[2]*x[3]*u[3] + 1277734*x[1]^2*x[2]*x[3]*u[4] + 673145*x[1]^2*x[2]*x[3] + 37829*x[1]^2*x[2]*x[4]^2 + 383279*x[1]^2*x[2]*x[4]*u[3] + 1580624*x[1]^2*x[2]*x[4]*u[4] + 803911*x[1]^2*x[2]*x[4] + 945308*x[1]^2*x[2]*u[3] + 814542*x[1]^2*x[2]*u[4] + 973691*x[1]^2*x[3]^3 + 1287196*x[1]^2*x[3]^2*x[4] + 644762*x[1]^2*x[3]^2*u[3] + 168980*x[1]^2*x[3]^2*u[4] + 362163*x[1]^2*x[3]^2 + 95420*x[1]^2*x[3]*x[4]^2 + 162277*x[1]^2*x[3]*x[4]*u[3] + 328929*x[1]^2*x[3]*x[4]*u[4] + 36507*x[1]^2*x[3]*x[4] + 1256290*x[1]^2*x[3]*u[3] + 830173*x[1]^2*x[3]*u[4] + 1337720*x[1]^2*x[3] + 890365*x[1]^2*x[4]^3 + 1194104*x[1]^2*x[4]^2*u[3] + 728088*x[1]^2*x[4]^2*u[4] + 1256290*x[1]^2*x[4]^2 + 751773*x[1]^2*x[4]*u[3] + 362163*x[1]^2*x[4]*u[4] + 1201146*x[1]^2*x[4] + 280733*x[1]^2*u[3] + 417307*x[1]^2*u[4] + 1613523*x[1]*x[2]^3*x[3] + 1392493*x[1]*x[2]^3*x[4] + 4930*x[1]*x[2]^3*u[3] + 225960*x[1]*x[2]^3*u[4] + 233200*x[1]*x[2]^2*x[3]^2 + 421319*x[1]*x[2]^2*x[3]*x[4] + 1385253*x[1]*x[2]^2*x[3]*u[3] + 1044717*x[1]*x[2]^2*x[3]*u[4] + 983371*x[1]*x[2]^2*x[3] + 1385253*x[1]*x[2]^2*x[4]^2 + 152417*x[1]*x[2]^2*x[4]*u[3] + 233200*x[1]*x[2]^2*x[4]*u[4] + 256512*x[1]*x[2]^2*x[4] + 635082*x[1]*x[2]^2*u[3] + 1361941*x[1]*x[2]^2*u[4] + 641402*x[1]*x[2]*x[3]^3 + 326669*x[1]*x[2]*x[3]^2*x[4] + 977051*x[1]*x[2]*x[3]^2*u[3] + 857638*x[1]*x[2]*x[3]^2*u[4] + 419102*x[1]*x[2]*x[3]^2 + 82427*x[1]*x[2]*x[3]*x[4]^2 + 434146*x[1]*x[2]*x[3]*x[4]*u[3] + 1282804*x[1]*x[2]*x[3]*x[4]*u[4] + 1504222*x[1]*x[2]*x[3]*x[4] + 1199351*x[1]*x[2]*x[3]*u[3] + 833125*x[1]*x[2]*x[3]*u[4] + 529141*x[1]*x[2]*x[3] + 217073*x[1]*x[2]*x[4]^3 + 253222*x[1]*x[2]*x[4]^2*u[3] + 1401380*x[1]*x[2]*x[4]^2*u[4] + 1199351*x[1]*x[2]*x[4]^2 + 899559*x[1]*x[2]*x[4]*u[3] + 419102*x[1]*x[2]*x[4]*u[4] + 1568346*x[1]*x[2]*x[4] + 1089312*x[1]*x[2]*u[3] + 50107*x[1]*x[2]*u[4] + 304261*x[1]*x[3]^4 + 700772*x[1]*x[3]^3*x[4] + 1314192*x[1]*x[3]^3*u[3] + 1447263*x[1]*x[3]^3*u[4] + 1581383*x[1]*x[3]^3 + 845150*x[1]*x[3]^2*x[4]^2 + 1088871*x[1]*x[3]^2*x[4]*u[3] + 912783*x[1]*x[3]^2*x[4]*u[4] + 1206331*x[1]*x[3]^2*x[4] + 37070*x[1]*x[3]^2*u[3] + 331089*x[1]*x[3]^2*u[4] + 1116510*x[1]*x[3]^2 + 1105627*x[1]*x[3]*x[4]^3 + 1478973*x[1]*x[3]*x[4]^2*u[3] + 529582*x[1]*x[3]*x[4]^2*u[4] + 1189938*x[1]*x[3]*x[4]^2 + 81033*x[1]*x[3]*x[4]*u[3] + 1544313*x[1]*x[3]*x[4]*u[4] + 313406*x[1]*x[3]*x[4] + 501943*x[1]*x[3]*u[3] + 1612168*x[1]*x[3]*u[4] + 845364*x[1]*x[3] + 492991*x[1]*x[4]^4 + 1601697*x[1]*x[4]^3*u[3] + 1125462*x[1]*x[4]^3*u[4] + 849743*x[1]*x[4]^3 + 502655*x[1]*x[4]^2*u[3] + 768710*x[1]*x[4]^2*u[4] + 501943*x[1]*x[4]^2 + 1311332*x[1]*x[4]*u[3] + 1116510*x[1]*x[4]*u[4] + 1235043*x[1]*x[4] + 773089*x[1]*u[3] + 383410*x[1]*u[4] + 926133*x[2]^4*x[3] + 1332613*x[2]^4*x[4] + 692320*x[2]^4*u[3] + 285840*x[2]^4*u[4] + 919039*x[2]^3*x[3]^2 + 732454*x[2]^3*x[3]*x[4] + 699414*x[2]^3*x[3]*u[3] + 1081283*x[2]^3*x[3]*u[4] + 1133848*x[2]^3*x[3] + 699414*x[2]^3*x[4]^2 + 1423169*x[2]^3*x[4]*u[3] + 919039*x[2]^3*x[4]*u[4] + 952349*x[2]^3*x[4] + 484605*x[2]^3*u[3] + 666104*x[2]^3*u[4] + 424619*x[2]^2*x[3]^3 + 232747*x[2]^2*x[3]^2*x[4] + 1193834*x[2]^2*x[3]^2*u[3] + 331720*x[2]^2*x[3]^2*u[4] + 992078*x[2]^2*x[3]^2 + 1086637*x[2]^2*x[3]*x[4]^2 + 1053986*x[2]^2*x[3]*x[4]*u[3] + 849238*x[2]^2*x[3]*x[4]*u[4] + 795107*x[2]^2*x[3]*x[4] + 626375*x[2]^2*x[3]*u[3] + 109576*x[2]^2*x[3]*u[4] + 1197263*x[2]^2*x[3] + 526993*x[2]^2*x[4]^3 + 1301031*x[2]^2*x[4]^2*u[3] + 1091460*x[2]^2*x[4]^2*u[4] + 626375*x[2]^2*x[4]^2 + 713770*x[2]^2*x[4]*u[3] + 992078*x[2]^2*x[4]*u[4] + 101478*x[2]^2*x[4] + 421190*x[2]^2*u[3] + 1516975*x[2]^2*u[4] + 488544*x[2]*x[3]^4 + 660623*x[2]*x[3]^3*x[4] + 1129909*x[2]*x[3]^3*u[3] + 797298*x[2]*x[3]^3*u[4] + 924319*x[2]*x[3]^3 + 1352010*x[2]*x[3]^2*x[4]^2 + 160532*x[2]*x[3]^2*x[4]*u[3] + 1465632*x[2]*x[3]^2*x[4]*u[4] + 347498*x[2]*x[3]^2*x[4] + 694134*x[2]*x[3]^2*u[3] + 1110768*x[2]*x[3]^2*u[4] + 1175862*x[2]*x[3]^2 + 950712*x[2]*x[3]*x[4]^3 + 419264*x[2]*x[3]*x[4]^2*u[3] + 1457921*x[2]*x[3]*x[4]^2*u[4] + 1040745*x[2]*x[3]*x[4]^2 + 160187*x[2]*x[3]*x[4]*u[3] + 230185*x[2]*x[3]*x[4]*u[4] + 134822*x[2]*x[3]*x[4] + 442591*x[2]*x[3]*u[3] + 1409735*x[2]*x[3]*u[4] + 159627*x[2]*x[3] + 679239*x[2]*x[4]^4 + 828273*x[2]*x[4]^3*u[3] + 939214*x[2]*x[4]^3*u[4] + 889320*x[2]*x[4]^3 + 347523*x[2]*x[4]^2*u[3] + 729133*x[2]*x[4]^2*u[4] + 442591*x[2]*x[4]^2 + 73896*x[2]*x[4]*u[3] + 1175862*x[2]*x[4]*u[4] + 185391*x[2]*x[4] + 1458826*x[2]*u[3] + 1433062*x[2]*u[4] + 371636*x[3]^5 + 890874*x[3]^4*x[4] + 1246817*x[3]^4*u[3] + 738488*x[3]^4*u[4] + 656999*x[3]^4 + 164712*x[3]^3*x[4]^2 + 1607544*x[3]^3*x[4]*u[3] + 1486544*x[3]^3*x[4]*u[4] + 1169318*x[3]^3*x[4] + 961454*x[3]^3*u[3] + 1557563*x[3]^3*u[4] + 1013351*x[3]^3 + 529921*x[3]^2*x[4]^3 + 1585650*x[3]^2*x[4]^2*u[3] + 825590*x[3]^2*x[4]^2*u[4] + 785500*x[3]^2*x[4]^2 + 510025*x[3]^2*x[4]*u[3] + 352544*x[3]^2*x[4]*u[4] + 321529*x[3]^2*x[4] + 605102*x[3]^2*u[3] + 296642*x[3]^2*u[4] + 827061*x[3]^2 + 974312*x[3]*x[4]^4 + 262942*x[3]*x[4]^3*u[3] + 561353*x[3]*x[4]^3*u[4] + 1527599*x[3]*x[4]^3 + 480409*x[3]*x[4]^2*u[3] + 1108428*x[3]*x[4]^2*u[4] + 1527517*x[3]*x[4]^2 + 1000282*x[3]*x[4]*u[3] + 408249*x[3]*x[4]*u[4] + 944218*x[3]*x[4] + 791392*x[3]*u[3] + 1043327*x[3]*u[4] + 58448*x[3] + 874962*x[4]^5 + 82788*x[4]^4*u[3] + 743491*x[4]^4*u[4] + 1239105*x[4]^4 + 600879*x[4]^3*u[3] + 379348*x[4]^3*u[4] + 500141*x[4]^3 + 1301140*x[4]^2*u[3] + 1118312*x[4]^2*u[4] + 791392*x[4]^2 + 1249361*x[4]*u[3] + 827061*x[4]*u[4] + 449662*x[4] + 1560005*u[3] + 1168791*u[4]];
sort!(F, by = p -> total_degree(p));
