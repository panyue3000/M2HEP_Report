/******************************************HCV Cure*/


/**/
/*1.	HCV cure at 12 months: People who were negative HCV RNA at 12 months (close of the 12months window) /people have tested at 12 months (close of the 12months window)*/
/*LG:  Dan should confirm the denominator. I am not sure if it is a) all pts randomized w/in the HCV-positive stratum vs. b) all pts randomized w/in the HCV-positive stratum who initiated HCV tx.  Dan should weigh in on this.*/


/*Pan: i thinkpeople who intiated HCV*/


/*To describe availability of this outcome (as part of our “retention” reports), the denominator for each pt is 1.*/
/*I believe the numerator value for each pt should be 0 or 1 based on the following (if the denominator = all rand to HCV-positive strat):*/
/*•	numerator = 0 -- outcome data NOT available if the pt initiated HCV tx and we have no HCV RNA value at any point between 24 wks post-rand (i.e., the soonest possible date for a pt to reach the 12wk post-tx initiation point) and 12mo post-rand.*/



/*•	numerator = 1 -- outcome data available if…*/
/*a)	the pt was never prescribed tx*/
/*b)	the pt was prescribed but did not initiate tx*/
/*c)	the pt initiated HCV tx and we have at least 1 HCV RNA value at any point between 24 wks post-rand and 12mo post-rand*/
/*?	caveat = if the pt completed tx and tested HCV RNA-positive at 24 wks post-rand and did not test RNA-negative later within the 12mo post-rand window, then I’m not sure that we should consider this numerator to be 1 (outcome data available) unless we have collected the “extra vial” for future DNA sequencing.   Dan should weigh in on this.*/
/*d)	also, I tend to think that IF a pt has an HCV RNA-negative value as early as 8 wks post tx initiation AND no subsequent HCV RNA values, we should consider this as available data (numerator = 1) as well.  Dan should weigh in on this.*/
/**/




/*CHECK FOR FOLLOW UP*/
PROC SQL;
   CREATE TABLE R2_DBS AS 
   SELECT 
		  T1.RECORD_ID, 
          T1.REDCAP_DATA_ACCESS_GROUP, 
		  T1.SDEM_OAT,
          T1.SDEM_VISIT, 
          T1.RAND_DATE, 
          T1.RAND_ELE, 
          T1.RAND_ARM, 

/*ADD DBS_DAS FROM R1_BASE*/
		  
/*hcv_status_3m
  0	HCV Ab non-reactive*/
/*1	HCV Ab reactive, RNA positive*/
/*2	HCV Ab reactive, RNA negative*/

		  t3.hcv_status_3m,

/*HCV Antibody Result*/
/*0	Reactive*/
/*1	Non-reactive*/

		  t3.hcv_ant_res_3m,

/*hcv_rna_quan_12wkp_3m*/
/*Show the field ONLY if:*/
/*[hcv_status_3m] = '1'*/
/**/
/*HCV RNA Quantitative Test*/
/*0	No*/
/*1	Yes*/
/*2	Test not performed*/

		  t3.hcv_rna_quan_3m,
		  t3.hcv_rna_quan_12wkp_3m,
		  t3.hcv_rna_quan_12wkp_3m_q

      FROM WORK.R2(WHERE=(RAND_DATE NE .))  T1 LEFT JOIN R1_BASE T2 ON
			   T1.RECORD_ID=T2.RECORD_ID LEFT JOIN R1_3M T3 ON 
			   T1.RECORD_ID=T3.RECORD_ID LEFT JOIN R1_6M T4 ON 
			   T1.RECORD_ID=T4.RECORD_ID LEFT JOIN dbs_test T5 ON 
			   T1.RECORD_ID=T5.F1
	  ORDER BY T1.REDCAP_DATA_ACCESS_GROUP,
	           T1.RAND_DATE

;
 QUIT;