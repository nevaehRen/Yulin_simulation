clear;
clc;

Params = Params_HOMAa();

load RatData.mat
Rat  =  Fig;

%% Part I: parameters 

%% bodyweight and decay speed
Params.BodyWeight =  Rat.BodyWeight;
Params.tau        =  0.54;
Params.delay      =  0;


%% time and injnction speed
Params.injection_speed = Rat.t_InfusionRate_BG';
t = Params.injection_speed(1,end);


%% solution concentration, blood volumn, and decay speed
Params.solution_insulin_concentration=0.3*7e6;
Params.Blood_Volumn = 0.074*Params.BodyWeight*1e-3;


INIt=[28 0 72];
[Time,sol] = ode15s('Glucose',[0:t],INIt, [], Params);

% 
% % - % - % - % - % - % - % - % - %
% %-----   Time Series Plot  -----%
% % - % - % - % - % - % - % - % - %
% close;
figure(1)
set(gcf,'Position',[30   186  630 600], 'color','w');

subplot(3,1,1)
hold on
plot(Time,sol(:,1),'r','Linewidth',3);
xlabel('t(min)');
ylabel('BG(mmol)');

subplot(3,1,2)
hold on
plot(Time,sol(:,2),'r','Linewidth',3);
xlabel('t(min)');
ylabel('BI(pmol/L)');

subplot(3,1,3)
plot(Time,sol(:,3),'r','Linewidth',3);
xlabel('t(min)');
ylabel('GL(pmol/L)');


figure(1);
subplot(3,1,1)
plot(Params.injection_speed(1,:),Params.injection_speed(3,:),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',10)

subplot(3,1,2)
BI_real=Rat.t_BI_GL;
plot(BI_real(:,1),BI_real(:,2),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',10)


% subplot(3,1,3); hold on;
% plot(BI_real(:,1),BI_real(:,3),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',10)


