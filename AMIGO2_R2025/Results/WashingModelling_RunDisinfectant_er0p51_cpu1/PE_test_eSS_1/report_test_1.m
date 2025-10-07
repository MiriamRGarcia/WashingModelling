   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2025 [Jan 2025]    *
   *********************************** 

Date: 07-Oct-2025
Problem folder:	 Results/WashingModelling_RunDisinfectant_er0p51_cpu1
Results folder in problem folder:	 Results/WashingModelling_RunDisinfectant_er0p51_cpu1/PE_test_eSS_1 


-------------------------------
Optimisation related active settings
-------------------------------


------> Global Optimizer: Enhanced SCATTER SEARCH for parameter estimation

		>Summary of selected eSS options: 
ess_options.
	dim_refset:	'auto'
	inter_save:	0
	iterprint:	1
	local:	(1x1 struct)
	log_var:	(1x218 double)
	maxeval:	1.000000e+100
	maxtime:	60
	ndiverse:	50

		  default options are used. 


		>Bounds on the unknowns:

		v_guess(1)=7.662846;  v_min(1)=7.586218; v_max(1)=15.325693;
		v_guess(2)=5.324297;  v_min(2)=5.271054; v_max(2)=10.648594;
		v_guess(3)=8561605.946424;  v_min(3)=8133525.649103; v_max(3)=8989686.243745;
		v_guess(4)=30.961194;  v_min(4)=29.413135; v_max(4)=32.509254;
		v_guess(5)=324.762183;  v_min(5)=308.524074; v_max(5)=341.000292;
		v_guess(6)=1000.000000;  v_min(6)=1.000000; v_max(6)=10500.000000;
		v_guess(7)=2835090.249069;  v_min(7)=2693335.736615; v_max(7)=2976844.761522;
		v_guess(8)=169.723365;  v_min(8)=161.237197; v_max(8)=178.209533;
		v_guess(9)=6249.655916;  v_min(9)=5937.173120; v_max(9)=6562.138712;
		v_guess(10)=1000.000000;  v_min(10)=1.000000; v_max(10)=10500.000000;
		v_guess(11)=797178876.191653;  v_min(11)=757319932.382070; v_max(11)=837037820.001235;
		v_guess(12)=63.739972;  v_min(12)=60.552973; v_max(12)=66.926971;
		v_guess(13)=944203.048065;  v_min(13)=896992.895662; v_max(13)=991413.200469;
		v_guess(14)=1000.000000;  v_min(14)=1.000000; v_max(14)=10500.000000;
		v_guess(15)=66930431.104734;  v_min(15)=63583909.549497; v_max(15)=70276952.659971;
		v_guess(16)=43.381406;  v_min(16)=41.212336; v_max(16)=45.550476;
		v_guess(17)=131723.772229;  v_min(17)=125137.583617; v_max(17)=138309.960840;
		v_guess(18)=1000.000000;  v_min(18)=1.000000; v_max(18)=10500.000000;
		v_guess(19)=44614765.505813;  v_min(19)=42384027.230522; v_max(19)=46845503.781103;
		v_guess(20)=115.571836;  v_min(20)=109.793244; v_max(20)=121.350427;
		v_guess(21)=78472.484814;  v_min(21)=74548.860573; v_max(21)=82396.109055;
		v_guess(22)=1000.000000;  v_min(22)=1.000000; v_max(22)=10500.000000;
		v_guess(23)=1627391388.777738;  v_min(23)=1546021819.338851; v_max(23)=1708760958.216625;
		v_guess(24)=185.078288;  v_min(24)=175.824374; v_max(24)=194.332202;
		v_guess(25)=891003.169225;  v_min(25)=846453.010764; v_max(25)=935553.327687;
		v_guess(26)=1000.000000;  v_min(26)=1.000000; v_max(26)=10500.000000;
		v_guess(27)=29618856.319583;  v_min(27)=28137913.503604; v_max(27)=31099799.135562;
		v_guess(28)=7.745473;  v_min(28)=7.358199; v_max(28)=8.132746;
		v_guess(29)=98160.079977;  v_min(29)=93252.075978; v_max(29)=103068.083976;
		v_guess(30)=1000.000000;  v_min(30)=1.000000; v_max(30)=10500.000000;
		v_guess(31)=2701995.447741;  v_min(31)=2566895.675354; v_max(31)=2837095.220128;
		v_guess(32)=23.308749;  v_min(32)=22.143312; v_max(32)=24.474187;
		v_guess(33)=13377.713912;  v_min(33)=12708.828216; v_max(33)=14046.599607;
		v_guess(34)=1000.000000;  v_min(34)=1.000000; v_max(34)=10500.000000;
		v_guess(35)=339875193.813834;  v_min(35)=322881434.123142; v_max(35)=356868953.504525;
		v_guess(36)=266.604541;  v_min(36)=253.274314; v_max(36)=279.934768;
		v_guess(37)=15985.371550;  v_min(37)=15186.102973; v_max(37)=16784.640128;
		v_guess(38)=1000.000000;  v_min(38)=1.000000; v_max(38)=10500.000000;
		v_guess(39)=422192198.743037;  v_min(39)=401082588.805885; v_max(39)=443301808.680189;
		v_guess(40)=172.799749;  v_min(40)=164.159762; v_max(40)=181.439736;
		v_guess(41)=90455.691983;  v_min(41)=85932.907383; v_max(41)=94978.476582;
		v_guess(42)=1000.000000;  v_min(42)=1.000000; v_max(42)=10500.000000;
		v_guess(43)=329210735.181980;  v_min(43)=312750198.422881; v_max(43)=345671271.941079;
		v_guess(44)=13.078404;  v_min(44)=12.424483; v_max(44)=13.732324;
		v_guess(45)=9066.163255;  v_min(45)=8612.855092; v_max(45)=9519.471418;
		v_guess(46)=1000.000000;  v_min(46)=1.000000; v_max(46)=10500.000000;
		v_guess(47)=353149866.161654;  v_min(47)=335492372.853571; v_max(47)=370807359.469737;
		v_guess(48)=32.269985;  v_min(48)=30.656485; v_max(48)=33.883484;
		v_guess(49)=40369.293692;  v_min(49)=38350.829007; v_max(49)=42387.758376;
		v_guess(50)=1000.000000;  v_min(50)=1.000000; v_max(50)=10500.000000;
		v_guess(51)=14048432.064431;  v_min(51)=13346010.461209; v_max(51)=14750853.667652;
		v_guess(52)=352.840518;  v_min(52)=335.198492; v_max(52)=370.482544;
		v_guess(53)=716628.761072;  v_min(53)=680797.323018; v_max(53)=752460.199125;
		v_guess(54)=1000.000000;  v_min(54)=1.000000; v_max(54)=10500.000000;
		v_guess(55)=939265098.682370;  v_min(55)=892301843.748252; v_max(55)=986228353.616489;
		v_guess(56)=534.272232;  v_min(56)=507.558620; v_max(56)=560.985844;
		v_guess(57)=111623.157138;  v_min(57)=106041.999281; v_max(57)=117204.314995;
		v_guess(58)=1000.000000;  v_min(58)=1.000000; v_max(58)=10500.000000;
		v_guess(59)=31681785.891641;  v_min(59)=30097696.597059; v_max(59)=33265875.186224;
		v_guess(60)=89.910543;  v_min(60)=85.415016; v_max(60)=94.406070;
		v_guess(61)=230233.131488;  v_min(61)=218721.474913; v_max(61)=241744.788062;
		v_guess(62)=1000.000000;  v_min(62)=1.000000; v_max(62)=10500.000000;
		v_guess(63)=132992.047719;  v_min(63)=126342.445333; v_max(63)=139641.650105;
		v_guess(64)=58.783374;  v_min(64)=55.844206; v_max(64)=61.722543;
		v_guess(65)=1984.099500;  v_min(65)=1884.894525; v_max(65)=2083.304475;
		v_guess(66)=1000.000000;  v_min(66)=1.000000; v_max(66)=10500.000000;
		v_guess(67)=37961124.549271;  v_min(67)=36063068.321808; v_max(67)=39859180.776735;
		v_guess(68)=40.599222;  v_min(68)=38.569261; v_max(68)=42.629183;
		v_guess(69)=62.688317;  v_min(69)=59.553901; v_max(69)=65.822733;
		v_guess(70)=1000.000000;  v_min(70)=1.000000; v_max(70)=10500.000000;
		v_guess(71)=137904759.522404;  v_min(71)=131009521.546284; v_max(71)=144799997.498524;
		v_guess(72)=43.280101;  v_min(72)=41.116096; v_max(72)=45.444106;
		v_guess(73)=38.903419;  v_min(73)=36.958248; v_max(73)=40.848589;
		v_guess(74)=1000.000000;  v_min(74)=1.000000; v_max(74)=10500.000000;
		v_guess(75)=399320689.817028;  v_min(75)=379354655.326177; v_max(75)=419286724.307880;
		v_guess(76)=49.711619;  v_min(76)=47.226038; v_max(76)=52.197199;
		v_guess(77)=106.331893;  v_min(77)=101.015298; v_max(77)=111.648488;
		v_guess(78)=1000.000000;  v_min(78)=1.000000; v_max(78)=10500.000000;
		v_guess(79)=5033322028.664676;  v_min(79)=4781655927.231441; v_max(79)=5284988130.097910;
		v_guess(80)=87.551661;  v_min(80)=83.174078; v_max(80)=91.929244;
		v_guess(81)=38.791875;  v_min(81)=36.852281; v_max(81)=40.731468;
		v_guess(82)=1000.000000;  v_min(82)=1.000000; v_max(82)=10500.000000;
		v_guess(83)=22215048221.633923;  v_min(83)=21104295810.552227; v_max(83)=23325800632.715618;
		v_guess(84)=430.042188;  v_min(84)=408.540079; v_max(84)=451.544298;
		v_guess(85)=52746.115209;  v_min(85)=50108.809448; v_max(85)=55383.420969;
		v_guess(86)=1000.000000;  v_min(86)=1.000000; v_max(86)=10500.000000;
		v_guess(87)=97139141875.230148;  v_min(87)=92282184781.468643; v_max(87)=101996098968.991653;
		v_guess(88)=310.761723;  v_min(88)=295.223637; v_max(88)=326.299809;
		v_guess(89)=34535.499617;  v_min(89)=32808.724637; v_max(89)=36262.274598;
		v_guess(90)=1000.000000;  v_min(90)=1.000000; v_max(90)=10500.000000;
		v_guess(91)=105084809.538594;  v_min(91)=99830569.061665; v_max(91)=110339050.015524;
		v_guess(92)=45.175463;  v_min(92)=42.916690; v_max(92)=47.434236;
		v_guess(93)=1009.707846;  v_min(93)=959.222454; v_max(93)=1060.193238;
		v_guess(94)=1000.000000;  v_min(94)=1.000000; v_max(94)=10500.000000;
		v_guess(95)=74675209.378789;  v_min(95)=70941448.909850; v_max(95)=78408969.847729;
		v_guess(96)=182.741180;  v_min(96)=173.604121; v_max(96)=191.878239;
		v_guess(97)=1472.262062;  v_min(97)=1398.648959; v_max(97)=1545.875165;
		v_guess(98)=1000.000000;  v_min(98)=1.000000; v_max(98)=10500.000000;
		v_guess(99)=3323417.853306;  v_min(99)=3157246.960641; v_max(99)=3489588.745971;
		v_guess(100)=20.753641;  v_min(100)=19.715959; v_max(100)=21.791323;
		v_guess(101)=622.471680;  v_min(101)=591.348096; v_max(101)=653.595264;
		v_guess(102)=1000.000000;  v_min(102)=1.000000; v_max(102)=10500.000000;
		v_guess(103)=453701.216730;  v_min(103)=431016.155893; v_max(103)=476386.277566;
		v_guess(104)=20.903266;  v_min(104)=19.858102; v_max(104)=21.948429;
		v_guess(105)=2862.312855;  v_min(105)=2719.197212; v_max(105)=3005.428498;
		v_guess(106)=1000.000000;  v_min(106)=1.000000; v_max(106)=10500.000000;
		v_guess(107)=6735420458.360322;  v_min(107)=6398649435.442306; v_max(107)=7072191481.278338;
		v_guess(108)=615.588828;  v_min(108)=584.809387; v_max(108)=646.368270;
		v_guess(109)=1074438.906737;  v_min(109)=1020716.961400; v_max(109)=1128160.852074;
		v_guess(110)=1000.000000;  v_min(110)=1.000000; v_max(110)=10500.000000;
		v_guess(111)=7456856.809290;  v_min(111)=7084013.968826; v_max(111)=7829699.649755;
		v_guess(112)=2544.704465;  v_min(112)=2417.469242; v_max(112)=2671.939688;
		v_guess(113)=155520.378518;  v_min(113)=147744.359592; v_max(113)=163296.397444;
		v_guess(114)=1000.000000;  v_min(114)=1.000000; v_max(114)=10500.000000;
		v_guess(115)=865047129.055868;  v_min(115)=821794772.603075; v_max(115)=908299485.508662;
		v_guess(116)=11147.330181;  v_min(116)=10589.963672; v_max(116)=11704.696690;
		v_guess(117)=19299.284640;  v_min(117)=18334.320408; v_max(117)=20264.248872;
		v_guess(118)=1000.000000;  v_min(118)=1.000000; v_max(118)=10500.000000;
		v_guess(119)=9171141760.848574;  v_min(119)=8712584672.806145; v_max(119)=9629698848.891003;
		v_guess(120)=10328.089225;  v_min(120)=9811.684764; v_max(120)=10844.493686;
		v_guess(121)=18247.349173;  v_min(121)=17334.981714; v_max(121)=19159.716631;
		v_guess(122)=1000.000000;  v_min(122)=1.000000; v_max(122)=10500.000000;
		v_guess(123)=543151.281559;  v_min(123)=515993.717482; v_max(123)=570308.845637;
		v_guess(124)=4403.238094;  v_min(124)=4183.076189; v_max(124)=4623.399998;
		v_guess(125)=7243.691430;  v_min(125)=6881.506858; v_max(125)=7605.876001;
		v_guess(126)=1000.000000;  v_min(126)=1.000000; v_max(126)=10500.000000;
		v_guess(127)=170583.776100;  v_min(127)=162054.587295; v_max(127)=179112.964905;
		v_guess(128)=3761.825651;  v_min(128)=3573.734369; v_max(128)=3949.916934;
		v_guess(129)=59515.029174;  v_min(129)=56539.277716; v_max(129)=62490.780633;
		v_guess(130)=1000.000000;  v_min(130)=1.000000; v_max(130)=10500.000000;
		v_guess(131)=9189388.457641;  v_min(131)=8729919.034759; v_max(131)=9648857.880523;
		v_guess(132)=1391.073485;  v_min(132)=1321.519810; v_max(132)=1460.627159;
		v_guess(133)=9267.038982;  v_min(133)=8803.687033; v_max(133)=9730.390932;
		v_guess(134)=1000.000000;  v_min(134)=1.000000; v_max(134)=10500.000000;
		v_guess(135)=560978097.397615;  v_min(135)=532929192.527734; v_max(135)=589027002.267496;
		v_guess(136)=1377.868857;  v_min(136)=1308.975414; v_max(136)=1446.762299;
		v_guess(137)=526.919226;  v_min(137)=500.573265; v_max(137)=553.265187;
		v_guess(138)=1000.000000;  v_min(138)=1.000000; v_max(138)=10500.000000;
		v_guess(139)=13765668.321188;  v_min(139)=13077384.905129; v_max(139)=14453951.737248;
		v_guess(140)=1169.372307;  v_min(140)=1110.903692; v_max(140)=1227.840922;
		v_guess(141)=529715.123042;  v_min(141)=503229.366889; v_max(141)=556200.879194;
		v_guess(142)=1000.000000;  v_min(142)=1.000000; v_max(142)=10500.000000;
		v_guess(143)=882568501.838607;  v_min(143)=838440076.746677; v_max(143)=926696926.930537;
		v_guess(144)=730.625910;  v_min(144)=694.094615; v_max(144)=767.157206;
		v_guess(145)=372937.283021;  v_min(145)=354290.418870; v_max(145)=391584.147172;
		v_guess(146)=1000.000000;  v_min(146)=1.000000; v_max(146)=10500.000000;
		v_guess(147)=5151.092216;  v_min(147)=4893.537605; v_max(147)=5408.646826;
		v_guess(148)=773.169473;  v_min(148)=734.510999; v_max(148)=811.827946;
		v_guess(149)=9500.781018;  v_min(149)=9025.741967; v_max(149)=9975.820069;
		v_guess(150)=1000.000000;  v_min(150)=1.000000; v_max(150)=10500.000000;
		v_guess(151)=189674.829711;  v_min(151)=180191.088225; v_max(151)=199158.571196;
		v_guess(152)=1859.069956;  v_min(152)=1766.116458; v_max(152)=1952.023454;
		v_guess(153)=5092.212320;  v_min(153)=4837.601704; v_max(153)=5346.822936;
		v_guess(154)=1000.000000;  v_min(154)=1.000000; v_max(154)=10500.000000;
		v_guess(155)=4092726.249929;  v_min(155)=3888089.937432; v_max(155)=4297362.562425;
		v_guess(156)=715.271280;  v_min(156)=679.507716; v_max(156)=751.034844;
		v_guess(157)=6444.718387;  v_min(157)=6122.482468; v_max(157)=6766.954307;
		v_guess(158)=1000.000000;  v_min(158)=1.000000; v_max(158)=10500.000000;
		v_guess(159)=23268155.415921;  v_min(159)=22104747.645125; v_max(159)=24431563.186718;
		v_guess(160)=757.262437;  v_min(160)=719.399315; v_max(160)=795.125559;
		v_guess(161)=2614.667750;  v_min(161)=2483.934362; v_max(161)=2745.401137;
		v_guess(162)=1000.000000;  v_min(162)=1.000000; v_max(162)=10500.000000;
		v_guess(163)=43174649.210105;  v_min(163)=41015916.749600; v_max(163)=45333381.670610;
		v_guess(164)=523.718220;  v_min(164)=497.532309; v_max(164)=549.904131;
		v_guess(165)=944.758632;  v_min(165)=897.520700; v_max(165)=991.996564;
		v_guess(166)=1000.000000;  v_min(166)=1.000000; v_max(166)=10500.000000;
		v_guess(167)=12730212.249646;  v_min(167)=12093701.637164; v_max(167)=13366722.862129;
		v_guess(168)=723.366993;  v_min(168)=687.198644; v_max(168)=759.535343;
		v_guess(169)=674.498149;  v_min(169)=640.773241; v_max(169)=708.223056;
		v_guess(170)=1000.000000;  v_min(170)=1.000000; v_max(170)=10500.000000;
		v_guess(171)=1814080057.980057;  v_min(171)=1723376055.081054; v_max(171)=1904784060.879060;
		v_guess(172)=57.239682;  v_min(172)=54.377698; v_max(172)=60.101666;
		v_guess(173)=1783.774597;  v_min(173)=1694.585868; v_max(173)=1872.963327;
		v_guess(174)=1000.000000;  v_min(174)=1.000000; v_max(174)=10500.000000;
		v_guess(175)=8560314540.707808;  v_min(175)=8132298813.672418; v_max(175)=8988330267.743198;
		v_guess(176)=16.997796;  v_min(176)=16.147906; v_max(176)=17.847686;
		v_guess(177)=178.911044;  v_min(177)=169.965492; v_max(177)=187.856596;
		v_guess(178)=1000.000000;  v_min(178)=1.000000; v_max(178)=10500.000000;
		v_guess(179)=10862980581.288456;  v_min(179)=10319831552.224033; v_max(179)=11406129610.352879;
		v_guess(180)=693.670697;  v_min(180)=658.987162; v_max(180)=728.354232;
		v_guess(181)=321820.306475;  v_min(181)=305729.291151; v_max(181)=337911.321799;
		v_guess(182)=1000.000000;  v_min(182)=1.000000; v_max(182)=10500.000000;
		v_guess(183)=117132712.024702;  v_min(183)=111276076.423467; v_max(183)=122989347.625937;
		v_guess(184)=575.401028;  v_min(184)=546.630977; v_max(184)=604.171079;
		v_guess(185)=125582.262148;  v_min(185)=119303.149041; v_max(185)=131861.375255;
		v_guess(186)=1000.000000;  v_min(186)=1.000000; v_max(186)=10500.000000;
		v_guess(187)=155874986.549469;  v_min(187)=148081237.221996; v_max(187)=163668735.876943;
		v_guess(188)=168.198697;  v_min(188)=159.788762; v_max(188)=176.608632;
		v_guess(189)=25182.488406;  v_min(189)=23923.363986; v_max(189)=26441.612826;
		v_guess(190)=1000.000000;  v_min(190)=1.000000; v_max(190)=10500.000000;
		v_guess(191)=1172001135.641410;  v_min(191)=1113401078.859340; v_max(191)=1230601192.423481;
		v_guess(192)=1592.842810;  v_min(192)=1513.200669; v_max(192)=1672.484950;
		v_guess(193)=205.793211;  v_min(193)=195.503550; v_max(193)=216.082871;
		v_guess(194)=1000.000000;  v_min(194)=1.000000; v_max(194)=10500.000000;
		v_guess(195)=11567707986.909336;  v_min(195)=10989322587.563869; v_max(195)=12146093386.254803;
		v_guess(196)=11600.161525;  v_min(196)=11020.153449; v_max(196)=12180.169602;
		v_guess(197)=748069.939792;  v_min(197)=710666.442802; v_max(197)=785473.436781;
		v_guess(198)=1000.000000;  v_min(198)=1.000000; v_max(198)=10500.000000;
		v_guess(199)=135270548.473691;  v_min(199)=128507021.050007; v_max(199)=142034075.897376;
		v_guess(200)=8051.482619;  v_min(200)=7648.908488; v_max(200)=8454.056750;
		v_guess(201)=7497.658471;  v_min(201)=7122.775547; v_max(201)=7872.541394;
		v_guess(202)=1000.000000;  v_min(202)=1.000000; v_max(202)=10500.000000;
		v_guess(203)=9483.967278;  v_min(203)=9009.768914; v_max(203)=9958.165642;
		v_guess(204)=81.483788;  v_min(204)=77.409598; v_max(204)=85.557977;
		v_guess(205)=1142299.740580;  v_min(205)=1085184.753551; v_max(205)=1199414.727609;
		v_guess(206)=1000.000000;  v_min(206)=1.000000; v_max(206)=10500.000000;
		v_guess(207)=12776.746489;  v_min(207)=12137.909165; v_max(207)=13415.583814;
		v_guess(208)=20.278857;  v_min(208)=19.264914; v_max(208)=21.292800;
		v_guess(209)=20317.191051;  v_min(209)=19301.331499; v_max(209)=21333.050604;
		v_guess(210)=1000.000000;  v_min(210)=1.000000; v_max(210)=10500.000000;
		v_guess(211)=2929242.768355;  v_min(211)=2782780.629937; v_max(211)=3075704.906772;
		v_guess(212)=261.882958;  v_min(212)=248.788810; v_max(212)=274.977106;
		v_guess(213)=957235.234638;  v_min(213)=909373.472907; v_max(213)=1005096.996370;
		v_guess(214)=1000.000000;  v_min(214)=1.000000; v_max(214)=10500.000000;
		v_guess(215)=42492.653537;  v_min(215)=40368.020860; v_max(215)=44617.286214;
		v_guess(216)=131.082170;  v_min(216)=124.528061; v_max(216)=137.636278;
		v_guess(217)=1044311.375004;  v_min(217)=992095.806254; v_max(217)=1096526.943755;
		v_guess(218)=1000.000000;  v_min(218)=1.000000; v_max(218)=10500.000000;



