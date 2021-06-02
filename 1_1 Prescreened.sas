
<<<<<<< HEAD:1_1 Prescreened.sas
/*R2 HAVE ALL SCREENING DATA*/
=======

/*Request from Gaby and Lauren, 03/17/2021 */

/*Total # pre-screened and of those, # eligible; ineligible ?*/
/*Total # screened and of those, # eligible; ineligible; in progress*/
/*Of those who screened eligible, # randomized; ( # pending randomization*/
/*Of those randomized, # assigned to on-site vs. off-site group; # who completed 3mo follow-ups; # lost to follow-up; # who withdrew (per pt or study clinician request)*/
/*Of those who screened ineligible, summary of reasons for ineligibility*/

libname m2hep 'C:\Users\panyue\Box\M2HepPrEP\Report\SAS Data Export';
libname redcap 'C:\Users\panyue\Box\M2HepPrEP\Report\REDCap Data Export';

data redcap;
set redcap.redcap_2021_05_19_2158;
if record_id not in ('0000-testid', '0000-testid2');
/*if record_id in ('2073-2') then sdem_elig=1;*/

run;

data r1;
set redcap(where=(redcap_event_name='visit_1__screening_arm_1'));
run;

data r1_base;
set redcap(where=(redcap_event_name='visit_baseline__ra_arm_1'));
run;

data r1_3m;
set redcap(where=(redcap_event_name='3m_arm_1'));
keep record_id rand_arm dem_visit_3m;
run;

data r1_6m;
set redcap(where=(redcap_event_name='6m_arm_1'));
keep record_id rand_arm dem_visit_3m;
run;

>>>>>>> main:1_Prescreened.sas

PROC SQL;
   CREATE TABLE R2 AS 
   SELECT t1.record_id, 
          t1.redcap_event_name, 
          t1.redcap_data_access_group, 
          t1.sdem_elig, 
          t1.sdem_visit,
		  case when t1.sdem_visit ne . then 1 end as sdem_visit_c,
		  t1.sdem_lang_mia_2,
		  t1.sdem_age,
		  t1.sdem_sex,
		  t1.sdem_gender,
		  t1.sdem_hiv_etst,
		  t1.sdem_hiv_rtst_r,
		  t1.sdem_prp_cu,
		  t1.sdem_hcv_etst,
		  t1.sdem_hcv_rtst_r,
		  t1.scr_c_hcv_res,
		  t1.insti,
		  T1.sdem_int_evr,


		  t2.rand_date, 
          t2.ec_pc_yes, 
          t2.ec_all_2, 
          t2.ec_sign, 
          t2.ec_comments, 
          t2.rand_ele, 
          t2.rand_arm, 
          t2.rand_reason, 
          t2.rand_why, 
          t2.rand_other,
		  t2.dem_race_hisp,
		  t2.dem_race,
		  T2.dem_race_ot,
		  t2.dem_edu,
		  t2.dem_marital,
		  t2.dem_employ,
		  t2.dem_hltins,

		  t3.dem_visit_3m as FUDATE_3m,
		  t4.dem_visit_3m as FUDATE_6m,
		  t5.scf_reasonend
      FROM WORK.R1 t1 left join r1_base t2 on 
		  t1.record_id=t2.record_id left join r1_3m t3 on 
		  t1.record_id=t3.record_id left join r1_6m t4 on 
		  t1.record_id=t4.record_id left join r1_end_study t5 on 
		  t1.record_id=t5.record_id
	  order by redcap_data_access_group, rand_ele, record_id
;
QUIT;

/*check if random but not eligbiable randomized*/
PROC SQL;
   CREATE TABLE CHECK_R1 AS 
   SELECT t1.record_id, 
          t1.redcap_event_name, 
          t1.redcap_data_access_group, 
          t1.sdem_elig, 
          t1.sdem_visit, 
          t1.ec_pc_yes, 
          t1.ec_all_2, 
          t1.ec_sign, 
          t1.ec_comments, 
          t1.rand_ele, 
          t1.rand_arm, 
          t1.rand_reason, 
          t1.rand_why, 
          t1.rand_other
      FROM WORK.R2 t1
      WHERE t1.rand_arm NOT = . AND t1.rand_ele = .;
QUIT;

PROC SQL;
   CREATE TABLE CHECK_R2 AS 
   SELECT t1.record_id, 
          t1.redcap_event_name, 
          t1.redcap_data_access_group, 
          t1.sdem_elig, 
          t1.sdem_visit, 
          t1.ec_pc_yes, 
          t1.ec_all_2, 
          t1.ec_sign, 
          t1.ec_comments, 
          t1.rand_ele, 
          t1.rand_arm, 
          t1.rand_reason, 
          t1.rand_why, 
          t1.rand_other
      FROM WORK.R2 t1
      WHERE (t1.rand_arm NOT = . OR t1.rand_ele NOT = . ) AND (t1.ec_pc_yes = . OR t1.ec_all_2 = .)
	  order by redcap_data_access_group, rand_ele, record_id
;
QUIT;



data r2_elig;
set r2;
keep record_id redcap_data_access_group sdem_elig ec_pc_yes ec_all_2 rand_ele rand_arm;
run;


proc freq data=r2;
tables redcap_data_access_group*(sdem_elig ec_pc_yes ec_all_2 rand_ele rand_arm FUDATE_3m FUDATE_6m);
run;








/*CHECK FOR FOLLOW UP*/
PROC SQL;
   CREATE TABLE R2_fustatus AS 
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
		  case when T1.rand_date ne . then 1 
		  	   else 0 end as den,
		  case when T1.fudate_3m ne . then 1 
		  	   else 0 end as num,
		    today()-rand_date as datediff,
		  case when T1.fudate_3m ne . then 'completed'
		  	   when T1.fudate_3m = . and rand_date ne . then
				    case when today()-rand_date < 100 then 'pending'
			   	    else 'lossFU' end 
		       end as FU3m_status,		  
		  case when T1.fudate_6m ne . then 'completed'
		  	   when T1.fudate_6m = . and rand_date ne . then
				    case when today()-rand_date < 190 then 'pending'
			   	    else 'lossFU' end 
		       end as FU6m_status,
          /* Calculation */
          	(SUM(calculated den)) AS sum_DEN,
          /* Calculation1 */
            (SUM(calculated num)) AS sum_NUM
      FROM WORK.R2 t1 
/*	  	WHERE rand_date IS NOT NULL*/
      	GROUP BY t1.redcap_data_access_group
;
 QUIT;

 proc freq data=R2_fustatus;
 tables redcap_data_access_group*(rand_arm FU3m_status FU6m_status);
 run;


proc Tabulate data=r2_fustatus missing;
class redcap_data_access_group sdem_elig ec_pc_yes ec_all_2 rand_ele rand_arm FUDATE_3m FUDATE_6m FU3m_status FU6m_status;
keylabel COLPCTN='%' ;
table (all sdem_elig ec_pc_yes ec_all_2 rand_ele rand_arm FU3m_status FU6m_status)*(N colpctn)
,(redcap_data_access_group all)
;
run;

