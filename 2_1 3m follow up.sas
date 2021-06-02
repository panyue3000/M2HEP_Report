


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
				when calculated FU6m_status in ('lossFU') then 'lossFU' end as FU6m_status_calc

      FROM WORK.R2 t1 
/*	  	WHERE rand_date IS NOT NULL*/
      	GROUP BY t1.redcap_data_access_group
;
 QUIT;

 proc freq data=R2_fustatus;
 tables fu3m_status fu6m_status redcap_data_access_group*(rand_arm FU3m_status FU6m_status );
 run;


proc Tabulate data=r2_fustatus missing;
class redcap_data_access_group sdem_elig ec_pc_yes ec_all_2 rand_ele rand_arm FUDATE_3m 
FUDATE_6m FU3m_status FU6m_status FU3m_status_calc FU6m_status_calc;
keylabel COLPCTN='%' ;
table (all rand_arm FU3m_status FU6m_status FU3m_status_calc FU6m_status_calc)*(N)
,(redcap_data_access_group all)
;
run;