-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-05
AbsTol: 1e-07
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-05
ivp_AbsTol: 1e-07
sensmex: cvodesg_test
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 3


--> Number of model parameters: 10

--> Vector of parameters (nominal values):

	par0=[   0.00337   100.00000   100.00000   100.00000  10000.00000  10000.00000     0.00000     0.00000     1.00000     1.00000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 54


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 2: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 3: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 4: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 5: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 6: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 7: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 8: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 9: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 10: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 11: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 12: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 13: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 14: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 15: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 16: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 17: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 18: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 19: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 20: 
			exp_y0=[1.215e+05  4.740e+02  0.000e+00  ]
		Experiment 21: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 22: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 23: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 24: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 25: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 26: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 27: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 28: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 29: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 30: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 31: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 32: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 33: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 34: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 35: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 36: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 37: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 38: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 39: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 40: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 41: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 42: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 43: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 44: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 45: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 46: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 47: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 48: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 49: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 50: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 51: 
			exp_y0=[0.000e+00  2.532e+02  1.450e+03  ]
		Experiment 52: 
			exp_y0=[0.000e+00  1.918e+02  1.000e+01  ]
		Experiment 53: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]
		Experiment 54: 
			exp_y0=[0.000e+00  2.885e+03  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2100.000000

-->Final process time for each experiment: 
		Experiment 2: 	 3205.000000

-->Final process time for each experiment: 
		Experiment 3: 	 4410.000000

-->Final process time for each experiment: 
		Experiment 4: 	 3000.000000

-->Final process time for each experiment: 
		Experiment 5: 	 3440.000000

-->Final process time for each experiment: 
		Experiment 6: 	 3340.000000

-->Final process time for each experiment: 
		Experiment 7: 	 59290.000000

-->Final process time for each experiment: 
		Experiment 8: 	 60705.000000

-->Final process time for each experiment: 
		Experiment 9: 	 4425.000000

-->Final process time for each experiment: 
		Experiment 10: 	 1800.000000

-->Final process time for each experiment: 
		Experiment 11: 	 3135.000000

-->Final process time for each experiment: 
		Experiment 12: 	 3170.000000

-->Final process time for each experiment: 
		Experiment 13: 	 4540.000000

-->Final process time for each experiment: 
		Experiment 14: 	 4510.000000

-->Final process time for each experiment: 
		Experiment 15: 	 3440.000000

-->Final process time for each experiment: 
		Experiment 16: 	 3370.000000

-->Final process time for each experiment: 
		Experiment 17: 	 475.000000

-->Final process time for each experiment: 
		Experiment 18: 	 485.000000

-->Final process time for each experiment: 
		Experiment 19: 	 225.100000

-->Final process time for each experiment: 
		Experiment 20: 	 220.000000

-->Final process time for each experiment: 
		Experiment 21: 	 275.000000

-->Final process time for each experiment: 
		Experiment 22: 	 255.000000

-->Final process time for each experiment: 
		Experiment 23: 	 320.000000

-->Final process time for each experiment: 
		Experiment 24: 	 230.000000

-->Final process time for each experiment: 
		Experiment 25: 	 320.000000

-->Final process time for each experiment: 
		Experiment 26: 	 230.000000

-->Final process time for each experiment: 
		Experiment 27: 	 405.000000

-->Final process time for each experiment: 
		Experiment 28: 	 405.000000

-->Final process time for each experiment: 
		Experiment 29: 	 300.000000

-->Final process time for each experiment: 
		Experiment 30: 	 660.000000

-->Final process time for each experiment: 
		Experiment 31: 	 630.000000

-->Final process time for each experiment: 
		Experiment 32: 	 600.000000

-->Final process time for each experiment: 
		Experiment 33: 	 90.000000

-->Final process time for each experiment: 
		Experiment 34: 	 135.000000

-->Final process time for each experiment: 
		Experiment 35: 	 570.000000

-->Final process time for each experiment: 
		Experiment 36: 	 540.000000

-->Final process time for each experiment: 
		Experiment 37: 	 420.000000

-->Final process time for each experiment: 
		Experiment 38: 	 810.000000

-->Final process time for each experiment: 
		Experiment 39: 	 480.000000

-->Final process time for each experiment: 
		Experiment 40: 	 390.000000

-->Final process time for each experiment: 
		Experiment 41: 	 480.000000

-->Final process time for each experiment: 
		Experiment 42: 	 390.000000

-->Final process time for each experiment: 
		Experiment 43: 	 405.000000

-->Final process time for each experiment: 
		Experiment 44: 	 405.000000

-->Final process time for each experiment: 
		Experiment 45: 	 900.000000

-->Final process time for each experiment: 
		Experiment 46: 	 885.000000

-->Final process time for each experiment: 
		Experiment 47: 	 570.000000

-->Final process time for each experiment: 
		Experiment 48: 	 540.000000

-->Final process time for each experiment: 
		Experiment 49: 	 215.000000

-->Final process time for each experiment: 
		Experiment 50: 	 220.000000

-->Final process time for each experiment: 
		Experiment 51: 	 480.000000

-->Final process time for each experiment: 
		Experiment 52: 	 465.000000

-->Final process time for each experiment: 
		Experiment 53: 	 310.000000

-->Final process time for each experiment: 
		Experiment 54: 	 305.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  2.250e+02  4.500e+02  6.450e+02  1.625e+03  1.860e+03  2.100e+03  

-->Sampling times for each experiment: 
		Experiment 2: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  9.000e+01  3.300e+02  1.500e+03  1.770e+03  2.955e+03  3.205e+03  

-->Sampling times for each experiment: 
		Experiment 3: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.100e+02  2.400e+02  3.900e+02  1.500e+03  1.800e+03  4.410e+03  

-->Sampling times for each experiment: 
		Experiment 4: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.200e+02  2.900e+02  4.250e+02  1.635e+03  1.830e+03  3.000e+03  

-->Sampling times for each experiment: 
		Experiment 5: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  2.700e+02  5.500e+02  1.650e+03  1.980e+03  3.100e+03  3.440e+03  

-->Sampling times for each experiment: 
		Experiment 6: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  5.000e+01  4.700e+02  1.550e+03  1.905e+03  2.940e+03  3.340e+03  

-->Sampling times for each experiment: 
		Experiment 7: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.575e+03  9.080e+03  3.192e+04  4.190e+04  5.201e+04  5.929e+04  

-->Sampling times for each experiment: 
		Experiment 8: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.750e+02  1.776e+04  2.906e+04  3.770e+04  5.064e+04  6.070e+04  

-->Sampling times for each experiment: 
		Experiment 9: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  9.000e+01  3.600e+02  1.515e+03  2.940e+03  3.180e+03  4.425e+03  

-->Sampling times for each experiment: 
		Experiment 10: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.200e+02  2.400e+02  3.600e+02  1.560e+03  1.680e+03  1.800e+03  

-->Sampling times for each experiment: 
		Experiment 11: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  3.000e+01  2.550e+02  1.452e+03  1.710e+03  2.915e+03  3.135e+03  

-->Sampling times for each experiment: 
		Experiment 12: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  6.000e+01  2.850e+02  1.490e+03  1.715e+03  2.940e+03  3.170e+03  

-->Sampling times for each experiment: 
		Experiment 13: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  9.000e+01  1.875e+02  1.655e+03  2.975e+03  3.160e+03  4.540e+03  

-->Sampling times for each experiment: 
		Experiment 14: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  8.000e+01  2.600e+02  1.640e+03  2.410e+03  2.900e+03  4.510e+03  

-->Sampling times for each experiment: 
		Experiment 15: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  2.050e+02  5.700e+02  1.650e+03  2.070e+03  3.030e+03  3.440e+03  

-->Sampling times for each experiment: 
		Experiment 16: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.700e+02  5.000e+02  1.610e+03  1.935e+03  3.035e+03  3.370e+03  

-->Sampling times for each experiment: 
		Experiment 17: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  3.600e+01  9.400e+01  2.000e+02  2.970e+02  4.100e+02  4.750e+02  

-->Sampling times for each experiment: 
		Experiment 18: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  3.500e+01  1.310e+02  2.250e+02  3.100e+02  4.000e+02  4.850e+02  

-->Sampling times for each experiment: 
		Experiment 19: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  3.000e+01  6.000e+01  1.000e+02  1.350e+02  1.950e+02  2.250e+02  

-->Sampling times for each experiment: 
		Experiment 20: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 6: 	 0.000e+00  5.500e+01  9.000e+01  1.500e+02  1.800e+02  2.200e+02  

-->Sampling times for each experiment: 
		Experiment 21: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.050e+02  1.500e+02  1.950e+02  2.400e+02  2.650e+02  2.750e+02  

-->Sampling times for each experiment: 
		Experiment 22: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  9.000e+01  1.200e+02  1.500e+02  1.800e+02  2.200e+02  2.550e+02  

-->Sampling times for each experiment: 
		Experiment 23: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  2.000e+01  8.000e+01  1.400e+02  2.000e+02  2.600e+02  3.200e+02  

-->Sampling times for each experiment: 
		Experiment 24: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  6.500e+01  9.500e+01  1.100e+02  1.250e+02  1.600e+02  2.300e+02  

-->Sampling times for each experiment: 
		Experiment 25: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  2.000e+01  8.000e+01  1.400e+02  2.000e+02  2.600e+02  3.200e+02  

-->Sampling times for each experiment: 
		Experiment 26: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  6.500e+01  9.500e+01  1.100e+02  1.250e+02  1.600e+02  2.300e+02  

-->Sampling times for each experiment: 
		Experiment 27: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.800e+02  2.250e+02  2.700e+02  3.150e+02  3.600e+02  4.050e+02  

-->Sampling times for each experiment: 
		Experiment 28: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.800e+02  2.250e+02  2.700e+02  3.150e+02  3.600e+02  4.050e+02  

-->Sampling times for each experiment: 
		Experiment 29: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  7.500e+01  1.200e+02  1.650e+02  2.100e+02  2.850e+02  3.000e+02  

-->Sampling times for each experiment: 
		Experiment 30: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  4.350e+02  4.800e+02  5.250e+02  5.700e+02  6.150e+02  6.600e+02  

-->Sampling times for each experiment: 
		Experiment 31: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.500e+02  2.400e+02  3.300e+02  4.200e+02  5.100e+02  6.300e+02  

-->Sampling times for each experiment: 
		Experiment 32: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.500e+02  2.400e+02  3.300e+02  4.200e+02  4.800e+02  6.000e+02  

-->Sampling times for each experiment: 
		Experiment 33: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.500e+01  3.000e+01  4.500e+01  6.000e+01  7.500e+01  9.000e+01  

-->Sampling times for each experiment: 
		Experiment 34: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.500e+01  3.000e+01  4.500e+01  6.000e+01  9.000e+01  1.350e+02  

-->Sampling times for each experiment: 
		Experiment 35: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  3.450e+02  3.600e+02  4.350e+02  4.800e+02  5.250e+02  5.700e+02  

-->Sampling times for each experiment: 
		Experiment 36: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  3.150e+02  3.600e+02  4.050e+02  4.500e+02  4.950e+02  5.400e+02  

-->Sampling times for each experiment: 
		Experiment 37: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.200e+02  1.800e+02  2.400e+02  3.000e+02  3.600e+02  4.200e+02  

-->Sampling times for each experiment: 
		Experiment 38: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  6.000e+02  6.450e+02  6.900e+02  7.350e+02  7.800e+02  8.100e+02  

-->Sampling times for each experiment: 
		Experiment 39: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.950e+02  2.400e+02  3.000e+02  3.450e+02  3.900e+02  4.800e+02  

-->Sampling times for each experiment: 
		Experiment 40: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.650e+02  2.100e+02  2.550e+02  3.000e+02  3.450e+02  3.900e+02  

-->Sampling times for each experiment: 
		Experiment 41: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.950e+02  2.400e+02  3.000e+02  3.450e+02  3.900e+02  4.800e+02  

-->Sampling times for each experiment: 
		Experiment 42: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.650e+02  2.100e+02  2.550e+02  3.000e+02  3.450e+02  3.900e+02  

-->Sampling times for each experiment: 
		Experiment 43: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.800e+02  2.250e+02  2.700e+02  3.150e+02  3.600e+02  4.050e+02  

-->Sampling times for each experiment: 
		Experiment 44: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.800e+02  2.250e+02  2.700e+02  3.150e+02  3.600e+02  4.050e+02  

-->Sampling times for each experiment: 
		Experiment 45: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  6.750e+02  7.200e+02  7.650e+02  8.100e+02  8.550e+02  9.000e+02  

-->Sampling times for each experiment: 
		Experiment 46: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  6.600e+02  7.050e+02  7.500e+02  7.950e+02  8.400e+02  8.850e+02  

-->Sampling times for each experiment: 
		Experiment 47: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  3.450e+02  3.600e+02  4.350e+02  4.800e+02  5.250e+02  5.700e+02  

-->Sampling times for each experiment: 
		Experiment 48: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  3.150e+02  3.600e+02  4.050e+02  4.500e+02  4.950e+02  5.400e+02  

-->Sampling times for each experiment: 
		Experiment 49: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  5.000e+01  7.500e+01  1.050e+02  1.350e+02  1.750e+02  2.150e+02  

-->Sampling times for each experiment: 
		Experiment 50: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  5.000e+01  8.500e+01  1.100e+02  1.600e+02  1.900e+02  2.200e+02  

-->Sampling times for each experiment: 
		Experiment 51: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 6: 	 0.000e+00  1.050e+02  1.950e+02  3.000e+02  3.900e+02  4.800e+02  

-->Sampling times for each experiment: 
		Experiment 52: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 6: 	 0.000e+00  1.050e+02  1.950e+02  3.450e+02  4.050e+02  4.650e+02  

-->Sampling times for each experiment: 
		Experiment 53: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 7: 	 0.000e+00  1.000e+01  7.000e+01  1.300e+02  1.900e+02  2.500e+02  3.100e+02  

-->Sampling times for each experiment: 
		Experiment 54: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 6: 	 0.000e+00  6.500e+01  1.250e+02  1.850e+02  2.450e+02  3.050e+02  

-->Number of manipulable (control, stimulus, input) variables: 5


-->Input values/temporal elements for Experiment 1:
		linear interpolation is being used.
			Control values: 			Input 1:	  8.5900	  8.5900	  7.8000	  6.8400	  3.1100	  2.3500				Input 2:	  7.6550	  7.6550	  7.7100	  7.7150	  7.6750	  7.7050				Input 3:	  5.3000	  5.3000	  4.8000	  4.8000	  4.6000	  4.9000				Input 4:	124.9752	124.9752	124.9752	124.9752	124.9752	124.9752				Input 5:	13000.0000	13000.0000	13000.0000	13000.0000	13000.0000	13000.0000	
			Control switching times: 	  0.0000	225.0000	450.0000	645.0000	1625.0000	1860.0000	2100.0000


-->Input values/temporal elements for Experiment 2:
		linear interpolation is being used.
			Control values: 			Input 1:	  3.5300	  3.5300	  2.0600	  0.9950	  0.3100	  0.0300				Input 2:	  7.6300	  7.6300	  7.4850	  7.6700	  7.6350	  7.6550				Input 3:	  5.0000	  5.0000	  4.5000	  5.5000	  5.6000	  6.7000				Input 4:	 55.6031	 55.6031	 55.6031	 55.6031	 55.6031	 55.6031				Input 5:	13000.0000	13000.0000	13000.0000	13000.0000	13000.0000	13000.0000	
			Control switching times: 	  0.0000	 90.0000	330.0000	1500.0000	1770.0000	2955.0000	3205.0000


-->Input values/temporal elements for Experiment 3:
		linear interpolation is being used.
			Control values: 			Input 1:	 12.7000	 12.7000	  9.6650	  6.6700	 15.7500	 10.8500				Input 2:	  8.0100	  8.0100	  7.8900	  8.0300	  7.9950	  7.8250				Input 3:	 13.8000	 13.8000	 12.9000	 12.2000	 12.1000	 11.8000				Input 4:	 28.3891	 28.3891	 28.3891	 28.3891	 28.3891	 28.3891				Input 5:	8000.0000	8000.0000	8000.0000	8000.0000	8000.0000	8000.0000	
			Control switching times: 	  0.0000	110.0000	240.0000	390.0000	1500.0000	1800.0000	4410.0000


-->Input values/temporal elements for Experiment 4:
		linear interpolation is being used.
			Control values: 			Input 1:	 11.1000	 11.1000	 19.8000	 16.4000	 14.6000	 10.4500				Input 2:	  8.0200	  8.0200	  8.0200	  7.9100	  7.8450	  7.8500				Input 3:	 10.3000	 10.3000	  9.0000	  8.3000	  8.3000	  8.0000				Input 4:	 61.1947	 61.1947	 61.1947	 61.1947	 61.1947	 61.1947				Input 5:	8000.0000	8000.0000	8000.0000	8000.0000	8000.0000	8000.0000	
			Control switching times: 	  0.0000	120.0000	290.0000	425.0000	1635.0000	1830.0000	3000.0000


-->Input values/temporal elements for Experiment 5:
		linear interpolation is being used.
			Control values: 			Input 1:	 99.4000	 99.4000	 83.1000	 36.9000	 14.3000	 28.4500				Input 2:	  7.8950	  7.8950	  8.0000	  8.1650	  8.1300	  8.2150				Input 3:	 14.8000	 14.8000	 17.4000	 20.6000	 19.6000	 16.5000				Input 4:	114.1662	114.1662	114.1662	114.1662	114.1662	114.1662				Input 5:	18000.0000	18000.0000	18000.0000	18000.0000	18000.0000	18000.0000	
			Control switching times: 	  0.0000	270.0000	550.0000	1650.0000	1980.0000	3100.0000	3440.0000


-->Input values/temporal elements for Experiment 6:
		linear interpolation is being used.
			Control values: 			Input 1:	 33.6500	 33.6500	  8.5000	  0.0200	 15.0000	 49.6000				Input 2:	  7.2400	  7.2400	  7.6050	  7.8950	  8.1100	  8.1850				Input 3:	 20.4000	 20.4000	 20.0000	 14.3000	 10.8000	 11.8000				Input 4:	 53.1063	 53.1063	 53.1063	 53.1063	 53.1063	 53.1063				Input 5:	18000.0000	18000.0000	18000.0000	18000.0000	18000.0000	18000.0000	
			Control switching times: 	  0.0000	 50.0000	470.0000	1550.0000	1905.0000	2940.0000	3340.0000


-->Input values/temporal elements for Experiment 7:
		linear interpolation is being used.
			Control values: 			Input 1:	  1.2500	  1.2500	  2.1550	  3.1100	  1.9900	  1.2700				Input 2:	  7.5000	  7.5000	  7.5850	  7.6200	  7.5600	  7.6400				Input 3:	 20.0500	 20.0500	 20.0500	 17.8000	 19.6000	 16.4000				Input 4:	152.6501	152.6501	152.6501	152.6501	152.6501	152.6501				Input 5:	5000.0000	5000.0000	5000.0000	5000.0000	5000.0000	5000.0000	
			Control switching times: 	  0.0000	1575.0000	9080.0000	31920.0000	41900.0000	52010.0000	59290.0000


-->Input values/temporal elements for Experiment 8:
		linear interpolation is being used.
			Control values: 			Input 1:	  0.5150	  0.5150	  1.5500	  0.8750	  0.4350	  0.9650				Input 2:	  7.3500	  7.3500	  7.0550	  6.7200	  7.0300	  7.3100				Input 3:	 14.0000	 14.0000	 16.1000	 17.2000	 16.4000	 14.6000				Input 4:	 67.1794	 67.1794	 67.1794	 67.1794	 67.1794	 67.1794				Input 5:	5000.0000	5000.0000	5000.0000	5000.0000	5000.0000	5000.0000	
			Control switching times: 	  0.0000	175.0000	17760.0000	29055.0000	37695.0000	50640.0000	60705.0000


-->Input values/temporal elements for Experiment 9:
		linear interpolation is being used.
			Control values: 			Input 1:	 13.7000	 13.7000	 15.9000	  9.7300	  4.8900	 17.6500				Input 2:	  7.7600	  7.7600	  7.7200	  7.7250	  7.6850	  7.9350				Input 3:	 16.7000	 16.7000	 12.0000	 10.9000	 10.7000	  9.2000				Input 4:	 53.7318	 53.7318	 53.7318	 53.7318	 53.7318	 53.7318				Input 5:	8000.0000	8000.0000	8000.0000	8000.0000	8000.0000	8000.0000	
			Control switching times: 	  0.0000	 90.0000	360.0000	1515.0000	2940.0000	3180.0000	4425.0000


-->Input values/temporal elements for Experiment 10:
		linear interpolation is being used.
			Control values: 			Input 1:	 15.5500	 15.5500	 24.2000	 22.8000	 16.7500	 19.3000				Input 2:	  8.0150	  8.0150	  7.8900	  7.8250	  7.9600	  7.9450				Input 3:	  8.4000	  8.4000	  6.2000	  7.3000	  8.1000	  7.9000				Input 4:	 68.5556	 68.5556	 68.5556	 68.5556	 68.5556	 68.5556				Input 5:	8000.0000	8000.0000	8000.0000	8000.0000	8000.0000	8000.0000	
			Control switching times: 	  0.0000	120.0000	240.0000	360.0000	1560.0000	1680.0000	1800.0000


-->Input values/temporal elements for Experiment 11:
		linear interpolation is being used.
			Control values: 			Input 1:	  6.5000	  6.5000	 13.6500	  8.4600	  8.8700	 11.2000				Input 2:	  7.9750	  7.9750	  8.1050	  7.9100	  7.8950	  7.9200				Input 3:	 18.9000	 18.9000	 12.9000	 14.1000	 11.8000	 13.0000				Input 4:	163.8239	163.8239	163.8239	163.8239	163.8239	163.8239				Input 5:	12000.0000	12000.0000	12000.0000	12000.0000	12000.0000	12000.0000	
			Control switching times: 	  0.0000	 30.0000	255.0000	1452.0000	1710.0000	2915.0000	3135.0000


-->Input values/temporal elements for Experiment 12:
		linear interpolation is being used.
			Control values: 			Input 1:	  7.3200	  7.3200	  9.6800	 10.8500	  4.8100	  8.9200				Input 2:	  7.9950	  7.9950	  8.0150	  7.8300	  7.8000	  7.7550				Input 3:	 20.1000	 20.1000	 14.1000	 14.7000	 12.7000	 15.1000				Input 4:	196.0454	196.0454	196.0454	196.0454	196.0454	196.0454				Input 5:	12000.0000	12000.0000	12000.0000	12000.0000	12000.0000	12000.0000	
			Control switching times: 	  0.0000	 60.0000	285.0000	1490.0000	1715.0000	2940.0000	3170.0000


-->Input values/temporal elements for Experiment 13:
		linear interpolation is being used.
			Control values: 			Input 1:	 19.7000	 19.7000	 12.3500	 47.5000	 51.8000	 32.6500				Input 2:	  8.2500	  8.2500	  7.9400	  8.1100	  8.1200	  8.1550				Input 3:	 21.5000	 21.5000	 21.5000	 20.4000	 21.6000	 21.9000				Input 4:	  8.8141	  8.8141	  8.8141	  8.8141	  8.8141	  8.8141				Input 5:	5000.0000	5000.0000	5000.0000	5000.0000	5000.0000	5000.0000	
			Control switching times: 	  0.0000	 90.0000	187.5000	1655.0000	2975.0000	3160.0000	4540.0000


-->Input values/temporal elements for Experiment 14:
		linear interpolation is being used.
			Control values: 			Input 1:	 21.5000	 21.5000	 12.9500	 13.5500	 23.2500	 15.0000				Input 2:	  8.3300	  8.3300	  7.7300	  8.0550	  8.2050	  8.0450				Input 3:	 24.2000	 24.2000	 23.7000	 23.5000	 24.5000	 23.3000				Input 4:	  8.2598	  8.2598	  8.2598	  8.2598	  8.2598	  8.2598				Input 5:	5000.0000	5000.0000	5000.0000	5000.0000	5000.0000	5000.0000	
			Control switching times: 	  0.0000	 80.0000	260.0000	1640.0000	2410.0000	2900.0000	4510.0000


-->Input values/temporal elements for Experiment 15:
		linear interpolation is being used.
			Control values: 			Input 1:	 69.5500	 69.5500	 44.1500	 73.9500	 49.0000	 77.8000				Input 2:	  7.9500	  7.9500	  8.0250	  8.2050	  8.1500	  8.2050				Input 3:	 10.7000	 10.7000	 10.7000	 13.2000	 14.2000	 14.1000				Input 4:	166.7206	166.7206	166.7206	166.7206	166.7206	166.7206				Input 5:	18000.0000	18000.0000	18000.0000	18000.0000	18000.0000	18000.0000	
			Control switching times: 	  0.0000	205.0000	570.0000	1650.0000	2070.0000	3030.0000	3440.0000


-->Input values/temporal elements for Experiment 16:
		linear interpolation is being used.
			Control values: 			Input 1:	134.5000	134.5000	130.5000	 94.7000	 65.1000	112.2000				Input 2:	  7.8100	  7.8100	  7.9550	  8.1550	  8.1450	  8.2300				Input 3:	 20.4000	 20.4000	 18.1000	 17.2000	 16.2000	 18.4000				Input 4:	176.7890	176.7890	176.7890	176.7890	176.7890	176.7890				Input 5:	18000.0000	18000.0000	18000.0000	18000.0000	18000.0000	18000.0000	
			Control switching times: 	  0.0000	170.0000	500.0000	1610.0000	1935.0000	3035.0000	3370.0000


-->Input values/temporal elements for Experiment 17:
		linear interpolation is being used.
			Control values: 			Input 1:	 16.0500	 16.0500	  6.7000	  0.0200	  0.7900	  1.6800				Input 2:	  7.7550	  7.7550	  7.7000	  7.5400	  7.5050	  7.4850				Input 3:	 15.2000	 15.2000	 11.2000	  7.7000	  6.0000	  8.8000				Input 4:	 64.4779	 64.4779	 64.4779	 64.4779	 64.4779	 64.4779				Input 5:	1600.0000	1600.0000	1600.0000	1600.0000	1600.0000	1600.0000	
			Control switching times: 	  0.0000	 36.0000	 94.0000	200.0000	297.0000	410.0000	475.0000


-->Input values/temporal elements for Experiment 18:
		linear interpolation is being used.
			Control values: 			Input 1:	 12.8000	 12.8000	 10.3400	  5.6200	  0.1000	  2.5450				Input 2:	  7.9650	  7.9650	  8.1750	  8.1150	  7.5500	  7.6800				Input 3:	 17.0000	 17.0000	 11.4000	  9.4000	 11.3000	 12.1000				Input 4:	 58.5897	 58.5897	 58.5897	 58.5897	 58.5897	 58.5897				Input 5:	1600.0000	1600.0000	1600.0000	1600.0000	1600.0000	1600.0000	
			Control switching times: 	  0.0000	 35.0000	131.0000	225.0000	310.0000	400.0000	485.0000


-->Input values/temporal elements for Experiment 19:
		linear interpolation is being used.
			Control values: 			Input 1:	  2.2400	  2.2400	  2.2400	  2.2400	  2.2400	  2.2400				Input 2:	  4.3650	  4.3650	  4.4950	  4.5850	  4.6800	  4.7750				Input 3:	 21.0000	 21.0000	 19.6000	 19.3500	 18.5000	 18.1500				Input 4:	142.1511	142.1511	142.1511	142.1511	142.1511	142.1511				Input 5:	1000.0000	1000.0000	1000.0000	1000.0000	1000.0000	1000.0000	
			Control switching times: 	  0.0000	 30.0000	 60.0000	100.0000	135.0000	195.0000	225.0000


-->Input values/temporal elements for Experiment 20:
		linear interpolation is being used.
			Control values: 			Input 1:	  2.2400	  2.2400	  2.2400	  2.2400	  2.2400				Input 2:	  4.4500	  4.3350	  4.5600	  4.6650	  4.8300				Input 3:	 21.1500	 20.3000	 18.9000	 18.7000	 18.6500				Input 4:	160.9091	160.9091	160.9091	160.9091	160.9091				Input 5:	1000.0000	1000.0000	1000.0000	1000.0000	1000.0000	
			Control switching times: 	  0.0000	 55.0000	 90.0000	150.0000	180.0000	220.0000


-->Input values/temporal elements for Experiment 21:
		linear interpolation is being used.
			Control values: 			Input 1:	270.0000	270.0000	477.0000	578.0000	556.0000	523.0000				Input 2:	  3.4450	  3.4450	  3.3500	  3.4200	  3.4950	  3.5700				Input 3:	 17.4500	 17.4500	 17.8000	 18.2500	 18.0000	 18.4000				Input 4:	 18.0000	 18.0000	 18.0000	 18.0000	 18.0000	 18.0000				Input 5:	500.0000	500.0000	500.0000	500.0000	500.0000	500.0000	
			Control switching times: 	  0.0000	105.0000	150.0000	195.0000	240.0000	265.0000	275.0000


-->Input values/temporal elements for Experiment 22:
		linear interpolation is being used.
			Control values: 			Input 1:	258.0000	258.0000	428.5000	417.5000	365.0000	347.0000				Input 2:	  3.6850	  3.6850	  3.4050	  3.3150	  3.5050	  3.5500				Input 3:	 13.9000	 13.9000	 13.5500	 14.1500	 14.1500	 14.5000				Input 4:	 22.9412	 22.9412	 22.9412	 22.9412	 22.9412	 22.9412				Input 5:	500.0000	500.0000	500.0000	500.0000	500.0000	500.0000	
			Control switching times: 	  0.0000	 90.0000	120.0000	150.0000	180.0000	220.0000	255.0000


-->Input values/temporal elements for Experiment 23:
		linear interpolation is being used.
			Control values: 			Input 1:	  0.6000	  0.6000	  1.8400	  3.8750	  4.8050	  5.8000				Input 2:	  8.5850	  8.5850	  8.5900	  8.4900	  8.5750	  8.5550				Input 3:	 15.1000	 15.1000	 14.2000	 15.0000	 15.8000	 14.5500				Input 4:	 39.9750	 39.9750	 39.9750	 39.9750	 39.9750	 39.9750				Input 5:	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	
			Control switching times: 	  0.0000	 20.0000	 80.0000	140.0000	200.0000	260.0000	320.0000


-->Input values/temporal elements for Experiment 24:
		linear interpolation is being used.
			Control values: 			Input 1:	 35.2500	 35.2500	 33.4500	 34.8500	 25.7000	 21.0000				Input 2:	  8.4000	  8.4000	  8.2950	  8.3950	  8.3400	  8.3150				Input 3:	 18.2000	 18.2000	 16.8500	 15.5000	 16.3000	 16.4500				Input 4:	 72.7652	 72.7652	 72.7652	 72.7652	 72.7652	 72.7652				Input 5:	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	
			Control switching times: 	  0.0000	 65.0000	 95.0000	110.0000	125.0000	160.0000	230.0000


-->Input values/temporal elements for Experiment 25:
		linear interpolation is being used.
			Control values: 			Input 1:	 14.1500	 14.1500	 14.0500	 20.4000	 22.1500	 25.1000				Input 2:	  8.3800	  8.3800	  8.6200	  8.6750	  8.6700	  8.6550				Input 3:	 18.0000	 18.0000	 16.5000	 16.0500	 14.4500	 15.3500				Input 4:	 39.9750	 39.9750	 39.9750	 39.9750	 39.9750	 39.9750				Input 5:	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	
			Control switching times: 	  0.0000	 20.0000	 80.0000	140.0000	200.0000	260.0000	320.0000


-->Input values/temporal elements for Experiment 26:
		linear interpolation is being used.
			Control values: 			Input 1:	 52.2000	 52.2000	 57.6000	 59.9000	 71.4000	 46.0000				Input 2:	  8.3900	  8.3900	  8.4000	  8.4450	  8.4350	  8.3650				Input 3:	 16.8500	 16.8500	 16.1500	 15.7500	 15.5000	 16.7000				Input 4:	 72.7652	 72.7652	 72.7652	 72.7652	 72.7652	 72.7652				Input 5:	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	
			Control switching times: 	  0.0000	 65.0000	 95.0000	110.0000	125.0000	160.0000	230.0000


-->Input values/temporal elements for Experiment 27:
		linear interpolation is being used.
			Control values: 			Input 1:	 50.0000	 50.0000	 50.0000	  5.0000	  5.0000	  5.0000				Input 2:	  7.5250	  7.5250	  7.0650	  7.2200	  7.1700	  7.2850				Input 3:	  5.1000	  5.1000	  6.7000	  6.8000	  5.7500	  5.6500				Input 4:	 11.0667	 11.0667	 11.0667	 11.0667	 11.0667	 11.0667				Input 5:	1100.0000	1100.0000	1100.0000	1100.0000	1100.0000	1100.0000	
			Control switching times: 	  0.0000	180.0000	225.0000	270.0000	315.0000	360.0000	405.0000


-->Input values/temporal elements for Experiment 28:
		linear interpolation is being used.
			Control values: 			Input 1:	  0.1850	  0.1850	  1.6100	  2.0000	  0.4000	  2.2000				Input 2:	  7.7750	  7.7750	  7.7900	  7.7250	  7.5250	  7.3150				Input 3:	  5.7000	  5.7000	  4.5000	  4.0000	  4.3500	  4.4500				Input 4:	 10.3037	 10.3037	 10.3037	 10.3037	 10.3037	 10.3037				Input 5:	1100.0000	1100.0000	1100.0000	1100.0000	1100.0000	1100.0000	
			Control switching times: 	  0.0000	180.0000	225.0000	270.0000	315.0000	360.0000	405.0000


-->Input values/temporal elements for Experiment 29:
		linear interpolation is being used.
			Control values: 			Input 1:	 85.0000	 85.0000	 85.0000	 19.5000	 69.0000	 21.5000				Input 2:	  5.4350	  5.4350	  5.8050	  5.2700	  5.2650	  5.0300				Input 3:	 11.0500	 11.0500	 11.6000	 12.2500	 11.9500	 12.4000				Input 4:	  4.1333	  4.1333	  4.1333	  4.1333	  4.1333	  4.1333				Input 5:	1250.0000	1250.0000	1250.0000	1250.0000	1250.0000	1250.0000	
			Control switching times: 	  0.0000	 75.0000	120.0000	165.0000	210.0000	285.0000	300.0000


-->Input values/temporal elements for Experiment 30:
		linear interpolation is being used.
			Control values: 			Input 1:	 59.5000	 59.5000	 57.0000	 68.5000	 58.0000	 51.5000				Input 2:	  6.4300	  6.4300	  5.8150	  5.2550	  5.0050	  5.1400				Input 3:	  9.6000	  9.6000	 10.6500	 10.9500	 12.0500	 10.5500				Input 4:	  2.0939	  2.0939	  2.0939	  2.0939	  2.0939	  2.0939				Input 5:	1250.0000	1250.0000	1250.0000	1250.0000	1250.0000	1250.0000	
			Control switching times: 	  0.0000	435.0000	480.0000	525.0000	570.0000	615.0000	660.0000


-->Input values/temporal elements for Experiment 31:
		linear interpolation is being used.
			Control values: 			Input 1:	 80.4000	 80.4000	 71.2000	 56.4000	 70.4000	 43.2000				Input 2:	  8.6650	  8.6650	  8.4650	  8.4150	  8.5150	  8.3000				Input 3:	 10.4000	 10.4000	 11.0000	 11.5000	 10.5000	 10.3000				Input 4:	  1.5079	  1.5079	  1.5079	  1.5079	  1.5079	  1.5079				Input 5:	1800.0000	1800.0000	1800.0000	1800.0000	1800.0000	1800.0000	
			Control switching times: 	  0.0000	150.0000	240.0000	330.0000	420.0000	510.0000	630.0000


-->Input values/temporal elements for Experiment 32:
		linear interpolation is being used.
			Control values: 			Input 1:	 68.4000	 68.4000	 73.0000	109.7500	 73.5000	 75.2500				Input 2:	  8.3700	  8.3700	  8.2950	  8.4400	  8.3000	  8.3550				Input 3:	 12.7000	 12.7000	 11.3500	 10.4500	 10.2500	  9.8000				Input 4:	  1.8208	  1.8208	  1.8208	  1.8208	  1.8208	  1.8208				Input 5:	1800.0000	1800.0000	1800.0000	1800.0000	1800.0000	1800.0000	
			Control switching times: 	  0.0000	150.0000	240.0000	330.0000	420.0000	480.0000	600.0000


-->Input values/temporal elements for Experiment 33:
		linear interpolation is being used.
			Control values: 			Input 1:	 34.8500	 34.8500	 10.6500	  9.0500	 11.0000	 13.0500				Input 2:	  7.3000	  7.3000	  7.3100	  7.3450	  7.3600	  7.4100				Input 3:	 12.6000	 12.6000	 10.7500	 10.6500	  7.8000	  7.0000				Input 4:	 16.6667	 16.6667	 16.6667	 16.6667	 16.6667	 16.6667				Input 5:	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	
			Control switching times: 	  0.0000	 15.0000	 30.0000	 45.0000	 60.0000	 75.0000	 90.0000


-->Input values/temporal elements for Experiment 34:
		linear interpolation is being used.
			Control values: 			Input 1:	 12.1000	 12.1000	  0.8450	  0.9050	 14.8000	  6.9500				Input 2:	  7.3000	  7.3000	  7.3150	  7.1900	  7.1250	  7.1850				Input 3:	 13.3500	 13.3500	 13.6000	  9.3000	  8.0850	  8.0500				Input 4:	 14.8148	 14.8148	 14.8148	 14.8148	 14.8148	 14.8148				Input 5:	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	
			Control switching times: 	  0.0000	 15.0000	 30.0000	 45.0000	 60.0000	 90.0000	135.0000


-->Input values/temporal elements for Experiment 35:
		linear interpolation is being used.
			Control values: 			Input 1:	 58.0000	 58.0000	 63.5000	 49.0000	 49.0000	 76.0000				Input 2:	  8.3800	  8.3800	  7.9950	  7.6450	  7.8100	  7.8150				Input 3:	  6.6000	  6.6000	  5.7500	  5.8500	  6.1000	  6.1500				Input 4:	  2.9474	  2.9474	  2.9474	  2.9474	  2.9474	  2.9474				Input 5:	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	
			Control switching times: 	  0.0000	345.0000	360.0000	435.0000	480.0000	525.0000	570.0000


-->Input values/temporal elements for Experiment 36:
		linear interpolation is being used.
			Control values: 			Input 1:	 64.0000	 64.0000	 79.0000	110.0000	115.0000	159.5000				Input 2:	  8.1450	  8.1450	  8.0450	  8.1700	  8.2450	  8.3300				Input 3:	  6.4000	  6.4000	  6.3000	  6.2500	  6.0500	  6.0500				Input 4:	  7.2726	  7.2726	  7.2726	  7.2726	  7.2726	  7.2726				Input 5:	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	
			Control switching times: 	  0.0000	315.0000	360.0000	405.0000	450.0000	495.0000	540.0000


-->Input values/temporal elements for Experiment 37:
		linear interpolation is being used.
			Control values: 			Input 1:	 23.4500	 23.4500	 42.2500	 80.0000	  5.0500	 41.9000				Input 2:	  7.2250	  7.2250	  6.3400	  6.9300	  7.0800	  6.3050				Input 3:	 10.6500	 10.6500	 11.0000	 10.2500	  8.5500	  8.4500				Input 4:	 17.4405	 17.4405	 17.4405	 17.4405	 17.4405	 17.4405				Input 5:	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	
			Control switching times: 	  0.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000


-->Input values/temporal elements for Experiment 38:
		linear interpolation is being used.
			Control values: 			Input 1:	 68.5000	 68.5000	 88.5000	149.0000	 83.5000	 73.0000				Input 2:	  6.1750	  6.1750	  6.3550	  6.3750	  6.4650	  6.4150				Input 3:	  8.3500	  8.3500	  9.0500	  8.4500	  8.8500	  8.5500				Input 4:	  3.7012	  3.7012	  3.7012	  3.7012	  3.7012	  3.7012				Input 5:	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	
			Control switching times: 	  0.0000	600.0000	645.0000	690.0000	735.0000	780.0000	810.0000


-->Input values/temporal elements for Experiment 39:
		linear interpolation is being used.
			Control values: 			Input 1:	 21.7500	 21.7500	 12.9000	  4.3500	  4.9500	 15.8000				Input 2:	  8.0100	  8.0100	  7.8800	  8.0550	  8.1150	  8.5000				Input 3:	 14.3500	 14.3500	 10.8500	  9.6000	  9.4000	  9.5000				Input 4:	 13.7688	 13.7688	 13.7688	 13.7688	 13.7688	 13.7688				Input 5:	2300.0000	2300.0000	2300.0000	2300.0000	2300.0000	2300.0000	
			Control switching times: 	  0.0000	195.0000	240.0000	300.0000	345.0000	390.0000	480.0000


-->Input values/temporal elements for Experiment 40:
		linear interpolation is being used.
			Control values: 			Input 1:	  1.3600	  1.3600	  9.7000	  8.4000	 12.8000	  2.0050				Input 2:	  7.2400	  7.2400	  8.2200	  8.2550	  8.2950	  7.5000				Input 3:	  8.2000	  8.2000	  6.4000	  5.9000	  5.9000	  5.8500				Input 4:	 28.8410	 28.8410	 28.8410	 28.8410	 28.8410	 28.8410				Input 5:	2300.0000	2300.0000	2300.0000	2300.0000	2300.0000	2300.0000	
			Control switching times: 	  0.0000	165.0000	210.0000	255.0000	300.0000	345.0000	390.0000


-->Input values/temporal elements for Experiment 41:
		linear interpolation is being used.
			Control values: 			Input 1:	 63.7500	 63.7500	 94.4000	 78.6000	 18.9000	 88.0000				Input 2:	  8.2950	  8.2950	  8.4150	  8.6450	  8.4750	  8.5300				Input 3:	 11.2000	 11.2000	 10.9000	  7.7500	 10.4000	  7.8500				Input 4:	 13.7688	 13.7688	 13.7688	 13.7688	 13.7688	 13.7688				Input 5:	2300.0000	2300.0000	2300.0000	2300.0000	2300.0000	2300.0000	
			Control switching times: 	  0.0000	195.0000	240.0000	300.0000	345.0000	390.0000	480.0000


-->Input values/temporal elements for Experiment 42:
		linear interpolation is being used.
			Control values: 			Input 1:	 52.8000	 52.8000	  0.0000	 16.9000	  9.1000	 58.0000				Input 2:	  8.2100	  8.2100	  7.9550	  8.2850	  8.1900	  8.5900				Input 3:	  7.5500	  7.5500	  6.4000	  6.4000	  6.3500	  5.9500				Input 4:	 28.8410	 28.8410	 28.8410	 28.8410	 28.8410	 28.8410				Input 5:	2300.0000	2300.0000	2300.0000	2300.0000	2300.0000	2300.0000	
			Control switching times: 	  0.0000	165.0000	210.0000	255.0000	300.0000	345.0000	390.0000


-->Input values/temporal elements for Experiment 43:
		linear interpolation is being used.
			Control values: 			Input 1:	 66.0000	 66.0000	100.0000	 40.0000	 40.0000	 40.0000				Input 2:	  8.0750	  8.0750	  8.0550	  7.9900	  7.8100	  8.0350				Input 3:	  6.8500	  6.8500	  7.1500	  6.8000	  6.7500	  6.9500				Input 4:	  4.5012	  4.5012	  4.5012	  4.5012	  4.5012	  4.5012				Input 5:	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	
			Control switching times: 	  0.0000	180.0000	225.0000	270.0000	315.0000	360.0000	405.0000


-->Input values/temporal elements for Experiment 44:
		linear interpolation is being used.
			Control values: 			Input 1:	 54.0000	 54.0000	 54.0000	 54.0000	 54.0000	 54.0000				Input 2:	  8.2250	  8.2250	  8.3000	  8.5300	  8.6150	  8.6900				Input 3:	  5.4500	  5.4500	  5.4000	  5.2500	  5.4000	  5.5500				Input 4:	  5.0444	  5.0444	  5.0444	  5.0444	  5.0444	  5.0444				Input 5:	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	1500.0000	
			Control switching times: 	  0.0000	180.0000	225.0000	270.0000	315.0000	360.0000	405.0000


-->Input values/temporal elements for Experiment 45:
		linear interpolation is being used.
			Control values: 			Input 1:	 10.5000	 10.5000	 10.8500	 12.8000	 10.0500	 10.2500				Input 2:	  7.0150	  7.0150	  7.0500	  7.0500	  6.9800	  7.0100				Input 3:	  9.1000	  9.1000	  9.0000	  9.4000	  9.9500	 10.6000				Input 4:	  2.8722	  2.8722	  2.8722	  2.8722	  2.8722	  2.8722				Input 5:	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	
			Control switching times: 	  0.0000	675.0000	720.0000	765.0000	810.0000	855.0000	900.0000


-->Input values/temporal elements for Experiment 46:
		linear interpolation is being used.
			Control values: 			Input 1:	  9.9500	  9.9500	  6.7000	  9.3000	  7.4000	 11.2500				Input 2:	  6.9750	  6.9750	  6.9850	  6.9750	  6.9750	  6.9650				Input 3:	  9.6500	  9.6500	  9.9000	 10.3000	 10.5500	 10.9500				Input 4:	  3.3605	  3.3605	  3.3605	  3.3605	  3.3605	  3.3605				Input 5:	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	3000.0000	
			Control switching times: 	  0.0000	660.0000	705.0000	750.0000	795.0000	840.0000	885.0000


-->Input values/temporal elements for Experiment 47:
		linear interpolation is being used.
			Control values: 			Input 1:	 53.0000	 53.0000	 54.5000	 55.5000	 45.5000	 63.5000				Input 2:	  8.5750	  8.5750	  8.5000	  7.4250	  6.9700	  6.9950				Input 3:	  6.2000	  6.2000	  5.9500	  6.0000	  6.1500	  6.2500				Input 4:	  9.8246	  9.8246	  9.8246	  9.8246	  9.8246	  9.8246				Input 5:	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	
			Control switching times: 	  0.0000	345.0000	360.0000	435.0000	480.0000	525.0000	570.0000


-->Input values/temporal elements for Experiment 48:
		linear interpolation is being used.
			Control values: 			Input 1:	 53.0000	 53.0000	 77.0000	 70.0000	 66.5000	 80.0000				Input 2:	  8.0500	  8.0500	  7.9750	  7.9350	  8.0050	  8.1650				Input 3:	  6.5500	  6.5500	  6.6000	  6.2000	  6.0500	  6.0500				Input 4:	  2.0563	  2.0563	  2.0563	  2.0563	  2.0563	  2.0563				Input 5:	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	
			Control switching times: 	  0.0000	315.0000	360.0000	405.0000	450.0000	495.0000	540.0000


-->Input values/temporal elements for Experiment 49:
		linear interpolation is being used.
			Control values: 			Input 1:	183.8000	183.8000	 91.9000	 97.0000	137.5000	 95.1000				Input 2:	  6.9150	  6.9150	  6.4450	  7.3850	  7.0400	  5.7600				Input 3:	  6.5000	  6.5000	  6.7000	  5.4000	  4.9000	  4.8000				Input 4:	  2.4581	  2.4581	  2.4581	  2.4581	  2.4581	  2.4581				Input 5:	2000.0000	2000.0000	2000.0000	2000.0000	2000.0000	2000.0000	
			Control switching times: 	  0.0000	 50.0000	 75.0000	105.0000	135.0000	175.0000	215.0000


-->Input values/temporal elements for Experiment 50:
		linear interpolation is being used.
			Control values: 			Input 1:	187.5000	187.5000	260.0000	148.5000	161.5000	 50.6500				Input 2:	  7.6950	  7.6950	  7.7800	  7.6300	  7.7250	  7.4000				Input 3:	 10.7000	 10.7000	 10.4000	  8.8000	  9.1000	  8.5000				Input 4:	  2.9273	  2.9273	  2.9273	  2.9273	  2.9273	  2.9273				Input 5:	2000.0000	2000.0000	2000.0000	2000.0000	2000.0000	2000.0000	
			Control switching times: 	  0.0000	 50.0000	 85.0000	110.0000	160.0000	190.0000	220.0000


-->Input values/temporal elements for Experiment 51:
		linear interpolation is being used.
			Control values: 			Input 1:	103.0000	780.5000	1520.0000	645.5000	670.0000				Input 2:	  7.3600	  4.4150	  4.2650	  4.3250	  4.0850				Input 3:	 20.5500	 21.2150	 21.6000	 21.7850	 21.4700				Input 4:	179.6229	179.6229	179.6229	179.6229	179.6229				Input 5:	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	
			Control switching times: 	  0.0000	105.0000	195.0000	300.0000	390.0000	480.0000


-->Input values/temporal elements for Experiment 52:
		linear interpolation is being used.
			Control values: 			Input 1:	125.5000	426.5000	620.0000	 76.0000	383.5000				Input 2:	  7.2200	  4.4850	  4.1850	  7.3600	  4.8050				Input 3:	 19.8350	 19.8500	 19.9500	 19.6350	 19.8350				Input 4:	234.0258	234.0258	234.0258	234.0258	234.0258				Input 5:	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	
			Control switching times: 	  0.0000	105.0000	195.0000	345.0000	405.0000	465.0000


-->Input values/temporal elements for Experiment 53:
		linear interpolation is being used.
			Control values: 			Input 1:	204.0000	204.0000	237.0000	234.5000	257.0000	243.0000				Input 2:	  4.6100	  4.6100	  4.4600	  4.4550	  4.4150	  4.4400				Input 3:	 20.1850	 20.1850	 20.1700	 20.4800	 21.1000	 21.2150				Input 4:	230.1419	230.1419	230.1419	230.1419	230.1419	230.1419				Input 5:	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	
			Control switching times: 	  0.0000	 10.0000	 70.0000	130.0000	190.0000	250.0000	310.0000


-->Input values/temporal elements for Experiment 54:
		linear interpolation is being used.
			Control values: 			Input 1:	290.5000	236.0000	245.5000	251.5000	1041.5000				Input 2:	  4.3500	  4.3250	  4.3700	  4.3900	  4.3400				Input 3:	 20.8200	 20.9650	 20.9850	 20.9350	 21.1800				Input 4:	174.0131	174.0131	174.0131	174.0131	174.0131				Input 5:	2500.0000	2500.0000	2500.0000	2500.0000	2500.0000	
			Control switching times: 	  0.0000	 65.0000	125.0000	185.0000	245.0000	305.0000


-->Number of observables:
	Experiment 1: 3
	Experiment 2: 3
	Experiment 3: 3
	Experiment 4: 3
	Experiment 5: 3
	Experiment 6: 3
	Experiment 7: 3
	Experiment 8: 3
	Experiment 9: 3
	Experiment 10: 3
	Experiment 11: 3
	Experiment 12: 3
	Experiment 13: 3
	Experiment 14: 3
	Experiment 15: 3
	Experiment 16: 3
	Experiment 17: 3
	Experiment 18: 3
	Experiment 19: 3
	Experiment 20: 3
	Experiment 21: 3
	Experiment 22: 3
	Experiment 23: 3
	Experiment 24: 3
	Experiment 25: 3
	Experiment 26: 3
	Experiment 27: 3
	Experiment 28: 3
	Experiment 29: 3
	Experiment 30: 3
	Experiment 31: 3
	Experiment 32: 3
	Experiment 33: 3
	Experiment 34: 3
	Experiment 35: 3
	Experiment 36: 3
	Experiment 37: 3
	Experiment 38: 3
	Experiment 39: 3
	Experiment 40: 3
	Experiment 41: 3
	Experiment 42: 3
	Experiment 43: 3
	Experiment 44: 3
	Experiment 45: 3
	Experiment 46: 3
	Experiment 47: 3
	Experiment 48: 3
	Experiment 49: 3
	Experiment 50: 3
	Experiment 51: 3
	Experiment 52: 3
	Experiment 53: 3
	Experiment 54: 3

-->Observables:
		Experiment 1:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 2:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 3:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 4:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 5:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 6:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 7:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 8:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 9:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 10:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 11:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 12:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 13:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 14:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 15:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 16:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 17:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 18:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 19:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 20:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 21:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 22:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 23:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 24:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 25:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 26:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 27:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 28:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 29:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 30:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 31:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 32:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 33:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 34:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 35:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 36:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 37:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 38:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 39:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 40:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 41:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 42:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 43:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 44:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 45:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 46:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 47:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 48:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 49:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 50:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 51:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 52:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 53:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)
		Experiment 54:
			log10CFUs=log10(0.1*Xw+1)
			yCOD=COD                 
			log10Lis=log10(0.1*XwL+1)

