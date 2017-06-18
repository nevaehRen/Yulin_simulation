 function dy = Glucose(t,y,~, Params)
 
BG=y(1);
BI=y(2);
GL=y(3);
t=t-10;



%% Insulin part

% infusion rate
Temp = Params.injection_speed(2,(Params.injection_speed(1,:)>=t));
Vi   =   Temp(1) *1e-6;
% solution concentration
C    =   Params.solution_insulin_concentration;
% blood volumn
Blood_Volumn = 0.074*Params.BodyWeight*1e-3;

dy = [0.4*((Params.A_BG*((GL^2/(Params.K_GLBG^2+GL^2))*(Params.K_BIBG^2/(Params.K_BIBG^2+BI^2)))-(BG/Params.K_BGBG)-Params.B_BG*BI.^2./(BI.^2+Params.K_BIBGD.^2).*(BG.^2/(BG.^2+Params.K_BGBGD.^2)))); 
            Vi*C/Blood_Volumn - Params.tau*BI;
            0*(Params.A_GL*((BG^2/(Params.K_BGGL^2+BG^2))+(Params.K_BIGL^2/(Params.K_BIGL^2+BI^2)))-Params.b_GL*GL); ];                                        



    
    
