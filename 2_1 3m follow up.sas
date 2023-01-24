


/*CHECK FOR FOLLOW UP*/
PROC SQL;
   CREATE TABLE R2_fustatus_0 AS 
   SELECT 
		  t1.record_id, 
          t1.redcap_event_name, 
          t1.redcap_data_access_group, 
          t1.sdem_elig, 
          t1.sdem_visit, 
          t1.rand_date, 
          t1.ec_pc_yes, 
          t1.ec_all_2, 
          t1.ec_sign, 
          t1.ec_comments, 
          t1.rand_ele, 
          t1.rand_arm, 
          t1.rand_reason, 
          t1.rand_why, 
          t1.rand_other, 
          t1.FUDATE_3m, 
          t1.FUDATE_6m, 
          t1.FUDATE_9m, 
          t1.FUDATE_12m, 

/*follow up using at 3m*/
		  case when -31 <= T1.fudate_3m - (rand_date + 90) <= 62 then 'Completed within new window'
		  	   when T1.fudate_3m ne . then 'completed_with visitdate'
			   when T1.fudate_3m = . and rand_date ne . then
				    case when -31 <= today() - (rand_date + 90) <= 62 then 'pending in window'  /*Target date at 3m is rand_date+90*/
			             when -31 > today() - (rand_date + 90) then 'pending not in window yet'
					     else 'lossFU' end 
		       end as FU3m_status,	
           case when calculated FU3m_status in ('Completed within new window' 'completed_with visitdate') then 'completed'
		        when calculated FU3m_status in ( 'pending in window' 'pending not in window yet') then 'pending'
				when calculated FU3m_status in ('lossFU') then 'lossFU' end as FU3m_status_calc,


/*follow up using at 6m*/
		  case when -31 <= T1.fudate_6m - (rand_date + 2*90) <= 62 then 'Completed within new window'
		  	   when T1.fudate_6m ne . then 'completed_with visitdate'
			   when T1.fudate_6m = . and rand_date ne . then
				    case when -31 <= today() - (rand_date + 2*90) <= 62 then 'pending in window'  /*Target date at 6m is rand_date+90*/
			             when -31 > today() - (rand_date + 2*90) then 'pending not in window yet'
			             else 'lossFU' end 
		       end as FU6m_status,	
           case when calculated FU6m_status in ('Completed within new window' 'completed_with visitdate') then 'completed'
		        when calculated FU6m_status in ( 'pending in window' 'pending not in window yet') then 'pending'
				when calculated FU6m_status in ('lossFU') then 'lossFU' end as FU6m_status_calc,

/*follow up using at 9m*/
		  case when -31 <= T1.fudate_9m - (rand_date + 3*90) <= 62 then 'Completed within new window'
		  	   when T1.fudate_9m ne . then 'completed_with visitdate'
			   when T1.fudate_9m = . and rand_date ne . then
				    case when -31 <= today() - (rand_date + 3*90) <= 62 then 'pending in window'  /*Target date at 9m is rand_date+90*/
			             when -31 > today() - (rand_date + 3*90) then 'pending not in window yet'
			             else 'lossFU' end 
		       end as FU9m_status,	
           case when calculated FU9m_status in ('Completed within new window' 'completed_with visitdate') then 'completed'
		        when calculated FU9m_status in ( 'pending in window' 'pending not in window yet') then 'pending'
				when calculated FU9m_status in ('lossFU') then 'lossFU' end as FU9m_status_calc,

/*follow up using at 12m*/
		  case when -31 <= T1.fudate_12m - (rand_date + 4*90) <= 62 then 'Completed within new window'
		  	   when T1.fudate_12m ne . then 'completed_with visitdate'
			   when T1.fudate_12m = . and rand_date ne . then
				    case when -31 <= today() - (rand_date + 4*90) <= 62 then 'pending in window'  /*Target date at 12m is rand_date+90*/
			             when -31 > today() - (rand_date + 4*90) then 'pending not in window yet'
			             else 'lossFU' end 
		       end as FU12m_status,	
           case when calculated FU12m_status in ('Completed within new window' 'completed_with visitdate') then 'completed'
		        when calculated FU12m_status in ( 'pending in window' 'pending not in window yet') then 'pending'
				when calculated FU12m_status in ('lossFU') then 'lossFU' end as FU12m_status_calc


      FROM WORK.R2 t1 
	  ORDER BY t1.redcap_data_access_group,
	           T1.rand_date