-->Number of sampling times for each experiment:
		Experiment 1: 	 7
		Experiment 2: 	 7
		Experiment 3: 	 7
		Experiment 4: 	 7
		Experiment 5: 	 7
		Experiment 6: 	 7
		Experiment 7: 	 7
		Experiment 8: 	 7
		Experiment 9: 	 7
		Experiment 10: 	 7
		Experiment 11: 	 7
		Experiment 12: 	 7
		Experiment 13: 	 7
		Experiment 14: 	 7
		Experiment 15: 	 7
		Experiment 16: 	 7
		Experiment 17: 	 7
		Experiment 18: 	 7
		Experiment 19: 	 7
		Experiment 20: 	 6
		Experiment 21: 	 7
		Experiment 22: 	 7
		Experiment 23: 	 7
		Experiment 24: 	 7
		Experiment 25: 	 7
		Experiment 26: 	 7
		Experiment 27: 	 7
		Experiment 28: 	 7
		Experiment 29: 	 7
		Experiment 30: 	 7
		Experiment 31: 	 7
		Experiment 32: 	 7
		Experiment 33: 	 7
		Experiment 34: 	 7
		Experiment 35: 	 7
		Experiment 36: 	 7
		Experiment 37: 	 7
		Experiment 38: 	 7
		Experiment 39: 	 7
		Experiment 40: 	 7
		Experiment 41: 	 7
		Experiment 42: 	 7
		Experiment 43: 	 7
		Experiment 44: 	 7
		Experiment 45: 	 7
		Experiment 46: 	 7
		Experiment 47: 	 7
		Experiment 48: 	 7
		Experiment 49: 	 7
		Experiment 50: 	 7
		Experiment 51: 	 6
		Experiment 52: 	 6
		Experiment 53: 	 7
		Experiment 54: 	 6

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000   225.000   450.000   645.000  1625.000  1860.000  2100.000  ]
		Experiment 2, 
			t_s=[   0.000    90.000   330.000  1500.000  1770.000  2955.000  3205.000  ]
		Experiment 3, 
			t_s=[   0.000   110.000   240.000   390.000  1500.000  1800.000  4410.000  ]
		Experiment 4, 
			t_s=[   0.000   120.000   290.000   425.000  1635.000  1830.000  3000.000  ]
		Experiment 5, 
			t_s=[   0.000   270.000   550.000  1650.000  1980.000  3100.000  3440.000  ]
		Experiment 6, 
			t_s=[   0.000    50.000   470.000  1550.000  1905.000  2940.000  3340.000  ]
		Experiment 7, 
			t_s=[   0.000  1575.000  9080.000  31920.000  41900.000  52010.000  59290.000  ]
		Experiment 8, 
			t_s=[   0.000   175.000  17760.000  29055.000  37695.000  50640.000  60705.000  ]
		Experiment 9, 
			t_s=[   0.000    90.000   360.000  1515.000  2940.000  3180.000  4425.000  ]
		Experiment 10, 
			t_s=[   0.000   120.000   240.000   360.000  1560.000  1680.000  1800.000  ]
		Experiment 11, 
			t_s=[   0.000    30.000   255.000  1452.000  1710.000  2915.000  3135.000  ]
		Experiment 12, 
			t_s=[   0.000    60.000   285.000  1490.000  1715.000  2940.000  3170.000  ]
		Experiment 13, 
			t_s=[   0.000    90.000   187.500  1655.000  2975.000  3160.000  4540.000  ]
		Experiment 14, 
			t_s=[   0.000    80.000   260.000  1640.000  2410.000  2900.000  4510.000  ]
		Experiment 15, 
			t_s=[   0.000   205.000   570.000  1650.000  2070.000  3030.000  3440.000  ]
		Experiment 16, 
			t_s=[   0.000   170.000   500.000  1610.000  1935.000  3035.000  3370.000  ]
		Experiment 17, 
			t_s=[   0.000    36.000    94.000   200.000   297.000   410.000   475.000  ]
		Experiment 18, 
			t_s=[   0.000    35.000   131.000   225.000   310.000   400.000   485.000  ]
		Experiment 19, 
			t_s=[   0.000    30.000    60.000   100.000   135.000   195.000   225.000  ]
		Experiment 20, 
			t_s=[   0.000    55.000    90.000   150.000   180.000   220.000  ]
		Experiment 21, 
			t_s=[   0.000   105.000   150.000   195.000   240.000   265.000   275.000  ]
		Experiment 22, 
			t_s=[   0.000    90.000   120.000   150.000   180.000   220.000   255.000  ]
		Experiment 23, 
			t_s=[   0.000    20.000    80.000   140.000   200.000   260.000   320.000  ]
		Experiment 24, 
			t_s=[   0.000    65.000    95.000   110.000   125.000   160.000   230.000  ]
		Experiment 25, 
			t_s=[   0.000    20.000    80.000   140.000   200.000   260.000   320.000  ]
		Experiment 26, 
			t_s=[   0.000    65.000    95.000   110.000   125.000   160.000   230.000  ]
		Experiment 27, 
			t_s=[   0.000   180.000   225.000   270.000   315.000   360.000   405.000  ]
		Experiment 28, 
			t_s=[   0.000   180.000   225.000   270.000   315.000   360.000   405.000  ]
		Experiment 29, 
			t_s=[   0.000    75.000   120.000   165.000   210.000   285.000   300.000  ]
		Experiment 30, 
			t_s=[   0.000   435.000   480.000   525.000   570.000   615.000   660.000  ]
		Experiment 31, 
			t_s=[   0.000   150.000   240.000   330.000   420.000   510.000   630.000  ]
		Experiment 32, 
			t_s=[   0.000   150.000   240.000   330.000   420.000   480.000   600.000  ]
		Experiment 33, 
			t_s=[   0.000    15.000    30.000    45.000    60.000    75.000    90.000  ]
		Experiment 34, 
			t_s=[   0.000    15.000    30.000    45.000    60.000    90.000   135.000  ]
		Experiment 35, 
			t_s=[   0.000   345.000   360.000   435.000   480.000   525.000   570.000  ]
		Experiment 36, 
			t_s=[   0.000   315.000   360.000   405.000   450.000   495.000   540.000  ]
		Experiment 37, 
			t_s=[   0.000   120.000   180.000   240.000   300.000   360.000   420.000  ]
		Experiment 38, 
			t_s=[   0.000   600.000   645.000   690.000   735.000   780.000   810.000  ]
		Experiment 39, 
			t_s=[   0.000   195.000   240.000   300.000   345.000   390.000   480.000  ]
		Experiment 40, 
			t_s=[   0.000   165.000   210.000   255.000   300.000   345.000   390.000  ]
		Experiment 41, 
			t_s=[   0.000   195.000   240.000   300.000   345.000   390.000   480.000  ]
		Experiment 42, 
			t_s=[   0.000   165.000   210.000   255.000   300.000   345.000   390.000  ]
		Experiment 43, 
			t_s=[   0.000   180.000   225.000   270.000   315.000   360.000   405.000  ]
		Experiment 44, 
			t_s=[   0.000   180.000   225.000   270.000   315.000   360.000   405.000  ]
		Experiment 45, 
			t_s=[   0.000   675.000   720.000   765.000   810.000   855.000   900.000  ]
		Experiment 46, 
			t_s=[   0.000   660.000   705.000   750.000   795.000   840.000   885.000  ]
		Experiment 47, 
			t_s=[   0.000   345.000   360.000   435.000   480.000   525.000   570.000  ]
		Experiment 48, 
			t_s=[   0.000   315.000   360.000   405.000   450.000   495.000   540.000  ]
		Experiment 49, 
			t_s=[   0.000    50.000    75.000   105.000   135.000   175.000   215.000  ]
		Experiment 50, 
			t_s=[   0.000    50.000    85.000   110.000   160.000   190.000   220.000  ]
		Experiment 51, 
			t_s=[   0.000   105.000   195.000   300.000   390.000   480.000  ]
		Experiment 52, 
			t_s=[   0.000   105.000   195.000   345.000   405.000   465.000  ]
		Experiment 53, 
			t_s=[   0.000    10.000    70.000   130.000   190.000   250.000   310.000  ]
		Experiment 54, 
			t_s=[   0.000    65.000   125.000   185.000   245.000   305.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		0  0  0
		3.00043  57.5  0
		0  51.5  0
		3.00043  53.5  0
		2.69984  91  0
		3.74044  93  0
		3.00043  100  0
		];

		
