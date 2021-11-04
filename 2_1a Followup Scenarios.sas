
/*only pre-covid (rand_date before March 16 2020) check*/
DATA PRE_COVID;
SET r2_fustatus;
IF rand_date <= '16MAR2020'D;
RUN;

DATA POST_COVID;
SET r2_fustatus;
IF rand_date >= '01OCT2020'D;
RUN;




/*proc Tabulate data=r2_fustatus(where=(rand_date <= '16MAR2020'D)) missing;*/
proc Tabulate data=PRE_COVID missing;
class redcap_data_access_group sdem_elig ec_pc_yes ec_all_2 rand_ele rand_arm 

FUDATE_3m 
FUDATE_6m 
FUDATE_3m 
FUDATE_6m 

FU3m_status 
FU6m_status 
FU9m_status 
FU12m_status 

FU3m_status_calc 
FU6m_status_calc 
FU9m_status_calc 
FU12m_status_calc
FU15m_status_calc
FU18m_status_calc
FU21m_status_calc
;

keylabel COLPCTN='%' ;
table (all rand_arm 
FU3m_status_calc 
FU6m_status_calc 
FU9m_status_calc 
FU12m_status_calc
FU15m_status_calc
FU18m_status_calc
FU21m_status_calc

)*(N)
,(redcap_data_access_group all)
;
run;



/*AFTER pre-covid (rand_date AFTER OCT 2020) check*/


/*proc Tabulate data=r2_fustatus(where=(rand_date >= '01OCT2020'D)) missing;*/
proc Tabulate data=POST_COVID missing;
class redcap_data_access_group sdem_elig ec_pc_yes ec_all_2 rand_ele rand_arm 

FUDATE_3m 
FUDATE_6m 
FUDATE_3m 
FUDATE_6m 

FU3m_status 
FU6m_status 
FU9m_status 
FU12m_status 

FU3m_status_calc 
FU6m_status_calc 
FU9m_status_calc 
FU12m_status_calc
FU15m_status_calc
FU18m_status_calc
FU21m_status_calc
;

keylabel COLPCTN='%' ;
table (all rand_arm 
FU3m_status_calc 
FU6m_status_calc 
FU9m_status_calc 
FU12m_status_calc
FU15m_status_calc
FU18m_status_calc
FU21m_status_calc

)*(N)
,(redcap_data_access_group all)
;
run;