;
 QUIT;


/*CHANGE ADDITIOANL TO MACRO*/
%macro FU_STATUS(MONTH, PARAMETER);
PROC SQL;
   CREATE TABLE R2_fustatus_0 AS 
   SELECT 
		  t1.*,
		  t2.dem_visit_3m as FUDATE_&MONTH.,


           case when -31 <= fudate_&MONTH. - (t1.rand_date + &PARAMETER.*90) <= 62 then 'Completed within new window'
		  	   when fudate_&MONTH. ne . then 'completed_with visitdate'
			   when fudate_&MONTH. = . and t1.rand_date ne . then
				    case when -31 <= today() - (t1.rand_date + &PARAMETER.*90) <= 62 then 'pending in window'  /*Target date at &MONTH. is t1.rand_date+90*/
			             when -31 > today() - (t1.rand_date + &PARAMETER.*90) then 'pending not in window yet'
					     else 'lossFU' end 
		       end as FU&MONTH._status,	
           case when calculated FU&MONTH._status in ('Completed within new window' 'completed_with visitdate') then 'completed'
		        when calculated FU&MONTH._status in ( 'pending in window' 'pending not in window yet') then 'pending'
				when calculated FU&MONTH._status in ('lossFU') then 'lossFU' end as FU&MONTH._status_calc


      FROM WORK.R2_fustatus_0 t1 left join r1_&MONTH. t2 on 
		  t1.record_id=t2.record_id
	  ORDER BY t1.redcap_data_access_group,
	           T1.rand_date

;
 QUIT;
%MEND;



%FU_STATUS(15m,5);
%FU_STATUS(18m,6);
%FU_STATUS(21m,7);
%FU_STATUS(24m,8);
%FU_STATUS(27m,9);


/*DATA CHECK*/
PROC SQL;
   CREATE TABLE R2_fustatus_CHECK AS 
   SELECT t1.record_id, 
          t1.redcap_data_access_group, 
          t1.rand_date, 
          t1.FUDATE_3m, 
          t1.FUDATE_9m, 
          t1.FUDATE_6m, 
          t1.FUDATE_12m, 
          t1.FUDATE_15m, 
          t1.FUDATE_18m, 
          t1.FUDATE_21m, 
          t1.FU3m_status, 
          t1.FU6m_status, 
          t1.FU9m_status, 
          t1.FU12m_status, 
          t1.FU15m_status, 
          t1.FU18m_status, 
          t1.FU21m_status, 
          t1.FU3m_status_calc, 
          t1.FU6m_status_calc, 
          t1.FU9m_status_calc, 
          t1.FU12m_status_calc,
          t1.FU15m_status_calc,
          t1.FU18m_status_calc,
          t1.FU21m_status_calc
      FROM WORK.R2_FUSTATUS_0 t1
      ORDER BY t1.redcap_data_access_group,
               t1.rand_date;
QUIT;

*********************************************************;
***************remove cohort 1 from montreal*********;

data R2_fustatus;
set R2_fustatus_0;
where 
record_id not in (
"001"
"002"
"003"
"006"
"007"
"009"
"010"
"011"
"012"
"013"
"014"
"015"
"018"
"019"
"020"
"022"
"2073-1"
"2073-2");
run;



proc freq data=R2_fustatus;
tables 

FU3m_status 
FU6m_status 
FU9m_status 
FU12m_status 

FU3m_status_calc 
FU6m_status_calc 
FU9m_status_calc 
FU12m_status_calc 

redcap_data_access_group*(rand_arm 

FU3m_status 
FU6m_status 
FU9m_status 
FU12m_status
FU15m_status
FU18m_status
FU21m_status

FU3m_status_calc 
FU6m_status_calc 
FU9m_status_calc 
FU12m_status_calc 
FU15m_status_calc 
FU18m_status_calc 
FU21m_status_calc 


);



run;