Experiment 2: 
		inputs.exp_data{2}=[
		0  0  0
		3.54419  55.5  0
		0  176  0
		2.69984  213.5  0
		3.00043  214.5  0.176091
		3.39811  208  1.39794
		3.30125  203.5  0.477121
		];

		
Experiment 3: 
		inputs.exp_data{3}=[
		0  0  0
		4.68575  31.5  1.51188
		2.69984  35.5  2.06446
		4.31178  51  0
		3.00043  65  0.176091
		3.47727  66.5  0.176091
		3.90314  60  1.26717
		];

		
Experiment 4: 
		inputs.exp_data{4}=[
		0  0  0
		4.04143  22  0.176091
		3.39811  35  1.47712
		0  65  0.176091
		3.30125  86  0.954243
		3.00043  105  0
		3.30125  128  0.954243
		];

		
Experiment 5: 
		inputs.exp_data{5}=[
		0  0  0
		3.30125  64  0
		3.54419  68.5  0
		3.17638  132  0
		3.30125  219  0.176091
		0  320.5  0
		0  328.5  0.39794
		];

		
Experiment 6: 
		inputs.exp_data{6}=[
		0  0  0
		4.49832  50.5  0
		4.36175  101.5  1.26717
		5.68574  142.5  3.22686
		4.7033  163  0
		0  167  0
		4.49832  195.5  0.39794
		];

		
