module abcd (input clk,
input rd_en,
input wr_en,
input [7:0] a,
input [7:0] b,
output reg [2:0] r_empty,
output reg [2:0] r_full,
output reg [15:0] c_r);

reg [7:0] tempa;
reg [7:0] tempb;
reg rr_rd_en;
reg rr_wr_en;

wire [15:0] c;

wire [2:0] w_empty;
wire [2:0] w_full;

wire [7:0] rd_a;
wire [7:0] rd_b;
wire [15:0] ans_c;
always @(posedge clk)
begin 
c_r<=c;
tempa<=a;
tempb<=b;
rr_rd_en<=rd_en;
rr_wr_en<=wr_en;
r_empty<=w_empty;
r_full<=w_full;
end
//////////////////////////////////
wire [2303:0] mul_a;
wire [2303:0] mul_b;
wire [4607:0] mul_c;
//////////////////////////////////

fifo a_1(.clk(clk),.rd_en(rr_rd_en),.wr_en(rr_wr_en),.rd_data(rd_a),.wr_data(tempa),.full(w_full[0]),.empty(w_empty[0]));
fifo b_1(.clk(clk),.rd_en(rr_rd_en),.wr_en(rr_wr_en),.rd_data(rd_b),.wr_data(tempb),.full(w_full[1]),.empty(w_empty[1]));
fifo_16 c_1(.clk(clk),.rd_en(rr_rd_en),.wr_en(rr_wr_en),.rd_data(c),.wr_data(ans_c),.full(w_full[2]),.empty(w_empty[2]));
//top t1(.clk(clk),.a(mul_a[7:0]),.b(mul_b[7:0]),.c(mul_c[15:0]));
//top t2(.clk(clk),.a(mul_a[15:8]),.b(mul_b[15:8]),.c(mul_c[31:16]));
//top t3(.clk(clk),.a(mul_a[23:16]),.b(mul_b[23:16]),.c(mul_c[47:32]));
//top t4(.clk(clk),.a(mul_a[31:24]),.b(mul_b[31:24]),.c(mul_c[63:48]));
top multinst_1 (.a(mul_a[7:0]), .b(mul_b[7:0]), .c(mul_c[15:0]), .clk(clk));
top multinst_2 (.a(mul_a[15:8]), .b(mul_b[15:8]), .c(mul_c[31:16]), .clk(clk));
top multinst_3 (.a(mul_a[23:16]), .b(mul_b[23:16]), .c(mul_c[47:32]), .clk(clk));
top multinst_4 (.a(mul_a[31:24]), .b(mul_b[31:24]), .c(mul_c[63:48]), .clk(clk));
top multinst_5 (.a(mul_a[39:32]), .b(mul_b[39:32]), .c(mul_c[79:64]), .clk(clk));
top multinst_6 (.a(mul_a[47:40]), .b(mul_b[47:40]), .c(mul_c[95:80]), .clk(clk));
top multinst_7 (.a(mul_a[55:48]), .b(mul_b[55:48]), .c(mul_c[111:96]), .clk(clk));
top multinst_8 (.a(mul_a[63:56]), .b(mul_b[63:56]), .c(mul_c[127:112]), .clk(clk));
top multinst_9 (.a(mul_a[71:64]), .b(mul_b[71:64]), .c(mul_c[143:128]), .clk(clk));
top multinst_10 (.a(mul_a[79:72]), .b(mul_b[79:72]), .c(mul_c[159:144]), .clk(clk));
top multinst_11 (.a(mul_a[87:80]), .b(mul_b[87:80]), .c(mul_c[175:160]), .clk(clk));
top multinst_12 (.a(mul_a[95:88]), .b(mul_b[95:88]), .c(mul_c[191:176]), .clk(clk));
top multinst_13 (.a(mul_a[103:96]), .b(mul_b[103:96]), .c(mul_c[207:192]), .clk(clk));
top multinst_14 (.a(mul_a[111:104]), .b(mul_b[111:104]), .c(mul_c[223:208]), .clk(clk));
top multinst_15 (.a(mul_a[119:112]), .b(mul_b[119:112]), .c(mul_c[239:224]), .clk(clk));
top multinst_16 (.a(mul_a[127:120]), .b(mul_b[127:120]), .c(mul_c[255:240]), .clk(clk));
top multinst_17 (.a(mul_a[135:128]), .b(mul_b[135:128]), .c(mul_c[271:256]), .clk(clk));
top multinst_18 (.a(mul_a[143:136]), .b(mul_b[143:136]), .c(mul_c[287:272]), .clk(clk));
top multinst_19 (.a(mul_a[151:144]), .b(mul_b[151:144]), .c(mul_c[303:288]), .clk(clk));
top multinst_20 (.a(mul_a[159:152]), .b(mul_b[159:152]), .c(mul_c[319:304]), .clk(clk));
top multinst_21 (.a(mul_a[167:160]), .b(mul_b[167:160]), .c(mul_c[335:320]), .clk(clk));
top multinst_22 (.a(mul_a[175:168]), .b(mul_b[175:168]), .c(mul_c[351:336]), .clk(clk));
top multinst_23 (.a(mul_a[183:176]), .b(mul_b[183:176]), .c(mul_c[367:352]), .clk(clk));
top multinst_24 (.a(mul_a[191:184]), .b(mul_b[191:184]), .c(mul_c[383:368]), .clk(clk));
top multinst_25 (.a(mul_a[199:192]), .b(mul_b[199:192]), .c(mul_c[399:384]), .clk(clk));
top multinst_26 (.a(mul_a[207:200]), .b(mul_b[207:200]), .c(mul_c[415:400]), .clk(clk));
top multinst_27 (.a(mul_a[215:208]), .b(mul_b[215:208]), .c(mul_c[431:416]), .clk(clk));
top multinst_28 (.a(mul_a[223:216]), .b(mul_b[223:216]), .c(mul_c[447:432]), .clk(clk));
top multinst_29 (.a(mul_a[231:224]), .b(mul_b[231:224]), .c(mul_c[463:448]), .clk(clk));
top multinst_30 (.a(mul_a[239:232]), .b(mul_b[239:232]), .c(mul_c[479:464]), .clk(clk));
top multinst_31 (.a(mul_a[247:240]), .b(mul_b[247:240]), .c(mul_c[495:480]), .clk(clk));
top multinst_32 (.a(mul_a[255:248]), .b(mul_b[255:248]), .c(mul_c[511:496]), .clk(clk));
top multinst_33 (.a(mul_a[263:256]), .b(mul_b[263:256]), .c(mul_c[527:512]), .clk(clk));
top multinst_34 (.a(mul_a[271:264]), .b(mul_b[271:264]), .c(mul_c[543:528]), .clk(clk));
top multinst_35 (.a(mul_a[279:272]), .b(mul_b[279:272]), .c(mul_c[559:544]), .clk(clk));
top multinst_36 (.a(mul_a[287:280]), .b(mul_b[287:280]), .c(mul_c[575:560]), .clk(clk));
top multinst_37 (.a(mul_a[295:288]), .b(mul_b[295:288]), .c(mul_c[591:576]), .clk(clk));
top multinst_38 (.a(mul_a[303:296]), .b(mul_b[303:296]), .c(mul_c[607:592]), .clk(clk));
top multinst_39 (.a(mul_a[311:304]), .b(mul_b[311:304]), .c(mul_c[623:608]), .clk(clk));
top multinst_40 (.a(mul_a[319:312]), .b(mul_b[319:312]), .c(mul_c[639:624]), .clk(clk));
top multinst_41 (.a(mul_a[327:320]), .b(mul_b[327:320]), .c(mul_c[655:640]), .clk(clk));
top multinst_42 (.a(mul_a[335:328]), .b(mul_b[335:328]), .c(mul_c[671:656]), .clk(clk));
top multinst_43 (.a(mul_a[343:336]), .b(mul_b[343:336]), .c(mul_c[687:672]), .clk(clk));
top multinst_44 (.a(mul_a[351:344]), .b(mul_b[351:344]), .c(mul_c[703:688]), .clk(clk));
top multinst_45 (.a(mul_a[359:352]), .b(mul_b[359:352]), .c(mul_c[719:704]), .clk(clk));
top multinst_46 (.a(mul_a[367:360]), .b(mul_b[367:360]), .c(mul_c[735:720]), .clk(clk));
top multinst_47 (.a(mul_a[375:368]), .b(mul_b[375:368]), .c(mul_c[751:736]), .clk(clk));
top multinst_48 (.a(mul_a[383:376]), .b(mul_b[383:376]), .c(mul_c[767:752]), .clk(clk));
top multinst_49 (.a(mul_a[391:384]), .b(mul_b[391:384]), .c(mul_c[783:768]), .clk(clk));
top multinst_50 (.a(mul_a[399:392]), .b(mul_b[399:392]), .c(mul_c[799:784]), .clk(clk));
top multinst_51 (.a(mul_a[407:400]), .b(mul_b[407:400]), .c(mul_c[815:800]), .clk(clk));
top multinst_52 (.a(mul_a[415:408]), .b(mul_b[415:408]), .c(mul_c[831:816]), .clk(clk));
top multinst_53 (.a(mul_a[423:416]), .b(mul_b[423:416]), .c(mul_c[847:832]), .clk(clk));
top multinst_54 (.a(mul_a[431:424]), .b(mul_b[431:424]), .c(mul_c[863:848]), .clk(clk));
top multinst_55 (.a(mul_a[439:432]), .b(mul_b[439:432]), .c(mul_c[879:864]), .clk(clk));
top multinst_56 (.a(mul_a[447:440]), .b(mul_b[447:440]), .c(mul_c[895:880]), .clk(clk));
top multinst_57 (.a(mul_a[455:448]), .b(mul_b[455:448]), .c(mul_c[911:896]), .clk(clk));
top multinst_58 (.a(mul_a[463:456]), .b(mul_b[463:456]), .c(mul_c[927:912]), .clk(clk));
top multinst_59 (.a(mul_a[471:464]), .b(mul_b[471:464]), .c(mul_c[943:928]), .clk(clk));
top multinst_60 (.a(mul_a[479:472]), .b(mul_b[479:472]), .c(mul_c[959:944]), .clk(clk));
top multinst_61 (.a(mul_a[487:480]), .b(mul_b[487:480]), .c(mul_c[975:960]), .clk(clk));
top multinst_62 (.a(mul_a[495:488]), .b(mul_b[495:488]), .c(mul_c[991:976]), .clk(clk));
top multinst_63 (.a(mul_a[503:496]), .b(mul_b[503:496]), .c(mul_c[1007:992]), .clk(clk));
top multinst_64 (.a(mul_a[511:504]), .b(mul_b[511:504]), .c(mul_c[1023:1008]), .clk(clk));
top multinst_65 (.a(mul_a[519:512]), .b(mul_b[519:512]), .c(mul_c[1039:1024]), .clk(clk));
top multinst_66 (.a(mul_a[527:520]), .b(mul_b[527:520]), .c(mul_c[1055:1040]), .clk(clk));
top multinst_67 (.a(mul_a[535:528]), .b(mul_b[535:528]), .c(mul_c[1071:1056]), .clk(clk));
top multinst_68 (.a(mul_a[543:536]), .b(mul_b[543:536]), .c(mul_c[1087:1072]), .clk(clk));
top multinst_69 (.a(mul_a[551:544]), .b(mul_b[551:544]), .c(mul_c[1103:1088]), .clk(clk));
top multinst_70 (.a(mul_a[559:552]), .b(mul_b[559:552]), .c(mul_c[1119:1104]), .clk(clk));
top multinst_71 (.a(mul_a[567:560]), .b(mul_b[567:560]), .c(mul_c[1135:1120]), .clk(clk));
top multinst_72 (.a(mul_a[575:568]), .b(mul_b[575:568]), .c(mul_c[1151:1136]), .clk(clk));
top multinst_73 (.a(mul_a[583:576]), .b(mul_b[583:576]), .c(mul_c[1167:1152]), .clk(clk));
top multinst_74 (.a(mul_a[591:584]), .b(mul_b[591:584]), .c(mul_c[1183:1168]), .clk(clk));
top multinst_75 (.a(mul_a[599:592]), .b(mul_b[599:592]), .c(mul_c[1199:1184]), .clk(clk));
top multinst_76 (.a(mul_a[607:600]), .b(mul_b[607:600]), .c(mul_c[1215:1200]), .clk(clk));
top multinst_77 (.a(mul_a[615:608]), .b(mul_b[615:608]), .c(mul_c[1231:1216]), .clk(clk));
top multinst_78 (.a(mul_a[623:616]), .b(mul_b[623:616]), .c(mul_c[1247:1232]), .clk(clk));
top multinst_79 (.a(mul_a[631:624]), .b(mul_b[631:624]), .c(mul_c[1263:1248]), .clk(clk));
top multinst_80 (.a(mul_a[639:632]), .b(mul_b[639:632]), .c(mul_c[1279:1264]), .clk(clk));
top multinst_81 (.a(mul_a[647:640]), .b(mul_b[647:640]), .c(mul_c[1295:1280]), .clk(clk));
top multinst_82 (.a(mul_a[655:648]), .b(mul_b[655:648]), .c(mul_c[1311:1296]), .clk(clk));
top multinst_83 (.a(mul_a[663:656]), .b(mul_b[663:656]), .c(mul_c[1327:1312]), .clk(clk));
top multinst_84 (.a(mul_a[671:664]), .b(mul_b[671:664]), .c(mul_c[1343:1328]), .clk(clk));
top multinst_85 (.a(mul_a[679:672]), .b(mul_b[679:672]), .c(mul_c[1359:1344]), .clk(clk));
top multinst_86 (.a(mul_a[687:680]), .b(mul_b[687:680]), .c(mul_c[1375:1360]), .clk(clk));
top multinst_87 (.a(mul_a[695:688]), .b(mul_b[695:688]), .c(mul_c[1391:1376]), .clk(clk));
top multinst_88 (.a(mul_a[703:696]), .b(mul_b[703:696]), .c(mul_c[1407:1392]), .clk(clk));
top multinst_89 (.a(mul_a[711:704]), .b(mul_b[711:704]), .c(mul_c[1423:1408]), .clk(clk));
top multinst_90 (.a(mul_a[719:712]), .b(mul_b[719:712]), .c(mul_c[1439:1424]), .clk(clk));
top multinst_91 (.a(mul_a[727:720]), .b(mul_b[727:720]), .c(mul_c[1455:1440]), .clk(clk));
top multinst_92 (.a(mul_a[735:728]), .b(mul_b[735:728]), .c(mul_c[1471:1456]), .clk(clk));
top multinst_93 (.a(mul_a[743:736]), .b(mul_b[743:736]), .c(mul_c[1487:1472]), .clk(clk));
top multinst_94 (.a(mul_a[751:744]), .b(mul_b[751:744]), .c(mul_c[1503:1488]), .clk(clk));
top multinst_95 (.a(mul_a[759:752]), .b(mul_b[759:752]), .c(mul_c[1519:1504]), .clk(clk));
top multinst_96 (.a(mul_a[767:760]), .b(mul_b[767:760]), .c(mul_c[1535:1520]), .clk(clk));
top multinst_97 (.a(mul_a[775:768]), .b(mul_b[775:768]), .c(mul_c[1551:1536]), .clk(clk));
top multinst_98 (.a(mul_a[783:776]), .b(mul_b[783:776]), .c(mul_c[1567:1552]), .clk(clk));
top multinst_99 (.a(mul_a[791:784]), .b(mul_b[791:784]), .c(mul_c[1583:1568]), .clk(clk));
top multinst_100 (.a(mul_a[799:792]), .b(mul_b[799:792]), .c(mul_c[1599:1584]), .clk(clk));
top multinst_101 (.a(mul_a[807:800]), .b(mul_b[807:800]), .c(mul_c[1615:1600]), .clk(clk));
top multinst_102 (.a(mul_a[815:808]), .b(mul_b[815:808]), .c(mul_c[1631:1616]), .clk(clk));
top multinst_103 (.a(mul_a[823:816]), .b(mul_b[823:816]), .c(mul_c[1647:1632]), .clk(clk));
top multinst_104 (.a(mul_a[831:824]), .b(mul_b[831:824]), .c(mul_c[1663:1648]), .clk(clk));
top multinst_105 (.a(mul_a[839:832]), .b(mul_b[839:832]), .c(mul_c[1679:1664]), .clk(clk));
top multinst_106 (.a(mul_a[847:840]), .b(mul_b[847:840]), .c(mul_c[1695:1680]), .clk(clk));
top multinst_107 (.a(mul_a[855:848]), .b(mul_b[855:848]), .c(mul_c[1711:1696]), .clk(clk));
top multinst_108 (.a(mul_a[863:856]), .b(mul_b[863:856]), .c(mul_c[1727:1712]), .clk(clk));
top multinst_109 (.a(mul_a[871:864]), .b(mul_b[871:864]), .c(mul_c[1743:1728]), .clk(clk));
top multinst_110 (.a(mul_a[879:872]), .b(mul_b[879:872]), .c(mul_c[1759:1744]), .clk(clk));
top multinst_111 (.a(mul_a[887:880]), .b(mul_b[887:880]), .c(mul_c[1775:1760]), .clk(clk));
top multinst_112 (.a(mul_a[895:888]), .b(mul_b[895:888]), .c(mul_c[1791:1776]), .clk(clk));
top multinst_113 (.a(mul_a[903:896]), .b(mul_b[903:896]), .c(mul_c[1807:1792]), .clk(clk));
top multinst_114 (.a(mul_a[911:904]), .b(mul_b[911:904]), .c(mul_c[1823:1808]), .clk(clk));
top multinst_115 (.a(mul_a[919:912]), .b(mul_b[919:912]), .c(mul_c[1839:1824]), .clk(clk));
top multinst_116 (.a(mul_a[927:920]), .b(mul_b[927:920]), .c(mul_c[1855:1840]), .clk(clk));
top multinst_117 (.a(mul_a[935:928]), .b(mul_b[935:928]), .c(mul_c[1871:1856]), .clk(clk));
top multinst_118 (.a(mul_a[943:936]), .b(mul_b[943:936]), .c(mul_c[1887:1872]), .clk(clk));
top multinst_119 (.a(mul_a[951:944]), .b(mul_b[951:944]), .c(mul_c[1903:1888]), .clk(clk));
top multinst_120 (.a(mul_a[959:952]), .b(mul_b[959:952]), .c(mul_c[1919:1904]), .clk(clk));
top multinst_121 (.a(mul_a[967:960]), .b(mul_b[967:960]), .c(mul_c[1935:1920]), .clk(clk));
top multinst_122 (.a(mul_a[975:968]), .b(mul_b[975:968]), .c(mul_c[1951:1936]), .clk(clk));
top multinst_123 (.a(mul_a[983:976]), .b(mul_b[983:976]), .c(mul_c[1967:1952]), .clk(clk));
top multinst_124 (.a(mul_a[991:984]), .b(mul_b[991:984]), .c(mul_c[1983:1968]), .clk(clk));
top multinst_125 (.a(mul_a[999:992]), .b(mul_b[999:992]), .c(mul_c[1999:1984]), .clk(clk));
top multinst_126 (.a(mul_a[1007:1000]), .b(mul_b[1007:1000]), .c(mul_c[2015:2000]), .clk(clk));
top multinst_127 (.a(mul_a[1015:1008]), .b(mul_b[1015:1008]), .c(mul_c[2031:2016]), .clk(clk));
top multinst_128 (.a(mul_a[1023:1016]), .b(mul_b[1023:1016]), .c(mul_c[2047:2032]), .clk(clk));
top multinst_129 (.a(mul_a[1031:1024]), .b(mul_b[1031:1024]), .c(mul_c[2063:2048]), .clk(clk));
top multinst_130 (.a(mul_a[1039:1032]), .b(mul_b[1039:1032]), .c(mul_c[2079:2064]), .clk(clk));
top multinst_131 (.a(mul_a[1047:1040]), .b(mul_b[1047:1040]), .c(mul_c[2095:2080]), .clk(clk));
top multinst_132 (.a(mul_a[1055:1048]), .b(mul_b[1055:1048]), .c(mul_c[2111:2096]), .clk(clk));
top multinst_133 (.a(mul_a[1063:1056]), .b(mul_b[1063:1056]), .c(mul_c[2127:2112]), .clk(clk));
top multinst_134 (.a(mul_a[1071:1064]), .b(mul_b[1071:1064]), .c(mul_c[2143:2128]), .clk(clk));
top multinst_135 (.a(mul_a[1079:1072]), .b(mul_b[1079:1072]), .c(mul_c[2159:2144]), .clk(clk));
top multinst_136 (.a(mul_a[1087:1080]), .b(mul_b[1087:1080]), .c(mul_c[2175:2160]), .clk(clk));
top multinst_137 (.a(mul_a[1095:1088]), .b(mul_b[1095:1088]), .c(mul_c[2191:2176]), .clk(clk));
top multinst_138 (.a(mul_a[1103:1096]), .b(mul_b[1103:1096]), .c(mul_c[2207:2192]), .clk(clk));
top multinst_139 (.a(mul_a[1111:1104]), .b(mul_b[1111:1104]), .c(mul_c[2223:2208]), .clk(clk));
top multinst_140 (.a(mul_a[1119:1112]), .b(mul_b[1119:1112]), .c(mul_c[2239:2224]), .clk(clk));
top multinst_141 (.a(mul_a[1127:1120]), .b(mul_b[1127:1120]), .c(mul_c[2255:2240]), .clk(clk));
top multinst_142 (.a(mul_a[1135:1128]), .b(mul_b[1135:1128]), .c(mul_c[2271:2256]), .clk(clk));
top multinst_143 (.a(mul_a[1143:1136]), .b(mul_b[1143:1136]), .c(mul_c[2287:2272]), .clk(clk));
top multinst_144 (.a(mul_a[1151:1144]), .b(mul_b[1151:1144]), .c(mul_c[2303:2288]), .clk(clk));
top multinst_145 (.a(mul_a[1159:1152]), .b(mul_b[1159:1152]), .c(mul_c[2319:2304]), .clk(clk));
top multinst_146 (.a(mul_a[1167:1160]), .b(mul_b[1167:1160]), .c(mul_c[2335:2320]), .clk(clk));
top multinst_147 (.a(mul_a[1175:1168]), .b(mul_b[1175:1168]), .c(mul_c[2351:2336]), .clk(clk));
top multinst_148 (.a(mul_a[1183:1176]), .b(mul_b[1183:1176]), .c(mul_c[2367:2352]), .clk(clk));
top multinst_149 (.a(mul_a[1191:1184]), .b(mul_b[1191:1184]), .c(mul_c[2383:2368]), .clk(clk));
top multinst_150 (.a(mul_a[1199:1192]), .b(mul_b[1199:1192]), .c(mul_c[2399:2384]), .clk(clk));
top multinst_151 (.a(mul_a[1207:1200]), .b(mul_b[1207:1200]), .c(mul_c[2415:2400]), .clk(clk));
top multinst_152 (.a(mul_a[1215:1208]), .b(mul_b[1215:1208]), .c(mul_c[2431:2416]), .clk(clk));
top multinst_153 (.a(mul_a[1223:1216]), .b(mul_b[1223:1216]), .c(mul_c[2447:2432]), .clk(clk));
top multinst_154 (.a(mul_a[1231:1224]), .b(mul_b[1231:1224]), .c(mul_c[2463:2448]), .clk(clk));
top multinst_155 (.a(mul_a[1239:1232]), .b(mul_b[1239:1232]), .c(mul_c[2479:2464]), .clk(clk));
top multinst_156 (.a(mul_a[1247:1240]), .b(mul_b[1247:1240]), .c(mul_c[2495:2480]), .clk(clk));
top multinst_157 (.a(mul_a[1255:1248]), .b(mul_b[1255:1248]), .c(mul_c[2511:2496]), .clk(clk));
top multinst_158 (.a(mul_a[1263:1256]), .b(mul_b[1263:1256]), .c(mul_c[2527:2512]), .clk(clk));
top multinst_159 (.a(mul_a[1271:1264]), .b(mul_b[1271:1264]), .c(mul_c[2543:2528]), .clk(clk));
top multinst_160 (.a(mul_a[1279:1272]), .b(mul_b[1279:1272]), .c(mul_c[2559:2544]), .clk(clk));
top multinst_161 (.a(mul_a[1287:1280]), .b(mul_b[1287:1280]), .c(mul_c[2575:2560]), .clk(clk));
top multinst_162 (.a(mul_a[1295:1288]), .b(mul_b[1295:1288]), .c(mul_c[2591:2576]), .clk(clk));
top multinst_163 (.a(mul_a[1303:1296]), .b(mul_b[1303:1296]), .c(mul_c[2607:2592]), .clk(clk));
top multinst_164 (.a(mul_a[1311:1304]), .b(mul_b[1311:1304]), .c(mul_c[2623:2608]), .clk(clk));
top multinst_165 (.a(mul_a[1319:1312]), .b(mul_b[1319:1312]), .c(mul_c[2639:2624]), .clk(clk));
top multinst_166 (.a(mul_a[1327:1320]), .b(mul_b[1327:1320]), .c(mul_c[2655:2640]), .clk(clk));
top multinst_167 (.a(mul_a[1335:1328]), .b(mul_b[1335:1328]), .c(mul_c[2671:2656]), .clk(clk));
top multinst_168 (.a(mul_a[1343:1336]), .b(mul_b[1343:1336]), .c(mul_c[2687:2672]), .clk(clk));
top multinst_169 (.a(mul_a[1351:1344]), .b(mul_b[1351:1344]), .c(mul_c[2703:2688]), .clk(clk));
top multinst_170 (.a(mul_a[1359:1352]), .b(mul_b[1359:1352]), .c(mul_c[2719:2704]), .clk(clk));
top multinst_171 (.a(mul_a[1367:1360]), .b(mul_b[1367:1360]), .c(mul_c[2735:2720]), .clk(clk));
top multinst_172 (.a(mul_a[1375:1368]), .b(mul_b[1375:1368]), .c(mul_c[2751:2736]), .clk(clk));
top multinst_173 (.a(mul_a[1383:1376]), .b(mul_b[1383:1376]), .c(mul_c[2767:2752]), .clk(clk));
top multinst_174 (.a(mul_a[1391:1384]), .b(mul_b[1391:1384]), .c(mul_c[2783:2768]), .clk(clk));
top multinst_175 (.a(mul_a[1399:1392]), .b(mul_b[1399:1392]), .c(mul_c[2799:2784]), .clk(clk));
top multinst_176 (.a(mul_a[1407:1400]), .b(mul_b[1407:1400]), .c(mul_c[2815:2800]), .clk(clk));
top multinst_177 (.a(mul_a[1415:1408]), .b(mul_b[1415:1408]), .c(mul_c[2831:2816]), .clk(clk));
top multinst_178 (.a(mul_a[1423:1416]), .b(mul_b[1423:1416]), .c(mul_c[2847:2832]), .clk(clk));
top multinst_179 (.a(mul_a[1431:1424]), .b(mul_b[1431:1424]), .c(mul_c[2863:2848]), .clk(clk));
top multinst_180 (.a(mul_a[1439:1432]), .b(mul_b[1439:1432]), .c(mul_c[2879:2864]), .clk(clk));
top multinst_181 (.a(mul_a[1447:1440]), .b(mul_b[1447:1440]), .c(mul_c[2895:2880]), .clk(clk));
top multinst_182 (.a(mul_a[1455:1448]), .b(mul_b[1455:1448]), .c(mul_c[2911:2896]), .clk(clk));
top multinst_183 (.a(mul_a[1463:1456]), .b(mul_b[1463:1456]), .c(mul_c[2927:2912]), .clk(clk));
top multinst_184 (.a(mul_a[1471:1464]), .b(mul_b[1471:1464]), .c(mul_c[2943:2928]), .clk(clk));
top multinst_185 (.a(mul_a[1479:1472]), .b(mul_b[1479:1472]), .c(mul_c[2959:2944]), .clk(clk));
top multinst_186 (.a(mul_a[1487:1480]), .b(mul_b[1487:1480]), .c(mul_c[2975:2960]), .clk(clk));
top multinst_187 (.a(mul_a[1495:1488]), .b(mul_b[1495:1488]), .c(mul_c[2991:2976]), .clk(clk));
top multinst_188 (.a(mul_a[1503:1496]), .b(mul_b[1503:1496]), .c(mul_c[3007:2992]), .clk(clk));
top multinst_189 (.a(mul_a[1511:1504]), .b(mul_b[1511:1504]), .c(mul_c[3023:3008]), .clk(clk));
top multinst_190 (.a(mul_a[1519:1512]), .b(mul_b[1519:1512]), .c(mul_c[3039:3024]), .clk(clk));
top multinst_191 (.a(mul_a[1527:1520]), .b(mul_b[1527:1520]), .c(mul_c[3055:3040]), .clk(clk));
top multinst_192 (.a(mul_a[1535:1528]), .b(mul_b[1535:1528]), .c(mul_c[3071:3056]), .clk(clk));
top multinst_193 (.a(mul_a[1543:1536]), .b(mul_b[1543:1536]), .c(mul_c[3087:3072]), .clk(clk));
top multinst_194 (.a(mul_a[1551:1544]), .b(mul_b[1551:1544]), .c(mul_c[3103:3088]), .clk(clk));
top multinst_195 (.a(mul_a[1559:1552]), .b(mul_b[1559:1552]), .c(mul_c[3119:3104]), .clk(clk));
top multinst_196 (.a(mul_a[1567:1560]), .b(mul_b[1567:1560]), .c(mul_c[3135:3120]), .clk(clk));
top multinst_197 (.a(mul_a[1575:1568]), .b(mul_b[1575:1568]), .c(mul_c[3151:3136]), .clk(clk));
top multinst_198 (.a(mul_a[1583:1576]), .b(mul_b[1583:1576]), .c(mul_c[3167:3152]), .clk(clk));
top multinst_199 (.a(mul_a[1591:1584]), .b(mul_b[1591:1584]), .c(mul_c[3183:3168]), .clk(clk));
top multinst_200 (.a(mul_a[1599:1592]), .b(mul_b[1599:1592]), .c(mul_c[3199:3184]), .clk(clk));
top multinst_201 (.a(mul_a[1607:1600]), .b(mul_b[1607:1600]), .c(mul_c[3215:3200]), .clk(clk));
top multinst_202 (.a(mul_a[1615:1608]), .b(mul_b[1615:1608]), .c(mul_c[3231:3216]), .clk(clk));
top multinst_203 (.a(mul_a[1623:1616]), .b(mul_b[1623:1616]), .c(mul_c[3247:3232]), .clk(clk));
top multinst_204 (.a(mul_a[1631:1624]), .b(mul_b[1631:1624]), .c(mul_c[3263:3248]), .clk(clk));
top multinst_205 (.a(mul_a[1639:1632]), .b(mul_b[1639:1632]), .c(mul_c[3279:3264]), .clk(clk));
top multinst_206 (.a(mul_a[1647:1640]), .b(mul_b[1647:1640]), .c(mul_c[3295:3280]), .clk(clk));
top multinst_207 (.a(mul_a[1655:1648]), .b(mul_b[1655:1648]), .c(mul_c[3311:3296]), .clk(clk));
top multinst_208 (.a(mul_a[1663:1656]), .b(mul_b[1663:1656]), .c(mul_c[3327:3312]), .clk(clk));
top multinst_209 (.a(mul_a[1671:1664]), .b(mul_b[1671:1664]), .c(mul_c[3343:3328]), .clk(clk));
top multinst_210 (.a(mul_a[1679:1672]), .b(mul_b[1679:1672]), .c(mul_c[3359:3344]), .clk(clk));
top multinst_211 (.a(mul_a[1687:1680]), .b(mul_b[1687:1680]), .c(mul_c[3375:3360]), .clk(clk));
top multinst_212 (.a(mul_a[1695:1688]), .b(mul_b[1695:1688]), .c(mul_c[3391:3376]), .clk(clk));
top multinst_213 (.a(mul_a[1703:1696]), .b(mul_b[1703:1696]), .c(mul_c[3407:3392]), .clk(clk));
top multinst_214 (.a(mul_a[1711:1704]), .b(mul_b[1711:1704]), .c(mul_c[3423:3408]), .clk(clk));
top multinst_215 (.a(mul_a[1719:1712]), .b(mul_b[1719:1712]), .c(mul_c[3439:3424]), .clk(clk));
top multinst_216 (.a(mul_a[1727:1720]), .b(mul_b[1727:1720]), .c(mul_c[3455:3440]), .clk(clk));
top multinst_217 (.a(mul_a[1735:1728]), .b(mul_b[1735:1728]), .c(mul_c[3471:3456]), .clk(clk));
top multinst_218 (.a(mul_a[1743:1736]), .b(mul_b[1743:1736]), .c(mul_c[3487:3472]), .clk(clk));
top multinst_219 (.a(mul_a[1751:1744]), .b(mul_b[1751:1744]), .c(mul_c[3503:3488]), .clk(clk));
top multinst_220 (.a(mul_a[1759:1752]), .b(mul_b[1759:1752]), .c(mul_c[3519:3504]), .clk(clk));
top multinst_221 (.a(mul_a[1767:1760]), .b(mul_b[1767:1760]), .c(mul_c[3535:3520]), .clk(clk));
top multinst_222 (.a(mul_a[1775:1768]), .b(mul_b[1775:1768]), .c(mul_c[3551:3536]), .clk(clk));
top multinst_223 (.a(mul_a[1783:1776]), .b(mul_b[1783:1776]), .c(mul_c[3567:3552]), .clk(clk));
top multinst_224 (.a(mul_a[1791:1784]), .b(mul_b[1791:1784]), .c(mul_c[3583:3568]), .clk(clk));
top multinst_225 (.a(mul_a[1799:1792]), .b(mul_b[1799:1792]), .c(mul_c[3599:3584]), .clk(clk));
top multinst_226 (.a(mul_a[1807:1800]), .b(mul_b[1807:1800]), .c(mul_c[3615:3600]), .clk(clk));
top multinst_227 (.a(mul_a[1815:1808]), .b(mul_b[1815:1808]), .c(mul_c[3631:3616]), .clk(clk));
top multinst_228 (.a(mul_a[1823:1816]), .b(mul_b[1823:1816]), .c(mul_c[3647:3632]), .clk(clk));
top multinst_229 (.a(mul_a[1831:1824]), .b(mul_b[1831:1824]), .c(mul_c[3663:3648]), .clk(clk));
top multinst_230 (.a(mul_a[1839:1832]), .b(mul_b[1839:1832]), .c(mul_c[3679:3664]), .clk(clk));
top multinst_231 (.a(mul_a[1847:1840]), .b(mul_b[1847:1840]), .c(mul_c[3695:3680]), .clk(clk));
top multinst_232 (.a(mul_a[1855:1848]), .b(mul_b[1855:1848]), .c(mul_c[3711:3696]), .clk(clk));
top multinst_233 (.a(mul_a[1863:1856]), .b(mul_b[1863:1856]), .c(mul_c[3727:3712]), .clk(clk));
top multinst_234 (.a(mul_a[1871:1864]), .b(mul_b[1871:1864]), .c(mul_c[3743:3728]), .clk(clk));
top multinst_235 (.a(mul_a[1879:1872]), .b(mul_b[1879:1872]), .c(mul_c[3759:3744]), .clk(clk));
top multinst_236 (.a(mul_a[1887:1880]), .b(mul_b[1887:1880]), .c(mul_c[3775:3760]), .clk(clk));
top multinst_237 (.a(mul_a[1895:1888]), .b(mul_b[1895:1888]), .c(mul_c[3791:3776]), .clk(clk));
top multinst_238 (.a(mul_a[1903:1896]), .b(mul_b[1903:1896]), .c(mul_c[3807:3792]), .clk(clk));
top multinst_239 (.a(mul_a[1911:1904]), .b(mul_b[1911:1904]), .c(mul_c[3823:3808]), .clk(clk));
top multinst_240 (.a(mul_a[1919:1912]), .b(mul_b[1919:1912]), .c(mul_c[3839:3824]), .clk(clk));
top multinst_241 (.a(mul_a[1927:1920]), .b(mul_b[1927:1920]), .c(mul_c[3855:3840]), .clk(clk));
top multinst_242 (.a(mul_a[1935:1928]), .b(mul_b[1935:1928]), .c(mul_c[3871:3856]), .clk(clk));
top multinst_243 (.a(mul_a[1943:1936]), .b(mul_b[1943:1936]), .c(mul_c[3887:3872]), .clk(clk));
top multinst_244 (.a(mul_a[1951:1944]), .b(mul_b[1951:1944]), .c(mul_c[3903:3888]), .clk(clk));
top multinst_245 (.a(mul_a[1959:1952]), .b(mul_b[1959:1952]), .c(mul_c[3919:3904]), .clk(clk));
top multinst_246 (.a(mul_a[1967:1960]), .b(mul_b[1967:1960]), .c(mul_c[3935:3920]), .clk(clk));
top multinst_247 (.a(mul_a[1975:1968]), .b(mul_b[1975:1968]), .c(mul_c[3951:3936]), .clk(clk));
top multinst_248 (.a(mul_a[1983:1976]), .b(mul_b[1983:1976]), .c(mul_c[3967:3952]), .clk(clk));
top multinst_249 (.a(mul_a[1991:1984]), .b(mul_b[1991:1984]), .c(mul_c[3983:3968]), .clk(clk));
top multinst_250 (.a(mul_a[1999:1992]), .b(mul_b[1999:1992]), .c(mul_c[3999:3984]), .clk(clk));
top multinst_251 (.a(mul_a[2007:2000]), .b(mul_b[2007:2000]), .c(mul_c[4015:4000]), .clk(clk));
top multinst_252 (.a(mul_a[2015:2008]), .b(mul_b[2015:2008]), .c(mul_c[4031:4016]), .clk(clk));
top multinst_253 (.a(mul_a[2023:2016]), .b(mul_b[2023:2016]), .c(mul_c[4047:4032]), .clk(clk));
top multinst_254 (.a(mul_a[2031:2024]), .b(mul_b[2031:2024]), .c(mul_c[4063:4048]), .clk(clk));
top multinst_255 (.a(mul_a[2039:2032]), .b(mul_b[2039:2032]), .c(mul_c[4079:4064]), .clk(clk));
top multinst_256 (.a(mul_a[2047:2040]), .b(mul_b[2047:2040]), .c(mul_c[4095:4080]), .clk(clk));
top multinst_257 (.a(mul_a[2055:2048]), .b(mul_b[2055:2048]), .c(mul_c[4111:4096]), .clk(clk));
top multinst_258 (.a(mul_a[2063:2056]), .b(mul_b[2063:2056]), .c(mul_c[4127:4112]), .clk(clk));
top multinst_259 (.a(mul_a[2071:2064]), .b(mul_b[2071:2064]), .c(mul_c[4143:4128]), .clk(clk));
top multinst_260 (.a(mul_a[2079:2072]), .b(mul_b[2079:2072]), .c(mul_c[4159:4144]), .clk(clk));
top multinst_261 (.a(mul_a[2087:2080]), .b(mul_b[2087:2080]), .c(mul_c[4175:4160]), .clk(clk));
top multinst_262 (.a(mul_a[2095:2088]), .b(mul_b[2095:2088]), .c(mul_c[4191:4176]), .clk(clk));
top multinst_263 (.a(mul_a[2103:2096]), .b(mul_b[2103:2096]), .c(mul_c[4207:4192]), .clk(clk));
top multinst_264 (.a(mul_a[2111:2104]), .b(mul_b[2111:2104]), .c(mul_c[4223:4208]), .clk(clk));
top multinst_265 (.a(mul_a[2119:2112]), .b(mul_b[2119:2112]), .c(mul_c[4239:4224]), .clk(clk));
top multinst_266 (.a(mul_a[2127:2120]), .b(mul_b[2127:2120]), .c(mul_c[4255:4240]), .clk(clk));
top multinst_267 (.a(mul_a[2135:2128]), .b(mul_b[2135:2128]), .c(mul_c[4271:4256]), .clk(clk));
top multinst_268 (.a(mul_a[2143:2136]), .b(mul_b[2143:2136]), .c(mul_c[4287:4272]), .clk(clk));
top multinst_269 (.a(mul_a[2151:2144]), .b(mul_b[2151:2144]), .c(mul_c[4303:4288]), .clk(clk));
top multinst_270 (.a(mul_a[2159:2152]), .b(mul_b[2159:2152]), .c(mul_c[4319:4304]), .clk(clk));
top multinst_271 (.a(mul_a[2167:2160]), .b(mul_b[2167:2160]), .c(mul_c[4335:4320]), .clk(clk));
top multinst_272 (.a(mul_a[2175:2168]), .b(mul_b[2175:2168]), .c(mul_c[4351:4336]), .clk(clk));
top multinst_273 (.a(mul_a[2183:2176]), .b(mul_b[2183:2176]), .c(mul_c[4367:4352]), .clk(clk));
top multinst_274 (.a(mul_a[2191:2184]), .b(mul_b[2191:2184]), .c(mul_c[4383:4368]), .clk(clk));
top multinst_275 (.a(mul_a[2199:2192]), .b(mul_b[2199:2192]), .c(mul_c[4399:4384]), .clk(clk));
top multinst_276 (.a(mul_a[2207:2200]), .b(mul_b[2207:2200]), .c(mul_c[4415:4400]), .clk(clk));
top multinst_277 (.a(mul_a[2215:2208]), .b(mul_b[2215:2208]), .c(mul_c[4431:4416]), .clk(clk));
top multinst_278 (.a(mul_a[2223:2216]), .b(mul_b[2223:2216]), .c(mul_c[4447:4432]), .clk(clk));
top multinst_279 (.a(mul_a[2231:2224]), .b(mul_b[2231:2224]), .c(mul_c[4463:4448]), .clk(clk));
top multinst_280 (.a(mul_a[2239:2232]), .b(mul_b[2239:2232]), .c(mul_c[4479:4464]), .clk(clk));
top multinst_281 (.a(mul_a[2247:2240]), .b(mul_b[2247:2240]), .c(mul_c[4495:4480]), .clk(clk));
top multinst_282 (.a(mul_a[2255:2248]), .b(mul_b[2255:2248]), .c(mul_c[4511:4496]), .clk(clk));
top multinst_283 (.a(mul_a[2263:2256]), .b(mul_b[2263:2256]), .c(mul_c[4527:4512]), .clk(clk));
top multinst_284 (.a(mul_a[2271:2264]), .b(mul_b[2271:2264]), .c(mul_c[4543:4528]), .clk(clk));
top multinst_285 (.a(mul_a[2279:2272]), .b(mul_b[2279:2272]), .c(mul_c[4559:4544]), .clk(clk));
top multinst_286 (.a(mul_a[2287:2280]), .b(mul_b[2287:2280]), .c(mul_c[4575:4560]), .clk(clk));
top multinst_287 (.a(mul_a[2295:2288]), .b(mul_b[2295:2288]), .c(mul_c[4591:4576]), .clk(clk));
top multinst_288 (.a(mul_a[2303:2296]), .b(mul_b[2303:2296]), .c(mul_c[4607:4592]), .clk(clk));



