
/*B.	1 TABLE THAT INCLUDES BL CHARACTERISTICS (INCLUDING DEMOG AND HCV RNA+) */
/*FOR ALL RANDOMIZED PTS – BY “SITE” (SSP IN MIAMI AND SSP IN MONTREAL)*/



/*MERGE THE NEW GENDER AND RACE IN THE BASELINE*/
DATA R2_BL;
SET R2 ;

/*ADD RECODE RACE: R_RACE*/
IF DEM_RACE = . THEN R_RACE=SDEM_LANG_MIA_2;
   ELSE IF DEM_RACE = 6 THEN R_RACE=SDEM_LANG_MIA_2;
   ELSE R_RACE = DEM_RACE;

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
	scr_c_hcv_res
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
	scr_c_hcv_res
	vir_rna2

    ALL)*(N /*COLPCTN*/)
,(REDCAP_DATA_ACCESS_GROUP ALL)
;
RUN;




/**********************************************FOR ALL-PRESCREENED*/
TITLE "FOR RANDOMIZED PTS";
PROC TABULATE DATA=R2_BL(WHERE= (RAND_ARM NE .))  MISSING;
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
	scr_c_hcv_res
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
	scr_c_hcv_res
	vir_rna2

    ALL)*(N /*COLPCTN*/)
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