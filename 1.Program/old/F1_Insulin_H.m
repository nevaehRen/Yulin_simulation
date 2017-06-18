

clear;clc;



%% Part I: parameters
t=690;
%% time and injnction speed
Params.injection_speed=[0	0
60	2
120	2
180	2
240	2
300	2
360	2
420	2
480	2
510	0
540	0
600	0
660	0
690	0]';

%% bodyweight
Params.BodyWeight=232;
%% solution concentration, blood volumn, and decay speed
Params.solution_insulin_concentration=0.3*7e6;
Params.Blood_Volumn = 0.074*Params.BodyWeight*1e-3;
Params.tau =  0.1;

%% Part II: Simulation
INIt=[0]; dt=1;
[Time,sol] = ode15s('Insulin',[0:dt:t],INIt, [], Params);

figure(1);
hold on
plot(Time,sol(:,1)/max(sol(:,1)),'r','Linewidth',3)
%  plot(Time,sol(:,1),'r','Linewidth',3)

figure(1);
BI_real=[0.089524	0
1.587931	60
2.177717	120
2.132019	180
3.128519	240
2.634219	300
1.146822	360
2.860498	420
1.146822	480
0.8	        510
0.359674	540
0.051841	600
-0.022846	660
0.089524	690];

plot(BI_real(:,2),BI_real(:,1)/max(BI_real(:,1)),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',15)
%  plot(BI_real(:,2),BI_real(:,1),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',15)


set(gcf,'color',[1 1 1],'Position',[10  6  1200 600])
set(gca, 'LineWidth',3) 

% set(gca, 'XTick', [0 100 200 300 400 500]) 
% set(gca, 'YTick', [0 1])
% set(gca, 'xticklabel', [0 550]) 
% set(gca, 'yticklabel', [-0.1 1.1])
% set(gca, 'xlim', [0 550]) 
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

    
 

    
    
    