
/*DBS Measure:*/
/**/
/*1. Screening specific collection: vir_dbs	Date virology blood sample was drawn*/
/*	text (date_ymd)*/
/*2. Baseline specific collection: dbs_bas	Dried blood spot	yesno*/
/*	1	Yes*/
/*	0	No*/
/*3. FU specific collection: dbs_bas_3m	Dried blood spot	yesno*/
/*	1	Yes*/
/*	0	No*/
/*prep_prescribe	Have you received a prescription for PrEP Medication since your last M2 study visit?	radio*/
/*0	No*/
/*1	Yes*/

/**/
/**/


PROC SQL;
   CREATE TABLE DBS_0 AS 
   SELECT t0.record_id, 
          t1.redcap_event_name, 
          t1.redcap_data_access_group, 
          t1.sdem_elig, 
          t1.sdem_visit,
		  case when t1.sdem_visit ne . then 1 end as sdem_visit_c,
	      
		  t1.vir_dbs,
		  t2.rand_date,
		  t2.dbs_bas,
		  
		  T3.prep_prescribe AS prep_prescribe_3M,
		  t3.date_of_specimen_3m,
		  t3.date_of_specimen_3m - t2.rand_date as dbs_datedif_3m,
		  t3.dbs_bas_3m,

		  T4.prep_prescribe AS prep_prescribe_6M,
		  t4.date_of_specimen_3m as date_of_specimen_6m,
		  t4.date_of_specimen_3m - t2.rand_date as dbs_datedif_6m,
		  t4.dbs_bas_3m as dbs_bas_6m,

		  T6.prep_prescribe AS prep_prescribe_9M,
		  t6.date_of_specimen_3m as date_of_specimen_9m,
		  t6.date_of_specimen_3m - t2.rand_date as dbs_datedif_9m,
		  t6.dbs_bas_3m as dbs_bas_9m,

		  T7.prep_prescribe AS prep_prescribe_12M,
		  t7.date_of_specimen_3m as date_of_specimen_12m,
		  t7.date_of_specimen_3m - t2.rand_date as dbs_datedif_12m,
		  t7.dbs_bas_3m as dbs_bas_12m,

		  T8.prep_prescribe AS prep_prescribe_15M,
		  t8.date_of_specimen_3m as date_of_specimen_15m,
		  t8.date_of_specimen_3m - t2.rand_date as dbs_datedif_15m,
		  t8.dbs_bas_3m as dbs_bas_15m,

		  T9.prep_prescribe AS prep_prescribe_18M,
		  t9.date_of_specimen_3m as date_of_specimen_18m,
		  t9.date_of_specimen_3m - t2.rand_date as dbs_datedif_18m,
		  t9.dbs_bas_3m as dbs_bas_18m,

		  T10.prep_prescribe AS prep_prescribe_21M,
		  t10.date_of_specimen_3m as date_of_specimen_21m,
		  t10.date_of_specimen_3m - t2.rand_date as dbs_datedif_21m,
		  t10.dbs_bas_3m as dbs_bas_21m,

		  T11.prep_prescribe AS prep_prescribe_24M,
		  t11.date_of_specimen_3m as date_of_specimen_24m,
		  t11.date_of_specimen_3m - t2.rand_date as dbs_datedif_24m,
		  t11.dbs_bas_3m as dbs_bas_24m,

/*		  sum(dbs_bas_3m, dbs_bas_6m, dbs_bas_9m, dbs_bas_3m, dbs_bas_3m, dbs_bas_3m*/

		  t3.dem_visit_3m as FUDATE_3m,
		  t4.dem_visit_3m as FUDATE_6m,
		  t6.dem_visit_3m as FUDATE_9m,
		  t7.dem_visit_3m as FUDATE_12m,
		  t8.dem_visit_3m as FUDATE_15m,
		  t9.dem_visit_3m as FUDATE_18m,
		  t10.dem_visit_3m as FUDATE_21m,
		  t11.dem_visit_3m as FUDATE_24m

      FROM WORK.r1_base (WHERE= (RAND_ARM NE .)) t0 left join r1 t1 on 
		  t0.record_id=t1.record_id left join r1_base t2 on 
		  t0.record_id=t2.record_id left join r1_3m t3 on 
		  t0.record_id=t3.record_id left join r1_6m t4 on 
		  t0.record_id=t4.record_id left join r1_end_study t5 on 
		  t0.record_id=t5.record_id left join r1_9m t6 on 
		  t0.record_id=t6.record_id left join r1_12m t7 on 
		  t0.record_id=t7.record_id left join r1_15m t8 on 
		  t0.record_id=t8.record_id left join r1_18m t9 on 
		  t0.record_id=t9.record_id left join r1_21m t10 on 
		  t0.record_id=t10.record_id left join r1_24m t11 on 
		  t0.record_id=t11.record_id 
	  order by redcap_data_access_group, record_id
;
QUIT;


PROC FREQ DATA=DBS_0;
TABLES 

dbs_bas
dbs_bas_3m
dbs_bas_6m
dbs_bas_9m
dbs_bas_12m
dbs_bas_15m
dbs_bas_18m
dbs_bas_21m
dbs_bas_24m

dbs_datedif_3m
dbs_datedif_6m
dbs_datedif_9m
dbs_datedif_12m
dbs_datedif_15m
dbs_datedif_18m
dbs_datedif_21m
dbs_datedif_24m
;
RUN;