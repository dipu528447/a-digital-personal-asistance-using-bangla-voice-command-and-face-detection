fs=44100;
r=audiorecorder(fs,16,2)
recordblocking(r,2)
voice=getaudiodata(r);
audiowrite('s.wav',voice,fs)
[x,fs]=audioread('s.wav')
%sound(x)
x=x'
x=x(1,:);
x=x';
%sound(x)
[y1,fs]=audioread('train3\1.wav');
y1=y1';
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
m1=max(z1);
l1=length(z1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1'; 

[y2,fs]=audioread('train3\2.wav');
y2=y2';
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
m2=max(z2);
l2=length(z2);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2'; 

[y3,fs]=audioread('train3\3.wav');
y3=y3';
y3=y3(1,:);
y3=y3';
z3=xcorr(x,y3);
m3=max(z3);
l3=length(z3);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3'; 

[y4,fs]=audioread('train3\4.wav');
y4=y4';
y4=y4(1,:);
y4=y4';
z4=xcorr(x,y4);
m4=max(z4);
l4=length(z4);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';

[y5,fs]=audioread('train3\5.wav');
y5=y5';
y5=y5(1,:);
y5=y5';
z5=xcorr(x,y5);
m5=max(z5);
l5=length(z5);
t5=-((l5-1)/2):1:((l5-1)/2);
t5=t5'; 

[y6,fs]=audioread('train3\6.wav');
y6=y6';
y6=y6(1,:);
y6=y6';
z6=xcorr(x,y6);
m6=max(z6);
l6=length(z6);
t6=-((l6-1)/2):1:((l6-1)/2);
t6=t6'; 

[y7,fs]=audioread('train3\7.wav');
y7=y7';
y7=y7(1,:);
y7=y7';
z7=xcorr(x,y7);
m7=max(z7);
l7=length(z7);
t7=-((l7-1)/2):1:((l7-1)/2);
t7=t7'; 


[y8,fs]=audioread('train3\8.wav');
y8=y8';
y8=y8(1,:);
y8=y8';
z8=xcorr(x,y8);
m8=max(z8);
l8=length(z8);
t8=-((l8-1)/2):1:((l8-1)/2);
t8=t8'; 

[y9,fs]=audioread('train3\9.wav');
y9=y9';
y9=y9(1,:);
y9=y9';
z9=xcorr(x,y9);
m9=max(z9);
l9=length(z9);
t9=-((l9-1)/2):1:((l9-1)/2);
t9=t9'; 

[y10,fs]=audioread('train3\10.wav');
y10=y10';
y10=y10(1,:);
y10=y10';
z10=xcorr(x,y10);
m10=max(z10);
l10=length(z10);
t10=-((l10-1)/2):1:((l10-1)/2);
t10=t10'; 
%figure
%plot(t10,z10); 
%title ('Goto Google Chrome');


[y11,fs]=audioread('train3\11.wav');
y11=y11';
y11=y11(1,:);
y11=y11';
z11=xcorr(x,y11);
m11=max(z11);
l11=length(z11);
t11=-((l11-1)/2):1:((l11-1)/2);
t11=t11'; 


[y12,fs]=audioread('train3\12.wav');
y12=y12';
y12=y12(1,:);
y12=y12';
z12=xcorr(x,y12);
m12=max(z12);
l12=length(z12);
t12=-((l12-1)/2):1:((l12-1)/2);
t12=t12'; 
%figure
%plot(t12,z12); 
%title ('Start Mouse Control');

[y13,fs]=audioread('train3\13.wav');
y13=y13';
y13=y13(1,:);
y13=y13';
z13=xcorr(x,y13);
m13=max(z13);

[y14,fs]=audioread('train3\14.wav');
y14=y14';
y14=y14(1,:);
y14=y14';
z14=xcorr(x,y14);
m14=max(z14);

[y15,fs]=audioread('train3\15.wav');
y15=y15';
y15=y15(1,:);
y15=y15';
z15=xcorr(x,y15);
m15=max(z15);


[y16,fs]=audioread('train3\16.wav');
y16=y16';
y16=y16(1,:);
y16=y16';
z16=xcorr(x,y16);
m16=max(z16);


[y17,fs]=audioread('train3\17.wav');
y17=y17';
y17=y17(1,:);
y17=y17';
z17=xcorr(x,y17);
m17=max(z17);

[y18,fs]=audioread('train3\18.wav');
y18=y18';
y18=y18(1,:);
y18=y18';
z18=xcorr(x,y18);
m18=max(z18);


[y19,fs]=audioread('train3\19.wav');
y19=y19';
y19=y19(1,:);
y19=y19';
z19=xcorr(x,y19);
m19=max(z19);

[y20,fs]=audioread('train3\20.wav');
y20=y20';
y20=y20(1,:);
y20=y20';
z20=xcorr(x,y20);
m20=max(z20);

[y21,fs]=audioread('train3\21.wav');
y21=y21';
y21=y21(1,:);
y21=y21';
z21=xcorr(x,y21);
m21=max(z21);

[y22,fs]=audioread('train3\22.wav');
y22=y22';
y22=y22(1,:);
y22=y22';
z22=xcorr(x,y22);
m22=max(z22);

[y23,fs]=audioread('train3\23.wav');
y23=y23';
y23=y23(1,:);
y23=y23';
z23=xcorr(x,y23);
m23=max(z23);

[y24,fs]=audioread('train3\24.wav');
y24=y24';
y24=y24(1,:);
y24=y24';
z24=xcorr(x,y24);
m24=max(z24);


[y25,fs]=audioread('train3\25.wav');
y25=y25';
y25=y25(1,:);
y25=y25';
z25=xcorr(x,y25);
m25=max(z25);

[y26,fs]=audioread('train3\26.wav');
y26=y26';
y26=y26(1,:);
y26=y26';
z26=xcorr(x,y26);
m26=max(z26);


[y27,fs]=audioread('train3\27.wav');
y27=y27';
y27=y27(1,:);
y27=y27';
z27=xcorr(x,y27);
m27=max(z27);


[y28,fs]=audioread('train3\28.wav');
y28=y28';
y28=y28(1,:);
y28=y28';
z28=xcorr(x,y28);
m28=max(z28);

[y29,fs]=audioread('train3\29.wav');
y29=y29';
y29=y29(1,:);
y29=y29';
z29=xcorr(x,y29);
m29=max(z29);


[y30,fs]=audioread('train3\30.wav');
y30=y30';
y30=y30(1,:);
y30=y30';
z30=xcorr(x,y30);
m30=max(z30);

[y31,fs]=audioread('train3\31.wav');
y31=y31';
y31=y31(1,:);
y31=y31';
z31=xcorr(x,y31);
m31=max(z31);

[y32,fs]=audioread('train3\32.wav');
y32=y32';
y32=y32(1,:);
y32=y32';
z32=xcorr(x,y32);
m32=max(z32);

[y33,fs]=audioread('train3\33.wav');
y33=y33';
y33=y33(1,:);
y33=y33';
z33=xcorr(x,y33);
m33=max(z33);

[y34,fs]=audioread('train3\34.wav');
y34=y34';
y34=y34(1,:);
y34=y34';
z34=xcorr(x,y34);
m34=max(z34);

[y35,fs]=audioread('train3\35.wav');
y35=y35';
y35=y35(1,:);
y35=y35';
z35=xcorr(x,y35);
m35=max(z35);


[y36,fs]=audioread('train3\36.wav');
y36=y36';
y36=y36(1,:);
y36=y36';
z36=xcorr(x,y36);
m36=max(z36);

[y37,fs]=audioread('train3\37.wav');
y37=y37';
y37=y37(1,:);
y37=y37';
z37=xcorr(x,y37);
m37=max(z37);


[y38,fs]=audioread('train3\38.wav');
y38=y38';
y38=y38(1,:);
y38=y38';
z38=xcorr(x,y38);
m38=max(z38);


[y39,fs]=audioread('train3\39.wav');
y39=y39';
y39=y39(1,:);
y39=y39';
z39=xcorr(x,y39);
m39=max(z39);

[y40,fs]=audioread('train3\40.wav');
y40=y40';
y40=y40(1,:);
y40=y40';
z40=xcorr(x,y40);
m40=max(z40);


[y41,fs]=audioread('train3\41.wav');
y41=y41';
y41=y41(1,:);
y41=y41';
z41=xcorr(x,y41);
m41=max(z41);

[y42,fs]=audioread('train3\42.wav');
y42=y42';
y42=y42(1,:);
y42=y42';
z42=xcorr(x,y42);
m42=max(z42);

[y43,fs]=audioread('train3\43.wav');
y43=y43';
y43=y43(1,:);
y43=y43';
z43=xcorr(x,y43);
m43=max(z43);

[y44,fs]=audioread('train3\44.wav');
y44=y44';
y44=y44(1,:);
y44=y44';
z44=xcorr(x,y44);
m44=max(z44);

[y45,fs]=audioread('train3\45.wav');
y45=y45';
y45=y45(1,:);
y45=y45';
z45=xcorr(x,y45);
m45=max(z45);

[y46,fs]=audioread('train3\46.wav');
y46=y46';
y46=y46(1,:);
y46=y46';
z46=xcorr(x,y46);
m46=max(z46);


[y47,fs]=audioread('train3\47.wav');
y47=y47';
y47=y47(1,:);
y47=y47';
z47=xcorr(x,y47);
m47=max(z47);

[y48,fs]=audioread('train3\48.wav');
y48=y48';
y48=y48(1,:);
y48=y48';
z48=xcorr(x,y48);
m48=max(z48);


[y49,fs]=audioread('train3\49.wav');
y49=y49';
y49=y49(1,:);
y49=y49';
z49=xcorr(x,y49);
m49=max(z49);


[y50,fs]=audioread('train3\50.wav');
y50=y50';
y50=y50(1,:);
y50=y50';
z50=xcorr(x,y50);
m50=max(z50);

[y51,fs]=audioread('train3\51.wav');
y51=y51';
y51=y51(1,:);
y51=y51';
z51=xcorr(x,y51);
m51=max(z51);


[y52,fs]=audioread('train3\52.wav');
y52=y52';
y52=y52(1,:);
y52=y52';
z52=xcorr(x,y52);
m52=max(z52);

[y53,fs]=audioread('train3\53.wav');
y53=y53';
y53=y53(1,:);
y53=y53';
z53=xcorr(x,y53);
m53=max(z53);

[y54,fs]=audioread('train3\54.wav');
y54=y54';
y54=y54(1,:);
y54=y54';
z54=xcorr(x,y54);
m54=max(z54);

[y55,fs]=audioread('train3\55.wav');
y55=y55';
y55=y55(1,:);
y55=y55';
z55=xcorr(x,y55);
m55=max(z55);
[y56,fs]=audioread('train3\56.wav');
y56=y56';
y56=y56(1,:);
y56=y56';
z56=xcorr(x,y56);
m56=max(z56);

[y57,fs]=audioread('train3\57.wav');
y57=y57';
y57=y57(1,:);
y57=y57';
z57=xcorr(x,y57);
m57=max(z57);

[y58,fs]=audioread('train3\58.wav');
y58=y58';
y58=y58(1,:);
y58=y58';
z58=xcorr(x,y58);
m58=max(z58);

[y59,fs]=audioread('train3\59.wav');
y59=y59';
y59=y59(1,:);
y59=y59';
z59=xcorr(x,y59);
m59=max(z59);

[y60,fs]=audioread('train3\60.wav');
y60=y60';
y60=y60(1,:);
y60=y60';
z60=xcorr(x,y60);
m60=max(z60);

[y61,fs]=audioread('train3\61.wav');
y61=y61';
y61=y61(1,:);
y61=y61';
z61=xcorr(x,y61);
m61=max(z61);

[y62,fs]=audioread('train3\62.wav');
y62=y62';
y62=y62(1,:);
y62=y62';
z62=xcorr(x,y62);
m62=max(z62);

[y63,fs]=audioread('train3\63.wav');
y63=y63';
y63=y63(1,:);
y63=y63';
z63=xcorr(x,y63);
m63=max(z63);

[y64,fs]=audioread('train3\64.wav');
y64=y64';
y64=y64(1,:);
y64=y64';
z64=xcorr(x,y64);
m64=max(z64);

[y65,fs]=audioread('train3\65.wav');
y65=y65';
y65=y65(1,:);
y65=y65';
z65=xcorr(x,y65);
m65=max(z65);

[y66,fs]=audioread('train3\66.wav');
y66=y66';
y66=y66(1,:);
y66=y66';
z66=xcorr(x,y66);
m66=max(z66);


[y67,fs]=audioread('train3\67.wav');
y67=y67';
y67=y67(1,:);
y67=y67';
z67=xcorr(x,y67);
m67=max(z67);


[y68,fs]=audioread('train3\68.wav');
y68=y68';
y68=y68(1,:);
y68=y68';
z68=xcorr(x,y68);
m68=max(z68);


[y69,fs]=audioread('train3\69.wav');
y69=y69';
y69=y69(1,:);
y69=y69';
z69=xcorr(x,y69);
m69=max(z69);


[y70,fs]=audioread('train3\70.wav');
y70=y70';
y70=y70(1,:);
y70=y70';
z70=xcorr(x,y70);
m70=max(z70);

[y71,fs]=audioread('train3\71.wav');
y71=y71';
y71=y71(1,:);
y71=y71';
z71=xcorr(x,y71);
m71=max(z71);


[y72,fs]=audioread('train3\72.wav');
y72=y72';
y72=y72(1,:);
y72=y72';
z72=xcorr(x,y72);
m72=max(z72);


[y73,fs]=audioread('train3\73.wav');
y73=y73';
y73=y73(1,:);
y73=y73';
z73=xcorr(x,y73);
m73=max(z73);

[y74,fs]=audioread('train3\74.wav');
y74=y74';
y74=y74(1,:);
y74=y74';
z74=xcorr(x,y74);
m74=max(z74);


[y75,fs]=audioread('train3\75.wav');
y75=y75';
y75=y75(1,:);
y75=y75';
z75=xcorr(x,y75);
m75=max(z75);

[y76,fs]=audioread('train3\76.wav');
y76=y76';
y76=y76(1,:);
y76=y76';
z76=xcorr(x,y76);
m76=max(z76);

[y77,fs]=audioread('train3\77.wav');
y77=y77';
y77=y77(1,:);
y77=y77';
z77=xcorr(x,y77);
m77=max(z77);

[y78,fs]=audioread('train3\78.wav');
y78=y78';
y78=y78(1,:);
y78=y78';
z78=xcorr(x,y78);
m78=max(z78);

[y79,fs]=audioread('train3\79.wav');
y79=y79';
y79=y79(1,:);
y79=y79';
z79=xcorr(x,y79);
m79=max(z79);

[y80,fs]=audioread('train3\80.wav');
y80=y80';
y80=y80(1,:);
y80=y80';
z80=xcorr(x,y80);
m80=max(z80);

[y81,fs]=audioread('train3\81.wav');
y81=y81';
y81=y81(1,:);
y81=y81';
z81=xcorr(x,y81);
m81=max(z81);

[y82,fs]=audioread('train3\82.wav');
y82=y82';
y82=y82(1,:);
y82=y82';
z82=xcorr(x,y82);
m82=max(z82);


[y83,fs]=audioread('train3\83.wav');
y83=y83';
y83=y83(1,:);
y83=y83';
z83=xcorr(x,y83);
m83=max(z83);


[y84,fs]=audioread('train3\84.wav');
y84=y84';
y84=y84(1,:);
y84=y84';
z84=xcorr(x,y84);
m84=max(z84);

[y85,fs]=audioread('train3\85.wav');
y85=y85';
y85=y85(1,:);
y85=y85';
z85=xcorr(x,y85);
m85=max(z85);


[y86,fs]=audioread('train3\86.wav');
y86=y86';
y86=y86(1,:);
y86=y86';
z86=xcorr(x,y86);
m86=max(z86);

[y87,fs]=audioread('train3\87.wav');
y87=y87';
y87=y87(1,:);
y87=y87';
z87=xcorr(x,y87);
m87=max(z87);

[y88,fs]=audioread('train3\88.wav');
y88=y88';
y88=y88(1,:);
y88=y88';
z88=xcorr(x,y88);
m88=max(z88);

[y89,fs]=audioread('train3\89.wav');
y89=y89';
y89=y89(1,:);
y89=y89';
z89=xcorr(x,y89);
m89=max(z89);

[y90,fs]=audioread('train3\90.wav');
y90=y90';
y90=y90(1,:);
y90=y90';
z90=xcorr(x,y90);
m90=max(z90);

[y91,fs]=audioread('train3\91.wav');
y91=y91';
y91=y91(1,:);
y91=y91';
z91=xcorr(x,y91);
m91=max(z91);


[y92,fs]=audioread('train3\92.wav');
y92=y92';
y92=y92(1,:);
y92=y92';
z92=xcorr(x,y92);
m92=max(z92);

[y93,fs]=audioread('train3\93.wav');
y93=y93';
y93=y93(1,:);
y93=y93';
z93=xcorr(x,y93);
m93=max(z93);


[y94,fs]=audioread('train3\94.wav');
y94=y94';
y94=y94(1,:);
y94=y94';
z94=xcorr(x,y94);
m94=max(z94);


[y95,fs]=audioread('train3\95.wav');
y95=y95';
y95=y95(1,:);
y95=y95';
z95=xcorr(x,y95);
m95=max(z95);

[y96,fs]=audioread('train3\96.wav');
y96=y96';
y96=y96(1,:);
y96=y96';
z96=xcorr(x,y96);
m96=max(z96);

[y97,fs]=audioread('train3\97.wav');
y97=y97';
y97=y97(1,:);
y97=y97';
z97=xcorr(x,y97);
m97=max(z97);

[y98,fs]=audioread('train3\98.wav');
y98=y98';
y98=y98(1,:);
y98=y98';
z98=xcorr(x,y98);
m98=max(z98);

[y99,fs]=audioread('train3\99.wav');
y99=y99';
y99=y99(1,:);
y99=y99';
z99=xcorr(x,y99);
m99=max(z99);


[y100,fs]=audioread('train3\100.wav');
y100=y100';
y100=y100(1,:);
y100=y100';
z100=xcorr(x,y100);
m100=max(z100);

[y101,fs]=audioread('train3\101.wav');
y101=y101';
y101=y101(1,:);
y101=y101';
z101=xcorr(x,y101);
m101=max(z101);


[y102,fs]=audioread('train3\102.wav');
y102=y102';
y102=y102(1,:);
y102=y102';
z102=xcorr(x,y102);
m102=max(z102);

[y103,fs]=audioread('train3\103.wav');
y103=y103';
y103=y103(1,:);
y103=y103';
z103=xcorr(x,y103);
m103=max(z103);


[y104,fs]=audioread('train3\104.wav');
y104=y104';
y104=y104(1,:);
y104=y104';
z104=xcorr(x,y104);
m104=max(z104);


[y105,fs]=audioread('train3\105.wav');
y105=y105';
y105=y105(1,:);
y105=y105';
z105=xcorr(x,y105);
m105=max(z105);

[y106,fs]=audioread('train3\106.wav');
y106=y106';
y106=y106(1,:);
y106=y106';
z106=xcorr(x,y106);
m106=max(z106);

[y107,fs]=audioread('train3\107.wav');
y107=y107';
y107=y107(1,:);
y107=y107';
z107=xcorr(x,y107);
m107=max(z107);

[y108,fs]=audioread('train3\108.wav');
y108=y108';
y108=y108(1,:);
y108=y108';
z108=xcorr(x,y108);
m108=max(z108);

[y109,fs]=audioread('train3\109.wav');
y109=y109';
y109=y109(1,:);
y109=y109';
z109=xcorr(x,y109);
m109=max(z109);

[y110,fs]=audioread('train3\110.wav');
y110=y110';
y110=y110(1,:);
y110=y110';
z110=xcorr(x,y110);
m110=max(z110);

[y111,fs]=audioread('train3\111.wav');
y111=y111';
y111=y111(1,:);
y111=y111';
z111=xcorr(x,y111);
m111=max(z111);


[y112,fs]=audioread('train3\112.wav');
y112=y112';
y112=y112(1,:);
y112=y112';
z112=xcorr(x,y112);
m112=max(z112);

[y113,fs]=audioread('train3\113.wav');
y113=y113';
y113=y113(1,:);
y113=y113';
z113=xcorr(x,y113);
m113=max(z113);


[y114,fs]=audioread('train3\114.wav');
y114=y114';
y114=y114(1,:);
y114=y114';
z114=xcorr(x,y114);
m114=max(z114);

[y115,fs]=audioread('train3\115.wav');
y115=y115';
y115=y115(1,:);
y115=y115';
z115=xcorr(x,y115);
m115=max(z115);


[y116,fs]=audioread('train3\116.wav');
y116=y116';
y116=y116(1,:);
y116=y116';
z116=xcorr(x,y116);
m116=max(z116);


[y117,fs]=audioread('train3\117.wav');
y117=y117';
y117=y117(1,:);
y117=y117';
z117=xcorr(x,y117);
m117=max(z117);

[y118,fs]=audioread('train3\118.wav');
y118=y118';
y118=y118(1,:);
y118=y118';
z118=xcorr(x,y118);
m118=max(z118);

[y119,fs]=audioread('train3\119.wav');
y119=y119';
y119=y119(1,:);
y119=y119';
z119=xcorr(x,y119);
m119=max(z119);

[y120,fs]=audioread('train3\120.wav');
y120=y120';
y120=y120(1,:);
y120=y120';
z120=xcorr(x,y120);
m120=max(z120);
m121=300;
a=[m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 m13 m14 m15 m16 m17 m18 m19 m20 m21 m22 m23 m24 m25 m26 m27 m28 m29 m30 m31 m32 m33 m34 m35 m36 m37 m38 m39 m40 m41 m42 m43 m44 m45 m46 m47 m48 m49 m50 m51 m52 m53 m54 m55 m56 m57 m58 m59 m60 m61 m62 m63 m64 m65 m66 m67 m68 m69 m70 m71 m72 m73 m74 m75 m76 m77 m78 m79 m80 m81 m82 m83 m84 m85 m86 m87 m88 m89 m90 m91 m92 m93 m94 m95 m96 m97 m98 m99 m100 m101 m102 m103 m104 m105 m106 m107 m108 m109 m110 m111 m112 m113 m114 m115 m116 m117 m118 m119 m120];
m=max(a);
if m<=m1
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m2
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m3
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m4
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m5
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m6
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m7
    command="notepad &"
    status=system(command)
elseif m<=m8
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m9
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m10
    command="start chrome"
    status=system(command)
elseif  m<=m11
    command="start chrome www.facebook.com"
    status=system(command)    
elseif m<=m12
    main()
   
elseif m<=m13
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m14
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m15
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m16
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m17
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m18
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m19
    command="notepad &"
    status=system(command)
elseif m<=m20
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m21
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m22
    command="start chrome"
    status=system(command)
elseif  m<=m23
    command="start chrome www.facebook.com"
    status=system(command)
elseif m<=m24
    main()
    
   
elseif m<=m25
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m26
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m27
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m28
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m29
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m30
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m31
    command="notepad &"
    status=system(command)
elseif m<=m32
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m33
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m34
    command="start chrome"
    status=system(command)
elseif  m<=m35
    command="start chrome www.facebook.com"
    status=system(command)
elseif m<=m36
    main()
    
elseif m<=m37
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m38
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m39
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m40
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m41
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m42
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m43
    command="notepad &"
    status=system(command)
elseif m<=m44
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m45
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m46
    command="start chrome"
    status=system(command)
elseif  m<=m47
    command="start chrome www.facebook.com"
    status=system(command)
elseif m<=m48
    main()  
 
elseif m<=m49
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m50
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m51
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m52
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m53
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m54
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m55
    command="notepad &"
    status=system(command)
elseif m<=m56
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m57
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m58
    command="start chrome"
    status=system(command)
elseif  m<=m59
    command="start chrome www.facebook.com"
    status=system(command)
    
elseif m<=m60
    main()

elseif m<=m61
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m62
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m63
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m64
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m65
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m66
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m67
    command="notepad &"
    status=system(command)
elseif m<=m68
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m69
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m70
    command="start chrome"
    status=system(command)
elseif  m<=m71
    command="start chrome www.facebook.com"
    status=system(command)
elseif m<=m72
    main()

elseif m<=m73
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m74
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m75
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m76
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m77
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m78
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m79
    command="notepad &"
    status=system(command)
elseif m<=m80
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m81
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m82
    command="start chrome"
    status=system(command)
elseif  m<=m83
    command="start chrome www.facebook.com"
    status=system(command)
elseif m<=m84
    main()
   
elseif m<=m85
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m86
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m87
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m88
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m89
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m90
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m91
    command="notepad &"
    status=system(command)
elseif m<=m92
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m93
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m94
    command="start chrome"
    status=system(command)
elseif  m<=m95
    command="start chrome www.facebook.com"
    status=system(command)
elseif m<=m96
    main()

elseif m<=m97
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m98
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m99
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m100
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m101
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m102
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m103
    command="notepad &"
    status=system(command)
elseif m<=m104
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m105
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m106
    command="start chrome"
    status=system(command)
elseif  m<=m107
    command="start chrome www.facebook.com"
    status=system(command)
    

elseif m<=m108
    command="explorer C:\Users\HP\Documents"
    path="C:\Users\HP\Documents"
    status=system(command)
elseif m<=m109
    command="explorer C:\Users\HP\pictures"
    path="C:\Users\HP\pictures"
    status=system(command)
elseif m<=m110
    command="explorer C:\Users\HP\videos"
    status=system(command)
    path="C:\Users\HP\videos"
elseif m<=m111
    command="explorer C:\Users\HP\desktop"
    path="C:\Users\HP\desktop"
    status=system(command)
elseif m<=m112
    command="explorer C:"
    path="C:"
    status=system(command)
elseif m<=m113
    command="explorer E:"
    path="E:"
    status=system(command)
elseif m<=m114
    command="notepad &"
    status=system(command)
elseif m<=m115
    command="mkdir "+path+"\new_folder"
    status=system(command)
elseif m<=m116
    command="rd "+path+"\new_folder"
    status=system(command)
elseif m<=m117
    command="start chrome"
    status=system(command)
elseif  m<=m118
    command="start chrome www.facebook.com"
    status=system(command)
elseif m<=m119
    main()
   
else
    disp("Didn't understand your voice");
end