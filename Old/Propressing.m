function Data_new=Propressing(Data,Resolution,Visualision)
% 
% Data=[0            1           2           4           6
%       1.032432     nan         nan         nan         nan
%       1.032432     nan         nan         nan         nan
%       1.032432     nan         nan         nan         nan
%       1.032432     0.85796     1.905961    1.556316    6.479966
%       1.032432     nan         nan         nan         nan
%       1.032432     1.206982    1.032432    2.0809      10.92898];
% Resolution = 0.5;
% Visualision = 1;


% Step1: get headline out: FusionRate, and specify columns number: Cols 
FusionRate=Data(1,:);
Data(1,:)=[];

Cols=sum(size(FusionRate))-1;

% Step2: fill nan data using method spline, also resolution before:n_old n_new

[n_old ~]=size(Data(:));
x  = 1:n_old;
y  = Data(:);
x1 = 1:Resolution:(n_old+1);
y1 = interp1(x,y,x1,'spline');
x1 = x1(1:end-1);
y1 = y1(1:end-1);
n_new    = sum(size(x1))-1;
Data_new = y1;

% Step3: reshape and add headline
Data_new = reshape(Data_new,n_new/Cols,Cols);
Data_new = [FusionRate;Data_new];



if Visualision
    figure
    plot(x,y,'k.')
    hold on
    plot(x1,y1,'r')
    pause(.02)
    close;
end
 
%       'nearest'  - nearest neighbor interpolation
%       'linear'   - linear interpolation
%       'spline'   - piecewise cubic spline interpolation (SPLINE)
%       'pchip'    - shape-preserving piecewise cubic interpolation
%       'cubic'    - same as 'pchip'
%       'v5cubic'  - the cubic interpolation from MATLAB 5, which does not
%                    extrapol
end