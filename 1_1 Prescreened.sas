
/*R2 HAVE ALL SCREENING DATA*/

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
/*		  t3.fu3m_status,*/
		  t4.dem_visit_3m as FUDATE_6m,
/*		  t4.fu6m_status,*/
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
tables redcap_data_access_group*(sdem_elig ec_pc_yes ec_all_2 rand_ele rand_arm);
run;