Experiment 7: 
		inputs.exp_data{7}=[
		0  0  0
		4.32224  63.5  0
		4.72836  34  2.53275
		2.69984  140.5  2.61331
		3.74044  62  0
		4.40656  66.5  2.39967
		3.77822  53  1.81624
		];

		
Experiment 8: 
		inputs.exp_data{8}=[
		0  0  0
		3.30125  69.5  1.53782
		3.00043  14.5  0.875061
		0  43.5  0
		3.92947  219  0.30103
		3.17638  94  1
		3.81298  81  0.544068
		];

		
Experiment 9: 
		inputs.exp_data{9}=[
		0  0  0
		3.00043  207  0
		3.84516  327  0
		3.00043  619  0
		4.1614  481  0
		3.77822  629.5  0
		3.69906  396  0
		];

		
Experiment 10: 
		inputs.exp_data{10}=[
		0  0  0
		3.17638  46.5  0
		3.17638  121  0.176091
		5.02735  323  0.30103
		3.97777  372.5  0
		2.69984  502.5  0
		3.17638  522.5  0
		];

		
Experiment 11: 
		inputs.exp_data{11}=[
		0  0  0
		3.69906  1  0
		3.17638  0  0
		4.55024  3  0
		3.47727  47  0
		3.95429  88.5  0
		5.06259  85.5  0
		];

		
