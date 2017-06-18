function dy = Insulin(t,y,~, Params)

    
BI=y(1);
t=t-Params.delay;

Temp = Params.injection_speed(2,(Params.injection_speed(1,:)>=t));

Vi   =   Temp(1) *1e-6;

C    =   Params.solution_insulin_concentration;
Blood_Volumn = 0.074*Params.BodyWeight*1e-3;

dy = [Vi*C/Blood_Volumn - Params.tau*BI];
   

end