mux50_1 m1(.clk(clk),
.a_1(mul_c[15:0]),
.a_2(mul_c[31:16]),
.a_3(mul_c[47:32]),
.a_4(mul_c[63:48]),
.a_5(mul_c[79:64]),
.a_6(mul_c[95:80]),
.a_7(mul_c[111:96]),
.a_8(mul_c[127:112]),
.a_9(mul_c[143:128]),
.a_10(mul_c[159:144]),
.a_11(mul_c[175:160]),
.a_12(mul_c[191:176]),
.a_13(mul_c[207:192]),
.a_14(mul_c[223:208]),
.a_15(mul_c[239:224]),
.a_16(mul_c[255:240]),
.a_17(mul_c[271:256]),
.a_18(mul_c[287:272]),
.a_19(mul_c[303:288]),
.a_20(mul_c[319:304]),
.a_21(mul_c[335:320]),
.a_22(mul_c[351:336]),
.a_23(mul_c[367:352]),
.a_24(mul_c[383:368]),
.a_25(mul_c[399:384]),
.a_26(mul_c[415:400]),
.a_27(mul_c[431:416]),
.a_28(mul_c[447:432]),
.a_29(mul_c[463:448]),
.a_30(mul_c[479:464]),
.a_31(mul_c[495:480]),
.a_32(mul_c[511:496]),
.a_33(mul_c[527:512]),
.a_34(mul_c[543:528]),
.a_35(mul_c[559:544]),
.a_36(mul_c[575:560]),
.a_37(mul_c[591:576]),
.a_38(mul_c[607:592]),
.a_39(mul_c[623:608]),
.a_40(mul_c[639:624]),
.a_41(mul_c[655:640]),
.a_42(mul_c[671:656]),
.a_43(mul_c[687:672]),
.a_44(mul_c[703:688]),
.a_45(mul_c[719:704]),
.a_46(mul_c[735:720]),
.a_47(mul_c[751:736]),
.a_48(mul_c[767:752]),
.a_49(mul_c[783:768]),
.a_50(mul_c[799:784]),
.a_51(mul_c[815:800]),
.a_52(mul_c[831:816]),
.a_53(mul_c[847:832]),
.a_54(mul_c[863:848]),
.a_55(mul_c[879:864]),
.a_56(mul_c[895:880]),
.a_57(mul_c[911:896]),
.a_58(mul_c[927:912]),
.a_59(mul_c[943:928]),
.a_60(mul_c[959:944]),
.a_61(mul_c[975:960]),
.a_62(mul_c[991:976]),
.a_63(mul_c[1007:992]),
.a_64(mul_c[1023:1008]),
.a_65(mul_c[1039:1024]),
.a_66(mul_c[1055:1040]),
.a_67(mul_c[1071:1056]),
.a_68(mul_c[1087:1072]),
.a_69(mul_c[1103:1088]),
.a_70(mul_c[1119:1104]),
.a_71(mul_c[1135:1120]),
.a_72(mul_c[1151:1136]),
.a_73(mul_c[1167:1152]),
.a_74(mul_c[1183:1168]),
.a_75(mul_c[1199:1184]),
.a_76(mul_c[1215:1200]),
.a_77(mul_c[1231:1216]),
.a_78(mul_c[1247:1232]),
.a_79(mul_c[1263:1248]),
.a_80(mul_c[1279:1264]),
.a_81(mul_c[1295:1280]),
.a_82(mul_c[1311:1296]),
.a_83(mul_c[1327:1312]),
.a_84(mul_c[1343:1328]),
.a_85(mul_c[1359:1344]),
.a_86(mul_c[1375:1360]),
.a_87(mul_c[1391:1376]),
.a_88(mul_c[1407:1392]),
.a_89(mul_c[1423:1408]),
.a_90(mul_c[1439:1424]),
.a_91(mul_c[1455:1440]),
.a_92(mul_c[1471:1456]),
.a_93(mul_c[1487:1472]),
.a_94(mul_c[1503:1488]),
.a_95(mul_c[1519:1504]),
.a_96(mul_c[1535:1520]),
.a_97(mul_c[1551:1536]),
.a_98(mul_c[1567:1552]),
.a_99(mul_c[1583:1568]),
.a_100(mul_c[1599:1584]),
.a_101(mul_c[1615:1600]),
.a_102(mul_c[1631:1616]),
.a_103(mul_c[1647:1632]),
.a_104(mul_c[1663:1648]),
.a_105(mul_c[1679:1664]),
.a_106(mul_c[1695:1680]),
.a_107(mul_c[1711:1696]),
.a_108(mul_c[1727:1712]),
.a_109(mul_c[1743:1728]),
.a_110(mul_c[1759:1744]),
.a_111(mul_c[1775:1760]),
.a_112(mul_c[1791:1776]),
.a_113(mul_c[1807:1792]),
.a_114(mul_c[1823:1808]),
.a_115(mul_c[1839:1824]),
.a_116(mul_c[1855:1840]),
.a_117(mul_c[1871:1856]),
.a_118(mul_c[1887:1872]),
.a_119(mul_c[1903:1888]),
.a_120(mul_c[1919:1904]),
.a_121(mul_c[1935:1920]),
.a_122(mul_c[1951:1936]),
.a_123(mul_c[1967:1952]),
.a_124(mul_c[1983:1968]),
.a_125(mul_c[1999:1984]),
.a_126(mul_c[2015:2000]),
.a_127(mul_c[2031:2016]),
.a_128(mul_c[2047:2032]),
.a_129(mul_c[2063:2048]),
.a_130(mul_c[2079:2064]),
.a_131(mul_c[2095:2080]),
.a_132(mul_c[2111:2096]),
.a_133(mul_c[2127:2112]),
.a_134(mul_c[2143:2128]),
.a_135(mul_c[2159:2144]),
.a_136(mul_c[2175:2160]),
.a_137(mul_c[2191:2176]),
.a_138(mul_c[2207:2192]),
.a_139(mul_c[2223:2208]),
.a_140(mul_c[2239:2224]),
.a_141(mul_c[2255:2240]),
.a_142(mul_c[2271:2256]),
.a_143(mul_c[2287:2272]),
.a_144(mul_c[2303:2288]),
.a_145(mul_c[2319:2304]),
.a_146(mul_c[2335:2320]),
.a_147(mul_c[2351:2336]),
.a_148(mul_c[2367:2352]),
.a_149(mul_c[2383:2368]),
.a_150(mul_c[2399:2384]),
.a_151(mul_c[2415:2400]),
.a_152(mul_c[2431:2416]),
.a_153(mul_c[2447:2432]),
.a_154(mul_c[2463:2448]),
.a_155(mul_c[2479:2464]),
.a_156(mul_c[2495:2480]),
.a_157(mul_c[2511:2496]),
.a_158(mul_c[2527:2512]),
.a_159(mul_c[2543:2528]),
.a_160(mul_c[2559:2544]),
.a_161(mul_c[2575:2560]),
.a_162(mul_c[2591:2576]),
.a_163(mul_c[2607:2592]),
.a_164(mul_c[2623:2608]),
.a_165(mul_c[2639:2624]),
.a_166(mul_c[2655:2640]),
.a_167(mul_c[2671:2656]),
.a_168(mul_c[2687:2672]),
.a_169(mul_c[2703:2688]),
.a_170(mul_c[2719:2704]),
.a_171(mul_c[2735:2720]),
.a_172(mul_c[2751:2736]),
.a_173(mul_c[2767:2752]),
.a_174(mul_c[2783:2768]),
.a_175(mul_c[2799:2784]),
.a_176(mul_c[2815:2800]),
.a_177(mul_c[2831:2816]),
.a_178(mul_c[2847:2832]),
.a_179(mul_c[2863:2848]),
.a_180(mul_c[2879:2864]),
.a_181(mul_c[2895:2880]),
.a_182(mul_c[2911:2896]),
.a_183(mul_c[2927:2912]),
.a_184(mul_c[2943:2928]),
.a_185(mul_c[2959:2944]),
.a_186(mul_c[2975:2960]),
.a_187(mul_c[2991:2976]),
.a_188(mul_c[3007:2992]),
.a_189(mul_c[3023:3008]),
.a_190(mul_c[3039:3024]),
.a_191(mul_c[3055:3040]),
.a_192(mul_c[3071:3056]),
.a_193(mul_c[3087:3072]),
.a_194(mul_c[3103:3088]),
.a_195(mul_c[3119:3104]),
.a_196(mul_c[3135:3120]),
.a_197(mul_c[3151:3136]),
.a_198(mul_c[3167:3152]),
.a_199(mul_c[3183:3168]),
.a_200(mul_c[3199:3184]),
.a_201(mul_c[3215:3200]),
.a_202(mul_c[3231:3216]),
.a_203(mul_c[3247:3232]),
.a_204(mul_c[3263:3248]),
.a_205(mul_c[3279:3264]),
.a_206(mul_c[3295:3280]),
.a_207(mul_c[3311:3296]),
.a_208(mul_c[3327:3312]),
.a_209(mul_c[3343:3328]),
.a_210(mul_c[3359:3344]),
.a_211(mul_c[3375:3360]),
.a_212(mul_c[3391:3376]),
.a_213(mul_c[3407:3392]),
.a_214(mul_c[3423:3408]),
.a_215(mul_c[3439:3424]),
.a_216(mul_c[3455:3440]),
.a_217(mul_c[3471:3456]),
.a_218(mul_c[3487:3472]),
.a_219(mul_c[3503:3488]),
.a_220(mul_c[3519:3504]),
.a_221(mul_c[3535:3520]),
.a_222(mul_c[3551:3536]),
.a_223(mul_c[3567:3552]),
.a_224(mul_c[3583:3568]),
.a_225(mul_c[3599:3584]),
.a_226(mul_c[3615:3600]),
.a_227(mul_c[3631:3616]),
.a_228(mul_c[3647:3632]),
.a_229(mul_c[3663:3648]),
.a_230(mul_c[3679:3664]),
.a_231(mul_c[3695:3680]),
.a_232(mul_c[3711:3696]),
.a_233(mul_c[3727:3712]),
.a_234(mul_c[3743:3728]),
.a_235(mul_c[3759:3744]),
.a_236(mul_c[3775:3760]),
.a_237(mul_c[3791:3776]),
.a_238(mul_c[3807:3792]),
.a_239(mul_c[3823:3808]),
.a_240(mul_c[3839:3824]),
.a_241(mul_c[3855:3840]),
.a_242(mul_c[3871:3856]),
.a_243(mul_c[3887:3872]),
.a_244(mul_c[3903:3888]),
.a_245(mul_c[3919:3904]),
.a_246(mul_c[3935:3920]),
.a_247(mul_c[3951:3936]),
.a_248(mul_c[3967:3952]),
.a_249(mul_c[3983:3968]),
.a_250(mul_c[3999:3984]),
.a_251(mul_c[4015:4000]),
.a_252(mul_c[4031:4016]),
.a_253(mul_c[4047:4032]),
.a_254(mul_c[4063:4048]),
.a_255(mul_c[4079:4064]),
.a_256(mul_c[4095:4080]),
.a_257(mul_c[4111:4096]),
.a_258(mul_c[4127:4112]),
.a_259(mul_c[4143:4128]),
.a_260(mul_c[4159:4144]),
.a_261(mul_c[4175:4160]),
.a_262(mul_c[4191:4176]),
.a_263(mul_c[4207:4192]),
.a_264(mul_c[4223:4208]),
.a_265(mul_c[4239:4224]),
.a_266(mul_c[4255:4240]),
.a_267(mul_c[4271:4256]),
.a_268(mul_c[4287:4272]),
.a_269(mul_c[4303:4288]),
.a_270(mul_c[4319:4304]),
.a_271(mul_c[4335:4320]),
.a_272(mul_c[4351:4336]),
.a_273(mul_c[4367:4352]),
.a_274(mul_c[4383:4368]),
.a_275(mul_c[4399:4384]),
.a_276(mul_c[4415:4400]),
.a_277(mul_c[4431:4416]),
.a_278(mul_c[4447:4432]),
.a_279(mul_c[4463:4448]),
.a_280(mul_c[4479:4464]),
.a_281(mul_c[4495:4480]),
.a_282(mul_c[4511:4496]),
.a_283(mul_c[4527:4512]),
.a_284(mul_c[4543:4528]),
.a_285(mul_c[4559:4544]),
.a_286(mul_c[4575:4560]),
.a_287(mul_c[4591:4576]),
.a_288(mul_c[4607:4592]),
.ans(ans_c));
demux d1(.a(rd_a),
.clk(clk),
.a_1(mul_a[7:0]),
.a_2(mul_a[15:8]),
.a_3(mul_a[23:16]),
.a_4(mul_a[31:24]),
.a_5(mul_a[39:32]),
.a_6(mul_a[47:40]),
.a_7(mul_a[55:48]),
.a_8(mul_a[63:56]),
.a_9(mul_a[71:64]),
.a_10(mul_a[79:72]),
.a_11(mul_a[87:80]),
.a_12(mul_a[95:88]),
.a_13(mul_a[103:96]),
.a_14(mul_a[111:104]),
.a_15(mul_a[119:112]),
.a_16(mul_a[127:120]),
.a_17(mul_a[135:128]),
.a_18(mul_a[143:136]),
.a_19(mul_a[151:144]),
.a_20(mul_a[159:152]),
.a_21(mul_a[167:160]),
.a_22(mul_a[175:168]),
.a_23(mul_a[183:176]),
.a_24(mul_a[191:184]),
.a_25(mul_a[199:192]),
.a_26(mul_a[207:200]),
.a_27(mul_a[215:208]),
.a_28(mul_a[223:216]),
.a_29(mul_a[231:224]),
.a_30(mul_a[239:232]),
.a_31(mul_a[247:240]),
.a_32(mul_a[255:248]),
.a_33(mul_a[263:256]),
.a_34(mul_a[271:264]),
.a_35(mul_a[279:272]),
.a_36(mul_a[287:280]),
.a_37(mul_a[295:288]),
.a_38(mul_a[303:296]),
.a_39(mul_a[311:304]),
.a_40(mul_a[319:312]),
.a_41(mul_a[327:320]),
.a_42(mul_a[335:328]),
.a_43(mul_a[343:336]),
.a_44(mul_a[351:344]),
.a_45(mul_a[359:352]),
.a_46(mul_a[367:360]),
.a_47(mul_a[375:368]),
.a_48(mul_a[383:376]),
.a_49(mul_a[391:384]),
.a_50(mul_a[399:392]),
.a_51(mul_a[407:400]),
.a_52(mul_a[415:408]),
.a_53(mul_a[423:416]),
.a_54(mul_a[431:424]),
.a_55(mul_a[439:432]),
.a_56(mul_a[447:440]),
.a_57(mul_a[455:448]),
.a_58(mul_a[463:456]),
.a_59(mul_a[471:464]),
.a_60(mul_a[479:472]),
.a_61(mul_a[487:480]),
.a_62(mul_a[495:488]),
.a_63(mul_a[503:496]),
.a_64(mul_a[511:504]),
.a_65(mul_a[519:512]),
.a_66(mul_a[527:520]),
.a_67(mul_a[535:528]),
.a_68(mul_a[543:536]),
.a_69(mul_a[551:544]),
.a_70(mul_a[559:552]),
.a_71(mul_a[567:560]),
.a_72(mul_a[575:568]),
.a_73(mul_a[583:576]),
.a_74(mul_a[591:584]),
.a_75(mul_a[599:592]),
.a_76(mul_a[607:600]),
.a_77(mul_a[615:608]),
.a_78(mul_a[623:616]),
.a_79(mul_a[631:624]),
.a_80(mul_a[639:632]),
.a_81(mul_a[647:640]),
.a_82(mul_a[655:648]),
.a_83(mul_a[663:656]),
.a_84(mul_a[671:664]),
.a_85(mul_a[679:672]),
.a_86(mul_a[687:680]),
.a_87(mul_a[695:688]),
.a_88(mul_a[703:696]),
.a_89(mul_a[711:704]),
.a_90(mul_a[719:712]),
.a_91(mul_a[727:720]),
.a_92(mul_a[735:728]),
.a_93(mul_a[743:736]),
.a_94(mul_a[751:744]),
.a_95(mul_a[759:752]),
.a_96(mul_a[767:760]),
.a_97(mul_a[775:768]),
.a_98(mul_a[783:776]),
.a_99(mul_a[791:784]),
.a_100(mul_a[799:792]),
.a_101(mul_a[807:800]),
.a_102(mul_a[815:808]),
.a_103(mul_a[823:816]),
.a_104(mul_a[831:824]),
.a_105(mul_a[839:832]),
.a_106(mul_a[847:840]),
.a_107(mul_a[855:848]),
.a_108(mul_a[863:856]),
.a_109(mul_a[871:864]),
.a_110(mul_a[879:872]),
.a_111(mul_a[887:880]),
.a_112(mul_a[895:888]),
.a_113(mul_a[903:896]),
.a_114(mul_a[911:904]),
.a_115(mul_a[919:912]),
.a_116(mul_a[927:920]),
.a_117(mul_a[935:928]),
.a_118(mul_a[943:936]),
.a_119(mul_a[951:944]),
.a_120(mul_a[959:952]),
.a_121(mul_a[967:960]),
.a_122(mul_a[975:968]),
.a_123(mul_a[983:976]),
.a_124(mul_a[991:984]),
.a_125(mul_a[999:992]),
.a_126(mul_a[1007:1000]),
.a_127(mul_a[1015:1008]),
.a_128(mul_a[1023:1016]),
.a_129(mul_a[1031:1024]),
.a_130(mul_a[1039:1032]),
.a_131(mul_a[1047:1040]),
.a_132(mul_a[1055:1048]),
.a_133(mul_a[1063:1056]),
.a_134(mul_a[1071:1064]),
.a_135(mul_a[1079:1072]),
.a_136(mul_a[1087:1080]),
.a_137(mul_a[1095:1088]),
.a_138(mul_a[1103:1096]),
.a_139(mul_a[1111:1104]),
.a_140(mul_a[1119:1112]),
.a_141(mul_a[1127:1120]),
.a_142(mul_a[1135:1128]),
.a_143(mul_a[1143:1136]),
.a_144(mul_a[1151:1144]),
.a_145(mul_a[1159:1152]),
.a_146(mul_a[1167:1160]),
.a_147(mul_a[1175:1168]),
.a_148(mul_a[1183:1176]),
.a_149(mul_a[1191:1184]),
.a_150(mul_a[1199:1192]),
.a_151(mul_a[1207:1200]),
.a_152(mul_a[1215:1208]),
.a_153(mul_a[1223:1216]),
.a_154(mul_a[1231:1224]),
.a_155(mul_a[1239:1232]),
.a_156(mul_a[1247:1240]),
.a_157(mul_a[1255:1248]),
.a_158(mul_a[1263:1256]),
.a_159(mul_a[1271:1264]),
.a_160(mul_a[1279:1272]),
.a_161(mul_a[1287:1280]),
.a_162(mul_a[1295:1288]),
.a_163(mul_a[1303:1296]),
.a_164(mul_a[1311:1304]),
.a_165(mul_a[1319:1312]),
.a_166(mul_a[1327:1320]),
.a_167(mul_a[1335:1328]),
.a_168(mul_a[1343:1336]),
.a_169(mul_a[1351:1344]),
.a_170(mul_a[1359:1352]),
.a_171(mul_a[1367:1360]),
.a_172(mul_a[1375:1368]),
.a_173(mul_a[1383:1376]),
.a_174(mul_a[1391:1384]),
.a_175(mul_a[1399:1392]),
.a_176(mul_a[1407:1400]),
.a_177(mul_a[1415:1408]),
.a_178(mul_a[1423:1416]),
.a_179(mul_a[1431:1424]),
.a_180(mul_a[1439:1432]),
.a_181(mul_a[1447:1440]),
.a_182(mul_a[1455:1448]),
.a_183(mul_a[1463:1456]),
.a_184(mul_a[1471:1464]),
.a_185(mul_a[1479:1472]),
.a_186(mul_a[1487:1480]),
.a_187(mul_a[1495:1488]),
.a_188(mul_a[1503:1496]),
.a_189(mul_a[1511:1504]),
.a_190(mul_a[1519:1512]),
.a_191(mul_a[1527:1520]),
.a_192(mul_a[1535:1528]),
.a_193(mul_a[1543:1536]),
.a_194(mul_a[1551:1544]),
.a_195(mul_a[1559:1552]),
.a_196(mul_a[1567:1560]),
.a_197(mul_a[1575:1568]),
.a_198(mul_a[1583:1576]),
.a_199(mul_a[1591:1584]),
.a_200(mul_a[1599:1592]),
.a_201(mul_a[1607:1600]),
.a_202(mul_a[1615:1608]),
.a_203(mul_a[1623:1616]),
.a_204(mul_a[1631:1624]),
.a_205(mul_a[1639:1632]),
.a_206(mul_a[1647:1640]),
.a_207(mul_a[1655:1648]),
.a_208(mul_a[1663:1656]),
.a_209(mul_a[1671:1664]),
.a_210(mul_a[1679:1672]),
.a_211(mul_a[1687:1680]),
.a_212(mul_a[1695:1688]),
.a_213(mul_a[1703:1696]),
.a_214(mul_a[1711:1704]),
.a_215(mul_a[1719:1712]),
.a_216(mul_a[1727:1720]),
.a_217(mul_a[1735:1728]),
.a_218(mul_a[1743:1736]),
.a_219(mul_a[1751:1744]),
.a_220(mul_a[1759:1752]),
.a_221(mul_a[1767:1760]),
.a_222(mul_a[1775:1768]),
.a_223(mul_a[1783:1776]),
.a_224(mul_a[1791:1784]),
.a_225(mul_a[1799:1792]),
.a_226(mul_a[1807:1800]),
.a_227(mul_a[1815:1808]),
.a_228(mul_a[1823:1816]),
.a_229(mul_a[1831:1824]),
.a_230(mul_a[1839:1832]),
.a_231(mul_a[1847:1840]),
.a_232(mul_a[1855:1848]),
.a_233(mul_a[1863:1856]),
.a_234(mul_a[1871:1864]),
.a_235(mul_a[1879:1872]),
.a_236(mul_a[1887:1880]),
.a_237(mul_a[1895:1888]),
.a_238(mul_a[1903:1896]),
.a_239(mul_a[1911:1904]),
.a_240(mul_a[1919:1912]),
.a_241(mul_a[1927:1920]),
.a_242(mul_a[1935:1932]),
.a_243(mul_a[1943:1936]),
.a_244(mul_a[1951:1944]),
.a_245(mul_a[1959:1952]),
.a_246(mul_a[1967:1960]),
.a_247(mul_a[1975:1968]),
.a_248(mul_a[1983:1976]),
.a_249(mul_a[1991:1984]),
.a_250(mul_a[1999:1992]),
.a_251(mul_a[2007:2000]),
.a_252(mul_a[2015:2008]),
.a_253(mul_a[2023:2016]),
.a_254(mul_a[2031:2024]),
.a_255(mul_a[2039:2032]),
.a_256(mul_a[2047:2040]),
.a_257(mul_a[2055:2048]),
.a_258(mul_a[2063:2056]),
.a_259(mul_a[2071:2064]),
.a_260(mul_a[2079:2072]),
.a_261(mul_a[2087:2080]),
.a_262(mul_a[2095:2088]),
.a_263(mul_a[2103:2096]),
.a_264(mul_a[2111:2104]),
.a_265(mul_a[2119:2112]),
.a_266(mul_a[2127:2120]),
.a_267(mul_a[2135:2128]),
.a_268(mul_a[2143:2136]),
.a_269(mul_a[2151:2144]),
.a_270(mul_a[2159:2152]),
.a_271(mul_a[2167:2160]),
.a_272(mul_a[2175:2168]),
.a_273(mul_a[2183:2176]),
.a_274(mul_a[2191:2184]),
.a_275(mul_a[2199:2192]),
.a_276(mul_a[2207:2200]),
.a_277(mul_a[2215:2208]),
.a_278(mul_a[2223:2216]),
.a_279(mul_a[2231:2224]),
.a_280(mul_a[2239:2232]),
.a_281(mul_a[2247:2240]),
.a_282(mul_a[2255:2248]),
.a_283(mul_a[2263:2256]),
.a_284(mul_a[2271:2264]),
.a_285(mul_a[2279:2272]),
.a_286(mul_a[2287:2280]),
.a_287(mul_a[2295:2288]),
.a_288(mul_a[2303:2296])
);

