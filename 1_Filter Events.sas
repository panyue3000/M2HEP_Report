




/*Request from Gaby and Lauren, 03/17/2021 */

/*Total # pre-screened and of those, # eligible; ineligible ?*/
/*Total # screened and of those, # eligible; ineligible; in progress*/
/*Of those who screened eligible, # randomized; ( # pending randomization*/
/*Of those randomized, # assigned to on-site vs. off-site group; # who completed 3mo follow-ups; # lost to follow-up; # who withdrew (per pt or study clinician request)*/
/*Of those who screened ineligible, summary of reasons for ineligibility*/

LIBNAME M2HEP 'C:\USERS\PANYUE\BOX\M2HEPPREP\REPORT\SAS DATA EXPORT';
LIBNAME REDCAP 'C:\USERS\PANYUE\BOX\M2HEPPREP\REPORT\REDCAP DATA EXPORT';




/************************importing through API to redcap and making main enrollment files********************/
/*%let path = C:\Users\panyue\Box\M2HepPrEP\Report\REDCap Data Export;*/
/** leave these alone;*/
/*options noxwait;*/
/*x "del &path.\data.csv";*/
/*x "del &path.\status.txt";*/
/*filename dataFile "&path.\data.csv"; */
/*filename theStat "&path.\status.txt";*/
/** add your token on the line below;*/
/*%let mytoken =0331D6425BAAF90431D5DCFE41BF0CBE;*/
/*proc http*/
/*              in= "%NRStr(content=record&type=flat&format=csv&token=)&mytoken"*/
/*             out= dataFile*/
/*             headerout = theStat*/
/*              url ="https://redcap.med.miami.edu/api/"*/
/*              method="post";*/
/*run; */
/**/
/*PROC IMPORT OUT= WORK.mydata */
/*            DATAFILE= "C:\Users\panyue\Box\M2HepPrEP\Report\REDCap Data Export\data.csv" */
/*            DBMS=CSV REPLACE;*/
/*     GETNAMES=YES;*/
/*     DATAROW=2; */
/*RUN;*/




/*delete test id*/
data redcap1;
set redcap;
if record_id not in ('0000-testid', '0000-testid2', '0000-testid3');
/*if record_id in ('2073-2') then sdem_elig=1;*/
run;

proc freq data=redcap;
tables redcap_event_name;
format redcap_event_name; /*to remove format*/
run;

data r1;
set redcap1(where=(redcap_event_name='visit_1__screening_arm_1'));
run;

/*filter reason for ending participants*/
data r1_end_study;
set redcap1(where=(redcap_event_name='as_needed_arm_1' and scf_reasonend > 0));
keep record_id redcap_event_name scf_reasonend;
run;

data r1_base;
set redcap1(where=(redcap_event_name='visit_baseline__ra_arm_1'));
run;

data r1_3m;
set redcap1(where=(redcap_event_name='3m_arm_1'));
/*keep record_id rand_arm dem_visit_3m;*/
run;




%macro FU(VAR1, var2);
data r1_&VAR1.;
set redcap1(where=(redcap_event_name=&var2.));
/*keep record_id rand_arm dem_visit_3m;*/
run;
%mend;

%FU(3m,'3m_arm_1');
%FU(6m,'6m_arm_1');
%FU(9m,'9m_arm_1');
%FU(12m,'12m_arm_1');
%FU(15m,'15m_arm_1');
%FU(18m,'18m_arm_1');
%FU(21m,'21m_arm_1');
%FU(24m,'24m_arm_1');
%FU(27m,'27m_arm_1');
%FU(30m,'30m_arm_1');


