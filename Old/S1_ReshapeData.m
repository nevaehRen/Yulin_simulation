
function S1_ReshapeData(BG,IIRtot,Type)
%
%
%  BG=BG_R;
%  IIRtot=[BG_R(1,:)';BG_R(1,:)']';   
%    
%%
[m n]=size(BG(2:end,:)); % m:sample number  n:IIR rate

IIR=BG(1,:);

Interval=Nearest(IIR,IIRtot)/m;
IIR_temp=IIR;

if Type==1
    
    BG_temp=BG(2,:);
    for i=1:m-1
        IIR=[IIR;IIR_temp+i*Interval'];
    end
    
Colors=[0 0.5 0];
sign='>';

else
    
    BG_temp=BG(end,:);
    for i=1:m-1
        IIR=[IIR_temp+i*Interval';IIR];
    end
    
Colors=[1 0 0];  
sign='<';
end

IIR=reshape(IIR,1,m*n);
BG=reshape(BG(2:end,:),1,m*n);

[IIR I]=sort(IIR);
BG=BG(I);

BGD;
hold on
 plot(IIR_temp,BG_temp,'Marker','.','Markersize',30,'Color',Colors,'Linestyle','none')
plot(IIR,BG,'Marker',sign,'Color',Colors,'Linestyle','-','Linewidth',2)

xlabel('Insulin Infusion Rate')
ylabel('Concentration')

