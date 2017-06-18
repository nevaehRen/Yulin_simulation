
% function S2_SpacePlot(BG_F,BI_F,GL_F,SS_F,BG_R,BI_R,GL_R,SS_R)
 function [BG__F,BI__F,GL__F,BG__R,BI__R,GL__R]=S2_SpacePlot(BG_F,BI_F,GL_F,BG_R,BI_R,GL_R)

%%
Temp=[BG_F(2:end,:)];
BG__F=Temp(:);

Temp=[BI_F(2:end,:)];
BI__F=Temp(:);

Temp=[GL_F(2:end,:)];
GL__F=Temp(:);



BGD;
hold on
 plot3(BG__F,BI__F,GL__F,'Marker','>','Color',[0 0.5 0],'Linestyle','-','Linewidth',2)
 plot3(BG__F(end),BI__F(end),GL__F(end),'Marker','.','Markersize',30,'Color',[0 0 0.5])



%%
Temp=[BG_R(2:end,:)];
BG__R=Temp(:);

Temp=[BI_R(2:end,:)];
BI__R=Temp(:);

Temp=[GL_R(2:end,:)];
GL__R=Temp(:);



BGD;
hold on

 plot3(BG__R,BI__R,GL__R,'Marker','<','Color',[1 0 0],'Linestyle','-','Linewidth',2)
 plot3(BG__R(end),BI__R(end),GL__R(end),'Marker','.','Markersize',30,'Color',[0 0 0.5])



xlabel('BG ')
ylabel('Insulin ')
zlabel('Glucagon')
