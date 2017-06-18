
clear;clc;

%% Part I: parameters
t=500;
%% time and injnction speed
Params.injection_speed=[0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,105,110,115,120,125,130,135,140,145,150,155,160,165,170,175,180,185,190,195,200,205,210,215,220,225,230,235,240,245,250,255,260,265,270,275,280,285,290,295,300,305,310,315,320,325,330,335,340,345,350,355,360,365,370,375,380,385,390,395,400,405,410,415,420,425,430,435,440,445,450,455,460,465,470,475,480,485,490,495,500,505,510,515,520,525;0,2,2,2,2,4,4,4,6,6,6,6,6,6,8,8,8,8,8,8,8,8,6,6,6,6,6,8,8,8,8,10,10,10,10,10,10,6,6,6,6,4,4,4,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
%% bodyweight
Params.BodyWeight=278;
%% solution concentration, blood volumn, and decay speed
Params.solution_insulin_concentration=0.3*7e6;
Params.Blood_Volumn = 0.074*Params.BodyWeight*1e-3;
Params.tau =  0.1*5.4;

%% Part II: Simulation
INIt=[0]; dt=1;
[Time,sol] = ode15s('Insulin',[0:dt:t],INIt, [], Params);

figure(1);
hold on
% plot(Time,sol(:,1)/max(sol(:,1)),'r','Linewidth',3)
 plot(Time,sol(:,1),'r','Linewidth',3)

figure(1);
BI_real=[-37.8324800000000,314.316400000000,826.630610000000,1039.83254000000,1237.44173000000,1274.20253000000,1417.60433000000,1289.60827000000,1279.36050000000,1071.15810000000,1804.41128000000,1751.01479000000,1539.53853000000,875.687680000000,664.523540000000,338.488360000000,225.859110000000,81.4640000000000,151.996490000000,66.9754100000000,0.256870000000000,0.256870000000000,22.7669100000000,7.78957000000000,-7.30473000000000,15.2930300000000,-7.30473000000000,22.7669100000000,-7.30473000000000,7.78957000000000;0,15,35,50,65,80,95,110,125,145,165,180,195,240,255,285,300,315,330,345,360,375,390,405,420,435,450,465,510,525]';
% plot(BI_real(:,2),BI_real(:,1)/max(BI_real(:,1)),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',15)
 plot(BI_real(:,2),BI_real(:,1),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',15)


set(gcf,'color',[1 1 1],'Position',[10  6  1200 600])
set(gca, 'LineWidth',3) 

set(gca, 'XTick', [0 100 200 300 400 500]) 
% set(gca, 'YTick', [0 1])
set(gca, 'xticklabel', [0 550]) 
% set(gca, 'yticklabel', [-0.1 1.1])
set(gca, 'xlim', [0 550]) 
% set(gca, 'ylim', [-0.1 1.1])
xlabel('time (min)') 
ylabel('insulin concentration')


set(gca,'FontName','American Typewriter','FontSize',20)
h=legend('simulation','experiment');
set(h,'edgeColor',[1 1 1],'Location','northeast')





% 
% dXdt  = Derivation(sol,dt);
% Theta = BasisFunction(sol);
% 
% 
% csvwrite('Python/X.csv',Theta)
% csvwrite('Python/Y.csv',dXdt)
% 

    
 

    
    
    