Experiment 12: 
		inputs.exp_data{12}=[
		0  0  0
		3.77822  42  0.653213
		5.07004  98  0
		4.04143  122  0
		3.60217  150.5  1.33244
		3.60217  168  0.176091
		4.14616  178.5  0.977724
		];

		
Experiment 13: 
		inputs.exp_data{13}=[
		0  0  0
		3.54419  166.5  1.51188
		3.30125  110  0
		0  108.5  0
		0  143  0.176091
		0  191  0.544068
		0  254  0.176091
		];

		
Experiment 14: 
		inputs.exp_data{14}=[
		0  0  0
		3.00043  113  0
		3.00043  118  0.176091
		3.54419  186.5  0
		3.60217  290  0
		3.30125  303.5  0
		3.30125  272  0.176091
		];

		
Experiment 15: 
		inputs.exp_data{15}=[
		0  0  0
		2.69984  98  0.30103
		3.17638  166.5  0.544068
		3.00043  213.5  0
		0  259  0.176091
		2.69984  286.5  0
		0  280  0.39794
		];

		
Experiment 16: 
		inputs.exp_data{16}=[
		0  0  0
		0  29  0
		0  65.5  0
		0  128  0
		0  171  0
		0  198.5  0
		0  265  0
		];

		
Experiment 17: 
		inputs.exp_data{17}=[
		0  0  0
		4.09694  78.5  0
		4.20415  129.5  0
		5.74036  218  0
		3.54419  267.5  0
		3.69906  388  0
		3.54419  401  0
		];

		
Experiment 18: 
		inputs.exp_data{18}=[
		0  0  0
		3.81298  91  0
		4.9345  180  0
		3.84516  217.5  0
		3.92947  295.5  0
		5.4764  352  0
		4.3522  395  0
		];

		
Experiment 19: 
		inputs.exp_data{19}=[
		0  0  0
		3.31197  260  0
		6.86629  531  0
		5.37107  649  0
		5.85431  904  0
		6.36173  928  0
		6.54407  1002.5  0
		];

		
Experiment 20: 
		inputs.exp_data{20}=[
		4.08461  474  0
		3.66755  616  0
		6.91381  1310  0
		7.63144  1763  0
		8.06595  2997.5  0
		8.08636  2042.5  0
		];

		
Experiment 21: 
		inputs.exp_data{21}=[
		0  0  0
		4.75588  2146  0
		4.71601  2136  0
		4.51853  2438  0
		4.50516  2474  0
		4.53149  2364  0
		4.5119  2410  0
		];

		
Experiment 22: 
		inputs.exp_data{22}=[
		0  0  0
		5.71181  1396  0
		5.61805  1733  0
		5.4624  2232  0
		5.9058  2126  0
		5.82608  2204  0
		5.96379  1586  0
		];

		
Experiment 23: 
		inputs.exp_data{23}=[
		0  0  0
		4.06074  141  0
		4.14616  193  0
		4.11398  319  0
		4.04143  217  0
		4.06074  94  0
		4.06074  147  0
		];

		
Experiment 24: 
		inputs.exp_data{24}=[
		0  0  0
		3.17638  1190  0
		3.11428  893  0
		3.38934  896  0
		3.55642  1133  0
		3.65331  830  0
		3.62849  1094  0
		];

		
Experiment 25: 
		inputs.exp_data{25}=[
		0  0  0
		1.95904  166  0
		2.40824  144  0
		1.95904  74  0
		2.20683  80  0
		1.64836  85  0
		1.41497  63  0
		];

		
Experiment 26: 
		inputs.exp_data{26}=[
		0  0  0
		0  101  0
		0  100  0
		1.13033  103  0
		1.16137  91  0
		1.90849  163  0
		1.27875  108  0
		];

		
Experiment 27: 
		inputs.exp_data{27}=[
		0  0  0
		4.87507  960  1.97081
		4.67211  2204  1.72154
		4.69461  691  1.72835
		4.66746  852  1.76716
		4.92942  1245  1.88081
		4.97544  1094  1.88081
		];

		
Experiment 28: 
		inputs.exp_data{28}=[
		0  0  0
		3.26741  3000  1.4624
		3.16167  3332  1.5966
		3.17638  4008  1.40654
		3.24329  4600  1.59106
		3.20439  5428  1.34242
		3.29026  5456  1.33244
		];

		
Experiment 29: 
		inputs.exp_data{29}=[
		0  0  0
		2.87852  4502.5  0
		2.80686  3847.5  0
		3.56832  5200  0
		3.65331  5862.5  0
		3.47727  5957.5  0
		3.46255  6267.5  0
		];

		
Experiment 30: 
		inputs.exp_data{30}=[
		0  0  0
		3.29026  1715  0
		3.49845  3500  0
		3.78895  4872.5  0
		3.65811  5642.5  0
		3.79941  5777.5  0
		3.92947  3992.5  0
		];

		
Experiment 31: 
		inputs.exp_data{31}=[
		0  0  0
		0  284  0
		0  380  0
		0  608  0
		0  971  0
		0  979  0
		0  1076  0
		];

		
Experiment 32: 
		inputs.exp_data{32}=[
		0  0  0
		0  419  0
		0  479  0
		0  651  0
		0  835  0
		0  975  0
		0  1122  0
		];

		
Experiment 33: 
		inputs.exp_data{33}=[
		0  0  0
		1.0607  108  0
		1.16137  340  0
		1.13033  331  0
		2.46389  425  0
		2.72099  409  0
		2.90634  641  0
		];

		
Experiment 34: 
		inputs.exp_data{34}=[
		0  0  0
		4.5119  225  0
		4.80957  320  0
		3.21775  408  0
		4.48431  392  0
		3.31197  488  0
		3.40671  654  0
		];

		
Experiment 35: 
		inputs.exp_data{35}=[
		0  0  0
		0  322  0
		1.19033  386  0
		1.04139  373  0
		0.477121  378  0
		0.778151  299  0
		1.0607  172  0
		];

		
Experiment 36: 
		inputs.exp_data{36}=[
		0  0  0
		2.63448  385.5  0
		2.61384  409  0
		2.69984  500  0
		2.58092  354  0
		2.68215  360  0
		2.65418  833  0
		];

		
Experiment 37: 
		inputs.exp_data{37}=[
		0  0  0
		0  701  0
		0  792  0
		0  762  0
		0  774  0
		0  862  0
		0  898  0
		];

		
Experiment 38: 
		inputs.exp_data{38}=[
		0  0  0
		0  559  0
		0  643  0
		0  741  0
		0  669  0
		0  580  0
		0  511  0
		];

		
Experiment 39: 
		inputs.exp_data{39}=[
		0  0  0
		1.59106  361  0
		1.55023  719  0
		1.716  883  0
		1.63849  1103  0
		1.53148  1091  0
		1.44716  749  0
		];

		
Experiment 40: 
		inputs.exp_data{40}=[
		0  0  0
		3.25551  1461  0
		3.27898  1523  0
		3.21775  1627  0
		3.20439  1639  0
		3.31197  1806  0
		3.31197  2092  0
		];

		
Experiment 41: 
		inputs.exp_data{41}=[
		0  0  0
		1.98677  315  0
		1.90849  555  0
		1.96848  554  0
		1.91908  651  0
		1.79239  773.5  0
		1.75587  735  0
		];

		
Experiment 42: 
		inputs.exp_data{42}=[
		0  0  0
		2.42488  1247  0
		2.10037  1381  0
		2.55145  1551  0
		2.42488  1611  0
		2.25768  1728  0
		2.62941  2100  0
		];

		
Experiment 43: 
		inputs.exp_data{43}=[
		0  0  0
		2.6637  37.5  0
		3.46255  27.5  0
		3.59118  26  0
		3.42341  31.5  0
		3.14644  29  0
		3.62849  42  0
		];

		
Experiment 44: 
		inputs.exp_data{44}=[
		0  0  0
		3.71609  8.7  0
		3.455  10.15  0
		3.30125  8.4  0
		4.2553  8.9  0
		4.80619  11  0
		4.84199  5.1  0
		];

		
Experiment 45: 
		inputs.exp_data{45}=[
		0  0  0
		4.91382  297.5  0
		4.63348  197.5  0
		4.99564  127.5  0
		3.30125  135  0
		3.52517  155  0
		4.6385  190  0
		];

		
Experiment 46: 
		inputs.exp_data{46}=[
		0  0  0
		2.42488  137  0
		2.32428  286  0
		2.60853  154  0
		1.98227  91  0
		2.42488  170  0
		2.38202  226  0
		];

		
Experiment 47: 
		inputs.exp_data{47}=[
		0  0  0
		2.29226  60  0
		2.20683  45  0
		2.37291  130  0
		2.25768  216  0
		2.36361  191  0
		2.31387  235  0
		];

		
Experiment 48: 
		inputs.exp_data{48}=[
		0  0  0
		2.51983  107  0
		2.28103  152  0
		2.31387  353  0
		2.39094  675  0
		2.35411  155  0
		2.22011  293  0
		];

		
Experiment 49: 
		inputs.exp_data{49}=[
		0  0  0
		3.39811  284  0.544068
		3.90314  801.5  0
		4.24306  1169.5  2.01494
		2.69984  912.5  0
		3.39811  1827  0.69897
		4.49138  2903.5  2.14922
		];

		
Experiment 50: 
		inputs.exp_data{50}=[
		0  0  0
		0  337  0
		0  709  0
		0  890  0
		3.00043  1051  0
		2.69984  1829  0
		3.69906  2248.5  0
		];

		
Experiment 51: 
		inputs.exp_data{51}=[
		0  253.25  2.16435
		0  587.25  1.85126
		0  1052.5  2.58659
		0  1025  0
		0  1300  2.32428
		0  1600  0
		];

		
Experiment 52: 
		inputs.exp_data{52}=[
		0  191.75  0.30103
		0  538.75  1.75587
		0  588.5  0.39794
		0  140.5  0.30103
		0  405  0
		0  581.5  0
		];

		
Experiment 53: 
		inputs.exp_data{53}=[
		0  0  0
		3.00043  1755  1.20412
		2.69984  2875  1.66276
		0  2810  2.50651
		2.69984  3295  1.78533
		0  3415  0.778151
		0  4600  1.20412
		];

		
Experiment 54: 
		inputs.exp_data{54}=[
		0  2885  0
		0  3225  0.778151
		0  3210  1.41497
		0  3135  2.56348
		2.39967  2815  2.3032
		0  2175  1.20412
		];


