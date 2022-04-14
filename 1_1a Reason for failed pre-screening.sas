/*sdem_lang_mon	What is your preferred language of communication?	Screening*/
/*sdem_lang_mia	What is your preferred language of communication?	Screening*/
/*sdem_age	What is your age?	Screening*/
/*sdem_sev_no	Are you willing to receive services/enroll in one of these programs?	Screening*/
/*sdem_prg_c	Are you currently pregnant?	Screening*/
/*sdem_prg_c2	*/
/*Are you planning to become pregnant in the next 18 months?*/
/**/
/*Screening*/
/*sdem_brsf	Are willing to stop breastfeeding for the duration of the trial (18mo)?	Screening*/
/*sdem_prg_ct18	Are you willing to use contraception for the next 18 months?	Screening*/
/*vcp_inject_6mo	Have you injected drugs at any point in the last 6 months?	Screening*/
/*sdem_hiv_rtst_r	What was the result of your most recent HIV test?	Screening*/
/*sdem_prp_cu	Are you currently taking PrEP (Pre-Exposure Prophylaxis)?	Screening*/
/*sdem_hcv	Are you currently taking HCV medications?	Screening*/
/*sdem_hcv_fail	Have you taken HCV medication in the past which did not work to treat and cure your Hepatitis C ?	Screening*/
/*sdem_wil_fol	If part of the study, would you be willing to come back for regular visits over an 18 month period?	Screening*/


proc freq data=r2;
tables RAND_ARM*REDCAP_DATA_ACCESS_GROUP;
run;

/**********************************************FOR ALL-PRESCREENED*/
TITLE "FOR RANDOMIZED PTS";
PROC TABULATE DATA=R2
			   (WHERE= (RAND_ARM NE .))   
                MISSING;
/*BY REDCAP_DATA_ACCESS_GROUP;*/
CLASS REDCAP_DATA_ACCESS_GROUP 
/*sdem_lang_mon*/
/*sdem_lang_mia*/
sdem_age
sdem_sev_no
sdem_prg_c
sdem_prg_c2
sdem_brsf
sdem_prg_ct18
vcp_inject_6mo
sdem_hiv_rtst_r
sdem_prp_cu
sdem_hcv
sdem_hcv_fail
sdem_wil_fol

;
KEYLABEL COLPCTN='%' ;
TABLE (
/*sdem_lang_mon*/
/*sdem_lang_mia*/
sdem_age
sdem_sev_no
sdem_prg_c
sdem_prg_c2
sdem_brsf
sdem_prg_ct18
vcp_inject_6mo
sdem_hiv_rtst_r
sdem_prp_cu
sdem_hcv
sdem_hcv_fail
sdem_wil_fol


    ALL)*(N /*COLPCTN*/)
,(
/*  REDCAP_DATA_ACCESS_GROUP */
  ALL)
;
RUN;

TITLE "FOR RANDOMIZED PTS";
PROC TABULATE DATA=R2
                MISSING;
BY REDCAP_DATA_ACCESS_GROUP;
CLASS REDCAP_DATA_ACCESS_GROUP 
rand_arm
sdem_oat

;
KEYLABEL COLPCTN='%' ;
TABLE (

  RAND_ARM  ALL)*(N /*COLPCTN*/)
,(
  sdem_oat
  ALL)
;
RUN;




/*CREATE INDICATORS FOR COUNT*/
PROC SQL;
   CREATE TABLE R2_NORAND AS 
   SELECT t1.record_id, 
   		  t1.sdem_oat,
          t1.redcap_event_name, 
          t1.redcap_data_access_group, 
          t1.rand_date, 
          t1.rand_arm, 
          t1.sdem_sev_no, 
          t1.sdem_prg_c, 
          t1.sdem_prg_c2, 
          t1.sdem_brsf, 
          t1.sdem_prg_ct18, 
          t1.vcp_inject_6mo, 
          t1.sdem_hcv, 
          t1.sdem_hcv_fail, 
          t1.sdem_wil_fol,
