clear;
Data_F=[
0	21.5	-0.222544	4.57842
2	21.3	1.84892	   -0.455297
4	22.4	4.862533	0.752795
6	18.9	6.116662	0.352795
6	15.9	7.279069	-0.656646
8	11.8	7.495309	0.752795
8	8.3	8.338849	-0.455297
8	3.5	7.585931	1.759539
8	3.8	7.52565	0.551446
8	4.3	6.30093	0.752795
10	4.1	10.614184	1.155493
10	2.9	10.300087	0.954144];

Data_R=[10	2.9	10.300087	0.954144
6	2.9	9.056109	1.759539
0	3.9	5.151104	0.350098
0	3.6	3.908962	0.752795
0	3.9	1.991108	-0.0526
0	4.1	1.328583	0.1
0	4.8	0.4792	1.155493
0	5.2	0.894097	-0.656646
0	7.4	0.393973	1.55819
0	7.2	0.001511	0.148749
0	8.4	0.001511	0.148749
0	9.3	0.133923	-0.0526
0	7.4	0.045821	-0.0526
0	10.3	-0.042969	-1.059343
0	10.9	0.089959	-0.455297
0	11	-0.042969	2.766282
0	10.8	0.133923	-0.455297
0	13.9	-0.042969	1.356841
0	13.8	0.045821	-0.253948];

% increase time resolution
[T ~]=size(Data_F(:,3));
T=15*T;

BI_F = interp1(1:15:T,Data_F(:,3),1:T,'spline');
BG_F = interp1(1:15:T,Data_F(:,2),1:T,'spline');
GL_F = interp1(1:15:T,Data_F(:,4),1:T,'spline');

[T ~]=size(Data_R(:,3));
T=15*T;
BI_R = interp1(1:15:T,Data_R(:,3),1:T,'spline');
BG_R = interp1(1:15:T,Data_R(:,2),1:T,'spline');
GL_R = interp1(1:15:T,Data_R(:,4),1:T,'spline');


figure(11)
BGD;
plot(BI_F(1:end-15),BG_F(1:end-15),'Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
hold on 
plot(BI_R(1:end-15),BG_R(1:end-15),'Color',[0.9 0   0],'Linestyle','-','Linewidth',2)

plot(Data_F(:,3),Data_F(:,2),'.','Color',[0   0.5 0],'Markersize',23)
plot(Data_R(:,3),Data_R(:,2),'.','Color',[0.9 0   0],'Markersize',23)

plot(Data_F(end,3),Data_F(end,2),'k.','Markersize',33)
plot(Data_R(end,3),Data_R(end,2),'k.','Markersize',33)


xlabel('BI')
ylabel('BG')
title('Durian')




figure(14)
BGD;
plot3(BI_F(1:end-15),BG_F(1:end-15),GL_F(1:end-15),'Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
hold on 
plot3(BI_R(1:end-15),BG_R(1:end-15),GL_R(1:end-15),'Color',[0.9 0   0],'Linestyle','-','Linewidth',2)

plot3(Data_F(:,3),Data_F(:,2),Data_F(:,4),'.','Color',[0   0.5 0],'Markersize',23)
plot3(Data_R(:,3),Data_R(:,2),Data_R(:,4),'.','Color',[0.9 0   0],'Markersize',23)

xlabel('BI')
ylabel('BG')
zlabel('GL')
view(0,90)
title('Durian')



figure(15)
BGD;
plot(GL_F(1:end-15),BG_F(1:end-15),'Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
hold on 
plot(GL_R(1:end-15),BG_R(1:end-15),'Color',[0.9 0   0],'Linestyle','-','Linewidth',2)

plot(Data_F(:,4),Data_F(:,2),'.','Color',[0   0.5 0],'Markersize',23)
plot(Data_R(:,4),Data_R(:,2),'.','Color',[0.9 0   0],'Markersize',23)

plot(Data_F(end,4),Data_F(end,2),'k.','Markersize',33)
plot(Data_R(end,4),Data_R(end,2),'k.','Markersize',33)

xlabel('GL')
ylabel('BG')
title('Durian')



figure(16)
BGD;
plot(BI_F(1:end-15),GL_F(1:end-15),'Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
hold on 
plot(BI_R(1:end-15),GL_R(1:end-15),'Color',[0.9 0   0],'Linestyle','-','Linewidth',2)


plot(Data_F(:,3),Data_F(:,4),'.','Color',[0   0.5 0],'Markersize',23)
plot(Data_R(:,3),Data_R(:,4),'.','Color',[0.9 0   0],'Markersize',23)


xlabel('BI')
ylabel('GL')
title('Emblic') 







% close all;
% figure(1)
% BGD;
% plot(Data_F(:,3),Data_F(:,2),'Marker','>','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
% hold on 
% plot(Data_R(:,3),Data_R(:,2),'Marker','>','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
% 
% xlabel('BI')
% ylabel('BG')
% title('Durian')
% 
% 

figure(2)
BGD;
plot(Data_F(:,1),Data_F(:,3),'Marker','>','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
hold on 
plot(Data_R(:,1),Data_R(:,3),'Marker','>','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
xlim([-0.03 max(Data_F(:,1))])

xlabel('Infusion Rate')
ylabel('BI')
title('Durian')
% 
% 
% 
% figure(3)
% BGD;
% plot3(Data_F(:,3),Data_F(:,2),Data_F(:,1),'Marker','>','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
% hold on 
% plot3(Data_R(:,3),Data_R(:,2),Data_R(:,1),'Marker','>','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
% 
% xlabel('BI')
% ylabel('BG')
% zlabel('Infusion Rate')
% title('Durian')
% 
% 
% figure(4)
% BGD;
% plot3(Data_F(:,3),Data_F(:,2),Data_F(:,4),'Marker','>','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
% hold on 
% plot3(Data_R(:,3),Data_R(:,2),Data_R(:,4),'Marker','>','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
% 
% xlabel('BI')
% ylabel('BG')
% zlabel('GL')
% view(0,90)
% title('Durian')
% 
% 
% 
% figure(5)
% BGD;
% plot(Data_F(:,4),Data_F(:,2),'Marker','>','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
% hold on 
% plot(Data_R(:,4),Data_R(:,2),'Marker','>','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
% 
% xlabel('GL')
% ylabel('BG')
% title('Durian')
% 
% 
% 
% 
% 
% 
