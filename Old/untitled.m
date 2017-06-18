clear;
clc;

%% --  Grape
% BG_BI=[
% 0	24.7	-0.022846
% 1	26.4	1.677775
% 2	24.8	2.497593
% 3	15.6	3.304403
% 4	9.8	    3.084172
% 5	3.7	    3.773503
% 6	4.2	    3.260668
% 7	4.2	    2.451956
% 8	4.2	    0.399173
% 8.5	5.4	    0.399173
% 9	7.3	    0.127436
% 10	8.9	    0.014384
% 11	13.4	0.014384
% 11.5	14	-0.022846];



%% --  Honeydew
% BG_BI=[
% 0	25.7	0.089524
% 1	22.7	1.587931
% 2	14.4	2.177717
% 3	5.8	2.132019
% 4	5.8	3.128519
% 5	3.7	2.634219
% 6	6.1	1.146822
% 7	6.7	2.860498
% 8	5.2	1.146822
% 8.5	5.3	1.146822
% 9	6.7	0.359674
% 10	10.1	0.051841
% 11	14.7	-0.022846
% 11.5	12	0.089524];



%% --  Honeydew  day 4
BG_BI=[0	33.3	0.165574	8.972114
1	26	2.269153	8.787617
2	21.5	2.223431	5.097677
3	20	1.498561	5.651168
4	14.4	1.677775	2.514719
5	6.3	1.632797	2.330222
6	4.8	1.017682	3.806198
7	6	0.723133	5.651168
10	6.1	0.478842	4.91318];

GL   = BG_BI(1:6,4);




Time = BG_BI(1:6,1);
BG   = BG_BI(1:6,2);
BI   = BG_BI(1:6,3);


figure(13)
subplot(4,1,1:3)
BGD;
hold on 
[AH,H1,H2]=plotyy(Time,BG,Time,GL);

set(H1,'Color','k','Marker','.','Linewidth',3,'markersize',18)
set(H2,'Color','r','Marker','.','Linewidth',3,'markersize',18)

subplot(4,1,4)
BGD;
plot(Time,BI,'b.-','Linewidth',3,'markersize',18)

% legend('BG','BI','GL')
xlabel('Time')


figure(14)
BGD;
hold on 
plot(BI,BG,'g.-','Linewidth',3)
xlabel('BI')
ylabel('BG')

figure(15)
BGD;
plot(BG(1:5),GL(1:5),'b.-','Linewidth',3,'markersize',18)
hold on
plot(BG(1),GL(1),'b+','Linewidth',3,'markersize',8)
text(BG(1)-1,GL(1)-.5,'start','Fontsize',20,'FontName','Comic Sans MS')
text(BG(5)+1,GL(5),'end','Fontsize',20,'FontName','Comic Sans MS')

xlabel('BG')
ylabel('GL')







% hold on 
% plot(BI(1:end-1),BG(1:end-1)-BG(2:end),'r.-')
% xlabel('BI')
% ylabel('BG''')