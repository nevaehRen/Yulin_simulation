

clear;clc;

load RatData.mat

Rat=Fig;

%% Part I: parameters 

%% bodyweight and decay speed
Params.BodyWeight =  Rat.BodyWeight;
Params.tau        =  0.54;
Params.delay      =  0;

%% time and injnction speed
Params.injection_speed = Rat.t_InfusionRate_BG';
t = Params.injection_speed(1,end);

%% solution concentration, blood volumn, 
Params.solution_insulin_concentration=0.3*7e6;
Params.Blood_Volumn = 0.074*Params.BodyWeight*1e-3;

%% Part II: Simulation
INIt=[0]; dt=1;
[Time,sol] = ode15s('Insulin',[0:dt:t],INIt, [], Params);

figure(1);
hold on
% plot(Time,sol(:,1)/max(sol(:,1)),'r','Linewidth',3)
plot(Time,sol(:,1),'r','Linewidth',3)

figure(1);
BI_real=Rat.t_BI_GL;

% plot(BI_real(:,1),BI_real(:,2)/max(BI_real(:,2)),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',15)
 plot(BI_real(:,1),BI_real(:,2),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',15)


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

    
 

    
    
    