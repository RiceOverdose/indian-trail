' FreeBASIC port of Oregon Trail
' ------------------------------
'
' The program that follows is a reconstruction
' of the Oregon Trail game written for HP time-shared
' BASIC by Don Rawitsch and Bill Heinemann and Paul Dillenberger
' in 1971. Its source is an updated version published in the
' July-August 1978 issue of Creative Computing.
'

' START PAGE 1

10 REM PROGRAM NAME - 0REGON        VERSION:01/01/78
20 REM ORIGINAL PROGRAMMING BY BILL HEINEMANN - 1971
30 REM SUPP0RT RESEARCH AND MATERIALS BY DON RAVITSCH
40 REM MINNES0TA EDUCATIONAL COMPUTING CONSORTIUM STAFF
5O REM CDC CYBER 70/73-26 BASIC 3-1
60 REM DOCUMENTATION BOOKLET *0REQJN * AVAILABLE FROM
61 REM    MECC SUPPORT SERVICES
62 REM    2520 BROADWAY DRIVE
63 REM    ST. PAUL, MN  55113
80 REM
150 REM  =F0R THE MEANING OF THE VARIABLES USED, LIST LINES 6470-6790=
155 REM
160 PRINT "DO YOU NEED INSTRUCTIONS  (CYES/NO)";
170 DIM C5(5)
180 REM RANDOMIZE REMOVED
190 INPUT CS
200 IF CS="N0" THEN 690
210 PRINT
220 PRINT
230 REM •••INSTRUCTIONS***
240 PRINT "THIS PROGRAM SIMULATES A TRIP OVER THE OREGON TRAIL FROM"
250 PRINT "INDEPENDENCE, MISSOURI TO OREGON CITY, OREGON IN 1847."
260 PRINT "YOUR FAMILY OF FIVE WILL COVER THE 2040 MILE OREGON TRAIL"
270 PRINT "IN 5-6 MONTHS --- IF YOU MAKE IT ALIVE."
280 PRINT
290 PRINT "YOU HAD SAVED $900 TO SPEND FOR THE TRIP, AND YOU'VE JUST"
300 PRINT "   PAID $200 FOR A WAGON ."
310 PRINT "YOU WILL NEED TO SPEND THE REST OF YOUR MONEY ON THE"
320 PRINT "   FOLLOWING ITEMS:"
330 PRINT
340 PRINT "     OXEN - YOU CAN SPEND $200-$300 ON YOUR TEAM"
350 PRINT "            THE MORE YOU SPEND, THE FASTER YOU'LL GO"
360 PRINT "               BECAUSE YOU'LL HAVE BETTER ANIMALS"
370 PRINT
380 PRINT "     FOOD - THE MORE YOU HAVE, THE LESS CHANCE THERE"
390 PRINT "               IS OF GETTING SICK"
400 PRINT
410 PRINT "     AMMUNITION - 81 BUYS A BELT OF 50 BULLETS"
420 PRINT "            YOU WILL NEED BULLETS FOR ATTACKS BY ANIMALS"
430 PRINT "               AND BANDITS, AND FOR HUNTING FOOD"
440 PRINT
450 PRINT "     CLOTHING - THIS IS ESPECIALLY IMPORTANT FOR THE COLD"
460 PRINT "               WEATHER YOU WILL ENCOUNTER WHEN CROSSING"
470 PRINT "               THE MOUNTAINS"
480 PRINT
490 PRINT "     MISCELLANEOUS SUPPLIES - THIS INCLUDES MEDICINE AND"
500 PRINT "               OTHER THINGS YOU WILL NEED FOR SICKNESS"
510 PRINT "               AND EMERGENCY REPAIRS"
520 PRINT
530 PRINT
540 PRINT "YOU CAN SPEND ALL YOUR MONEY BEFORE YOU START YOUR TRIP -"
550 PRINT "OR YOU CAN SAVE SOME OF YOUR CASH TO SPEND AT FORTS ALONG"
560 PRINT "THE WAY WHEN YOU RUN LOW. H0WEVER, ITEMS COST MORE AT"
570 PRINT "THE FORTS. YOU CAN ALSO GO HUNTING ALONG THE WAY TO GET"
580 PRINT "MORE FOOD."
590 PRINT "WHENEVER YOU HAVE TO USE YOUR TRUSTY RIFLE ALONG THE WAY,"
600 PRINT "YOU WILL BE TOLD TO TYPE IN A WORD (ONE THAT SOUNDS LIKE A"
610 PRINT "GUN SHOT). THE FASTER YOU TYPE IN THAT WORD AND HIT THE"
620 PRINT """RETURN"" KEY, THE BETTER LUCK YOU'LL HAVE WITH YOUR GUN."
630 PRINT
640 PRINT "AT EACH TURN, ALL ITEMS ARE SHOWN IN DOLLAR AMOUNTS"
650 PRINT "EXCEPT BULLETS"
660 PRINT "WHEN ASKED TO ENTER MONEY AMOUNTS, DON'T USE A ""$""."
670 PRINT
680 PRINT "GOOD LUCK!!!"
690 PRINT
700 PRINT
710 PRINT "HOW GOOD A SHOT ARE YOU WITH YOUR RIFLE?"
720 PRINT "  (1) ACE MARKSMAN,  (2) GOOD SHOT,  (3) FAIR TO MIDDLIN'"
730 PRINT "         (4) NEED MORE PRACTICE,  (5) SHAKY KNEES"
740 PRINT "ENTER ONE OF THE ABOVE -- THE BETTER YOU CLAIM YOU ARE, THE"
750 PRINT "FASTER YOU'LL HAVE TO BE WITH YOUR GUN TO BE SUCCESSFUL."
760 INPUT D9
770 IF D9>5 THEN 790
760 G0T0 810
790 D9=0
800 REM *** INITIAL PURCHASES***
810 X1=-1
820 K8=S4=F1=F2=M=M9=D3=0
830 PRINT
840 PRINT
850 PRINT "HOW MUCH DO YOU WANT TO SPEND ON YOUR OXEN TEAM";
860 INPUT A
870 IF A >= 200 THEN 900
880 PRINT "NOT ENOUGH"
890 GOTO 850
900 IF A <= 300 THEN 930
910 PRINT "TOO MUCH"
920 GOTO 850
930 PRINT "HOW MUCH DO YOU WANT TO SPEND ON FOOD";
940 INPUT F
950 IF F >= 0 THEN 980
960 PRINT "IMPOSSIBLE"
970 GOTO 930
980 PRINT "HOW MUCH DO YOU WANT TO SPEND ON AMMUNITION";
990 INPUT B
1000 IF B >= 0 THEN 1030
1010 PRINT "IMPOSSIBLE"
1020 GOTO 980
1030 PRINT "HOW MUCH DO YOU WANT TO SPEND ON CLOTHING";
1040 INPUT C
1050 IF C >= 0 THEN 1080
1060 PRINT "IMPOSSIBLE"
1070 GOTO 1030
1080 PRINT "HOW MUCH DO YOU WANT TO SPEND ON MISCELLANEOUS SUPPLIES";
1090 INPUT M1
1100 IF M1 >= 0 THEN 1130
1110 PRINT "IMPOSSIBLE"
1120 GOTO 1080
1130 T=700-A-F-B-C-M1
1140 IF T >= 0 THEN 1170
1150 PRINT "YOU OVERSPENT--YOU ONLY HAD $700 TO SPEND.  BUY AGAIN."
1160 GOTO 830
1170 B=50*B
1180 PRINT "AFTER ALL YOUR PURCHASES, YOU NOW HAVE ";T;" DOLLARS LEFT"
1190 PRINT
1200 PRINT "MONDAY MARCH 29 1847"
1210 PRINT
1220 GOTO 1750
1230 IF M >= 2040 THEN 5430
1240 REM ***SETTING DATE***
1250 D3=D3+1
1260 PRINT
1270 PRINT "MONDAY ";
1280 IF D3>10 THEN 1300
1290 ON D3 GOTO 1310, 1330, 1350, 1370, 1390, 1410, 1430, 1450, 1470, 1490
1300 ON D3-10 GOTO 1510, 1530, 1550, 1570, 1590, 1610, 1630, 1650, 1670, 1690
1310 PRINT "APRIL 12 ";
1320 GOTO 1720
1330 PRINT "APRIL 26 ";
1340 GOTO 1720
1350 PRINT "MAY 10 ";
1360 GOTO 1720
1370 PRINT "MAY 24 ";
1380 GOTO 1720
1390 PRINT "JUNE 7 ";
1400 GOTO 1720
1410 PRINT "JUNE 21 ";
1420 GOTO 1720
1430 PRINT "JULY 5 ";
1440 GOTO 1720
1450 PRINT "JULY 19 ";
1460 GOTO 1720
1470 PRINT "AUGUST 2 ";
1480 GOTO 1720
1490 PRINT "AUGUST 16 ";
1500 GOTO 1720
1510 PRINT "AUGUST 31 ";
1520 GOTO 1720
1530 PRINT "SEPTEMBER 13 ";
1540 GOTO 1720
1550 PRINT "SEPTEMBER 27 ";
1560 GOTO 1720
1570 PRINT "OCTOBER 11 ";
1580 GOTO 1720
1590 PRINT "OCTOBER 25 ";
1600 GOTO 1720
1610 PRINT "NOVEMBER 8 ";
1620 GOTO 1720
1630 PRINT "NOVEMBER 22 ";
1640 GOTO 1720
1650 PRINT "DECEMBER 6 ";
1660 GOTO 1720
1670 PRINT "DECEMBER 20 ";
1680 GOTO 1720
1690 PRINT "YOU HAVE BEEN ON THE TRAIL TOO LONG ------"
1700 PRINT "YOUR FAMILY DIES IN THE FIRST BLIZZARD OF WINTER"
1710 GOTO 5170
1720 PRINT "1847"
1730 PRINT
1740 REM ***BEGINNING EACH TURN***
1750 IF F >= 0 THEN 1770
1760 F=0
1770 IF B >= 0 THEN 1790
1780 B=0
1790 IF C >= 0 THEN 1810
1800 C=0
1810 IF M1 >= 0 THEN 1830
1820 M1=0
1830 IF F >= 13 THEN 1850
1840 PRINT "YOU'D BETTER DO SOME HUNTING OR BUY FOOD AND SOON!!!!"
1850 F=INT(F)
1860 B=INT(B)
1870 C=INT(C)
1880 M1=INT(M1)
1890 T=INT(T)
1900 M=INT(M)
1910 M2=M
1920 IF S4=1 THEN 1950
1930 IF K8=1 THEN 1950
1940 GOTO 1990
1950 T=T-20
1960 IF T<0 THEN 5080
1970 PRINT "DOCTOR'S BILL IS $20"
1980 LET K8=S4=0
1990 IF M9=1 THEN 2020
2000 PRINT "TOTAL MILEAGE IS";M
2010 GOTO 2040
2020 PRINT "TOTAL MILEAGE IS 950"
2030 M9=0
2040 PRINT "FOOD","BULLETS","CLOTHING","MISC. SUPP.","CASH"
2050 PRINT F, B, C, M1, T
2060 IF X1=-1 THEN 2170
2070 X1=X1*(-1)
2080 PRINT "DO YOU WANT TO (1) STOP AT THE NEXT FORT, (2) HUNT, ";
2090 PRINT "OR (3) CONTINUE"
2100 INPUT X
2110 IF X>2 THEN 2150
2120 IF X<1 THEN 2150
2130 LET X=INT(X)

' START PAGE 2

2140
2150
2160
2170
2180
2190
2200
2210
2220
2230
2240
2250
2260
2270
2280
2290
2300
2310
2320
2330
2340
2350
2360
2370
2375
2380
2390
2400
2410
2420
2430
2440
2450
2460
2470
2460
2490
2500
2510
2520
2530
2540
2550
2560
2570
2580
2590
2600
2610
2620
2630
2640
2650
2660
2670
2680
2690
2700
2710
2720
2730
2740
2750
2760
2770
2780
2790
2800
2810
2820
28 30
2640
2850
2860
2670
2880
2890
2900
2910
2920
2930
2940
2950
2960
2970
2980
2990
3000
3010
3020
3030
3040
3050
3060
3070
3080
3090
3100
3110
3120
3130
3140
3150
3160
3170
3180
3190
3200
3210
3220
3230
3240
3250
3260
3270
3280
3290
3300
3310

THEN 2400

Y0U NEED MORE BULLETS T0 00 HUNTING**

G0T0 2270
LET X*3
O8T0 2270
PRINT "DO YfU WANT T8 C 1 > HUNT, OR C2> CONTINUE"
INPUT X
IF X-l THEN 2210
LET X-2
LET X«X*1
IF X-3 THEN 2260
IF B>39 THEN 2260
PRINT **T0UGH
G0T0 2170
X1»X1*<-1>
0N X O0T0 2290,2540*2720
REN •••ST0PPING AT FORT***
PRINT "ENTER WHAT Y0U VI SH T0 SPEND 0N THE F0LL0VING**
PRINT -F00D-J
G0SUB 2330
G0T0 2410
INPUT P
IF P«0 THEN 2400
T-T-P
IF T »•
PRINT -Y0U D0N*T HAVE THAT MUCH— KEEP Y0UR SPENDING DOWN-
PRINT "YOU MISS Y0UR CHANCE T0 SPEND 0N THAT ITEM**
T-T*P
P«0
RETURN
F»F* 2/ 3*P
PRINT "AMMUNITION"!
G0SUB 2330
LET B*INTCB*2/3*P*50>
PRINT -CLOTHING"!
00 SUB 2330
C»C*2/3*P
PRINT "MISCELLANEOUS SUPPLIES**!
00 SUB 2330
M1-H1*2/3*P
M»H-45
G0T0 2720
REM •••HUNTING***
IF B»39 THEN 2570
PRINT "TOUGH
G0T0 2080
WW 01
OOSUB 6140
IF Bl <- 1 THEN 2660
IF 100*RND(-1X13*B1 THEN 2710
F"F*48-2*B1
PRINT "NICE SH0T--RIGHT ON TARGET— GOOD EATXN * TONIGHT!!"
B-B-10-3*B1
G0TO 2720
REM ••BELLS IN LINE 2660**
PRINT "RIGHT BETWEEN THE EYES™YOU OOT A BIG ONE!!!!"
PRINT "FULL BELLIES TONIBKTI"
F*F*52*RNDC-1>»6
B*B-1O-F0ID<-I>*4
OOT0 2720
PRINT "Y0U MISSED--- AND YOUR DINNER OOT AWAY
IF F >• 13 THEN 2750
G0T0 5060
REM •••EATING***
PRINT "DO YOU WANT TO EAT <1> POORLY
PRINT "0R <3> WELL"!
INPUT E
IF E>3 THEN 2750

YOU NEED M0RE BULLETS TO 00 HUNTING**

(2) M0DERATELY"

"

3240

THEY »|

•DON'T "J

2970
2970

(2) ATTACK

<3> CONTINUE

C4> CIRCLE WAGONS"

"LO0K HOSTILE"
"TACTICS"
"(1> RUN

If M THEN 27S0
LET E-INT(E)
LET F«F-8-5*E
IF F > THEN 2860
F»F*8*5*E
PRINT "Y0U CAN'T EAT THAT WELL"
O0T0 2750
LET H»H*200*<A-220>/S*10*RND<-1>
L1-C1-0
REM •••RIDERS ATTACK***
IF RND(-l)*10>C(M/100-4)»«2*72)/<<M/100-4)»«2*12)-l THEN 3550
PRINT "RIDERS AHEAD*
S5-0
IF RNDC-1X.8 THEN 2950
PRINT
S5-1
PRINT
PRINT
PRINT
IF RNDC-1)>.2 THEN 3000
S5-I-S5
INPUT Tl
IF Tl* 1 THEN
IF Tl»4 THEN
T1«INT<TI)
IF S5-1 THEN
IF T1>1 THEN
M"M*20
M1-M1-1S
B-B-I50
A* A- 40
G0T0 3470
IF Tl>2 THEN
G0SUB 6140
B-B-Bl»40-80
IF B1>1 THEN
PRINT "NICE
G0T0 3470
IF Bl « 4 THEN 3220
PRINT "L0USY SH0T---Y0U
K8-1
PRINT "Y0U HAVE T0 SEE 0L*
G0T0 3470
PRINT "K1NDA SL0V WITH Y0UR
OOT0 3470
IF Tl>3 THEN 3290
IF RND(-1)>.8 THEN 3450
LET B-B-150
Ml-Ml-15
OOT0 3470
G0SUB 6140
B-B-Bl»30-80
N-N-25

3170
SH00 TING—-YOU DROVE THEM OFF*

DOC BL AN CHARD*

G0T KNIFED"

COLT .45*

3330
3110

3320
3330
3340
3350
3360
3370
3380
3390
3400
3410
3420
3430
3440
3450
3460
3470
3480
3490
3500
3510
3520
3530
3540
3550
3560
3570
3580
3590
3600
3610
3620
3630
3640
3650
3660
3670
3660
3690
3700
3710
3720
3730
3740
3750
3760
3770
3780
3790
3600
3810
3820
38 30
3840
3850
3860
3870
3880
3890
3910
3920
3930
3940
3950
3960
39 70
3960
1990
tOOO
4010
4020
4030
4040
4050
4060
4070
4080
4090
4100
4110
4120
4130
4140
4150
4160
4170
4180
4190
4200
4210
4220
4230
4240
4250
4260
4270
4280
4290
4300
4310
4320
4330
4340
4350
4360
4370
4380
4390
4400
4410
4420
4430
4440
4450
4460
4470
4480
4490
4500
4510

ARM"

THEN 3550

MAKE A SLING"

YOUR
LUCK
HAD TO STOP

SLOWS Y0U DOWN REST OF TRIP"

BUT CHECK FOR POSSIBLE L0SSES"

DAUGHTER BROKE HER
AND USE SUPPLIES Tl

G0T0 3140
IF Tl»l THEN 3370
M*M*15
A* A- 10
G0T0 3470
IF Tl>2 THEN 3410
H-M-5
B-B-100
G0TG 3470
IF Tl>3 THEN 3430
O0T0 3470
M-M-20
GOTO 3470
PRINT "THEY DID N0T ATTACK"
G0T0 3550
IF S5-0 THEN 3500
PRINT "RIDERS WERE FRIENDLY,
G0T0 3550
PRINT "RIDERS WERE Hi STILE— CHECK FOR L0SSES"
IF B »•
PRINT "Y0U RAN 0UT OF BULLETS AND O0T MASSACRED BY THE RIDERS"
G0T0 5170
REM •••SELECTION OF EVENTS***
LET Dl-0
REST0RE
R1*100*RND<-1>
LET D1"D1*1
IF DI-16 THEN 4670
READ D
IF R!»D THEN 3580
DATA 6, 1 1, 13, 15, I 7, 22, 32* 35, 37, 42, 44, 54, 64, 69, 95
IF D1M0 THEN 3650
ON Dl G0T0 3660,3700,3740,3790,3820,3850,3880,3960,4130,4190
0N Dl-10 G0T0 4220,4290,4340,4560,4610,4670
PRINT "WAG0N BREAKS DOWN--L0SE TINE AND SUPPLIES FIXING IT"
LET W«M-15-5*HNDC-1>
LET Ml-MI-8
G0T0 4710
PRINT "OX INJURES LEO
LET M-M-25
LET A- A- 20
G0T0 4710
PRINT "BAD
PRINT "Y0U
H*M-5-4*RND<-l>
NI*Ml-2-3*RND(-D
GOTO 4710
PRINT "OX WANDERS OFF™ SPEND TIME L00KING FOR IT"
M-M-17
G0T0 4710
PRINT "YOUR SON GETS LOST™ SPEND HALF THE DAY LOOKING FOR HIM"
M-M-10
G0T0 4710
PRINT "UNSAFE WATER—LOSE TIME LO0KING FOR CLEAN SPRING"
LET M-M-10*RND(-l>-2
GOTO 4710
IF M»950 THEN 4490
PRINT "HEAVY RAINS---TIME AND SUPPLIES LOST"
F-F- 10
B-B-500
MI-M1-I5
N*M-10*RND(-l)-5
G0TO 4710
PRINT "BANDITS ATTACK"
G0SUB 6140
B*B-20*BI
IF B »•
PRINT "YOU RAN OUT OF
T-T/3
GOTO 4040
IF Bl • I THEN 4100
PRINT "YOU GOT SHOT IN
K8"l
PRINT "BETTER HAVE A DOC LOOK AT YOUR WOUND"
Ml-Ml-5
A* A- 20
GOTO 4710
PRINT "QUICKEST DRAW OUTSIDE OF DODGE CITY! 1
PRINT "YOU OOT 'EH!"
GOTO 4710
PRINT "THERE WAS A FIRE IN YOUR WAGON— FOOD AND SUPPLIES DAMAGE!
F-F- 40
B-B-400
LET Hl-Nl-KND<-l>«8-3
M-M-15
GOTO 4710
PRINT "LOSE YOUR WAY IN HEAVY FOG
H-M-10-S*RND<-1>
GOTO 4710
PRINT "YOU KILLED A POISONOUS SNAKE AFTER IT BIT YOU"
B-B-IO
Ml-Ml-5
IF Ml »•
PRINT "YOU
GOTO 8170
0OT0 4710
PRINT "WAGON GETS SWAMPED FORDING RIVER—LOSE FOOD AND CLOTHES"
F-F- 30
oc-eo
M-M-20-20*RND(-l>
OOTO 4710
PRINT "WILD ANIMALS ATTACK!"
OOSUB 6140
IF B>39 THEN 4410
PRINT "YOU WERE TOO LOW ON BULLETS—"
PRINT "THE WOLVES OVERPOWERED YOU"
KB* I
OOTO 5120
IF Bl>2 THEN 4440
PRINT "NI CE SHOOTIN* PARTNER
OOTO 4450
PRINT "SLOW ON THE LRAW— THEY OOT AT YOUR FOOD AND CLOTHES"
B-B-20*B1
C-C-Bl-4
F»F-B1»8
GOTO 4710
PRINT "COLD
IF C>22*4*RND(-l>
PRINT "DON'T "J

THEN 4280
DIE OF SNAKEBITE SINCE YOU HAVE NO MEDICINE"

THE LEG AND THEY TOOK ONE OF YOUR OXEN"

BULLETS— THEY GET LOTS OF CASH'

WEATHER— -BRRRRRRR1—YOU "I

THEY DIDN'T GET MUCH"

TIME IS LOST"

THEN 4530

THEN 4030

1"

138

CREATIVE COMPUTING

-

"

4520 Cl-1
4530 PRINT "HAVE ENOUGH CLOTHING T0 KEEP YOU WARM"
4540 IF Cl-0 TMDi 4710
4550 GOTO 6300
4560 PRINT "HAIL STfRH— SUPPLIES DAMAGED**
4570 M-M-5-RND<-!>*10
4560 B-B-200
4590 Hl-Ml-4-RND<-l>*3
4600 6fT6 4710
4610 If E-l THEN 6300
4620 IF E-3 THEN 4650
4630 IF RND<-1>>.25 THEN 6300
4640 OfTfl 4710
4650 IF RND<-1X.S THEN 6300
4660 O0TS 4710
4670 PRINT -HELPFUL INDIANS SHOW YOU WERE T0 FIND NIKE FBOD"
4680 F*F* 14
4690 GGT0 4TI0
4700 REM •••MOUNTAINS***
4710 IF H «• 950 THEN 1230
4720 IF RND<-1>*10»9-CCH/100-15>**2*>72>/CCM/100-1S>*«2*12> THEN 4860
4730 PRINT "RUGGED MOUNTAINS"
4740 IF RND<-1>».1 THEN 4780
4750 PRINT "YOU 08T L6ST— -LiSE VALUABLE TIME TRYING T6 FIND TRAIL1"
4760 M-M-60
4770 G8T8 4860
4780 IF RNDC-1>».11 THEN 4840
4790 PRINT "WAGON DAMAGED!—L8SE TIME AND SUPPLIES"
4800 MI-M1-5
4810 B-B-200
4820 M-M-20-3O*RND<-!>
4830 68 T6 4860
4840 PRINT "THE G8ING GETS SL6V"
4850 H-M-45-RND<-l>/.02
4660 IF Fi-1 THEN 4900
4870 Fl»l
4880 IF WDCIX.8 THEN 4970
4690 PRIN7 "YOU MADE 17 SAFELY TKR0UGH S6UTH PASS--N0 SN0V"
4900 IF H-1700 THEN 4940
4910 IF F2*I THEN 4940
4920 F2«l
4930 IF RND<-1><.7 THEN 4970
4940 IF H>950 THEN 1230
4950 M9-1
4960 G8T6 1230
4970 PRINT "BLIZZARD IN M6UNTAIN PASS— TIME AND SUPPLIES LOST"
4980 Ll-l
4990 F-F-25
5000 MI-MI-IO
5010 8*8-300
5020 H>H-30-40*RND<-!>
5030 IF C« 10*2*RND<-1> THEN 6300
5040 8079 4940
5050 REM •••DYING***
5060 PRINT "Y8U RAN 6UT 6F F00D AND STARVED T0 DEATH"
5070 0070 5170
5060 LE7 T-0
5090 PRINT "Y6U CAN'T AFF0RD A D0CT0R"
5100 O0T0 5120
5110 PRINT "YOU RAN 0UT 0F MEDICAL SUPPLIES"
5120 PRINT "YOU DIED 0F "I
5130 IF K8-1 THEN 5160
5140 PRINT -PNEUMONIA"
5150 O0T0 5170
5160 PRINT -INJURIES-
SI 70 PRINT
5160 PRINT "DUE T0 Y0UR UNF0RTUNATE SITUATION, THERE ARE A FEV"
5190 PRINT "FORMALITIES VE MUST 60 THROUGH"
5200 PRINT
5210 PRINT -WOULD YOU LIKE A MINISTER?"
5220 INPUT CS
5230 PRINT "WOULD YOU LIKE A FANCY FUNERAL?"
5240 INPUT CS
5250 PRINT "WOULD YOU LIKE US TO INFORM YOUR NEXT OF KINT"
5260 INPUT CS
5270 IF CS--YES" THEN 5310
5280 PRINT "BUT YOUR AUNT SADIE IN ST. L6U1S IS REALLY WORRIED ABOUT Y08
8290 PRINT
8300 GOTO 5330
5310 PRINT "THAT WILL BE 64*50 FOR THE TELEGRAPH CHARGE."
53r0 PRINT
53 JO PRINT "WE THANK YOU FOR THIS INFORMATION AND VE ARE SORRY YOU"
5340 PRINT -DIDN'T MAKE IT TO THE GREAT TERRITORY 8F OREGON"
S3S0 PRINT "BETTER LUCK NEXT TIME"
5360 PRINT
5*»70 PRINT
5380 PRINT TAB< 30>1 "SINCERELY"
5390 PRINT
5400 PRINT TABC17>*"THE OREGON CITY CHAMBER OF C6HHERCE"
5410 STOP
5420 REM •••FINAL TURN***
5430 F9«C2040-H2>/<H-M2>
5440 F-F* C1-F9)*(8*5*E)
5450 PRINT
5460 REM ••BELLS IN LINES 5470, 5480*»
5470 PRINT "YOU FINALLY ARRIVED AT OREGON CITY"
5400 PRINT "AFTER 2040 LONG MILES
I 1! !
5490 PRINT "A REAL PIONEER!"
5500 PRINT
5510 F9*INT(F9*14>
5820 D3«D3*I4*F9
5530 F9»P9*1
5540 IF F9«8 THEN 5560
5550 F9-F9-7
5560 ON F9 GOTO 5570, 5590* 36! 0* 56 30* 5650* 5670* 5690
5570 PRINT "MONDAY "/
5580 GOTO 5700
5590 PRINT -TUESDAY "/
5600 GOTO 5700
5610 PRINT -WEDNESDAY -J
5620 GOTO 5700
5630 PRINT -THURSDAY "J
5640 GOTO 5700
5650 PRINT -FRIDAY "I
5660 GOTO 5700
5670 PRINT -SATURDAY -J
5680 GOTO 5700
5690 PRINT -SUNDAY -J
5700 IF D3»184 THEN 5740

HOORAY !

5710
5720
5730
5740
5750
5760
5770
5700
5790
5000
5810
5820
5830
5840
5850
5860
5870
5880
5890
5900
5910
5920
5930
5940
5950
5960
5970
5900
5990
6000
6010
6020
6030
6040
6050
6060
6070
6000
6090
6100
6110
6120
6130
613!
6132
6133
6134
6135
6136
6137
6140
6150
6160
6170
6180
6190
6200
6810
6220
6230
6240
6230
6255
6257
6260
6270
6280
6290
6300
6310
6320
6330
6340
6350
6360
6370
6380
6390
6400
6410
6420
6430
6440
6450
6460
6470
648
6490
6500
6510
6520
6530
6540
6550
6560
6570
6580
6590
6600
6610
6620
6630
6640
6650
6660
6670
6680
6690
6700
6710
6720
6730
6740
6750
6760
6770
6700
6790
6000

MAY/JUNE 1978

139

5900

IgVT

SUPP. ~# -CASH-

THE METHOD OF TIMING THE SHOOTING
WILL VARY FROM SYSTEM TO SYSTEM.
USERS VI LL PROBABLY PREFER TO USE
IF TIMING ON THE USER'S SYSTEM IS
TO SYSTEM RESPONSE TINE* THE FORMULA IN LINE 6040 CAN
BE TAILORED TO ACCOMODATE THIS BY EITHER INCREASING
OR DECREASING THE 'SHOOTING' TIME RECORDED BY THE SYSTEM.
SS(S>

(LINES 6210-6240)
FOR EXAMPLE* H-P
THE 'ENTER' STATEMENT.
HIGHLY SUSCEPT11

TABU 1> J -PRESIDENT
TAB(17>i -HEARTIEST

JAMES K. POLK SENDS YOU HIS"
CONGRATULATION S"

D3-D3-93
PRINT -JULY
GOTO 5920
IF D3M55 THEN
D3-D3-124
PRINT -AUGUST -1D3J-
G0TO 5920
IF D3MS3 THEN 5820
D3-D3-155
PRINT "SEPTEMBER mi D3J "
GOTO 5920
IF D3»216 THEN
D3»D3-18S
PRINT -OCTOBER
GOTO 5920
IF D3>246 THEN
D3-D3-216
PRINT "NOVEMBER -*D3J" 1047"
GOTO 5920
D3-D3-246
PRINT "DECEMBER "JD3J" 1047"
PRINT
PRINT "FOOD"* "BULLETS"* "CLOTHING"* "MI SC-
IF B»0 THEN 3960
LET B-0
IF C»0 THEN 5900
LET C-0
IF M1»0 THEN 6000
LET MJ-0
IF T»0 THEN 6020
LET T«0
IF F>0 THEN 6040
LET F-0
PRINT INT(F)*INT(B)*1NT(C)* INT(M1>* INT(T)
PRINT
PRINT
PRINT
PRINT
PRINT TAB(U)I"AND WISHES YOU A PROSPEROUS LIFE AHEAD-
PRINT
PRINT TAB(22)1"AT YOUR NEW HOME-
STOP
REM ***SHOOTING SUB-ROUTINE***
REM
REM
REM
REM
REM
REM
REM
DIM
SS(1>>"BANG"
SS(2>*"BLAM"
SS<3>*-P0W-
SSC4>*"VHAM"
S6*INT< RND( - 1 >*4* 1 >
PRINT -TYPE -1 SS(S6>
B3 - CLK(0>
INPUT CS
Bl * CLK(O)
B1-((B1-B3>*3600>-(D9-1>
PRINT
IF BI»0 THEN 6260
B1»0
IF CS-SSCS6) THEN
Bl*9
RETURN
REM •••ILLNESS SUB- ROUTINE***
IF 100*RND<-1>«!0+3S*CE-1> THEN 6370
IF 100*RND(-I><l00-<40/4**CE-l>> THEN 6410
PRINT "SERIOUS ILLNESS—
PRINT -YOU MUST STOP FOR MEDICAL ATTENTION"
Ml-Ml-10
S4-1
GOTO 6440
PRINT -MILD ILLNESS
M*M-5
Ml-Ml-2
GOTO 6440
PRINT -BAD ILLNESS—MEDICINE USED"
N-H-5
Ml-Ml-5
IF H1«0 THEN 5110
IF Ll*l THEN 4940
GOTO 4710
REM •••IDENDIFI CATION OF VARIABLES IN THE PROGRAM***
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
REM
END

A
B - AMOUNT SPENT ON AMMUNITION
Bl - ACTUAL RESPONSE TIME FOR INPUTTING "BANG"
B3 • CLOCK TIME AT START OF INPUTTING "BANG"
C - AMOUNT SPENT ON CLOTHING
CI • FLAG FOR INSUFFICIENT CLOTHING IN COLD WEATHER
CS • YES/NO RESPONSE TO QUESTIONS
COUNTER IN GENERATING EVENTS
Dl
TURN NUMBER FOR SETTING DATE
D3
CURRENT DATE
D4
CHOICE OF SHOOTING EXPERTISE
D9
E
F « AMOUNT SPENT ON FOOD
Fl
F2 - FLAG FOR CLEARING BLUE MOUNTAINS
F9 • FRACTION OF 2 WEEKS TRAVELED ON FINAL TURN
K8 - FLAG FOR INJURY
LI • FLAG FOR BLIZZARD
H
Ml • AMOUNT SPENT ON MISCELLANEOUS SUPPLIES
H2 • TOTAL MILEAGE UP THROUGH PREVIOUS TURN
M9 • FLAG FOR CLEARING SOUTH PASS IN SETTING MILEAGE
P - AMOUNT SPENT ON ITEMS AT FORT
Rl - RANDOM NUMBER IN CHOOSING EVENTS
54 • FLAG FOR ILLNESS
55
56 - SHOOTING WORD SELECTOR
SS - VARIATIONS OF SHOOTING WORD
T • CASH LEFT OVER AFTER INITIAL PURCHASES
Tl • CHOICE OF TACTICS WHEN ATTACKED
X • CHOICE OF ACTION FOR EACH TURN
XI • FLAG FOR FORT OPTION

""HOSTILITY OF RIDERS"" FACTOR

CHOICE OF EATING

FLAG FOR CLEARING SOUTH PASS

LEVEL

TOTAL MILEAGE WHOLE TRIP

6280

MEDICINE USED"

AMOUNT SPENT ON ANIMALS


