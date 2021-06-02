

/*Request from Gaby and Lauren, 03/17/2021 */

/*Total # pre-screened and of those, # eligible; ineligible ?*/
/*Total # screened and of those, # eligible; ineligible; in progress*/
/*Of those who screened eligible, # randomized; ( # pending randomization*/
/*Of those randomized, # assigned to on-site vs. off-site group; # who completed 3mo follow-ups; # lost to follow-up; # who withdrew (per pt or study clinician request)*/
/*Of those who screened ineligible, summary of reasons for ineligibility*/

LIBNAME M2HEP 'C:\USERS\PANYUE\BOX\M2HEPPREP\REPORT\SAS DATA EXPORT';
LIBNAME REDCAP 'C:\USERS\PANYUE\BOX\M2HEPPREP\REPORT\REDCAP DATA EXPORT';


/*delete test id*/
data redcap;
set redcap;
if record_id not in ('0000-testid', '0000-testid2');
/*if record_id in ('2073-2') then sdem_elig=1;*/
run;

data r1;
set redcap(where=(redcap_event_name='visit_1__screening_arm_1'));
run;

/*filter reason for ending participants*/
data r1_end_study;
set redcap(where=(redcap_event_name='as_needed_arm_1' and scf_reasonend > 0));
keep record_id redcap_event_name scf_reasonend;
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

