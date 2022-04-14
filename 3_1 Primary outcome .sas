/*Sustained PrEP outcome:*/
/*1.	Your definition below of 8wks post-initiation through 6 months, and we are also adding 12 months post. */
/*LG:  Dan’s feedback on Oct 5th was to use “ANY DBS in the period.” Given this, to assess availability of primary outcome data for this PrEP primary, I believe that all randomized pts are included in the denominator and the denominator value for each pt is the # of expected DBS (0, 1, 2 or 3). The numerator is number of collected/recorded DBS (0, 1, 2 or “3 or more”) and is based on the number of DBS collected during the following period:  8wks post-rand through 6mo post-rand.*/
/*•	If a pt is not prescribed PrEP w/in 6mo post-rand, then his “score” would be 0/0. */
/*•	If a pt is prescribed PrEP w/in 6mo post-rand, then his denominator would be set as 1, 2 or 3 according to when in that 6mo window he initiated PrEP.*/
/*To describe availability of this outcome (as part of our “retention” reports), and based on the above, I am considering all pts with a score of 0/0 or who have a numerator value < denominator value (e.g., 0/1, 0/2, 0/3, 1/2, 1/3 or 2/3) as a 0 -- outcome data NOT available and all pts with a numerator value =/> denominator (e.g., 1/1, 2/2, 3/3, 4/3, 5/3) as a 1 – outcome data available.*/
/**/
/*What I do not know is the cutoff that Dan wants to use for “6mo post-rand.” This could be measured at the 6-mo visit “target date” (183 days post-rand) or at the close of the 6-mo window (245 days post-rand).  */



/********************************************DBS in baseline and follow up */




/*CHECK FOR FOLLOW UP*/
PROC SQL;
   CREATE TABLE R2_fustatus AS 
   SELECT 
		  t1.record_id, 
          t1.redcap_event_name, 
          t1.redcap_data_access_group, 
		  t1.sdem_oat,
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

/*add dbs_das from r1_base*/
		  t2.dbs_bas,
		  t3.dbs_bas_3m as dbs_bas_3m,

          t1.FUDATE_3m, 
          t1.FUDATE_6m, 
          t1.FUDATE_9m, 
          t1.FUDATE_12m, 

/*follow up using at 3m*/
		  case when -31 <= T1.fudate_3m - (t1.rand_date + 90) <= 62 then 'Completed within new window'
		  	   when T1.fudate_3m ne . then 'completed_with visitdate'
			   when T1.fudate_3m = . and t1.rand_date ne . then
				    case when -31 <= today() - (t1.rand_date + 90) <= 62 then 'pending in window'  /*Target date at 3m is t1.rand_date+90*/
			             when -31 > today() - (t1.rand_date + 90) then 'pending not in window yet'
					     else 'lossFU' end 
		       end as FU3m_status,	
           case when calculated FU3m_status in ('Completed within new window' 'completed_with visitdate') then 'completed'
		        when calculated FU3m_status in ( 'pending in window' 'pending not in window yet') then 'pending'
				when calculated FU3m_status in ('lossFU') then 'lossFU' end as FU3m_status_calc,


/*follow up using at 6m*/
		  case when -31 <= T1.fudate_6m - (t1.rand_date + 2*90) <= 62 then 'Completed within new window'
		  	   when T1.fudate_6m ne . then 'completed_with visitdate'
			   when T1.fudate_6m = . and t1.rand_date ne . then
				    case when -31 <= today() - (t1.rand_date + 2*90) <= 62 then 'pending in window'  /*Target date at 6m is t1.rand_date+90*/
			             when -31 > today() - (t1.rand_date + 2*90) then 'pending not in window yet'
			             else 'lossFU' end 
		       end as FU6m_status,	
           case when calculated FU6m_status in ('Completed within new window' 'completed_with visitdate') then 'completed'
		        when calculated FU6m_status in ( 'pending in window' 'pending not in window yet') then 'pending'
				when calculated FU6m_status in ('lossFU') then 'lossFU' end as FU6m_status_calc,

/*follow up using at 9m*/
		  case when -31 <= T1.fudate_9m - (t1.rand_date + 3*90) <= 62 then 'Completed within new window'
		  	   when T1.fudate_9m ne . then 'completed_with visitdate'
			   when T1.fudate_9m = . and t1.rand_date ne . then
				    case when -31 <= today() - (t1.rand_date + 3*90) <= 62 then 'pending in window'  /*Target date at 9m is t1.rand_date+90*/
			             when -31 > today() - (t1.rand_date + 3*90) then 'pending not in window yet'
			             else 'lossFU' end 
		       end as FU9m_status,	
           case when calculated FU9m_status in ('Completed within new window' 'completed_with visitdate') then 'completed'
		        when calculated FU9m_status in ( 'pending in window' 'pending not in window yet') then 'pending'
				when calculated FU9m_status in ('lossFU') then 'lossFU' end as FU9m_status_calc,

/*follow up using at 12m*/
		  case when -31 <= T1.fudate_12m - (t1.rand_date + 4*90) <= 62 then 'Completed within new window'
		  	   when T1.fudate_12m ne . then 'completed_with visitdate'
			   when T1.fudate_12m = . and t1.rand_date ne . then
				    case when -31 <= today() - (t1.rand_date + 4*90) <= 62 then 'pending in window'  /*Target date at 12m is t1.rand_date+90*/
			             when -31 > today() - (t1.rand_date + 4*90) then 'pending not in window yet'
			             else 'lossFU' end 
		       end as FU12m_status,	
           case when calculated FU12m_status in ('Completed within new window' 'completed_with visitdate') then 'completed'
		        when calculated FU12m_status in ( 'pending in window' 'pending not in window yet') then 'pending'
				when calculated FU12m_status in ('lossFU') then 'lossFU' end as FU12m_status_calc


      FROM WORK.R2(where=(rand_date ne .))  t1 left join r1_base t2 on
			   t1.record_id=t2.record_id left join r1_3m t3 on 
			   t1.record_id=t3.record_id
	  ORDER BY t1.redcap_data_access_group,
	           T1.rand_date

;
 QUIT;
