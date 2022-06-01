
/*B.	1 TABLE THAT INCLUDES BL CHARACTERISTICS (INCLUDING DEMOG AND HCV RNA+) */
/*FOR ALL RANDOMIZED PTS – BY “SITE” (SSP IN MIAMI AND SSP IN MONTREAL)*/



/*MERGE THE NEW GENDER AND RACE IN THE BASELINE*/
DATA R2_BL;
SET R2 ;

/*ADD RECODE RACE: R_RACE*/
IF DEM_RACE = . THEN R_RACE=SDEM_LANG_MIA_2;
   ELSE IF DEM_RACE = 6 THEN R_RACE=SDEM_LANG_MIA_2;
   ELSE R_RACE = DEM_RACE;

/*ADD ABORIGINAL PERSON*/
IF DEM_ABORIG IN (1,2,3) THEN R_RACE=1; 

/*ADD RECODE SEX: SDEM_SEX*/
IF SDEM_SEX = . THEN SDEM_SEX=SDEM_GENDER;

	FORMAT R_RACE DEM_RACE_.;
RUN;


PROC FREQ DATA=R2_BL;
TABLES REDCAP_DATA_ACCESS_GROUP*(SDEM_ELIG EC_PC_YES EC_ALL_2 RAND_ELE RAND_ARM)

REDCAP_DATA_ACCESS_GROUP*(
SDEM_GENDER
SDEM_SEX
)
;
RUN;


/*for period of 08/01/2020-now*/
PROC FREQ DATA=R2_BL(where=(rand_date > '01AUG2020'd));
TABLES REDCAP_DATA_ACCESS_GROUP*(SDEM_ELIG EC_PC_YES EC_ALL_2 RAND_ELE RAND_ARM)

REDCAP_DATA_ACCESS_GROUP*(
SDEM_GENDER
SDEM_SEX
)
;
RUN;

/**********************************************FOR ALL-PRESCREENED*/
TITLE "FOR ALL PRESCREEEND PTS";
PROC TABULATE DATA=R2_BL  MISSING;
/*BY REDCAP_DATA_ACCESS_GROUP;*/
CLASS REDCAP_DATA_ACCESS_GROUP 
      DEM_RACE_HISP
	  R_race
	  SDEM_SEX
	  SDEM_ELIG
      EC_PC_YES 
	  EC_ALL_2 RAND_ELE RAND_ARM

	dem_edu
	dem_marital
	dem_employ
	dem_hltins

	sdem_hiv_etst
	sdem_hiv_rtst_r
    insti

	sdem_prp_cu
	sdem_hcv_etst
	sdem_hcv_rtst_r
	
	vir_rapid
	vir_rna2

;
KEYLABEL COLPCTN='%' ;
TABLE (
		SDEM_SEX 
	    R_race 	
	dem_edu
	dem_marital
	dem_employ
	dem_hltins

	sdem_hiv_etst
	sdem_hiv_rtst_r
    insti

	sdem_prp_cu
	sdem_hcv_etst
	sdem_hcv_rtst_r
	
	vir_rapid
	vir_rna2

    ALL)*(N /*COLPCTN*/)
,(REDCAP_DATA_ACCESS_GROUP ALL)
;
RUN;




/**********************************************FOR randomized only*/
TITLE "FOR RANDOMIZED PTS";
PROC TABULATE DATA=R2_BL(WHERE= (RAND_ARM NE .))  MISSING;
/*BY REDCAP_DATA_ACCESS_GROUP;*/
CLASS REDCAP_DATA_ACCESS_GROUP 
      DEM_RACE_HISP
	  DEM_ABORIG
	  R_race
	  SDEM_SEX
	  SDEM_ELIG
      EC_PC_YES 
	  EC_ALL_2 RAND_ELE RAND_ARM

	dem_edu
	dem_marital
	dem_employ
	dem_hltins

	sdem_hiv_etst
	sdem_hiv_rtst_r
    insti

	sdem_prp_cu
	sdem_hcv_etst
	sdem_hcv_rtst_r
	
    vir_rapid
	vir_rna2

;
KEYLABEL COLPCTN='%' ;
TABLE (
		SDEM_SEX 
		DEM_ABORIG
	    R_race 	

	dem_edu
	dem_marital
	dem_employ
	dem_hltins

	sdem_hiv_etst
	sdem_hiv_rtst_r
    insti

	sdem_prp_cu
	sdem_hcv_etst
	sdem_hcv_rtst_r
	vir_rapid
	vir_rna2

    ALL)*(N COLPCTN)
,(REDCAP_DATA_ACCESS_GROUP ALL)
;
RUN;

PROC MEANS DATA=R2_BL(WHERE= (RAND_ARM NE .)) ;
CLASS REDCAP_DATA_ACCESS_GROUP;
VAR SDEM_AGE;
RUN;

PROC MEANS DATA=R2_BL(WHERE= (RAND_ARM NE .)) ;
/*CLASS REDCAP_DATA_ACCESS_GROUP;*/
VAR SDEM_AGE;
RUN;


/*ADD ABORIGIANAL FOR CANADIAN FOLKS*/
TITLE "FOR RANDOMIZED PTS";
PROC TABULATE DATA=R2_BL(WHERE= (RAND_ARM NE .))  MISSING;
/*BY REDCAP_DATA_ACCESS_GROUP;*/
CLASS REDCAP_DATA_ACCESS_GROUP 
      	DEM_ABORIG
		DEM_INDIAN1
		DEM_INDIAN2
		DEM_INDIAN3
