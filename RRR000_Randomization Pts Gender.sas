/* Edit the following line to reflect the full path to your CSV file */
%let csv_file = 'C:\Users\panyue\Box\M2HepPrEP\Report\SAS Data Export\M2HEPV2-RandomizationPtsGend_DATA_NOHDRS_2022-05-25_1507.csv';

OPTIONS nofmterr;

proc format;
	value $redcap_event_name_ 'visit_1__screening_arm_1'='Visit 1 - Screening phase 1' 'visit_2__screening_arm_1'='Visit 2 - Screening phase 2' 
		'visit_baseline__ra_arm_1'='Visit Baseline & Randomization' '3m_arm_1'='3m' 
		'6m_arm_1'='6m' '9m_arm_1'='9m' 
		'12m_arm_1'='12m' '15m_arm_1'='15m' 
		'18m_arm_1'='18m' 'as_needed_arm_1'='As Needed';
	value $redcap_repeat_instrument_ 'screening'='Screening' 'screening_specific_collection'='Screening specific collection' 
		'vital_signs'='Vital Signs' 'end_of_medication'='End Of Medication' 
		'adverse_event_form'='Adverse Event Form' 'serious_adverse_event_form'='Serious Adverse Event Form' 
		'missed_visit_form'='Missed Visit Form' 'treatment_initiation'='Treatment Initiation';
	value sdem_sex_ 0='Male' 1='Female';
	value rand_arm_ 0='On-site integrated care with adherence counseling' 1='Off-site patient referral to specialized care with patient navigation';

	run;

data work.redcap; %let _EFIERR_ = 0;
infile &csv_file  delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=1 ;

	informat record_id $500. ;
	informat redcap_event_name $500. ;
	informat redcap_repeat_instrument $500. ;
	informat redcap_repeat_instance best32. ;
	informat sdem_sex best32. ;
	informat rand_arm best32. ;

	format record_id $500. ;
	format redcap_event_name $500. ;
	format redcap_repeat_instrument $500. ;
	format redcap_repeat_instance best12. ;
	format sdem_sex best12. ;
	format rand_arm best12. ;

input
	record_id $
	redcap_event_name $
	redcap_repeat_instrument $
	redcap_repeat_instance
	sdem_sex
	rand_arm
;
if _ERROR_ then call symput('_EFIERR_',"1");
run;

proc contents;run;

data redcap;
	set redcap;
	label record_id='Record ID';
	label redcap_event_name='Event Name';
	label redcap_repeat_instrument='Repeat Instrument';
	label redcap_repeat_instance='Repeat Instance';
	label sdem_sex='What was your biological sex at birth?';
	label rand_arm='Randomization assignment';
	format redcap_event_name redcap_event_name_.;
	format redcap_repeat_instrument redcap_repeat_instrument_.;
	format sdem_sex sdem_sex_.;
	format rand_arm rand_arm_.;
run;

proc contents data=redcap;
proc print data=redcap;
run;






PROC SQL;
   CREATE TABLE gender(where=(record_id not in ("0000-testid", "0000-testid3"))) AS 
   SELECT t1.record_id, 
          t1.redcap_event_name, 
          t1.sdem_sex,
		  t2.rand_arm,
		  substr(t1.record_id, 1, 4) as site
      FROM WORK.REDCAP(where=(redcap_event_name="visit_1__screening_arm_1")) t1 left join 
	       WORK.REDCAP(where=(redcap_event_name="visit_baseline__ra_arm_1")) t2 
			on t1.record_id=t2.record_id

	  

;
QUIT;

proc freq data=gender(where=(site="2074"));
tables sdem_sex rand_arm*sdem_sex/nocol nopercent;
run;

