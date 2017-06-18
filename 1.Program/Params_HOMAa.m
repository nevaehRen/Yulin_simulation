function Params = Params_HOMAa()
FactorGlucose=5.505/5.505;
Factorinsulin=76/76;
FactorGlucagon=18.86/18.86;

Params.A_BG=0.2971;     % mmol/min       
Params.K_GLBG=39.1878*FactorGlucagon;    %pmol/L
Params.K_BIBG=345.6789*Factorinsulin; 

Params.B_BG=0.7213;
Params.K_BIBGD=531.9;
Params.b_BG=0.0106;
Params.K_BGBGD=8*FactorGlucose;

Params.K_BGBG=114.9425*FactorGlucose;


Params.A_BI=34.7888*Factorinsulin;    % pmol islet/min
Params.K_BGBI=14.0724*FactorGlucose;   %mmol/l
Params.K_GLBI=13.3626*FactorGlucagon;   %pmol/l
Params.b_BI=0.1; % min-1


Params.A_GL=13.0926*FactorGlucagon;    % pmol islet/min
Params.K_BGGL=14.0666*FactorGlucose; %mmol/l
Params.K_BIGL=55.9268*Factorinsulin;
Params.b_GL=0.3333; % min-1
end