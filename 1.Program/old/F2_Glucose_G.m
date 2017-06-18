clear;
clc;

Params = Params_HOMAa();


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
Params.BodyWeight=252;
%% solution concentration, blood volumn, and decay speed
Params.solution_insulin_concentration=0.3*7e6;
Params.Blood_Volumn = 0.074*Params.BodyWeight*1e-3;
Params.tau =  0.1;


INIt=[28 0 72];

[Time,sol] = ode15s('Glucose',[0:690],INIt, [], Params);

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
%%%--Durian--%%%
BI_real=[
0	0	24.7
60	2	26.4
120	2	24.8
180	2	15.6
240	2	9.8
300	2	3.7
360	2	4.2
420	2	4.2
480	2	4.2
510	2	5.4
540	0	7.3
600	0	8.9
660	0	13.4
690	0	14];



plot(BI_real(:,1),BI_real(:,3),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',10)
%  plot(BI_real(:,2),BI_real(:,1),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',15)

subplot(3,1,2)
BI_real=[-0.022846	0
1.677775	60
2.497593	120
3.304403	180
3.084172	240
3.773503	300
3.260668	360
2.451956	420
0.399173	480
0.127436	540
0.014384	600
0.014384	660
-0.022846	690];

plot(BI_real(:,2),BI_real(:,1),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',10)


% subplot(3,1,3); hold on;
% 
% GL_real = [0.854246	0
% 0.300756	60
% 0.300756	120
% 0.485253	180
% 0.300756	240
% 2.699216	300
% 0.669749	360
% 4.544186	420
% 1.407737	480
% 1.3	510
% 1.22324	540
% 0.854246	600
% 1.592234	660
% 2.330222	690];
% 
% plot(GL_real(:,2),GL_real(:,1),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',10)
% 
% 