/*		  PRE-SCREEN FAIL REASON*/
		  CASE WHEN SDEM_AGE <18 OR SDEM_AGE > 64 THEN "Age " ELSE "" END AS PRE_NO_AGE,
		  CASE WHEN vcp_inject_6mo NE 1 THEN "IDU " ELSE "" END AS PRE_NO_IDU,
		  CASE WHEN sdem_hiv_rtst_r = 1  THEN "HIV " ELSE "" END AS PRE_IS_HIV,
		  CASE WHEN sdem_sev_no = 0  THEN "Unwill for service" ELSE "" END AS PRE_UNWILL,
		  CASE WHEN sdem_wil_fol = 0  THEN "Unwill to follow up" ELSE "" END AS PRE_NO_FU,
		  CASE WHEN sdem_lang_mon = 2 OR sdem_lang_mia=2 THEN "Communication" ELSE "" END AS PRE_NO_COMMUNICATE,
		  CASE WHEN sdem_hcv_fail = 1 THEN "HCV FAIL" ELSE "" END AS PRE_NO_HCV_CURE,
		  CASE WHEN sdem_prg_c = 1 OR sdem_prg_c2=1 OR sdem_prg_ct18=0 THEN "PREGNANT" ELSE "" END AS PRE_PREGNANT,
		  CASE WHEN sdem_brsf = 0 THEN "BREAST FEEDING" ELSE "" END AS PRE_FEED,
		  CASE WHEN sdem_prp_cu = 1 THEN "CURRENTLY W PREP" ELSE "" END AS PRE_PREP,
		  CASE WHEN sdem_hcv = 1 THEN "CURRENTLY W HCV" ELSE "" END AS PRE_HCV

      FROM WORK.R2 t1
      WHERE t1.rand_arm = .
      ORDER BY t1.redcap_data_access_group,
               t1.record_id,
               t1.rand_date;
QUIT;





TITLE "FOR not RANDOMIZED PTS";
PROC TABULATE DATA=R2_NORAND
                MISSING;
/*BY REDCAP_DATA_ACCESS_GROUP;*/
CLASS REDCAP_DATA_ACCESS_GROUP 
PRE_NO_COMMUNICATE
PRE_NO_AGE
PRE_UNWILL
PRE_PREGNANT
PRE_FEED
PRE_NO_IDU
PRE_IS_HIV
PRE_PREP
PRE_HCV
PRE_NO_HCV_CURE
PRE_NO_FU
;
KEYLABEL COLPCTN='%' ;
TABLE (
PRE_NO_COMMUNICATE
PRE_NO_AGE
PRE_UNWILL
PRE_PREGNANT
PRE_FEED
PRE_NO_IDU
PRE_IS_HIV
PRE_PREP
PRE_HCV
PRE_NO_HCV_CURE
PRE_NO_FU
ALL)*(N /*COLPCTN*/)
,(
  REDCAP_DATA_ACCESS_GROUP 
  ALL)
;
RUN;


/***********************************************************import log id from IDEA and golden from left or order list*/
/***********************************************************import log id from IDEA and golden from left*/
/***********************************************************import log id from IDEA and golden from left*/
/***********************************************************import log id from IDEA and golden from left*/

/*data full_fail;*/
/*set */
/**/
/*IDEA_log(where=(study_status='screen fail') keep=record_id Reason_for_screen_failure study_status in=site)*/
/**/
/*Golden_log(where=(study_status='screen fail') keep=record_id Reason_for_screen_failure study_status); */
/**/
/*if site then from='idea' ;*/
/*   else if site = 0 then from='golden';*/
/**/
/*length record_id_new $8;*/
/**/
/*if record_id='2074-01' then  record_id_new='2074-1';*/
/*	else if record_id='2074-02' then  record_id_new='2074-2';*/
/*	else if record_id='2074-03' then  record_id_new='2074-3';*/
/*	else if record_id='2074-04' then  record_id_new='2074-4';*/
/*	else if record_id='2074-05' then  record_id_new='2074-5';*/
/*	else if record_id='2074-06' then  record_id_new='2074-6';*/
/*	else if record_id='2074-07' then  record_id_new='2074-7';*/
/*	else if record_id='2074-08' then  record_id_new='2074-8';*/
/*	else if record_id='2074-09' then  record_id_new='2074-9';*/
/*else record_id_new=record_id;*/
/**/
/**/
/*/*rename record_id_new=record_id;*/*/
/**/
/*keep record_id record_id_new Reason_for_screen_failure study_status from*/
/*;*/
/*run;*/;


PROC SQL;
   CREATE TABLE R3_NORAND AS 
   SELECT t1.*,