;
KEYLABEL COLPCTN='%' ;
TABLE (
		DEM_ABORIG
		DEM_INDIAN1
		DEM_INDIAN2
		DEM_INDIAN3


    ALL)*(N /*COLPCTN*/)
,(REDCAP_DATA_ACCESS_GROUP ALL)
;
RUN;

PROC TABULATE DATA=R2_BL(WHERE= (RAND_ARM NE .))  MISSING;
BY REDCAP_DATA_ACCESS_GROUP;
CLASS REDCAP_DATA_ACCESS_GROUP 
      DEM_RACE_HISP
	  R_race
	  SDEM_SEX
	    DEM_ABORIG
		DEM_INDIAN1
		DEM_INDIAN2
		DEM_INDIAN3 ;
KEYLABEL COLPCTN='%' ;
TABLE (DEM_ABORIG
		DEM_INDIAN1
		DEM_INDIAN2
		DEM_INDIAN3 ALL)*(N /*COLPCTN*/)
,(DEM_RACE_HISP*SDEM_SEX ALL)
;
RUN;



/*From: Gooden, Lauren K. <lkg2129@cumc.columbia.edu> */
/*Sent: Thursday, March 17, 2022 1:58 PM*/
/*To: Pan, Yue <panyue@med.miami.edu>*/
/*Subject: [EXTERNAL] M2 -- seeking specific demog for randomized pts in Miami*/
/**/
/*CAUTION: This email originated from outside the organization. DO NOT CLICK ON LINKS or OPEN ATTACHMENTS unless you know and trust the sender.*/
/**/
/*Hi Pan:  I have to report pts’ demographics in the following way with the IRB renewal.*/
/*Using our sample of randomized pts in Miami, would you be able to send these % to me by next Mon or Tues?*/
/**/
/*Thank you,*/
/**/
/*L*/

PROC FREQ DATA=R2_BL;
TABLES SDEM_SEX SDEM_AGE dem_race sdem_lang_mia_2 dem_race_hisp;
RUN;

PROC FORMAT;
	value sdem_lang_mia_2_ 0='American Indian or Alaska' 1='Native Aboriginal Canadian' 
		2='Asian' 3='Black or African American' 
		4='Native Hawaiian or Pacific Islander' 5='White/Caucasian' 
		6='Non-specific';
    value dem_race_hisp_ 0='No' 1='Yes' .='Non-specific';

RUN;

DATA R2_BL_MIAMI;
SET R2_BL(WHERE= (RAND_ARM NE . ));

LENGTH AGE_CAT $20;
IF .<SDEM_AGE <8 THEN AGE_CAT = '0-7';
ELSE IF 8<=SDEM_AGE <18 THEN AGE_CAT = '8-17';
ELSE IF 18<=SDEM_AGE <=65 THEN AGE_CAT = '18-65';
ELSE IF 65<SDEM_AGE THEN AGE_CAT = '>65';
ELSE AGE_CAT = 'NON-SPECIFIC';

FORMAT sdem_lang_mia_2 sdem_lang_mia_2_.
	   dem_race_hisp  dem_race_hisp_.;

RUN;

TITLE "FOR RANDOMIZED PTS";
PROC TABULATE DATA=R2_BL_MIAMI  MISSING;
BY REDCAP_DATA_ACCESS_GROUP;
CLASS REDCAP_DATA_ACCESS_GROUP 
      SDEM_SEX AGE_CAT dem_race sdem_lang_mia_2 dem_race_hisp;
KEYLABEL COLPCTN='%' ;
TABLE  (SDEM_SEX AGE_CAT sdem_lang_mia_2 dem_race_hisp)*(N /*COLPCTN*/)
,(REDCAP_DATA_ACCESS_GROUP)
;
RUN;

PROC TABULATE DATA=R2_BL_MIAMI  MISSING;
BY REDCAP_DATA_ACCESS_GROUP;
CLASS REDCAP_DATA_ACCESS_GROUP 
      SDEM_SEX AGE_CAT dem_race sdem_lang_mia_2 dem_race_hisp;
KEYLABEL COLPCTN='%' ;
TABLE  (SDEM_SEX AGE_CAT sdem_lang_mia_2 dem_race_hisp)*(COLPCTN)
,(REDCAP_DATA_ACCESS_GROUP)
;
RUN;


TITLE "FOR RANDOMIZED PTS all sample";
PROC TABULATE DATA=R2_BL_MIAMI  MISSING;
CLASS REDCAP_DATA_ACCESS_GROUP 
      SDEM_SEX AGE_CAT dem_race sdem_lang_mia_2 dem_race_hisp;
KEYLABEL COLPCTN='%' ;
TABLE  (SDEM_SEX AGE_CAT sdem_lang_mia_2 dem_race_hisp)*(N /*COLPCTN*/)
,(REDCAP_DATA_ACCESS_GROUP all)
;
RUN;
PROC TABULATE DATA=R2_BL_MIAMI  MISSING;
CLASS REDCAP_DATA_ACCESS_GROUP 
      SDEM_SEX AGE_CAT dem_race sdem_lang_mia_2 dem_race_hisp;
KEYLABEL COLPCTN='%' ;
TABLE  (SDEM_SEX AGE_CAT sdem_lang_mia_2 dem_race_hisp)*(COLPCTN)
,(REDCAP_DATA_ACCESS_GROUP all)
;
RUN;