demux d2(.a(rd_b),
.clk(clk),
.a_1(mul_b[7:0]),
.a_2(mul_b[15:8]),
.a_3(mul_b[23:16]),
.a_4(mul_b[31:24]),
.a_5(mul_b[39:32]),
.a_6(mul_b[47:40]),
.a_7(mul_b[55:48]),
.a_8(mul_b[63:56]),
.a_9(mul_b[71:64]),
.a_10(mul_b[79:72]),
.a_11(mul_b[87:80]),
.a_12(mul_b[95:88]),
.a_13(mul_b[103:96]),
.a_14(mul_b[111:104]),
.a_15(mul_b[119:112]),
.a_16(mul_b[127:120]),
.a_17(mul_b[135:128]),
.a_18(mul_b[143:136]),
.a_19(mul_b[151:144]),
.a_20(mul_b[159:152]),
.a_21(mul_b[167:160]),
.a_22(mul_b[175:168]),
.a_23(mul_b[183:176]),
.a_24(mul_b[191:184]),
.a_25(mul_b[199:192]),
.a_26(mul_b[207:200]),
.a_27(mul_b[215:208]),
.a_28(mul_b[223:216]),
.a_29(mul_b[231:224]),
.a_30(mul_b[239:232]),
.a_31(mul_b[247:240]),
.a_32(mul_b[255:248]),
.a_33(mul_b[263:256]),
.a_34(mul_b[271:264]),
.a_35(mul_b[279:272]),
.a_36(mul_b[287:280]),
.a_37(mul_b[295:288]),
.a_38(mul_b[303:296]),
.a_39(mul_b[311:304]),
.a_40(mul_b[319:312]),
.a_41(mul_b[327:320]),
.a_42(mul_b[335:328]),
.a_43(mul_b[343:336]),
.a_44(mul_b[351:344]),
.a_45(mul_b[359:352]),
.a_46(mul_b[367:360]),
.a_47(mul_b[375:368]),
.a_48(mul_b[383:376]),
.a_49(mul_b[391:384]),
.a_50(mul_b[399:392]),
.a_51(mul_b[407:400]),
.a_52(mul_b[415:408]),
.a_53(mul_b[423:416]),
.a_54(mul_b[431:424]),
.a_55(mul_b[439:432]),
.a_56(mul_b[447:440]),
.a_57(mul_b[455:448]),
.a_58(mul_b[463:456]),
.a_59(mul_b[471:464]),
.a_60(mul_b[479:472]),
.a_61(mul_b[487:480]),
.a_62(mul_b[495:488]),
.a_63(mul_b[503:496]),
.a_64(mul_b[511:504]),
.a_65(mul_b[519:512]),
.a_66(mul_b[527:520]),
.a_67(mul_b[535:528]),
.a_68(mul_b[543:536]),
.a_69(mul_b[551:544]),
.a_70(mul_b[559:552]),
.a_71(mul_b[567:560]),
.a_72(mul_b[575:568]),
.a_73(mul_b[583:576]),
.a_74(mul_b[591:584]),
.a_75(mul_b[599:592]),
.a_76(mul_b[607:600]),
.a_77(mul_b[615:608]),
.a_78(mul_b[623:616]),
.a_79(mul_b[631:624]),
.a_80(mul_b[639:632]),
.a_81(mul_b[647:640]),
.a_82(mul_b[655:648]),
.a_83(mul_b[663:656]),
.a_84(mul_b[671:664]),
.a_85(mul_b[679:672]),
.a_86(mul_b[687:680]),
.a_87(mul_b[695:688]),
.a_88(mul_b[703:696]),
.a_89(mul_b[711:704]),
.a_90(mul_b[719:712]),
.a_91(mul_b[727:720]),
.a_92(mul_b[735:728]),
.a_93(mul_b[743:736]),
.a_94(mul_b[751:744]),
.a_95(mul_b[759:752]),
.a_96(mul_b[767:760]),
.a_97(mul_b[775:768]),
.a_98(mul_b[783:776]),
.a_99(mul_b[791:784]),
.a_100(mul_b[799:792]),
.a_101(mul_b[807:800]),
.a_102(mul_b[815:808]),
.a_103(mul_b[823:816]),
.a_104(mul_b[831:824]),
.a_105(mul_b[839:832]),
.a_106(mul_b[847:840]),
.a_107(mul_b[855:848]),
.a_108(mul_b[863:856]),
.a_109(mul_b[871:864]),
.a_110(mul_b[879:872]),
.a_111(mul_b[887:880]),
.a_112(mul_b[895:888]),
.a_113(mul_b[903:896]),
.a_114(mul_b[911:904]),
.a_115(mul_b[919:912]),
.a_116(mul_b[927:920]),
.a_117(mul_b[935:928]),
.a_118(mul_b[943:936]),
.a_119(mul_b[951:944]),
.a_120(mul_b[959:952]),
.a_121(mul_b[967:960]),
.a_122(mul_b[975:968]),
.a_123(mul_b[983:976]),
.a_124(mul_b[991:984]),
.a_125(mul_b[999:992]),
.a_126(mul_b[1007:1000]),
.a_127(mul_b[1015:1008]),
.a_128(mul_b[1023:1016]),
.a_129(mul_b[1031:1024]),
.a_130(mul_b[1039:1032]),
.a_131(mul_b[1047:1040]),
.a_132(mul_b[1055:1048]),
.a_133(mul_b[1063:1056]),
.a_134(mul_b[1071:1064]),
.a_135(mul_b[1079:1072]),
.a_136(mul_b[1087:1080]),
.a_137(mul_b[1095:1088]),
.a_138(mul_b[1103:1096]),
.a_139(mul_b[1111:1104]),
.a_140(mul_b[1119:1112]),
.a_141(mul_b[1127:1120]),
.a_142(mul_b[1135:1128]),
.a_143(mul_b[1143:1136]),
.a_144(mul_b[1151:1144]),
.a_145(mul_b[1159:1152]),
.a_146(mul_b[1167:1160]),
.a_147(mul_b[1175:1168]),
.a_148(mul_b[1183:1176]),
.a_149(mul_b[1191:1184]),
.a_150(mul_b[1199:1192]),
.a_151(mul_b[1207:1200]),
.a_152(mul_b[1215:1208]),
.a_153(mul_b[1223:1216]),
.a_154(mul_b[1231:1224]),
.a_155(mul_b[1239:1232]),
.a_156(mul_b[1247:1240]),
.a_157(mul_b[1255:1248]),
.a_158(mul_b[1263:1256]),
.a_159(mul_b[1271:1264]),
.a_160(mul_b[1279:1272]),
.a_161(mul_b[1287:1280]),
.a_162(mul_b[1295:1288]),
.a_163(mul_b[1303:1296]),
.a_164(mul_b[1311:1304]),
.a_165(mul_b[1319:1312]),
.a_166(mul_b[1327:1320]),
.a_167(mul_b[1335:1328]),
.a_168(mul_b[1343:1336]),
.a_169(mul_b[1351:1344]),
.a_170(mul_b[1359:1352]),
.a_171(mul_b[1367:1360]),
.a_172(mul_b[1375:1368]),
.a_173(mul_b[1383:1376]),
.a_174(mul_b[1391:1384]),
.a_175(mul_b[1399:1392]),
.a_176(mul_b[1407:1400]),
.a_177(mul_b[1415:1408]),
.a_178(mul_b[1423:1416]),
.a_179(mul_b[1431:1424]),
.a_180(mul_b[1439:1432]),
.a_181(mul_b[1447:1440]),
.a_182(mul_b[1455:1448]),
.a_183(mul_b[1463:1456]),
.a_184(mul_b[1471:1464]),
.a_185(mul_b[1479:1472]),
.a_186(mul_b[1487:1480]),
.a_187(mul_b[1495:1488]),
.a_188(mul_b[1503:1496]),
.a_189(mul_b[1511:1504]),
.a_190(mul_b[1519:1512]),
.a_191(mul_b[1527:1520]),
.a_192(mul_b[1535:1528]),
.a_193(mul_b[1543:1536]),
.a_194(mul_b[1551:1544]),
.a_195(mul_b[1559:1552]),
.a_196(mul_b[1567:1560]),
.a_197(mul_b[1575:1568]),
.a_198(mul_b[1583:1576]),
.a_199(mul_b[1591:1584]),
.a_200(mul_b[1599:1592]),
.a_201(mul_b[1607:1600]),
.a_202(mul_b[1615:1608]),
.a_203(mul_b[1623:1616]),
.a_204(mul_b[1631:1624]),
.a_205(mul_b[1639:1632]),
.a_206(mul_b[1647:1640]),
.a_207(mul_b[1655:1648]),
.a_208(mul_b[1663:1656]),
.a_209(mul_b[1671:1664]),
.a_210(mul_b[1679:1672]),
.a_211(mul_b[1687:1680]),
.a_212(mul_b[1695:1688]),
.a_213(mul_b[1703:1696]),
.a_214(mul_b[1711:1704]),
.a_215(mul_b[1719:1712]),
.a_216(mul_b[1727:1720]),
.a_217(mul_b[1735:1728]),
.a_218(mul_b[1743:1736]),
.a_219(mul_b[1751:1744]),
.a_220(mul_b[1759:1752]),
.a_221(mul_b[1767:1760]),
.a_222(mul_b[1775:1768]),
.a_223(mul_b[1783:1776]),
.a_224(mul_b[1791:1784]),
.a_225(mul_b[1799:1792]),
.a_226(mul_b[1807:1800]),
.a_227(mul_b[1815:1808]),
.a_228(mul_b[1823:1816]),
.a_229(mul_b[1831:1824]),
.a_230(mul_b[1839:1832]),
.a_231(mul_b[1847:1840]),
.a_232(mul_b[1855:1848]),
.a_233(mul_b[1863:1856]),
.a_234(mul_b[1871:1864]),
.a_235(mul_b[1879:1872]),
.a_236(mul_b[1887:1880]),
.a_237(mul_b[1895:1888]),
.a_238(mul_b[1903:1896]),
.a_239(mul_b[1911:1904]),
.a_240(mul_b[1919:1912]),
.a_241(mul_b[1927:1920]),
.a_242(mul_b[1935:1932]),
.a_243(mul_b[1943:1936]),
.a_244(mul_b[1951:1944]),
.a_245(mul_b[1959:1952]),
.a_246(mul_b[1967:1960]),
.a_247(mul_b[1975:1968]),
.a_248(mul_b[1983:1976]),
.a_249(mul_b[1991:1984]),
.a_250(mul_b[1999:1992]),
.a_251(mul_b[2007:2000]),
.a_252(mul_b[2015:2008]),
.a_253(mul_b[2023:2016]),
.a_254(mul_b[2031:2024]),
.a_255(mul_b[2039:2032]),
.a_256(mul_b[2047:2040]),
.a_257(mul_b[2055:2048]),
.a_258(mul_b[2063:2056]),
.a_259(mul_b[2071:2064]),
.a_260(mul_b[2079:2072]),
.a_261(mul_b[2087:2080]),
.a_262(mul_b[2095:2088]),
.a_263(mul_b[2103:2096]),
.a_264(mul_b[2111:2104]),
.a_265(mul_b[2119:2112]),
.a_266(mul_b[2127:2120]),
.a_267(mul_b[2135:2128]),
.a_268(mul_b[2143:2136]),
.a_269(mul_b[2151:2144]),
.a_270(mul_b[2159:2152]),
.a_271(mul_b[2167:2160]),
.a_272(mul_b[2175:2168]),
.a_273(mul_b[2183:2176]),
.a_274(mul_b[2191:2184]),
.a_275(mul_b[2199:2192]),
.a_276(mul_b[2207:2200]),
.a_277(mul_b[2215:2208]),
.a_278(mul_b[2223:2216]),
.a_279(mul_b[2231:2224]),
.a_280(mul_b[2239:2232]),
.a_281(mul_b[2247:2240]),
.a_282(mul_b[2255:2248]),
.a_283(mul_b[2263:2256]),
.a_284(mul_b[2271:2264]),
.a_285(mul_b[2279:2272]),
.a_286(mul_b[2287:2280]),
.a_287(mul_b[2295:2288]),
.a_288(mul_b[2303:2296])

); 
// demux_4 d1_a(.clk(clk),.a(rd_a),.d0(mul_a[7:0]),.d1(mul_a[15:8]),.d2(mul_a[23:16]),.d3(mul_a[31:24]));
 //demux_4 d1_b(.clk(clk),.a(rd_b),.d0(mul_b[7:0]),.d1(mul_b[15:8]),.d2(mul_b[23:16]),.d3(mul_b[31:24]));

// mux$_1 m1_c(.clk(clk),.d0(mul_c[15:0]),.d1(mul_c[31:16]),.d2(mul_c[47:32]),.d3(mul_c[63:48]),.c(ans_c));
//assign ans_c={rd_a,rd_b};
endmodule