/*   		  t2.Study_Status as IDEA_status,*/
/*		  t3.Study_status as Golden_status,*/
/*   		  t2.Reason_for_screen_failure as IDEA_fail,*/
/*		  t3.Reason_for_screen_failure as Golden_fail,*/
/*		  case when t2.record_id ne '' then "idea" */
/*		  	   when t3.record_id ne '' then "Golden" */
/*			   when t1.record_id ne '' then "Redcap"*/
/*			   else "unknown" end as site,*/
/*		  strip(catx(', ', NO_AGE, NO_IDU, IS_HIV,UNWILL,NO_FU,NO_CONTRACEPTION,NO_COMMUNICATE, t2.Reason_for_screen_failure, t3.Reason_for_screen_failure)) as reason_fail*/
   			t4.record_id as excel_id,
			catx(t1.record_id, t4.record_id_new) as comb_id,
   	        t4.Reason_for_screen_failure,
			t4.study_status,
			t4.from,
			case when t4.from = '' then 'REDCap' 
				 else t4.from end as site,
		    strip(catx(', ', PRE_NO_COMMUNICATE,
							PRE_NO_AGE,
							PRE_UNWILL,
							PRE_PREGNANT,
							PRE_FEED,
							PRE_NO_IDU,
							PRE_IS_HIV,
							PRE_PREP,
							PRE_HCV,
							PRE_NO_HCV_CURE,
							PRE_NO_FU)) as Prescreen_Fail,
			t4.Reason_for_screen_failure  as Screen_fail
      FROM WORK.R2_norand t1 
/*							 full join IDEA_log(where=(study_status='screen fail')) t2 on t1.record_id=t2.record_id*/
/*	  						 full join Golden_log (where=(study_status='screen fail')) t3 on t1.record_id=t3.record_id*/
	  						 full join full_fail t4 on t1.record_id=t4.record_id_new
      ORDER BY t1.redcap_data_access_group,
               t1.record_id,
               t1.rand_date;
QUIT;



/****03/22/2022*******************************************************prescreen and screen failure reasons report */
/***********************************************************prescreen and screen failure reasons report*/



proc freq data=r3_norand ;
tables sdem_oat site Prescreen_Fail screen_fail redcap_data_access_group

redcap_data_access_group*(Prescreen_Fail screen_fail)*sdem_oat/nopercent norow nocol
;
run;
/****03/22/2022*******************************************************prescreen and screen failure reasons report */
/***********************************************************prescreen and screen failure reasons report*/
/*end*/

data r4_norand;
set r3_norand;

if from in ('golden' 'idea') then redcap_data_access_group='miami_site';

if find(reason_fail, 'IDU') then fail='IDU';
   else if find(reason_fail, 'HIV') then fail='HIV';
   else if find(reason_fail, 'Unwill') then fail='Unwill';
   else if find(reason_fail, 'participate') then fail='Unwill';
   else if find(reason_fail, 'Age') then fail='AGE';
   else if find(reason_fail, '1 month') then fail='1 Month ';
   else if find(reason_fail, 'HCV') then fail='HCV';
run;

proc freq data=r4_norand ;
tables redcap_data_access_group site reason_fail fail fail*reason_fail/missing;
run;


TITLE "FOR not RANDOMIZED PTS";
PROC TABULATE DATA=R3_NORAND
                MISSING;
/*BY REDCAP_DATA_ACCESS_GROUP;*/
CLASS 
REDCAP_DATA_ACCESS_GROUP
from 
/*NO_AGE*/
/*NO_IDU*/
/*IS_HIV*/
/*UNWILL*/
/*NO_FU*/
/*NO_CONTRACEPTION*/
/*NO_COMMUNICATE*/
/*idea_fail*/
/*golden_fail*/
reason_fail
;
KEYLABEL COLPCTN='%' ;
TABLE (
/*NO_AGE*/
/*NO_IDU*/
/*IS_HIV*/
/*UNWILL*/
/*NO_FU*/
/*NO_CONTRACEPTION*/
/*NO_COMMUNICATE*/
/*idea_fail*/
/*golden_fail*/
reason_fail
ALL)*(N /*COLPCTN*/)
,(
  REDCAP_DATA_ACCESS_GROUP*
  from
  ALL)
;
RUN;



TITLE "FOR not RANDOMIZED PTS";
PROC TABULATE DATA=R4_NORAND
                MISSING;
/*BY REDCAP_DATA_ACCESS_GROUP;*/
CLASS 
REDCAP_DATA_ACCESS_GROUP
site 
fail
;
KEYLABEL COLPCTN='%' ;
TABLE 
(
Fail ALL)*(N /*COLPCTN*/)
,(
  REDCAP_DATA_ACCESS_GROUP*
  site
  ALL)
;
RUN;