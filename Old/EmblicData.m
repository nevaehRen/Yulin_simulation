clear;
Data_F=[0	26.6	0.045821	6.390559
2	26.8	0.089959	1.759539
2	26.5	0.351083	1.960887
4	26.2	3.034472	0.954144
4	22.7	4.267924	-0.656646
6	21.5	6.723208	0.350098
6	13.5	7.071919	-1.059343
8	6.9	8.379147	-1.059343
8	3.9	9.929457	-0.0526
10	4.3	11.964182	1.759539
10	3.8	11.690578	-0.0526
10	3.7	11.802816	1.960887
10	4.7	11.888134	2.363585];

Data_R=[10	4.7	11.888134	2.363585
6	3.2	9.776027	1.759539
4	3.5	7.403473	1.960887
2	3.6	4.839785	0.551446
2	3.6	4.192688	1.155493
2	3.9	3.61205	-0.0526
2	3.9	3.387156	0.752795
0	4.3	1.630304	0.752795
0	5.8	1.173241	0.148749
0	7.5	0.563685	-0.455297
0	6.8	0.177713	-1.059343
0	8.2	0.089959	-0.455297
0	8.7	0.089959	-0.857994
0	9.5	0.045821	-0.857994
0	8.5	0.001511	-0.455297
0	9.9	-0.042969	0.551446
0	9	-0.13243	-0.0526
0	10.2	-0.087617	-0.656646
0	10.5	0.221325	-0.656646
0	12.5	-0.13243	0.350098
0	13.1	-0.13243	-0.253948
0	13.2	-0.042969	0.148749
0	14.8	0.089959	-0.0526
0	15.4	0.001511	0.350098
0	16.6	-0.13243	-0.253948
0	16.8	-0.177407	0.752795
0	18	-0.13243	0.350098
0	17	-0.13243	1.155493
0	18.2	-0.13243	1.960887
0	19.7	-0.042969	2.564933
0	19.8	0.045821	4.377072
0	22.9	-0.087617	3.370328
0	24.2	-0.13243	3.571677
0	23.1	-0.13243	3.168979];

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
title('Emblic') 




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
title('Emblic') 



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
title('Emblic') 



figure(16)
BGD;
plot(BI_F(1:end-15),GL_F(1:end-15),'Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
hold on 
plot(BI_R(1:end-15),GL_R(1:end-15),'Color',[0.9 0   0],'Linestyle','-','Linewidth',2)

plot(Data_F(:,3),Data_F(:,4),'.','Color',[0   0.5 0],'Markersize',23)
plot(Data_R(:,3),Data_R(:,4),'.','Color',[0.9 0   0],'Markersize',23)

plot(Data_F(end,3),Data_F(end,4),'k.','Markersize',33)
plot(Data_R(end,3),Data_R(end,4),'k.','Markersize',33)


xlabel('BI')
ylabel('GL')
title('Emblic') 







% close all;
% figure(1)
% BGD;
% plot(Data_F(:,3),Data_F(:,2),'Marker','.','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
% hold on 
% plot(Data_R(:,3),Data_R(:,2),'Marker','.','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
% 
% xlabel('BI')
% ylabel('BG')
% title('Emblic') 
% 
% 
% 
figure(2)
BGD;
plot(Data_F(:,1),Data_F(:,3),'Marker','.','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
hold on 
plot(Data_R(:,1),Data_R(:,3),'Marker','.','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
xlim([-0.03 max(Data_F(:,1))])

xlabel('Infusion Rate')
ylabel('BI')
title('Emblic') 

% 
% 
% figure(3)
% BGD;
% plot3(Data_F(:,3),Data_F(:,2),Data_F(:,1),'Marker','.','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
% hold on 
% plot3(Data_R(:,3),Data_R(:,2),Data_R(:,1),'Marker','.','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
% 
% xlabel('BI')
% ylabel('BG')
% zlabel('Infusion Rate')
% title('Emblic') 
% 
% 
% figure(4)
% BGD;
% plot3(Data_F(:,3),Data_F(:,2),Data_F(:,4),'Marker','.','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
% hold on 
% plot3(Data_R(:,3),Data_R(:,2),Data_R(:,4),'Marker','.','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
% 
% xlabel('BI')
% ylabel('BG')
% zlabel('GL')
% view(0,90)
% title('Emblic') 
% 
% 
% 
% figure(5)
% BGD;
% plot(Data_F(:,4),Data_F(:,2),'Marker','.','Color',[0   0.5 0],'Linestyle','-','Linewidth',2)
% hold on 
% plot(Data_R(:,4),Data_R(:,2),'Marker','.','Color',[0.9 0   0],'Linestyle','-','Linewidth',2)
% 
% xlabel('GL')
% ylabel('BG')
% title('Emblic') 
% 
% 
% 
% 
% 
% 
