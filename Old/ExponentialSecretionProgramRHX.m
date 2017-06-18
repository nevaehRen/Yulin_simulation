

%% 2016-09-14 RHX
%  Describe basic equal probability secretion model.
%%
clc;
clear;

%% First Step: Define the pool 
n0=45;   % Pool Size
p=0.150; % Release probability(S-1)
dt=.1;
t=50;    % Time length


%% Second Step: Secretion Process
n=[];
Temp=n0;

for i=0:dt:t
Temp=Temp-Temp*p*dt;
n=[n;Temp];
end

%% Third Step: Plotting Result
figure;

hold on
plot(0:dt:t,n0-n,'Linewidth',3,'Color','r')

f=@(t)n0*exp(p*t)

xlabel('Time')
ylabel('Vesicle Number')
