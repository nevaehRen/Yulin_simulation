%
% 
% 
% 
%%%% Fig
Figg_F=[22.8;21.9;21.7;22;23.3;23.4];
%%%%% Emblic
Figg_F= [25;24.1;22.6;21.4;23.4;23.7];

figure(11)

x=[-1 -1 12 12]; y=[min(Figg_F) max(Figg_F) max(Figg_F) min(Figg_F)];
patch(x,y,'r','facecolor',[0 0.5 0],'edgecolor','none','facealpha',0.2)


%%%% Fig
Figg_R=[2.3;2.7;2.4;2.7;3;2.4];
%%%%% Emblic
Figg_R=[2.8;3.8;5.4;5.2];



figure(11)
hold on
x=[-1 -1 12 12]; y=[min(Figg_R) max(Figg_R) max(Figg_R) min(Figg_R)];
patch(x,y,'r','facecolor',[1 0 0],'edgecolor','none','facealpha',0.2)