-->Noise type:homo_var

		Error data 1: 
		inputs.exps.error_data{1}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 2: 
		inputs.exps.error_data{2}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 3: 
		inputs.exps.error_data{3}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 4: 
		inputs.exps.error_data{4}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 5: 
		inputs.exps.error_data{5}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 6: 
		inputs.exps.error_data{6}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 7: 
		inputs.exps.error_data{7}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 8: 
		inputs.exps.error_data{8}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 9: 
		inputs.exps.error_data{9}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 10: 
		inputs.exps.error_data{10}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 11: 
		inputs.exps.error_data{11}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 12: 
		inputs.exps.error_data{12}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 13: 
		inputs.exps.error_data{13}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 14: 
		inputs.exps.error_data{14}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 15: 
		inputs.exps.error_data{15}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 16: 
		inputs.exps.error_data{16}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 17: 
		inputs.exps.error_data{17}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 18: 
		inputs.exps.error_data{18}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 19: 
		inputs.exps.error_data{19}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 20: 
		inputs.exps.error_data{20}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 21: 
		inputs.exps.error_data{21}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 22: 
		inputs.exps.error_data{22}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 23: 
		inputs.exps.error_data{23}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 24: 
		inputs.exps.error_data{24}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 25: 
		inputs.exps.error_data{25}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 26: 
		inputs.exps.error_data{26}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 27: 
		inputs.exps.error_data{27}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 28: 
		inputs.exps.error_data{28}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 29: 
		inputs.exps.error_data{29}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 30: 
		inputs.exps.error_data{30}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 31: 
		inputs.exps.error_data{31}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 32: 
		inputs.exps.error_data{32}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 33: 
		inputs.exps.error_data{33}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 34: 
		inputs.exps.error_data{34}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 35: 
		inputs.exps.error_data{35}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 36: 
		inputs.exps.error_data{36}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 37: 
		inputs.exps.error_data{37}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 38: 
		inputs.exps.error_data{38}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 39: 
		inputs.exps.error_data{39}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 40: 
		inputs.exps.error_data{40}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 41: 
		inputs.exps.error_data{41}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 42: 
		inputs.exps.error_data{42}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 43: 
		inputs.exps.error_data{43}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 44: 
		inputs.exps.error_data{44}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 45: 
		inputs.exps.error_data{45}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 46: 
		inputs.exps.error_data{46}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 47: 
		inputs.exps.error_data{47}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 48: 
		inputs.exps.error_data{48}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 49: 
		inputs.exps.error_data{49}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 50: 
		inputs.exps.error_data{50}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 51: 
		inputs.exps.error_data{51}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 52: 
		inputs.exps.error_data{52}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 53: 
		inputs.exps.error_data{53}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];


		Error data 54: 
		inputs.exps.error_data{54}=[
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		0.5  10  0.5
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 17.001652 %	 max error: 46.153697 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 2 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 4.096309 %	 max error: 17.912130 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 3 : 
		 Observable 1 --> mean error: 14.316968 %	 max error: 33.265968 %
		 Observable 2 --> mean error: 8.194301 %	 max error: 34.018903 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 4 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 26.147171 %	 max error: 75.358185 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 5 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 57.348533 %	 max error: 167.528122 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 6 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 15.888609 %	 max error: 50.251860 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 7 : 
		 Observable 1 --> mean error: 10.400177 %	 max error: 33.659846 %
		 Observable 2 --> mean error: 30.940968 %	 max error: 106.079713 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 8 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 109.601229 %	 max error: 539.965176 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 9 : 
		 Observable 1 --> mean error: 9.742909 %	 max error: 22.314431 %
		 Observable 2 --> mean error: 17.396027 %	 max error: 33.983881 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 10 : 
		 Observable 1 --> mean error: 14.162376 %	 max error: 31.711826 %
		 Observable 2 --> mean error: 52.339331 %	 max error: 214.229351 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 11 : 
		 Observable 1 --> mean error: 10.639354 %	 max error: 21.701387 %
		 Observable 2 --> mean error: Inf %	 max error: Inf %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 12 : 
		 Observable 1 --> mean error: 9.926424 %	 max error: 22.467714 %
		 Observable 2 --> mean error: 11.933818 %	 max error: 31.823361 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 13 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 31.642080 %	 max error: 71.004986 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 14 : 
		 Observable 1 --> mean error: 4.911368 %	 max error: 15.571840 %
		 Observable 2 --> mean error: 20.273724 %	 max error: 45.240186 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 15 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 13.998333 %	 max error: 26.554680 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 16 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 50.403071 %	 max error: 157.527548 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 17 : 
		 Observable 1 --> mean error: 12.855474 %	 max error: 27.516917 %
		 Observable 2 --> mean error: 9.255499 %	 max error: 29.347995 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 18 : 
		 Observable 1 --> mean error: 14.463107 %	 max error: 46.053386 %
		 Observable 2 --> mean error: 10.382131 %	 max error: 42.506521 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 19 : 
		 Observable 1 --> mean error: 16.264365 %	 max error: 69.051798 %
		 Observable 2 --> mean error: 13.273114 %	 max error: 27.715960 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 20 : 
		 Observable 1 --> mean error: 20.207284 %	 max error: 90.747590 %
		 Observable 2 --> mean error: 24.215272 %	 max error: 78.713825 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 21 : 
		 Observable 1 --> mean error: 4.848777 %	 max error: 8.088630 %
		 Observable 2 --> mean error: 13.274960 %	 max error: 36.220337 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 22 : 
		 Observable 1 --> mean error: 2.018026 %	 max error: 4.022120 %
		 Observable 2 --> mean error: 18.293926 %	 max error: 53.729305 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 23 : 
		 Observable 1 --> mean error: 7.114155 %	 max error: 18.521737 %
		 Observable 2 --> mean error: 56.986632 %	 max error: 121.691651 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 24 : 
		 Observable 1 --> mean error: 2.515648 %	 max error: 8.726241 %
		 Observable 2 --> mean error: 23.828673 %	 max error: 56.522524 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 25 : 
		 Observable 1 --> mean error: 10.202146 %	 max error: 20.303571 %
		 Observable 2 --> mean error: 38.316827 %	 max error: 93.556241 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 26 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 22.206633 %	 max error: 50.194843 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 27 : 
		 Observable 1 --> mean error: 10.751275 %	 max error: 19.769565 %
		 Observable 2 --> mean error: 28.159855 %	 max error: 58.803396 %
		 Observable 3 --> mean error: 18.613333 %	 max error: 52.964184 %

		Experiment 28 : 
		 Observable 1 --> mean error: 11.182445 %	 max error: 31.884782 %
		 Observable 2 --> mean error: 5.411225 %	 max error: 12.773700 %
		 Observable 3 --> mean error: 39.314379 %	 max error: 90.350906 %

		Experiment 29 : 
		 Observable 1 --> mean error: 10.613934 %	 max error: 18.716990 %
		 Observable 2 --> mean error: 13.022515 %	 max error: 45.754784 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 30 : 
		 Observable 1 --> mean error: 14.053546 %	 max error: 28.311691 %
		 Observable 2 --> mean error: 31.370753 %	 max error: 130.056792 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 31 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 23.838902 %	 max error: 59.674638 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 32 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 10.891086 %	 max error: 30.680365 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 33 : 
		 Observable 1 --> mean error: 35.517128 %	 max error: 76.292312 %
		 Observable 2 --> mean error: 10.741884 %	 max error: 35.148484 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 34 : 
		 Observable 1 --> mean error: 17.703611 %	 max error: 46.369483 %
		 Observable 2 --> mean error: 21.746925 %	 max error: 55.767052 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 35 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 26.219709 %	 max error: 102.808388 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 36 : 
		 Observable 1 --> mean error: 4.972859 %	 max error: 8.918270 %
		 Observable 2 --> mean error: 19.853183 %	 max error: 42.025898 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 37 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 13.389984 %	 max error: 36.730633 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 38 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 9.865728 %	 max error: 24.355562 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 39 : 
		 Observable 1 --> mean error: 12.268563 %	 max error: 27.325185 %
		 Observable 2 --> mean error: 21.665187 %	 max error: 69.460884 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 40 : 
		 Observable 1 --> mean error: 11.522643 %	 max error: 29.019276 %
		 Observable 2 --> mean error: 6.029420 %	 max error: 17.769869 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 41 : 
		 Observable 1 --> mean error: 7.623759 %	 max error: 28.563988 %
		 Observable 2 --> mean error: 10.194599 %	 max error: 42.195977 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 42 : 
		 Observable 1 --> mean error: 22.534326 %	 max error: 90.934505 %
		 Observable 2 --> mean error: 4.100277 %	 max error: 7.969913 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 43 : 
		 Observable 1 --> mean error: 8.439556 %	 max error: 17.294768 %
		 Observable 2 --> mean error: 13.671703 %	 max error: 38.210024 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 44 : 
		 Observable 1 --> mean error: 11.629930 %	 max error: 20.529867 %
		 Observable 2 --> mean error: 31.926400 %	 max error: 147.452658 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 45 : 
		 Observable 1 --> mean error: 13.922758 %	 max error: 27.339885 %
		 Observable 2 --> mean error: 21.427943 %	 max error: 42.667067 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 46 : 
		 Observable 1 --> mean error: 7.405962 %	 max error: 22.937763 %
		 Observable 2 --> mean error: 28.421852 %	 max error: 95.522476 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 47 : 
		 Observable 1 --> mean error: 3.707955 %	 max error: 8.260703 %
		 Observable 2 --> mean error: 59.653761 %	 max error: 206.090354 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 48 : 
		 Observable 1 --> mean error: 1.693757 %	 max error: 4.424739 %
		 Observable 2 --> mean error: 57.809403 %	 max error: 137.497554 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 49 : 
		 Observable 1 --> mean error: 11.938606 %	 max error: 30.974760 %
		 Observable 2 --> mean error: 36.298758 %	 max error: 130.969711 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 50 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 24.606892 %	 max error: 60.886552 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 51 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 9.330803 %	 max error: 18.398533 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 52 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 55.165453 %	 max error: 217.980930 %
		 Observable 3 --> mean error: Inf %	 max error: Inf %

		Experiment 53 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 23.786899 %	 max error: 86.492328 %
		 Observable 3 --> mean error: 33.491135 %	 max error: 99.279383 %

		Experiment 54 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 10.467731 %	 max error: 27.279502 %
		 Observable 3 --> mean error: 34.476853 %	 max error: 75.639699 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 2.170791 max data: 3.740442
		 Observable 2 -->  max residual: 24.692228 max data: 100.000000
		 Observable 3 -->  max residual: 0.012994 max data: 0.000000

		Experiment 2 : 
		 Observable 1 -->  max residual: 1.948775 max data: 3.544192
		 Observable 2 -->  max residual: 31.525349 max data: 214.500000
		 Observable 3 -->  max residual: 0.293822 max data: 1.397940

		Experiment 3 : 
		 Observable 1 -->  max residual: 1.213260 max data: 4.685751
		 Observable 2 -->  max residual: 10.715954 max data: 66.500000
		 Observable 3 -->  max residual: 1.175005 max data: 2.064458

		Experiment 4 : 
		 Observable 1 -->  max residual: 2.642352 max data: 4.041432
		 Observable 2 -->  max residual: 29.678390 max data: 128.000000
		 Observable 3 -->  max residual: 1.172967 max data: 1.477121

		Experiment 5 : 
		 Observable 1 -->  max residual: 2.522046 max data: 3.544192
		 Observable 2 -->  max residual: 114.756763 max data: 328.500000
		 Observable 3 -->  max residual: 0.146109 max data: 0.397940

		Experiment 6 : 
		 Observable 1 -->  max residual: 3.166915 max data: 5.685743
		 Observable 2 -->  max residual: 33.705973 max data: 195.500000
		 Observable 3 -->  max residual: 0.683337 max data: 3.226858

		Experiment 7 : 
		 Observable 1 -->  max residual: 0.960510 max data: 4.728362
		 Observable 2 -->  max residual: 70.432897 max data: 140.500000
		 Observable 3 -->  max residual: 1.691456 max data: 2.613313

		Experiment 8 : 
		 Observable 1 -->  max residual: 2.772581 max data: 3.929470
		 Observable 2 -->  max residual: 126.205050 max data: 219.000000
		 Observable 3 -->  max residual: 0.717067 max data: 1.537819

		Experiment 9 : 
		 Observable 1 -->  max residual: 0.669530 max data: 4.161398
		 Observable 2 -->  max residual: 134.576167 max data: 629.500000
		 Observable 3 -->  max residual: 0.212457 max data: 0.000000

		Experiment 10 : 
		 Observable 1 -->  max residual: 1.594266 max data: 5.027354
		 Observable 2 -->  max residual: 122.573227 max data: 522.500000
		 Observable 3 -->  max residual: 0.351894 max data: 0.301030

		Experiment 11 : 
		 Observable 1 -->  max residual: 1.098651 max data: 5.062586
		 Observable 2 -->  max residual: 49.511379 max data: 88.500000
		 Observable 3 -->  max residual: 0.135038 max data: 0.000000

		Experiment 12 : 
		 Observable 1 -->  max residual: 1.139122 max data: 5.070042
		 Observable 2 -->  max residual: 33.190208 max data: 178.500000
		 Observable 3 -->  max residual: 0.733090 max data: 1.332438

		Experiment 13 : 
		 Observable 1 -->  max residual: 2.284191 max data: 3.544192
		 Observable 2 -->  max residual: 118.223302 max data: 254.000000
		 Observable 3 -->  max residual: 1.157288 max data: 1.511883

		Experiment 14 : 
		 Observable 1 -->  max residual: 0.560924 max data: 3.602169
		 Observable 2 -->  max residual: 73.985923 max data: 303.500000
		 Observable 3 -->  max residual: 0.121285 max data: 0.176091

		Experiment 15 : 
		 Observable 1 -->  max residual: 1.993073 max data: 3.176381
		 Observable 2 -->  max residual: 44.213542 max data: 286.500000
		 Observable 3 -->  max residual: 0.223947 max data: 0.544068

		Experiment 16 : 
		 Observable 1 -->  max residual: 0.116132 max data: 0.000000
		 Observable 2 -->  max residual: 93.930998 max data: 265.000000
		 Observable 3 -->  max residual: 0.002849 max data: 0.000000

		Experiment 17 : 
		 Observable 1 -->  max residual: 0.978423 max data: 5.740363
		 Observable 2 -->  max residual: 39.358900 max data: 401.000000
		 Observable 3 -->  max residual: 0.185460 max data: 0.000000

		Experiment 18 : 
		 Observable 1 -->  max residual: 1.809654 max data: 5.476398
		 Observable 2 -->  max residual: 38.680934 max data: 395.000000
		 Observable 3 -->  max residual: 0.080041 max data: 0.000000

		Experiment 19 : 
		 Observable 1 -->  max residual: 2.286972 max data: 6.866287
		 Observable 2 -->  max residual: 147.171745 max data: 1002.500000
		 Observable 3 -->  max residual: 0.103013 max data: 0.000000

		Experiment 20 : 
		 Observable 1 -->  max residual: 3.328210 max data: 8.086360
		 Observable 2 -->  max residual: 838.759100 max data: 2997.500000
		 Observable 3 -->  max residual: 0.071286 max data: 0.000000

		Experiment 21 : 
		 Observable 1 -->  max residual: 0.364951 max data: 4.755882
		 Observable 2 -->  max residual: 777.288434 max data: 2474.000000
		 Observable 3 -->  max residual: 0.118224 max data: 0.000000

		Experiment 22 : 
		 Observable 1 -->  max residual: 0.239156 max data: 5.963788
		 Observable 2 -->  max residual: 852.146769 max data: 2232.000000
		 Observable 3 -->  max residual: 0.105736 max data: 0.000000

		Experiment 23 : 
		 Observable 1 -->  max residual: 0.752119 max data: 4.146159
		 Observable 2 -->  max residual: 184.673696 max data: 319.000000
		 Observable 3 -->  max residual: 0.269682 max data: 0.000000

		Experiment 24 : 
		 Observable 1 -->  max residual: 0.271759 max data: 3.653309
		 Observable 2 -->  max residual: 672.618039 max data: 1190.000000
		 Observable 3 -->  max residual: 0.066344 max data: 0.000000

		Experiment 25 : 
		 Observable 1 -->  max residual: 0.471451 max data: 2.408240
		 Observable 2 -->  max residual: 155.303360 max data: 166.000000
		 Observable 3 -->  max residual: 0.009891 max data: 0.000000

		Experiment 26 : 
		 Observable 1 -->  max residual: 1.003967 max data: 1.908485
		 Observable 2 -->  max residual: 54.210430 max data: 163.000000
		 Observable 3 -->  max residual: 0.031797 max data: 0.000000

		Experiment 27 : 
		 Observable 1 -->  max residual: 0.922737 max data: 4.975436
		 Observable 2 -->  max residual: 1227.665488 max data: 2204.000000
		 Observable 3 -->  max residual: 1.043824 max data: 1.970812

		Experiment 28 : 
		 Observable 1 -->  max residual: 1.041805 max data: 3.290257
		 Observable 2 -->  max residual: 460.882413 max data: 5456.000000
		 Observable 3 -->  max residual: 1.321290 max data: 1.596597

		Experiment 29 : 
		 Observable 1 -->  max residual: 0.650840 max data: 3.653309
		 Observable 2 -->  max residual: 2060.109164 max data: 6267.500000
		 Observable 3 -->  max residual: 0.155615 max data: 0.000000

		Experiment 30 : 
		 Observable 1 -->  max residual: 0.931527 max data: 3.929470
		 Observable 2 -->  max residual: 2230.473980 max data: 5777.500000
		 Observable 3 -->  max residual: 0.025763 max data: 0.000000

		Experiment 31 : 
		 Observable 1 -->  max residual: 0.100649 max data: 0.000000
		 Observable 2 -->  max residual: 226.763625 max data: 1076.000000
		 Observable 3 -->  max residual: 0.002169 max data: 0.000000

		Experiment 32 : 
		 Observable 1 -->  max residual: 0.028477 max data: 0.000000
		 Observable 2 -->  max residual: 146.958951 max data: 1122.000000
		 Observable 3 -->  max residual: 0.014533 max data: 0.000000

		Experiment 33 : 
		 Observable 1 -->  max residual: 0.901853 max data: 2.906335
		 Observable 2 -->  max residual: 119.504847 max data: 641.000000
		 Observable 3 -->  max residual: 0.058868 max data: 0.000000

		Experiment 34 : 
		 Observable 1 -->  max residual: 1.492053 max data: 4.809566
		 Observable 2 -->  max residual: 125.864744 max data: 654.000000
		 Observable 3 -->  max residual: 0.029090 max data: 0.000000

		Experiment 35 : 
		 Observable 1 -->  max residual: 0.754162 max data: 1.190332
		 Observable 2 -->  max residual: 176.830427 max data: 386.000000
		 Observable 3 -->  max residual: 0.119850 max data: 0.000000

		Experiment 36 : 
		 Observable 1 -->  max residual: 0.234950 max data: 2.699838
		 Observable 2 -->  max residual: 305.013172 max data: 833.000000
		 Observable 3 -->  max residual: 0.161257 max data: 0.000000

		Experiment 37 : 
		 Observable 1 -->  max residual: 0.057416 max data: 0.000000
		 Observable 2 -->  max residual: 257.481741 max data: 898.000000
		 Observable 3 -->  max residual: 0.137781 max data: 0.000000

		Experiment 38 : 
		 Observable 1 -->  max residual: 0.029741 max data: 0.000000
		 Observable 2 -->  max residual: 127.588450 max data: 741.000000
		 Observable 3 -->  max residual: 0.001188 max data: 0.000000

		Experiment 39 : 
		 Observable 1 -->  max residual: 0.447720 max data: 1.716003
		 Observable 2 -->  max residual: 268.666451 max data: 1103.000000
		 Observable 3 -->  max residual: 0.114034 max data: 0.000000

		Experiment 40 : 
		 Observable 1 -->  max residual: 0.961108 max data: 3.311966
		 Observable 2 -->  max residual: 259.617783 max data: 2092.000000
		 Observable 3 -->  max residual: 0.601103 max data: 0.000000

		Experiment 41 : 
		 Observable 1 -->  max residual: 0.548165 max data: 1.986772
		 Observable 2 -->  max residual: 132.917329 max data: 773.500000
		 Observable 3 -->  max residual: 0.003978 max data: 0.000000

		Experiment 42 : 
		 Observable 1 -->  max residual: 1.909962 max data: 2.629410
		 Observable 2 -->  max residual: 133.016343 max data: 2100.000000
		 Observable 3 -->  max residual: 0.217664 max data: 0.000000

		Experiment 43 : 
		 Observable 1 -->  max residual: 0.598840 max data: 3.628491
		 Observable 2 -->  max residual: 14.328759 max data: 42.000000
		 Observable 3 -->  max residual: 0.001131 max data: 0.000000

		Experiment 44 : 
		 Observable 1 -->  max residual: 0.994054 max data: 4.841991
		 Observable 2 -->  max residual: 7.520086 max data: 11.000000
		 Observable 3 -->  max residual: 0.000092 max data: 0.000000

		Experiment 45 : 
		 Observable 1 -->  max residual: 0.902557 max data: 4.995640
		 Observable 2 -->  max residual: 120.883228 max data: 297.500000
		 Observable 3 -->  max residual: 0.248440 max data: 0.000000

		Experiment 46 : 
		 Observable 1 -->  max residual: 0.454689 max data: 2.608526
		 Observable 2 -->  max residual: 112.707496 max data: 286.000000
		 Observable 3 -->  max residual: 0.165082 max data: 0.000000

		Experiment 47 : 
		 Observable 1 -->  max residual: 0.195251 max data: 2.372912
		 Observable 2 -->  max residual: 92.740659 max data: 235.000000
		 Observable 3 -->  max residual: 0.027249 max data: 0.000000

		Experiment 48 : 
		 Observable 1 -->  max residual: 0.098234 max data: 2.519828
		 Observable 2 -->  max residual: 371.813919 max data: 675.000000
		 Observable 3 -->  max residual: 0.000033 max data: 0.000000

		Experiment 49 : 
		 Observable 1 -->  max residual: 0.836268 max data: 4.491376
		 Observable 2 -->  max residual: 723.779132 max data: 2903.500000
		 Observable 3 -->  max residual: 1.868062 max data: 2.149219

		Experiment 50 : 
		 Observable 1 -->  max residual: 1.570980 max data: 3.699057
		 Observable 2 -->  max residual: 418.558307 max data: 2248.500000
		 Observable 3 -->  max residual: 0.021925 max data: 0.000000

		Experiment 51 : 
		 Observable 1 -->  max residual: 0.013269 max data: 0.000000
		 Observable 2 -->  max residual: 171.477501 max data: 1600.000000
		 Observable 3 -->  max residual: 2.110135 max data: 2.586587

		Experiment 52 : 
		 Observable 1 -->  max residual: 0.112968 max data: 0.000000
		 Observable 2 -->  max residual: 306.263206 max data: 588.500000
		 Observable 3 -->  max residual: 1.710912 max data: 1.755875

		Experiment 53 : 
		 Observable 1 -->  max residual: 1.965514 max data: 3.000434
		 Observable 2 -->  max residual: 1517.940351 max data: 4600.000000
		 Observable 3 -->  max residual: 1.092149 max data: 2.506505

		Experiment 54 : 
		 Observable 1 -->  max residual: 2.342695 max data: 2.399674
		 Observable 2 -->  max residual: 593.329175 max data: 3225.000000
		 Observable 3 -->  max residual: 1.528039 max data: 2.563481

--------------------------------------------------------------------------	   

>>>> Best objective function: 308247.480820 
	   

>>>> Computational cost: 145.426832 s
> 100.00% of successful simulationn
> 50.00% of successful sensitivity calculations


>>> Estimated global parameters: 

	alpha  : 7.6628e+00  
	alphaL : 5.3243e+00  


>>> Estimated local parameters: 

	Experiment 1, K_X    : 8.5616e+06
	Experiment 1, K_COD  : 3.0961e+01
	Experiment 1, K_XL   : 3.2476e+02
	Experiment 1, Km     : 1.0000e+03
	Experiment 2, K_X    : 2.8351e+06
	Experiment 2, K_COD  : 1.6972e+02
	Experiment 2, K_XL   : 6.2497e+03
	Experiment 2, Km     : 1.0000e+03
	Experiment 3, K_X    : 7.9718e+08
	Experiment 3, K_COD  : 6.3740e+01
	Experiment 3, K_XL   : 9.4420e+05
	Experiment 3, Km     : 1.0000e+03
	Experiment 4, K_X    : 6.6930e+07
	Experiment 4, K_COD  : 4.3381e+01
	Experiment 4, K_XL   : 1.3172e+05
	Experiment 4, Km     : 1.0000e+03
	Experiment 5, K_X    : 4.4615e+07
	Experiment 5, K_COD  : 1.1557e+02
	Experiment 5, K_XL   : 7.8472e+04
	Experiment 5, Km     : 1.0000e+03
	Experiment 6, K_X    : 1.6274e+09
	Experiment 6, K_COD  : 1.8508e+02
	Experiment 6, K_XL   : 8.9100e+05
	Experiment 6, Km     : 1.0000e+03
	Experiment 7, K_X    : 2.9619e+07
	Experiment 7, K_COD  : 7.7455e+00
	Experiment 7, K_XL   : 9.8160e+04
	Experiment 7, Km     : 1.0000e+03
	Experiment 8, K_X    : 2.7020e+06
	Experiment 8, K_COD  : 2.3309e+01
	Experiment 8, K_XL   : 1.3378e+04
	Experiment 8, Km     : 1.0000e+03
	Experiment 9, K_X    : 3.3988e+08
	Experiment 9, K_COD  : 2.6660e+02
	Experiment 9, K_XL   : 1.5985e+04
	Experiment 9, Km     : 1.0000e+03
	Experiment 10, K_X    : 4.2219e+08
	Experiment 10, K_COD  : 1.7280e+02
	Experiment 10, K_XL   : 9.0456e+04
	Experiment 10, Km     : 1.0000e+03
	Experiment 11, K_X    : 3.2921e+08
	Experiment 11, K_COD  : 1.3078e+01
	Experiment 11, K_XL   : 9.0662e+03
	Experiment 11, Km     : 1.0000e+03
	Experiment 12, K_X    : 3.5315e+08
	Experiment 12, K_COD  : 3.2270e+01
	Experiment 12, K_XL   : 4.0369e+04
	Experiment 12, Km     : 1.0000e+03
	Experiment 13, K_X    : 1.4048e+07
	Experiment 13, K_COD  : 3.5284e+02
	Experiment 13, K_XL   : 7.1663e+05
	Experiment 13, Km     : 1.0000e+03
	Experiment 14, K_X    : 9.3927e+08
	Experiment 14, K_COD  : 5.3427e+02
	Experiment 14, K_XL   : 1.1162e+05
	Experiment 14, Km     : 1.0000e+03
	Experiment 15, K_X    : 3.1682e+07
	Experiment 15, K_COD  : 8.9911e+01
	Experiment 15, K_XL   : 2.3023e+05
	Experiment 15, Km     : 1.0000e+03
	Experiment 16, K_X    : 1.3299e+05
	Experiment 16, K_COD  : 5.8783e+01
	Experiment 16, K_XL   : 1.9841e+03
	Experiment 16, Km     : 1.0000e+03
	Experiment 17, K_X    : 3.7961e+07
	Experiment 17, K_COD  : 4.0599e+01
	Experiment 17, K_XL   : 6.2688e+01
	Experiment 17, Km     : 1.0000e+03
	Experiment 18, K_X    : 1.3790e+08
	Experiment 18, K_COD  : 4.3280e+01
	Experiment 18, K_XL   : 3.8903e+01
	Experiment 18, Km     : 1.0000e+03
	Experiment 19, K_X    : 3.9932e+08
	Experiment 19, K_COD  : 4.9712e+01
	Experiment 19, K_XL   : 1.0633e+02
	Experiment 19, Km     : 1.0000e+03
	Experiment 20, K_X    : 5.0333e+09
	Experiment 20, K_COD  : 8.7552e+01
	Experiment 20, K_XL   : 3.8792e+01
	Experiment 20, Km     : 1.0000e+03
	Experiment 21, K_X    : 2.2215e+10
	Experiment 21, K_COD  : 4.3004e+02
	Experiment 21, K_XL   : 5.2746e+04
	Experiment 21, Km     : 1.0000e+03
	Experiment 22, K_X    : 9.7139e+10
	Experiment 22, K_COD  : 3.1076e+02
	Experiment 22, K_XL   : 3.4535e+04
	Experiment 22, Km     : 1.0000e+03
	Experiment 23, K_X    : 1.0508e+08
	Experiment 23, K_COD  : 4.5175e+01
	Experiment 23, K_XL   : 1.0097e+03
	Experiment 23, Km     : 1.0000e+03
	Experiment 24, K_X    : 7.4675e+07
	Experiment 24, K_COD  : 1.8274e+02
	Experiment 24, K_XL   : 1.4723e+03
	Experiment 24, Km     : 1.0000e+03
	Experiment 25, K_X    : 3.3234e+06
	Experiment 25, K_COD  : 2.0754e+01
	Experiment 25, K_XL   : 6.2247e+02
	Experiment 25, Km     : 1.0000e+03
	Experiment 26, K_X    : 4.5370e+05
	Experiment 26, K_COD  : 2.0903e+01
	Experiment 26, K_XL   : 2.8623e+03
	Experiment 26, Km     : 1.0000e+03
	Experiment 27, K_X    : 6.7354e+09
	Experiment 27, K_COD  : 6.1559e+02
	Experiment 27, K_XL   : 1.0744e+06
	Experiment 27, Km     : 1.0000e+03
	Experiment 28, K_X    : 7.4569e+06
	Experiment 28, K_COD  : 2.5447e+03
	Experiment 28, K_XL   : 1.5552e+05
	Experiment 28, Km     : 1.0000e+03
	Experiment 29, K_X    : 8.6505e+08
	Experiment 29, K_COD  : 1.1147e+04
	Experiment 29, K_XL   : 1.9299e+04
	Experiment 29, Km     : 1.0000e+03
	Experiment 30, K_X    : 9.1711e+09
	Experiment 30, K_COD  : 1.0328e+04
	Experiment 30, K_XL   : 1.8247e+04
	Experiment 30, Km     : 1.0000e+03
	Experiment 31, K_X    : 5.4315e+05
	Experiment 31, K_COD  : 4.4032e+03
	Experiment 31, K_XL   : 7.2437e+03
	Experiment 31, Km     : 1.0000e+03
	Experiment 32, K_X    : 1.7058e+05
	Experiment 32, K_COD  : 3.7618e+03
	Experiment 32, K_XL   : 5.9515e+04
	Experiment 32, Km     : 1.0000e+03
	Experiment 33, K_X    : 9.1894e+06
	Experiment 33, K_COD  : 1.3911e+03
	Experiment 33, K_XL   : 9.2670e+03
	Experiment 33, Km     : 1.0000e+03
	Experiment 34, K_X    : 5.6098e+08
	Experiment 34, K_COD  : 1.3779e+03
	Experiment 34, K_XL   : 5.2692e+02
	Experiment 34, Km     : 1.0000e+03
	Experiment 35, K_X    : 1.3766e+07
	Experiment 35, K_COD  : 1.1694e+03
	Experiment 35, K_XL   : 5.2972e+05
	Experiment 35, Km     : 1.0000e+03
	Experiment 36, K_X    : 8.8257e+08
	Experiment 36, K_COD  : 7.3063e+02
	Experiment 36, K_XL   : 3.7294e+05
	Experiment 36, Km     : 1.0000e+03
	Experiment 37, K_X    : 5.1511e+03
	Experiment 37, K_COD  : 7.7317e+02
	Experiment 37, K_XL   : 9.5008e+03
	Experiment 37, Km     : 1.0000e+03
	Experiment 38, K_X    : 1.8967e+05
	Experiment 38, K_COD  : 1.8591e+03
	Experiment 38, K_XL   : 5.0922e+03
	Experiment 38, Km     : 1.0000e+03
	Experiment 39, K_X    : 4.0927e+06
	Experiment 39, K_COD  : 7.1527e+02
	Experiment 39, K_XL   : 6.4447e+03
	Experiment 39, Km     : 1.0000e+03
	Experiment 40, K_X    : 2.3268e+07
	Experiment 40, K_COD  : 7.5726e+02
	Experiment 40, K_XL   : 2.6147e+03
	Experiment 40, Km     : 1.0000e+03
	Experiment 41, K_X    : 4.3175e+07
	Experiment 41, K_COD  : 5.2372e+02
	Experiment 41, K_XL   : 9.4476e+02
	Experiment 41, Km     : 1.0000e+03
	Experiment 42, K_X    : 1.2730e+07
	Experiment 42, K_COD  : 7.2337e+02
	Experiment 42, K_XL   : 6.7450e+02
	Experiment 42, Km     : 1.0000e+03
	Experiment 43, K_X    : 1.8141e+09
	Experiment 43, K_COD  : 5.7240e+01
	Experiment 43, K_XL   : 1.7838e+03
	Experiment 43, Km     : 1.0000e+03
	Experiment 44, K_X    : 8.5603e+09
	Experiment 44, K_COD  : 1.6998e+01
	Experiment 44, K_XL   : 1.7891e+02
	Experiment 44, Km     : 1.0000e+03
	Experiment 45, K_X    : 1.0863e+10
	Experiment 45, K_COD  : 6.9367e+02
	Experiment 45, K_XL   : 3.2182e+05
	Experiment 45, Km     : 1.0000e+03
	Experiment 46, K_X    : 1.1713e+08
	Experiment 46, K_COD  : 5.7540e+02
	Experiment 46, K_XL   : 1.2558e+05
	Experiment 46, Km     : 1.0000e+03
	Experiment 47, K_X    : 1.5587e+08
	Experiment 47, K_COD  : 1.6820e+02
	Experiment 47, K_XL   : 2.5182e+04
	Experiment 47, Km     : 1.0000e+03
	Experiment 48, K_X    : 1.1720e+09
	Experiment 48, K_COD  : 1.5928e+03
	Experiment 48, K_XL   : 2.0579e+02
	Experiment 48, Km     : 1.0000e+03
	Experiment 49, K_X    : 1.1568e+10
	Experiment 49, K_COD  : 1.1600e+04
	Experiment 49, K_XL   : 7.4807e+05
	Experiment 49, Km     : 1.0000e+03
	Experiment 50, K_X    : 1.3527e+08
	Experiment 50, K_COD  : 8.0515e+03
	Experiment 50, K_XL   : 7.4977e+03
	Experiment 50, Km     : 1.0000e+03
	Experiment 51, K_X    : 9.4840e+03
	Experiment 51, K_COD  : 8.1484e+01
	Experiment 51, K_XL   : 1.1423e+06
	Experiment 51, Km     : 1.0000e+03
	Experiment 52, K_X    : 1.2777e+04
	Experiment 52, K_COD  : 2.0279e+01
	Experiment 52, K_XL   : 2.0317e+04
	Experiment 52, Km     : 1.0000e+03
	Experiment 53, K_X    : 2.9292e+06
	Experiment 53, K_COD  : 2.6188e+02
	Experiment 53, K_XL   : 9.5724e+05
	Experiment 53, Km     : 1.0000e+03
	Experiment 54, K_X    : 4.2493e+04
	Experiment 54, K_COD  : 1.3108e+02
	Experiment 54, K_XL   : 1.0443e+06
	Experiment 54, Km     : 1.0000e+03