proc Tabulate data=r2_fustatus missing;
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
FU12m_status_calc;

keylabel COLPCTN='%' ;
table (all rand_arm 
FU3m_status 
FU6m_status 
FU9m_status 
FU12m_status 

FU3m_status_calc 
FU6m_status_calc 
FU9m_status_calc 
FU12m_status_calc)*(N)
,(redcap_data_access_group all)
;
run;


/*shorter table*/
proc Tabulate data=r2_fustatus missing;
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

*check here for DSMB Report 2022-12-12
C:\Users\panyue\Box\M2HepPrEP\M2HepPrEP – Trial Management\
MPI Meetings and Recruitment & Retention Reports\mtg materials
;


%macro FU_retention (VAR1);
title "overall retention summary for &var1.";
PROC FREQ DATA=r2_fustatus (WHERE=(&var1. IN ('completed', 'lossFU')));
TABLE &var1.;
run;
%mend;

%FU_retention(FU3m_status_calc);
%FU_retention(FU6m_status_calc);
%FU_retention(FU9m_status_calc);
%FU_retention(FU12m_status_calc);
%FU_retention(FU15m_status_calc);
%FU_retention(FU18m_status_calc);


%macro FU_retention (VAR1);
title "retention by site summary for &var1.";
PROC FREQ DATA=r2_fustatus (WHERE=(&var1. IN ('completed', 'lossFU')));
TABLE redcap_data_access_group*&var1./nopercent nocol;
run;
%mend;

%FU_retention(FU3m_status_calc);
%FU_retention(FU6m_status_calc);
%FU_retention(FU9m_status_calc);
%FU_retention(FU12m_status_calc);
%FU_retention(FU15m_status_calc);
%FU_retention(FU18m_status_calc);


%macro FU_retention (VAR1);
title "retention by tx group summary for &var1.";
PROC FREQ DATA=r2_fustatus (WHERE=(&var1. IN ('completed', 'lossFU')));
TABLE rand_arm*&var1./nopercent nocol;
run;
%mend;

%FU_retention(FU3m_status_calc);
%FU_retention(FU6m_status_calc);
%FU_retention(FU9m_status_calc);
%FU_retention(FU12m_status_calc);
%FU_retention(FU15m_status_calc);
%FU_retention(FU18m_status_calc);





%macro FU_retention (VAR1);
title "retention by site by tx group summary for &var1.";
PROC FREQ DATA=r2_fustatus (WHERE=(&var1. IN ('completed', 'lossFU')));
TABLE redcap_data_access_group*rand_arm*&var1./nopercent nocol;
run;
%mend;

%FU_retention(FU3m_status_calc);
%FU_retention(FU6m_status_calc);
%FU_retention(FU9m_status_calc);
%FU_retention(FU12m_status_calc);
%FU_retention(FU15m_status_calc);
%FU_retention(FU18m_status_calc);






/*ADDING CODE FOR TABLEU FOLLOW UP FIGURE*/

PROC SQL;
   CREATE TABLE R2_FUSTATUS_TABLEAU AS 
   SELECT t1.record_id, 
          t1.redcap_data_access_group, 
		  T1.RAND_ARM,
/*          t1.sdem_visit, */
          t1.rand_date, 
          t1.FUDATE_3m, 
          t1.FUDATE_6m, 
          t1.FUDATE_9m, 
          t1.FUDATE_12m, 
/*          t1.FUDATE_15m, */
/*          t1.FUDATE_18m, */
/*          t1.FUDATE_21m, */
/*          t1.FUDATE_24m, */
/*          t1.FUDATE_27m, */
          t1.FU3m_status_calc, 
          t1.FU6m_status_calc, 
          t1.FU9m_status_calc, 
          t1.FU12m_status_calc
/*          t1.FU15m_status_calc, */
/*          t1.FU18m_status_calc, */
/*          t1.FU21m_status_calc, */
/*          t1.FU24m_status_calc, */
/*          t1.FU27m_status_calc*/
      FROM WORK.R2_fustatus_0 t1
      WHERE t1.rand_arm NOT = .
	  ORDER BY REDCAP_DATA_ACCESS_GROUP, RAND_DATE
	  ;
QUIT;