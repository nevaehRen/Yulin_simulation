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
Params.BodyWeight=260;
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
0	0	25.7
60	2	22.7
120	2	14.4
180	2	5.8
240	2	5.8
300	2	3.7
360	2	6.1
420	2	6.7
480	0	5.2
510	0	5.3
540	0	6.7
600	0	10.1
660	0	14.7
690	0	12];



plot(BI_real(:,1),BI_real(:,3),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',10)
%  plot(BI_real(:,2),BI_real(:,1),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',15)

subplot(3,1,2)
BI_real=[11.4411672	0
202.9375818	60
278.3122326	120
272.4720282	180
399.8247282	240
336.6531882	300
146.5638516	360
365.5716444	420
146.5638516	480
0	510
45.9663372	540
6.6252798	600
-2.9197188	660
11.4411672	690];

plot(BI_real(:,2),BI_real(:,1),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',10)


subplot(3,1,3); hold on;

GL_real = [0.854246	0
0.300756	60
0.300756	120
0.485253	180
0.300756	240
2.699216	300
0.669749	360
4.544186	420
1.407737	480
1.3	510
1.22324	540
0.854246	600
1.592234	660
2.330222	690];

plot(GL_real(:,2),GL_real(:,1),'--','color',[0 0.5 0],'linewidth',2,'marker','.','markersize',10)


