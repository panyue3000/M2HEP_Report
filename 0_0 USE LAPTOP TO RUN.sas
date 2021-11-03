/* Edit the following line to reflect the full path to your CSV file */
%let csv_file = 'C:\Users\panyue\Box\M2HepPrEP\Report\REDCap Data Export\M2HEPV2_DATA_NOHDRS_2021-11-02_2139.csv';


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
	value $redcap_data_access_group_ 'miami_site'='Miami_site' 'montreal_site'='Montreal_site';
	value languages_ 1='English' 2='Espanol' 
		3='French';
	value languages_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value sdem_reside_ 0='Greater Miami area' 1='Greater Montreal area';
	value sdem_lang_mon_ 0='English' 1='French' 
		2='Other';
	value sdem_lang_mia_ 0='English' 1='Spanish' 
		2='Other';
	value sdem_lang_mia_2_ 0='American Indian or Alaska' 1='Native Aboriginal Canadian' 
		2='Asian' 3='Black or African American' 
		4='Native Hawaiian or Pacific Islander' 5='White/Caucasian' 
		6='Other';
	value sdem_oat_ 0='opioid agonist therapy (OAT) clinic' 1='syringe access program (SAP)';
	value sdem_sev_ 0='Opioid agonist therapy (OAT) clinic' 1='Syringe access program (SAP)' 
		2='both' 3='none';
	value sdem_sev_no_ 1='Yes' 0='No';
	value sdem_sex_ 0='Male' 1='Female';
	value sdem_gender_ 0='Man' 1='Women' 
		2='Transgender Man (female to male)' 3='Transgender Women (male to female)' 
		4='Other' 5='Choose not to answer';
	value sdem_prg_c_ 1='Yes' 0='No';
	value sdem_prg_c2_ 1='Yes' 0='No';
	value sdem_prg_b_ 1='Yes' 0='No';
	value sdem_brsf_ 1='Yes' 0='No';
	value sdem_prg_ct18_ 1='Yes' 0='No';
	value vcp_inject_6mo_ 1='Yes' 0='No';
	value sdem_hiv_etst_ 1='Yes' 0='No';
	value sdem_hiv_rtst_r_ 0='Negative' 1='Positive' 
		2='Don''t know';
	value sdem_prp_cu_ 1='Yes' 0='No';
	value sdem_hcv_ 1='Yes' 0='No';
	value sdem_hcv_fail_ 1='Yes' 0='No' 
		2='Don''t know';
	value sdem_wil_fol_ 1='Yes' 0='No';
	value sdem_hcv_etst_ 1='Yes' 0='No';
	value sdem_hcv_rtst_r_ 0='Negative' 1='Positive' 
		2='Inconclusive';
	value sdem_hcv_etst_w___0_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___1_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___2_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___3_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___4_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___5_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___6_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___7_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___8_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___9_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___10_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___11_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___12_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___13_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___14_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___15_ 0='Unchecked' 1='Checked';
	value sdem_hcv_etst_w___16_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___0_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___1_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___2_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___3_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___4_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___5_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___6_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___7_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___8_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___9_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___10_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___11_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___12_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___13_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___14_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___15_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___16_ 0='Unchecked' 1='Checked';
	value shhr_hiv_etstw___17_ 0='Unchecked' 1='Checked';
	value shhr_tst_r_ 1='Yes' 0='No';
	value shkq_1_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_2_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_3_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_4_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_5_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_6_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_7_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_8_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_9_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_10_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_11_ 0='False' 1='True' 
		2='Don''t know';
	value shkq_12_ 0='False' 1='True' 
		2='Don''t know';
	value preg_result_ 1='Negative' 2='Positive';
	value scr_c_hcv_res_ 1='Reactive' 2='Non-reactive';
	value insti_ 1='Reactive' 2='Non-reactive';
	value sdem_slep6m_ 0='Homeless' 1='In a shelter' 
		2='Transitional' 3='Permanent single-room occupancy hotel' 
		4='HIV/AIDS housing/group home' 5='Drug treatment facility' 
		6='Other residential facility or institution' 7='Staying with family/friends' 
		8='Rent' 9='Owner' 
		10='Other';
	value sdem_live6m_hls_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_live6m_shl1_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_live6m_trs_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_live6m_htl_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_live6m_hiv_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_live6m_sut_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_live6m_shl2_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_live6m_shl3_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_live6m_shl4_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_live6m_shl5_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer' 
		4='Not applicable';
	value sdem_fod_qul_ 0='Enough to eat' 1='Sometimes not enough to eat' 
		2='Often not enough to eat' 3='Unknown' 
		4='Choose not to answer';
	value sdem_fod_frq_ 0='0 days' 1='1 to 4 days' 
		2='5 to 9 days' 3='10 to 14 days' 
		4='More than 14 days';
	value sdem_ild_ 1='Yes' 0='No';
	value sdem_idu_ 1='Yes' 0='No';
	value sdem_idu_6m_ 1='Yes' 0='No';
	value sdem_idu6m___0_ 0='Unchecked' 1='Checked';
	value sdem_idu6m___1_ 0='Unchecked' 1='Checked';
	value sdem_idu6m___2_ 0='Unchecked' 1='Checked';
	value sdem_idu6m___3_ 0='Unchecked' 1='Checked';
	value sdem_idu6m___4_ 0='Unchecked' 1='Checked';
	value sdem_idu6m___5_ 0='Unchecked' 1='Checked';
	value sdem_idu6m___6_ 0='Unchecked' 1='Checked';
	value sdem_idu6m___7_ 0='Unchecked' 1='Checked';
	value shlt_r_ 0='Never' 1='Occasionally' 
		2='Sometimes' 3='Often' 
		4='Always';
	value shlt_l_ 0='Never' 1='Occasionally' 
		2='Sometimes' 3='Often' 
		4='Always';
	value shlt_f_ 0='Not at all' 1='Not very confident' 
		2='Confident' 3='Very confident' 
		4='Extremely confident';
	value sdem_dis_hcv_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer';
	value sdem_dis_hiv_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer';
	value sdem_dis_sex_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer';
	value sdem_dis_gay_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer';
	value sdem_dis_race_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer';
	value sdem_dis_sub_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer';
	value result_insti_2_ 1='Yes' 0='No';
	value sdem_int_evr_ 0='No' 1='Yes' 
		2='Don''t know';
	value sdem_int_elg_ 0='Not eligible' 1='Eligible, but not available to complete the enrollment' 
		2='Chooses not to answer' 3='Other';
	value screening_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value vir_insti_ 1='Indeterminate' 2='Negative' 
		3='Positive';
	value vir_rapid_ 1='Indeterminate' 2='Negative' 
		3='Positive';
	value vir_rna2_ 1='Indeterminate' 2='Negative' 
		3='Positive';
	value vir_hbs_ 1='Indeterminate' 2='Negative' 
		3='Positive';
	value vir_hbc_ 1='Indeterminate' 2='Negative' 
		3='Positive';
	value vir_a_ 1='Indeterminate' 2='Negative' 
		3='Positive';
	value vir_hav_ 1='Indeterminate' 2='Negative' 
		3='Positive';
	value screening_specific_c_v_0_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value vt_temp_ 0='Fahrenheit (°F)' 1='Celsius (°C)';
	value vt_height_ 0='inches' 1='centimeters';
	value vt_weight_ 0='pounds' 1='kilos';
	value vt_cir_ 0='inches' 1='centimeters';
	value vital_signs_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value ec_fem_0_ps_ 0='No' 1='Yes';
	value ec_fem_1_ps_ 0='No' 1='Yes';
	value ec_fem_2_ps_ 0='No' 1='Yes';
	value ec_fem_3_ps_ 0='No' 1='Yes';
	value ec_exc_1_ps_ 0='No' 1='Yes';
	value ec_exc_2_ps_ 0='No' 1='Yes';
	value ec_exc_3_ps_ 0='No' 1='Yes';
	value ec_exc_4_ps_ 0='No' 1='Yes';
	value ec_exc_5_ps_ 0='No' 1='Yes';
	value ec_exc_6_ps_ 0='No' 1='Yes';
	value ec_exc_7_ps_ 0='No' 1='Yes';
	value ec_exc_8_ps_ 0='No' 1='Yes';
	value ec_exc_11_ps_ 0='No' 1='Yes';
	value ec_exc_12_ps_ 0='No' 1='Yes';
	value ec_sign_ps_ 0='No' 1='Yes';
	value physician_checklist_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value ur_test_bas___0_ 0='Unchecked' 1='Checked';
	value ur_test_bas___1_ 0='Unchecked' 1='Checked';
	value ur_test_bas___2_ 0='Unchecked' 1='Checked';
	value result_upt_bas_ 1='Negative' 2='Positive';
	value dbs_bas_ 1='Yes' 0='No';
	value ct_bas___1_ 0='Unchecked' 1='Checked';
	value ct_bas___2_ 0='Unchecked' 1='Checked';
	value ct_bas___3_ 0='Unchecked' 1='Checked';
	value ng_test_bas___1_ 0='Unchecked' 1='Checked';
	value ng_test_bas___2_ 0='Unchecked' 1='Checked';
	value ng_test_bas___3_ 0='Unchecked' 1='Checked';
	value vir_ct_oral_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ct_uro_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ct_rec_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ng_oral_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ng_uro_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ng_rec_ 0='Detected' 1='Not Detected' 
		2='NA';
	value baseline_specific_co_v_1_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value ur_test_bas_3m_ 0='No' 1='Yes' 
		2='Not applicable';
	value result_upt_bas_3m_ 1='Negative' 2='Positive';
	value dbs_bas_3m_ 1='Yes' 0='No';
	value ct_bas_3m___1_ 0='Unchecked' 1='Checked';
	value ct_bas_3m___2_ 0='Unchecked' 1='Checked';
	value ct_bas_3m___3_ 0='Unchecked' 1='Checked';
	value ct_bas_3m___4_ 0='Unchecked' 1='Checked';
	value ng_test_bas_3m___1_ 0='Unchecked' 1='Checked';
	value ng_test_bas_3m___2_ 0='Unchecked' 1='Checked';
	value ng_test_bas_3m___3_ 0='Unchecked' 1='Checked';
	value ng_test_bas_3m___4_ 0='Unchecked' 1='Checked';
	value vir_ct_oral_3m_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ct_uro_3m_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ct_rec_3m_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ng_oral_3m_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ng_uro_3m_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ng_rec_3m_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ng_other_3m_ 0='Detected' 1='Not Detected' 
		2='NA';
	value vir_ct_other_3m_ 0='Detected' 1='Not Detected' 
		2='NA';
	value syphilis_3m_ 0='Reactive' 1='Non-reactive';
	value hcv_status_3m_ 0='HCV Ab non-reactive' 1='HCV Ab reactive, RNA positive' 
		2='HCV Ab reactive, RNA negative';
	value hcv_ant_3m_ 0='Oraquick Rapid HCV Antibody Test' 1='HCV Ab blood Test' 
		2='Test not performed';
	value hcv_ant_res_3m_ 0='Reactive' 1='Non-reactive';
	value hcv_rna_quan_12wkp_3m_ 0='No' 1='Yes' 
		2='Test not performed';
	value hiv_ab_3m_ 0='INSTI HIV-1/HIV-2 Antibody Rapid Test' 1='HIV-1/HIV-2 Antibody Bood Test' 
		2='Test not performed';
	value hbv_sur_ant_3m_ 0='Reactive' 1='Non-reactive' 
		2='Test not performed';
	value fu_specific_collecti_v_2_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value idu_cnty_ 0='Canada' 1='United States';
	value dem_gender_ 0='Man' 1='Woman' 
		2='Transgender' 3='Other' 
		4='Choose not to answer';
	value dem_gender_t_ 0='Man' 1='Woman' 
		2='Neither' 3='Both';
	value dem_gender_s_ 0='No' 1='Yes' 
		2='Choose not to answer';
	value dem_gender_id_ 0='Heterosexual' 1='Homosexual' 
		2='Bisexual' 3='Other' 
		4='Choose not to answer';
	value dem_residence_ 0='Canada' 1='United States';
	value dem_race_hisp_ 0='No' 1='Yes';
	value dem_aborig_ 0='No' 1='Yes, First Nations (North American Indian)' 
		2='Yes, Metis' 3='Yes, Inuk (Inuit)';
	value dem_indian1_ 0='No' 1='Yes';
	value dem_indian2_ 0='No' 1='Yes';
	value dem_race_ 0='American Indian or Alaska Native' 1='Aboriginal Canadian' 
		2='Asian' 3='Black or African American' 
		4='Native Hawaiian or Pacific Islander' 5='White/Caucasian' 
		6='Other';
	value dem_trip_trans_ 0='Public transport (e.g. bus or subway)' 1='Walk' 
		2='Bicycle' 3='Motorcycle or scooter' 
		4='Car' 5='Taxi' 
		6='Train (e.g. commuter train)' 7='Other';
	value dem_edu_ 0='Middle school (Jr high school) or less' 1='Some high school, no diploma' 
		2='High school diploma/GED or equivalent' 3='Junior (2-year) college / CEGEP' 
		4='Technical/trade/vocational school' 5='Some college (4-year college or university)' 
		6='College graduate (4-year college or university)' 7='Graduate or professional school' 
		8='Don`t know' 9='Choose not to answer';
	value dem_marital_ 0='Married' 1='Widowed' 
		2='Divorced' 3='Separated' 
		4='Never married' 5='Living with partner' 
		6='Common law' 7='Single' 
		8='Don''t know' 9='Choose not to answer';
	value dem_employ_ 0='Working full-time' 1='Working steady part-time' 
		2='Working only sometimes' 3='Unemployed, looking for work' 
		4='Unemployed, not looking for work' 5='Retired' 
		6='Disabled, permanently or temporarily' 7='Unpaid child care or housework' 
		8='Student' 9='Receiving unemployment insurance, social security, or Bien etre social' 
		10='Other' 11='Participant chooses not to answer';
	value dem_hltins_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer';
	value dem_hltins_can_ 0='American' 1='Canadian';
	value dem_hltins_t0_ 0='No' 1='Yes';
	value dem_hltins_t1_ 0='No' 1='Yes';
	value dem_hltins_t2_ 0='No' 1='Yes';
	value dem_hltins_t3_ 0='No' 1='Yes';
	value dem_hltins_t4_ 0='No' 1='Yes';
	value dem_hltins_t5_ 0='No' 1='Yes';
	value dem_hltins_t6_ 0='No' 1='Yes';
	value dem_hltins_t7_ 0='No' 1='Yes';
	value dem_hltins_t8_ 0='No' 1='Yes';
	value dem_hltins_t9_ 0='No' 1='Yes';
	value dem_hltins_t10_ 0='No' 1='Yes';
	value dem_hltins_t14_ 0='No' 1='Yes';
	value dem_hltins_t15___0_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15___1_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15___2_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15___3_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15___4_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15___5_ 0='Unchecked' 1='Checked';
	value sub_ever___1_ 0='Unchecked' 1='Checked';
	value sub_ever___2_ 0='Unchecked' 1='Checked';
	value sub_ever___3_ 0='Unchecked' 1='Checked';
	value sub_ever___4_ 0='Unchecked' 1='Checked';
	value sub_ever___5_ 0='Unchecked' 1='Checked';
	value sub_ever___6_ 0='Unchecked' 1='Checked';
	value sub_ever___7_ 0='Unchecked' 1='Checked';
	value sub_ever___8_ 0='Unchecked' 1='Checked';
	value sub_ever___9_ 0='Unchecked' 1='Checked';
	value sub_ever___10_ 0='Unchecked' 1='Checked';
	value sub_ever___11_ 0='Unchecked' 1='Checked';
	value sub_ever___12_ 0='Unchecked' 1='Checked';
	value sub_ever___13_ 0='Unchecked' 1='Checked';
	value sub_ever___14_ 0='Unchecked' 1='Checked';
	value sub_ever___15_ 0='Unchecked' 1='Checked';
	value sub_ever___16_ 0='Unchecked' 1='Checked';
	value sub_ever___17_ 0='Unchecked' 1='Checked';
	value sub_ever___18_ 0='Unchecked' 1='Checked';
	value sub_ever___19_ 0='Unchecked' 1='Checked';
	value sub_ever___20_ 0='Unchecked' 1='Checked';
	value sub_ever___21_ 0='Unchecked' 1='Checked';
	value sub_ever___22_ 0='Unchecked' 1='Checked';
	value sub_ever___23_ 0='Unchecked' 1='Checked';
	value sub_ever___24_ 0='Unchecked' 1='Checked';
	value sub_ever___25_ 0='Unchecked' 1='Checked';
	value sub_ever___26_ 0='Unchecked' 1='Checked';
	value sub_ever___27_ 0='Unchecked' 1='Checked';
	value sub_6m1_ 1='Yes' 0='No';
	value sub_6m2_ 1='Yes' 0='No';
	value sub_6m3_ 1='Yes' 0='No';
	value sub_6m4_ 1='Yes' 0='No';
	value sub_6m5_ 1='Yes' 0='No';
	value sub_6m6_ 1='Yes' 0='No';
	value sub_6m7_ 1='Yes' 0='No';
	value sub_6m8_ 1='Yes' 0='No';
	value sub_6m9_ 1='Yes' 0='No';
	value sub_6m10_ 1='Yes' 0='No';
	value sub_6m11_ 1='Yes' 0='No';
	value sub_6m12_ 1='Yes' 0='No';
	value sub_6m13_ 1='Yes' 0='No';
	value sub_6m14_ 1='Yes' 0='No';
	value sub_6m15_ 1='Yes' 0='No';
	value sub_6m16_ 1='Yes' 0='No';
	value sub_6m17_ 1='Yes' 0='No';
	value sub_6m18_ 1='Yes' 0='No';
	value sub_6m19_ 1='Yes' 0='No';
	value sub_6m20_ 1='Yes' 0='No';
	value sub_6m21_ 1='Yes' 0='No';
	value sub_6m22_ 1='Yes' 0='No';
	value sub_6m23_ 1='Yes' 0='No';
	value sub_6m24_ 1='Yes' 0='No';
	value sub_6m25_ 1='Yes' 0='No';
	value sub_6m26_ 1='Yes' 0='No';
	value sub_6m27_ 1='Yes' 0='No';
	value sub_idu1m_her_ 1='Yes' 0='No';
	value sub_idu1m_her_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_her_ 1='Yes' 0='No';
	value sub_1m_her_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_idu1m_cp_ 1='Yes' 0='No';
	value sub_idu1m_cp_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_idu1m_fent_ 1='Yes' 0='No';
	value sub_idu1m_fent_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_idu1m_cc_ 1='Yes' 0='No';
	value sub_idu1m_cc_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_1m_cp_ 1='Yes' 0='No';
	value sub_1m_cp_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_1m_cc_ 1='Yes' 0='No';
	value sub_1m_cc_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_1m_cs_ 1='Yes' 0='No';
	value sub_1m_cs_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_idu1m_sb_ 1='Yes' 0='No';
	value sub_idu1m_sb_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_idu1m_sox_ 1='Yes' 0='No';
	value sub_1m_sox_ 1='Yes' 0='No';
	value sub_idu1m_meth_ 1='Yes' 0='No';
	value sub_1m_meth_ 1='Yes' 0='No';
	value sub_idu1m_aph_ 1='Yes' 0='No';
	value sub_idu1m_aph_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_1m_aph_ 1='Yes' 0='No';
	value sub_1m_aph_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_idu1m_barb_ 1='Yes' 0='No';
	value sub_idu1m_barb_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_1m_barb_ 1='Yes' 0='No';
	value sub_1m_barb_frqm_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_idu1m_traq_ 1='Yes' 0='No';
	value sub_idu1m_traq_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_traq_ 1='Yes' 0='No';
	value sub_1m_traq_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_marj_ 1='Yes' 0='No';
	value sub_1m_marj_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_idu1m_psy_ 1='Yes' 0='No';
	value sub_idu1m_psy_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_psy_ 1='Yes' 0='No';
	value sub_1m_psy_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_idu1m_oop_ 1='Yes' 0='No';
	value sub_idu1m_oop_frqm2_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_idu1m_oop_fit_ 1='Yes' 0='No';
	value sub_idu1m_oop_fit1_ 1='Yes' 0='No';
	value sub_idu1m_oop_fit2_ 0='No' 1='Yes, from time to time' 
		2='Yes, most of the time' 3='Yes, all of the time';
	value sub_idu1m_oop_lo_ 1='Yes' 0='No';
	value sub_idu1m_oop_lo1_ 1='Yes' 0='No';
	value sub_idu1m_oop_lo2_ 1='Yes' 0='No';
	value sub_1m_oop_ 1='Yes' 0='No';
	value sub_1m_oop_frqm2_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_idu1m_om_ 1='Yes' 0='No';
	value sub_idu1m_om_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_om_ 1='Yes' 0='No';
	value sub_1m_om_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_idu6m_ot_ 1='Yes' 0='No';
	value sub_idu1m_ot_ 1='Yes' 0='No';
	value sub_idu1m_ot_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_nidu6m_ot_ 1='Yes' 0='No';
	value sub_nidu1m_ot_ 1='Yes' 0='No';
	value sub_nidu1m_ot_frqm_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value auc_1_ 0='Never' 1='Monthly or less' 
		2='2 to 4 times a month' 3='2 to 3 times a week' 
		4='4 or more times a week';
	value auc_2_ 0='1 or 2' 1='3 or 4' 
		2='5 or 6' 3='7, 8, or 9' 
		4='10 or more';
	value auc_11_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_12_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_3_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_4_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_5_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_6_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_7_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_8_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_9_ 0='No' 1='Yes, but not in the last six months' 
		2='Yes, during the last six months';
	value auc_10_ 0='No' 1='Yes, but not in the six months' 
		2='Yes, during the six months';
	value dst_1_ 0='No' 1='Yes';
	value dst_2_ 0='No' 1='Yes';
	value dst_3_ 0='No' 1='Yes';
	value dst_4_ 0='No' 1='Yes';
	value dst_5_ 0='No' 1='Yes';
	value dst_6_ 0='No' 1='Yes';
	value dst_7_ 0='No' 1='Yes';
	value dst_8_ 0='No' 1='Yes';
	value dst_9_ 0='No' 1='Yes';
	value dst_10_ 0='No' 1='Yes';
	value idu_6mplc2___0_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___1_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___2_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___3_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___4_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___5_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___6_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___7_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___8_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___9_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___10_ 0='Unchecked' 1='Checked';
	value idu_6mplc2___11_ 0='Unchecked' 1='Checked';
	value idu_plc_ 0='At home (room/apartment)' 1='Public restrooms/bar/restaurant' 
		2='At a friend''s home' 3='Crack house/shooting gallery' 
		4='Street (alley/entrance way)' 5='Park' 
		6='At the dealer''s' 7='In a sauna' 
		8='In prison / in a detention centre' 9='Peepshow' 
		10='Room rented for an injection period' 11='Other';
	value idu_hi_6m_ 0='Never (0%)' 1='Rarely (< 25%)' 
		2='Sometimes (25% - 74%)' 3='Often (>75%)' 
		4='Always (100%)' 5='Don''t know';
	value idu_frq_ 0='No' 1='Yes';
	value idu_stp_3m_ob_ 0='No' 1='Yes';
	value idu_stp_3m3_ 0='No' 1='Yes';
	value idu_stp_3m3_vb___0_ 0='Unchecked' 1='Checked';
	value idu_stp_3m3_vb___1_ 0='Unchecked' 1='Checked';
	value idu_stp_3m2_ 0='No' 1='Yes';
	value idu_stp_3m2_vb___0_ 0='Unchecked' 1='Checked';
	value idu_stp_3m2_vb___1_ 0='Unchecked' 1='Checked';
	value idu_stp_3m1_ 0='No' 1='Yes';
	value idu_stp_3m1_vb___0_ 0='Unchecked' 1='Checked';
	value idu_stp_3m1_vb___1_ 0='Unchecked' 1='Checked';
	value idu_6mrec01_us_ 1='Yes' 0='No';
	value idu_6mrec05_us_ 1='Yes' 0='No';
	value idu_6mrec06_us_ 1='Yes' 0='No';
	value idu_6mrec07_us_ 1='Yes' 0='No';
	value idu_6mrec08_us_ 1='Yes' 0='No';
	value idu_6mrec09_us_ 1='Yes' 0='No';
	value idu_6mrec10_us_ 1='Yes' 0='No';
	value idu_6mrec11_us_ 1='Yes' 0='No';
	value idu_6mrec13_us_ 1='Yes' 0='No';
	value idu_6mrec14_us_ 1='Yes' 0='No';
	value idu_6mrec15_us_ 1='Yes' 0='No';
	value idu_6mrec18_us_ 1='Yes' 0='No';
	value idu_6mrec19_us_ 1='Yes' 0='No';
	value idu_6mrec01_ 1='Yes' 0='No';
	value idu_6mrec02_ 1='Yes' 0='No';
	value idu_6mrec03_ 1='Yes' 0='No';
	value idu_6mrec04_ 1='Yes' 0='No';
	value idu_6mrec05_ 1='Yes' 0='No';
	value idu_6mrec06_ 1='Yes' 0='No';
	value idu_6mrec07_ 1='Yes' 0='No';
	value idu_6mrec08_ 1='Yes' 0='No';
	value idu_6mrec09_ 1='Yes' 0='No';
	value idu_6mrec10_ 1='Yes' 0='No';
	value idu_6mrec11_ 1='Yes' 0='No';
	value idu_6mrec12_ 1='Yes' 0='No';
	value idu_6mrec13_ 1='Yes' 0='No';
	value idu_6mrec14_ 1='Yes' 0='No';
	value idu_6mrec15_ 1='Yes' 0='No';
	value idu_6mrec16_ 1='Yes' 0='No';
	value idu_6mrec17_ 1='Yes' 0='No';
	value idu_6mrec18_ 1='Yes' 0='No';
	value idu_6mrec19_ 1='Yes' 0='No';
	value sdu_srg_ 0='No' 1='Yes';
	value sdu_srg_6m_frq_ 0='Never' 1='One time' 
		2='Less than 5 times' 3='6-10 times' 
		4='More than 10 times' 5='More than 100 times';
	value sdu_srg_6m_ppw___0_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___1_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___2_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___3_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___4_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___5_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___6_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___7_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___8_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___9_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw___10_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppwm_ 0='Girlfriend/boyfriend/spouse' 1='Other regular sex partner' 
		2='Close friend' 3='Friends/acquintances' 
		4='Family members' 5='Drug buddies / ''cutter''' 
		6='Other business relations (client, dealer, pimp, etc. )' 7='Strangers' 
		8='Found equipment' 9='Uncertain' 
		10='Other';
	value sdu_wrk_ 1='Yes' 0='No';
	value sdu_wrk_6m_frq_ 0='Never' 1='One time' 
		2='Less than 5 times' 3='6-10 times' 
		4='More than 10 times' 5='More than 100 times';
	value sdu_wrk_6m_ppw___0_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___1_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___2_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___3_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___4_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___5_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___6_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___7_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___8_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___9_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw___10_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppwm_ 0='Girlfriend/boyfriend/spouse' 1='Other regular sex partner' 
		2='Close friend' 3='Friends/acquintances' 
		4='Family members' 5='Drug buddies / ''cutter''' 
		6='Other business relations (client, dealer, pimp, etc. )' 7='Strangers' 
		8='Found equipment' 9='Uncertain' 
		10='Other';
	value sdu_srg_hiv_ 0='No' 1='Yes' 
		2='Don''t know';
	value sdu_srg_hcv_ 0='No' 1='Yes' 
		2='Don''t know';
	value sdu_wrk_hiv_ 0='No' 1='Yes' 
		2='Don''t know';
	value sdu_wrk_hcv_ 0='No' 1='Yes' 
		2='Don''t know';
	value sdu_tgtr_ 1='Yes' 0='No';
	value odu_6m_ 0='No' 1='Yes' 
		2='Choose not to answer';
	value odu_6m_tim_acdt_ 0='No' 1='Yes' 
		2='Choose not to answer';
	value ath_1_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value ath_2_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value ath_3_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value ath_4_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value ath_5_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value ath_6_ 0='Very likely' 1='Likely' 
		2='Moderately likely' 3='Unlikely' 
		4='Very unlikely';
	value eis_status_ 0='HCV negative' 1='HCV positive';
	value atc_1_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value atc_2_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value atc_3_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value atc_4_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value atc_5_ 0='Strongly Agree' 1='Agree' 
		2='Neither Agree nor Disagree' 3='Disagree' 
		4='Strongly Disagree';
	value atc_6_ 0='Very likely' 1='Likely' 
		2='Moderately likely' 3='Unlikely' 
		4='Very unlikely';
	value eis_1_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_2_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_3_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree or Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_4_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_5_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_6_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_7_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_8_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_9_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_10_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_11_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_12_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_13_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_14_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_15_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_16_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_17_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_18_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_19_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_20_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_21_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_22_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_1_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_2_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_3_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_4_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_5_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_6_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_7_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_8_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_9_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_10_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value mmt_11_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value aiv_kid_evr_pa_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_adt_evr_pa_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_adt_evr_pa_sp_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_pa_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_pa_sp_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_kid_evr_sex_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_adt_evr_sex_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_evr_sex_sp_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sex_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sex_sp_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_evr_sp_vio_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sp_vio_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_evr_sp_brc_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sp_brc_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_evr_sp_ctl_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sp_ctl_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value ssi_1_ 0='One' 1='Two' 
		2='Three' 3='Four' 
		4='Five or more';
	value ssi_2_ 0='None of the time' 1='Some of the time' 
		2='Half of the time' 3='Most of the time' 
		4='All of the time';
	value ssi_2a_ 0='None' 1='One' 
		2='Two' 3='Three' 
		4='Four or more';
	value ssi_3_ 0='Never' 1='Rarely' 
		2='Sometimes' 3='Often' 
		4='Very often' 5='Not applicable';
	value ssi_4_ 0='Never' 1='Rarely' 
		2='Sometimes' 3='Often' 
		4='Very often' 5='Not applicable';
	value ssi_5_ 0='Never' 1='Rarely' 
		2='Sometimes' 3='Often' 
		4='Very often' 5='Not applicable';
	value ssi_6_ 0='None' 1='One' 
		2='Two' 3='Three' 
		4='Four or more';
	value ssi_7_ 0='Very unsatisfied' 1='Unsatisfied' 
		2='Neither satisfied nor unsatisfied' 3='Satisfied' 
		4='Very satisfied' 5='Not applicable';
	value ssi_8_ 0='Never' 1='Rarely' 
		2='Sometimes' 3='Often' 
		4='Very often' 5='Not applicable';
	value ssi_9_ 0='None' 1='Less than half' 
		2='About half' 3='More than half' 
		4='All of them' 5='Not applicable';
	value ssi_10_ 0='All of the time' 1='Most of the time' 
		2='Some of the time' 3='A little of the time' 
		4='None of the time';
	value ssi_11_ 0='All of the time' 1='Most of the time' 
		2='Some of the time' 3='A little of the time' 
		4='None of the time';
	value ssi_12_ 0='All of the time' 1='Most of the time' 
		2='Some of the time' 3='A little of the time' 
		4='None of the time';
	value ssi_13_ 0='All of the time' 1='Most of the time' 
		2='Some of the time' 3='A little of the time' 
		4='None of the time';
	value ssi_14_ 0='All of the time' 1='Most of the time' 
		2='Some of the time' 3='A little of the time' 
		4='None of the time';
	value ssi_15_ 0='All of the time' 1='Most of the time' 
		2='Some of the time' 3='A little of the time' 
		4='None of the time';
	value ssi_16_ 0='All of the time' 1='Most of the time' 
		2='Some of the time' 3='A little of the time' 
		4='None of the time';
	value ssi_17_ 0='All of the time' 1='Most of the time' 
		2='Some of the time' 3='A little of the time' 
		4='None of the time';
	value bpi_evr_ 1='Yes' 0='No';
	value bpi_plc___1_ 0='Unchecked' 1='Checked';
	value bpi_plc___2_ 0='Unchecked' 1='Checked';
	value bpi_plc___3_ 0='Unchecked' 1='Checked';
	value bpi_plc___4_ 0='Unchecked' 1='Checked';
	value bpi_plc___5_ 0='Unchecked' 1='Checked';
	value bpi_plc___6_ 0='Unchecked' 1='Checked';
	value bpi_plc___7_ 0='Unchecked' 1='Checked';
	value bpi_plc___8_ 0='Unchecked' 1='Checked';
	value bpi_plc___9_ 0='Unchecked' 1='Checked';
	value bpi_plc___10_ 0='Unchecked' 1='Checked';
	value bpi_plc___11_ 0='Unchecked' 1='Checked';
	value bsi_1_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_2_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_4_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_5_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_6_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_7_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_8_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_9_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_10_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_11_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_12_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_13_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_14_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_15_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_16_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_17_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_18_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value hfs_1_ 1='Yes' 0='No';
	value hfs_1a_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_2_ 1='Yes' 0='No';
	value hfs_2a_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_3_ 1='Yes' 0='No';
	value hfs_3a_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_4_ 1='Yes' 0='No';
	value hfs_4a_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_5_ 1='Yes' 0='No';
	value hfs_5a_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_6_ 1='Yes' 0='No';
	value hfs_6a_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_7_ 1='Yes' 0='No';
	value hfs_7a_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_8_ 1='Yes' 0='No';
	value hfs_8a_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_9_ 1='Yes' 0='No';
	value hfs_9a_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value qol_1_ 0='I have no problems in walking about' 1='I have slight problems in walking about' 
		2='I have moderate problems in walking about' 3='I have severe problems in walking about' 
		4='I am unable to walk about';
	value qol_2_ 0='I have no problems washing or dressing myself' 1='I have slight problems washing or dressing myself' 
		2='I have moderate problems washing or dressing myself' 3='I have severe problems washing or dressing myself' 
		4='I am unable to wash or dress myself';
	value qol_3_ 0='I have no problems doing my usual activities' 1='I have slight problems doing my usual activities' 
		2='I have moderate problems doing my usual activities' 3='I have severe problems doing my usual activities' 
		4='I am unable to do my usual activities';
	value qol_4_ 0='I have no pain or discomfort' 1='I have slight pain or discomfort' 
		2='I have moderate pain or discomfort' 3='I have severe pain or discomfort' 
		4='I have extreme pain or discomfort';
	value qol_5_ 0='I am not anxious or depressed' 1='I am slightly anxious or depressed' 
		2='I am moderately anxious or depressed' 3='I am severely anxious or depressed' 
		4='I am extremely anxious or depressed';
	value cla_1a_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value cla_3a_ 1='Yes' 0='No';
	value cla_4a_ 1='Yes' 0='No';
	value cla_5a_ 1='Yes' 0='No';
	value cla_6a_ 1='Yes' 0='No';
	value cla_7a_ 1='Yes' 0='No';
	value cla_8a_ 1='Yes' 0='No';
	value cla_9a_ 1='Yes' 0='No';
	value cla_10a_ 1='Yes' 0='No';
	value cla_11a_ 1='Yes' 0='No';
	value cla_12a_ 1='Yes' 0='No';
	value cla_13a_ 1='Yes' 0='No';
	value cla_14a_ 1='Yes' 0='No';
	value cla_15a_ 1='Yes' 0='No';
	value cla_16a_ 1='Yes' 0='No';
	value cla_17a_ 1='Yes' 0='No';
	value cla_18a_ 1='Yes' 0='No';
	value cla_20a_ 1='Yes' 0='No';
	value cla_22a_ 1='Yes' 0='No';
	value cla_23a_ 1='Yes' 0='No';
	value cla_24a_ 1='Yes' 0='No';
	value cla_25d___0_ 0='Unchecked' 1='Checked';
	value cla_25d___1_ 0='Unchecked' 1='Checked';
	value cla_25d___2_ 0='Unchecked' 1='Checked';
	value cla_25d___3_ 0='Unchecked' 1='Checked';
	value cla_25d___4_ 0='Unchecked' 1='Checked';
	value cla_25d___5_ 0='Unchecked' 1='Checked';
	value cla_25d___6_ 0='Unchecked' 1='Checked';
	value cla_25d___7_ 0='Unchecked' 1='Checked';
	value cla_25d___8_ 0='Unchecked' 1='Checked';
	value cla_25d___9_ 0='Unchecked' 1='Checked';
	value cla_25d___10_ 0='Unchecked' 1='Checked';
	value cla_25d___11_ 0='Unchecked' 1='Checked';
	value cla_25d___12_ 0='Unchecked' 1='Checked';
	value cla_25d___13_ 0='Unchecked' 1='Checked';
	value cla_25d___14_ 0='Unchecked' 1='Checked';
	value cla_25d___15_ 0='Unchecked' 1='Checked';
	value cla_25d___16_ 0='Unchecked' 1='Checked';
	value cla_25d___17_ 0='Unchecked' 1='Checked';
	value cla_25d___18_ 0='Unchecked' 1='Checked';
	value cla_25d___19_ 0='Unchecked' 1='Checked';
	value cla_25d___20_ 0='Unchecked' 1='Checked';
	value cla_25d___21_ 0='Unchecked' 1='Checked';
	value cla_26a_ 1='Yes' 0='No';
	value nms_er_ 1='Yes' 0='No';
	value nms_hsp_ 1='Yes' 0='No';
	value nms_hps_drg_ 1='Yes' 0='No';
	value nms_otp_ 1='Yes' 0='No';
	value nms_rsd_ 1='Yes' 0='No';
	value nms_auc_ 1='Yes' 0='No';
	value nms_auc_med___0_ 0='Unchecked' 1='Checked';
	value nms_auc_med___1_ 0='Unchecked' 1='Checked';
	value nms_auc_med___2_ 0='Unchecked' 1='Checked';
	value nms_auc_med___3_ 0='Unchecked' 1='Checked';
	value nms_auc_med___4_ 0='Unchecked' 1='Checked';
	value nms_opd_ 1='Yes' 0='No';
	value nms_opd_med___0_ 0='Unchecked' 1='Checked';
	value nms_opd_med___1_ 0='Unchecked' 1='Checked';
	value nms_opd_med___2_ 0='Unchecked' 1='Checked';
	value nms_opd_med___3_ 0='Unchecked' 1='Checked';
	value nms_opd_med___4_ 0='Unchecked' 1='Checked';
	value nms_opd_med___5_ 0='Unchecked' 1='Checked';
	value nms_opd_med___6_ 0='Unchecked' 1='Checked';
	value nms_mnt_ 1='Yes' 0='No';
	value nms_trp_ 1='Yes' 0='No';
	value nms_xxx___1_ 0='Unchecked' 1='Checked';
	value nms_xxx___2_ 0='Unchecked' 1='Checked';
	value nms_xxx___3_ 0='Unchecked' 1='Checked';
	value nms_xxx___4_ 0='Unchecked' 1='Checked';
	value nms_xxx___5_ 0='Unchecked' 1='Checked';
	value nms_xxx___999_ 0='Unchecked' 1='Checked';
	value nms_mdo_ 1='Yes' 0='No';
	value nms_cost_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value nms_inc_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value nms_emp_ 1='Yes' 0='No';
	value nms_emp_inc_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value nms_emp_ben_ 1='Yes' 0='No';
	value nms_otinc_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value nms_edu_cr_ 1='Yes' 0='No';
	value nms_edu_ful_ 1='Yes' 0='No';
	value nms_qul_ 1='Yes' 0='No';
	value act_1_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_2_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_3_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_4_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_5_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_6_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value srb_3m_prst_ 1='Yes' 0='No';
	value srb_prst01_ 1='Yes' 0='No';
	value srb_prst02_ 1='Yes' 0='No';
	value srb_prst03_ 1='Yes' 0='No';
	value srb_prst04_ 1='Yes' 0='No';
	value srb_prst05_ 1='Yes' 0='No';
	value srb_3m_ 1='Yes' 0='No';
	value srb_3m_f_ 1='Yes' 0='No';
	value srb_1m_f_ 1='Yes' 0='No';
	value srb_1m_fc_pv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_po_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_pa_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_npv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_npo_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_npa_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_cv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_co_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_ca_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_mcv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_mco_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_mca_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_f_hiv_ 0='No' 1='Yes' 
		2='Don''t know';
	value srb_1m_fc_hiv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_hcv_ 0='No' 1='Yes' 
		2='Don''t know';
	value srb_1m_fc_hcv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_cc_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_hro_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_main_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_aph_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_psy_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_3m_m_ 1='Yes' 0='No';
	value srb_1m_m_ 1='Yes' 0='No';
	value srb_1m_mc_pv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_po_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_pa_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_npv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_npo_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_npa_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_cv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_co_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_ca_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_mcv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_mco_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_mca_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_m_hiv_ 0='No' 1='Yes' 
		2='Don''t know';
	value srb_1m_mc_hiv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_hcv_ 0='No' 1='Yes' 
		2='Don''t know';
	value srb_1m_mc_hcv_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_cc_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_hro_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_main_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_aph_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_psy_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value cdu_1_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_2_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_3_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_4_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_5_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_6_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_7_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_8_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_9_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_10_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_11_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_12_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_13_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_14_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_17_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_18_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cpe_1_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cpe_2_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cpe_3_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cpe_4_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cce_1_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cce_2_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cce_3_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cce_4_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value baseline_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value rphcv1_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither agree nor disagree' 3='Agree' 
		4='Strongly Agree';
	value rphcv2_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither agree nor disagree' 3='Agree' 
		4='Strongly Agree';
	value rphcv3_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither agree nor disagree' 3='Agree' 
		4='Strongly Agree';
	value rphcv4_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither agree nor disagree' 3='Agree' 
		4='Strongly Agree';
	value rphcv_5_ 0='Extremely' 1='Very much' 
		2='Moderately' 3='Slightly' 
		4='Not at all';
	value rphcv_6_ 0='No' 1='Yes';
	value rphcv_7_ 0='No' 1='Yes';
	value rphcv_8_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value rphcv_9_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value rphcv_10_ 0='Definitely will not' 1='Probably will not' 
		2='Not sure' 3='Probably not' 
		4='Definitely';
	value rphcv_11_ 0='Extremely' 1='Very much' 
		2='Moderately' 3='Slightly' 
		4='Not at all';
	value relationship_with_ph_v_4_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value ec_yrs_ 0='No' 1='Yes';
	value ec_hivneg_ 0='No' 1='Yes';
	value ec_inj6_ 0='No' 1='Yes';
	value ec_vic_ 0='No' 1='Yes';
	value ec_fu_ 0='No' 1='Yes';
	value ec_com_ 0='No' 1='Yes';
	value ec_serv_ 0='No' 1='Yes';
	value rc_consent_ 0='No' 1='Yes';
	value rc_quiz_ 0='No' 1='Yes';
	value rc_report_ 0='No' 1='Yes';
	value rc_hippa_ 0='No' 1='Yes';
	value rc_release_ 0='No' 1='Yes';
	value rc_locator_ 0='No' 1='Yes';
	value rc_vital_ 0='No' 1='Yes';
	value rc_psychiatric_ 0='No' 1='Yes';
	value rc_scc_ 0='No' 1='Yes';
	value rc_informed_ 0='No' 1='Yes';
	value rc_base_ 0='No' 1='Yes';
	value ec_pc_yes_ 1='Yes' 0='No';
	value ec_all_2_ 1='Yes' 0='No';
	value randomization_checkl_v_5_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value rand_ele_ 1='Yes' 0='No';
	value rand_arm_ 0='On-site integrated care with adherence counseling' 1='Off-site patient referral to specialized care with patient navigation';
	value rand_reason_ 0='Failed to return' 1='Declined participation' 
		2='Physician refused' 3='Other';
	value rand_randomization_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value idu_cnty_3m_ 0='Canada' 1='United States';
	value dem_gender_3m_ 0='Man' 1='Woman' 
		2='Transgender' 3='Other' 
		4='Choose not to answer';
	value dem_gender_t_3m_ 0='Man' 1='Woman' 
		2='Neither' 3='Both';
	value dem_gender_s_3m_ 0='No' 1='Yes' 
		2='Choose not to answer';
	value dem_gender_id_3m_ 0='Heterosexual' 1='Homosexual' 
		2='Bisexual' 3='Other' 
		4='Choose not to answer';
	value dem_trip_trans_3m_ 0='Public transport (e.g. bus or subway)' 1='Walk' 
		2='Bicycle' 3='Motorcycle or scooter' 
		4='Car' 5='Taxi' 
		6='Train (e.g. commuter train)' 7='Other';
	value dem_edu_3m_ 0='Middle school (Jr high school) or less' 1='Some high school, no diploma' 
		2='High school diploma/GED or equivalent' 3='Junior (2-year) college / CEGEP' 
		4='Technical/trade/vocational school' 5='Some college (4-year college or university)' 
		6='College graduate (4-year college or university)' 7='Graduate or professional school' 
		8='Don`t know' 9='Choose not to answer';
	value dem_marital_3m_ 0='Married' 1='Widowed' 
		2='Divorced' 3='Separated' 
		4='Never married' 5='Living with partner' 
		6='Common law' 7='Single' 
		8='Don''t know' 9='Choose not to answer';
	value dem_employ_3m_ 0='Working full-time' 1='Working steady part-time' 
		2='Working only sometimes' 3='Unemployed, looking for work' 
		4='Unemployed, not looking for work' 5='Retired' 
		6='Disabled, permanently or temporarily' 7='Unpaid child care or housework' 
		8='Student' 9='Receiving unemployment insurance, social security, or Bien etre social' 
		10='Other' 11='Participant chooses not to answer';
	value dem_hltins_3m_ 0='No' 1='Yes' 
		2='Don''t know' 3='Choose not to answer';
	value dem_hltins_can_3m_ 0='American' 1='Canadian';
	value dem_hltins_t0_3m_ 0='No' 1='Yes';
	value dem_hltins_t1_3m_ 0='No' 1='Yes';
	value dem_hltins_t2_3m_ 0='No' 1='Yes';
	value dem_hltins_t3_3m_ 0='No' 1='Yes';
	value dem_hltins_t4_3m_ 0='No' 1='Yes';
	value dem_hltins_t5_3m_ 0='No' 1='Yes';
	value dem_hltins_t6_3m_ 0='No' 1='Yes';
	value dem_hltins_t7_3m_ 0='No' 1='Yes';
	value dem_hltins_t8_3m_ 0='No' 1='Yes';
	value dem_hltins_t9_3m_ 0='No' 1='Yes';
	value dem_hltins_t10_3m_ 0='No' 1='Yes';
	value dem_hltins_t14_3m_ 0='No' 1='Yes';
	value dem_hltins_t15_3m___0_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15_3m___1_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15_3m___2_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15_3m___3_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15_3m___4_ 0='Unchecked' 1='Checked';
	value dem_hltins_t15_3m___5_ 0='Unchecked' 1='Checked';
	value sub_6m1_3m_ 1='Yes' 0='No';
	value sub_6m2_3m_ 1='Yes' 0='No';
	value sub_6m3_3m_ 1='Yes' 0='No';
	value sub_6m4_3m_ 1='Yes' 0='No';
	value sub_6m5_3m_ 1='Yes' 0='No';
	value sub_6m6_3m_ 1='Yes' 0='No';
	value sub_6m7_3m_ 1='Yes' 0='No';
	value sub_6m8_3m_ 1='Yes' 0='No';
	value sub_6m9_3m_ 1='Yes' 0='No';
	value sub_6m10_3m_ 1='Yes' 0='No';
	value sub_6m11_3m_ 1='Yes' 0='No';
	value sub_6m12_3m_ 1='Yes' 0='No';
	value sub_6m13_3m_ 1='Yes' 0='No';
	value sub_6m14_3m_ 1='Yes' 0='No';
	value sub_6m15_3m_ 1='Yes' 0='No';
	value sub_6m16_3m_ 1='Yes' 0='No';
	value sub_6m17_3m_ 1='Yes' 0='No';
	value sub_6m18_3m_ 1='Yes' 0='No';
	value sub_6m19_3m_ 1='Yes' 0='No';
	value sub_6m20_3m_ 1='Yes' 0='No';
	value sub_6m21_3m_ 1='Yes' 0='No';
	value sub_6m22_3m_ 1='Yes' 0='No';
	value sub_6m23_3m_ 1='Yes' 0='No';
	value sub_6m24_3m_ 1='Yes' 0='No';
	value sub_6m25_3m_ 1='Yes' 0='No';
	value sub_6m26_3m_ 1='Yes' 0='No';
	value sub_6m27_3m_ 1='Yes' 0='No';
	value sub_idu1m_her_3m_ 1='Yes' 0='No';
	value sub_idu1m_her_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_her_3m_ 1='Yes' 0='No';
	value sub_1m_her_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_fent_3m_ 1='Yes' 0='No';
	value sub_1m_fent_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_idu1m_cp_3m_ 1='Yes' 0='No';
	value sub_idu1m_cp_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_idu1m_cc_3m_ 1='Yes' 0='No';
	value sub_idu1m_cc_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_1m_cp_3m_ 1='Yes' 0='No';
	value sub_1m_cp_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_1m_cc_3m_ 1='Yes' 0='No';
	value sub_1m_cc_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_1m_cs_3m_ 1='Yes' 0='No';
	value sub_1m_cs_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_idu1m_sb_3m_ 1='Yes' 0='No';
	value sub_idu1m_sb_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='11 to 20' 
		4='More than 20';
	value sub_idu1m_sox_3m_ 1='Yes' 0='No';
	value sub_1m_sox_3m_ 1='Yes' 0='No';
	value sub_idu1m_meth_3m_ 1='Yes' 0='No';
	value sub_1m_meth_3m_ 1='Yes' 0='No';
	value sub_idu1m_aph_3m_ 1='Yes' 0='No';
	value sub_idu1m_aph_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_1m_aph_3m_ 1='Yes' 0='No';
	value sub_1m_aph_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_idu1m_barb_3m_ 1='Yes' 0='No';
	value sub_idu1m_barb_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_1m_barb_3m_ 1='Yes' 0='No';
	value sub_1m_barb_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_idu1m_traq_3m_ 1='Yes' 0='No';
	value sub_idu1m_traq_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_traq_3m_ 1='Yes' 0='No';
	value sub_1m_traq_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_marj_3m_ 1='Yes' 0='No';
	value sub_1m_marj_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_idu1m_psy_3m_ 1='Yes' 0='No';
	value sub_idu1m_psy_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_psy_3m_ 1='Yes' 0='No';
	value sub_1m_psy_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_idu1m_oop_3m_ 1='Yes' 0='No';
	value sub_idu1m_oop_frqm2_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_idu1m_oop_fit_3m_ 1='Yes' 0='No';
	value sub_idu1m_oop_fit1_3m_ 1='Yes' 0='No';
	value sub_idu1m_oop_fit2_3m_ 0='No' 1='Yes, from time to time' 
		2='Yes, most of the time' 3='Yes, all of the time';
	value sub_idu1m_oop_lo_3m_ 1='Yes' 0='No';
	value sub_idu1m_oop_lo1_3m_ 1='Yes' 0='No';
	value sub_idu1m_oop_lo2_3m_ 1='Yes' 0='No';
	value sub_1m_oop_3m_ 1='Yes' 0='No';
	value sub_1m_oop_frqm2_3m_ 0='1 to 3' 1='4 to 6' 
		2='7 to 10' 3='More than 10';
	value sub_idu1m_om_3m_ 1='Yes' 0='No';
	value sub_idu1m_om_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_1m_om_3m_ 1='Yes' 0='No';
	value sub_1m_om_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_idu6m_ot_3m_ 1='Yes' 0='No';
	value sub_idu1m_ot_3m_ 1='Yes' 0='No';
	value sub_idu1m_ot_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value sub_nidu6m_ot_3m_ 1='Yes' 0='No';
	value sub_nidu1m_ot_3m_ 1='Yes' 0='No';
	value sub_nidu1m_ot_frqm_3m_ 0='1 to 3' 1='4 to 6' 
		2='More than 6';
	value idu_3m_ 0='No' 1='Yes';
	value idu_6mplc2_3m___0_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___1_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___2_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___3_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___4_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___5_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___6_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___7_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___8_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___9_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___10_ 0='Unchecked' 1='Checked';
	value idu_6mplc2_3m___11_ 0='Unchecked' 1='Checked';
	value idu_plc_3m_ 0='At home (room/apartment)' 1='Public restrooms/bar/restaurant' 
		2='At a friend''s home' 3='Crack house/shooting gallery' 
		4='Street (alley/entrance way)' 5='Park' 
		6='At the dealer''s' 7='In a sauna' 
		8='In prison / in a detention centre' 9='Peepshow' 
		10='Room rented for an injection period' 11='Other';
	value idu_hi_6m_3m_ 0='Never (0%)' 1='Rarely (< 25%)' 
		2='Sometimes (25% - 74%)' 3='Often (>75%)' 
		4='Always (100%)' 5='Don''t know';
	value idu_frq_3m_ 0='No' 1='Yes';
	value idu_stp_3m_ob_3m_ 0='No' 1='Yes';
	value idu_stp_3m3_3m_ 0='No' 1='Yes';
	value idu_stp_3m3_vb_3m___0_ 0='Unchecked' 1='Checked';
	value idu_stp_3m3_vb_3m___1_ 0='Unchecked' 1='Checked';
	value idu_stp_3m2_3m_ 0='No' 1='Yes';
	value idu_stp_3m2_vb_3m___0_ 0='Unchecked' 1='Checked';
	value idu_stp_3m2_vb_3m___1_ 0='Unchecked' 1='Checked';
	value idu_stp_3m1_3m_ 0='No' 1='Yes';
	value idu_stp_3m1_vb_3m___0_ 0='Unchecked' 1='Checked';
	value idu_stp_3m1_vb_3m___1_ 0='Unchecked' 1='Checked';
	value idu_6mrec01_3m_ 1='Yes' 0='No';
	value idu_6mrec02_3m_ 1='Yes' 0='No';
	value idu_6mrec03_3m_ 1='Yes' 0='No';
	value idu_6mrec04_3m_ 1='Yes' 0='No';
	value idu_6mrec05_3m_ 1='Yes' 0='No';
	value idu_6mrec06_3m_ 1='Yes' 0='No';
	value idu_6mrec07_3m_ 1='Yes' 0='No';
	value idu_6mrec08_3m_ 1='Yes' 0='No';
	value idu_6mrec09_3m_ 1='Yes' 0='No';
	value idu_6mrec10_3m_ 1='Yes' 0='No';
	value idu_6mrec11_3m_ 1='Yes' 0='No';
	value idu_6mrec12_3m_ 1='Yes' 0='No';
	value idu_6mrec13_3m_ 1='Yes' 0='No';
	value idu_6mrec14_3m_ 1='Yes' 0='No';
	value idu_6mrec15_3m_ 1='Yes' 0='No';
	value idu_6mrec16_3m_ 1='Yes' 0='No';
	value idu_6mrec17_3m_ 1='Yes' 0='No';
	value idu_6mrec18_3m_ 1='Yes' 0='No';
	value idu_6mrec19_3m_ 1='Yes' 0='No';
	value idu_6mrec01_us_3m_ 1='Yes' 0='No';
	value idu_6mrec05_us_3m_ 1='Yes' 0='No';
	value idu_6mrec06_us_3m_ 1='Yes' 0='No';
	value idu_6mrec07_us_3m_ 1='Yes' 0='No';
	value idu_6mrec08_us_3m_ 1='Yes' 0='No';
	value idu_6mrec09_us_3m_ 1='Yes' 0='No';
	value idu_6mrec10_us_3m_ 1='Yes' 0='No';
	value idu_6mrec11_us_3m_ 1='Yes' 0='No';
	value idu_6mrec13_us_3m_ 1='Yes' 0='No';
	value idu_6mrec14_us_3m_ 1='Yes' 0='No';
	value idu_6mrec15_us_3m_ 1='Yes' 0='No';
	value idu_6mrec18_us_3m_ 1='Yes' 0='No';
	value idu_6mrec19_us_3m_ 1='Yes' 0='No';
	value sdu_srg_3m_ 0='No' 1='Yes';
	value sdu_srg_6m_frq_3m_ 0='Never' 1='One time' 
		2='Less than 5 times' 3='6-10 times' 
		4='More than 10 times' 5='More than 100 times';
	value sdu_srg_6m_ppw_3m___0_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___1_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___2_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___3_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___4_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___5_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___6_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___7_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___8_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___9_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppw_3m___10_ 0='Unchecked' 1='Checked';
	value sdu_srg_6m_ppwm_3m_ 0='Girlfriend/boyfriend/spouse' 1='Other regular sex partner' 
		2='Close friend' 3='Friends/acquintances' 
		4='Family members' 5='Drug buddies / ''cutter''' 
		6='Other business relations (client, dealer, pimp, etc. )' 7='Strangers' 
		8='Found equipment' 9='Uncertain' 
		10='Other';
	value sdu_wrk_3m_ 1='Yes' 0='No';
	value sdu_wrk_6m_frq_3m_ 0='Never' 1='One time' 
		2='Less than 5 times' 3='6-10 times' 
		4='More than 10 times' 5='More than 100 times';
	value sdu_wrk_6m_ppw_3m___0_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___1_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___2_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___3_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___4_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___5_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___6_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___7_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___8_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___9_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppw_3m___10_ 0='Unchecked' 1='Checked';
	value sdu_wrk_6m_ppwm_3m_ 0='Girlfriend/boyfriend/spouse' 1='Other regular sex partner' 
		2='Close friend' 3='Friends/acquintances' 
		4='Family members' 5='Drug buddies / ''cutter''' 
		6='Other business relations (client, dealer, pimp, etc. )' 7='Strangers' 
		8='Found equipment' 9='Uncertain' 
		10='Other';
	value sdu_srg_hiv_3m_ 0='No' 1='Yes' 
		2='Don''t know';
	value sdu_srg_hcv_3m_ 0='No' 1='Yes' 
		2='Don''t know';
	value sdu_wrk_hiv_3m_ 0='No' 1='Yes' 
		2='Don''t know';
	value sdu_wrk_hcv_3m_ 0='No' 1='Yes' 
		2='Don''t know';
	value sdu_tgtr_3m_ 1='Yes' 0='No';
	value bpi_evr_3m_ 1='Yes' 0='No';
	value bpi_plc_3m___1_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___2_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___3_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___4_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___5_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___6_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___7_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___8_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___9_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___10_ 0='Unchecked' 1='Checked';
	value bpi_plc_3m___11_ 0='Unchecked' 1='Checked';
	value hfs_1_3m_ 1='Yes' 0='No';
	value hfs_1a_3m_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_2_3m_ 1='Yes' 0='No';
	value hfs_2a_3m_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_3_3m_ 1='Yes' 0='No';
	value hfs_3a_3m_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_4_3m_ 1='Yes' 0='No';
	value hfs_4a_3m_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_5_3m_ 1='Yes' 0='No';
	value hfs_5a_3m_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_6_3m_ 1='Yes' 0='No';
	value hfs_6a_3m_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_7_3m_ 1='Yes' 0='No';
	value hfs_7a_3m_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_8_3m_ 1='Yes' 0='No';
	value hfs_8a_3m_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value hfs_9_3m_ 1='Yes' 0='No';
	value hfs_9a_3m_ 0='Rarely (once or twice in the past)' 1='Sometimes (three to ten times in the past four weeks)' 
		2='Often (more than ten times in the past four weeks)';
	value cla_1a_3m_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value cla_25d_3m___0_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___1_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___2_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___3_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___4_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___5_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___6_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___7_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___8_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___9_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___10_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___11_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___12_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___13_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___14_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___15_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___16_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___17_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___18_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___19_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___20_ 0='Unchecked' 1='Checked';
	value cla_25d_3m___21_ 0='Unchecked' 1='Checked';
	value cla_26a_3m_ 1='Yes' 0='No';
	value nms_er_3m_ 1='Yes' 0='No';
	value nms_hsp_3m_ 1='Yes' 0='No';
	value nms_hps_drg_3m_ 1='Yes' 0='No';
	value nms_otp_3m_ 1='Yes' 0='No';
	value nms_rsd_3m_ 1='Yes' 0='No';
	value nms_auc_3m_ 1='Yes' 0='No';
	value nms_auc_med_3m___0_ 0='Unchecked' 1='Checked';
	value nms_auc_med_3m___1_ 0='Unchecked' 1='Checked';
	value nms_auc_med_3m___2_ 0='Unchecked' 1='Checked';
	value nms_auc_med_3m___3_ 0='Unchecked' 1='Checked';
	value nms_auc_med_3m___4_ 0='Unchecked' 1='Checked';
	value nms_opd_3m_ 1='Yes' 0='No';
	value nms_opd_med_3m___0_ 0='Unchecked' 1='Checked';
	value nms_opd_med_3m___1_ 0='Unchecked' 1='Checked';
	value nms_opd_med_3m___2_ 0='Unchecked' 1='Checked';
	value nms_opd_med_3m___3_ 0='Unchecked' 1='Checked';
	value nms_opd_med_3m___4_ 0='Unchecked' 1='Checked';
	value nms_opd_med_3m___5_ 0='Unchecked' 1='Checked';
	value nms_opd_med_3m___6_ 0='Unchecked' 1='Checked';
	value nms_mnt_3m_ 1='Yes' 0='No';
	value nms_trp_3m_ 1='Yes' 0='No';
	value nms_xxx_3m___1_ 0='Unchecked' 1='Checked';
	value nms_xxx_3m___2_ 0='Unchecked' 1='Checked';
	value nms_xxx_3m___3_ 0='Unchecked' 1='Checked';
	value nms_xxx_3m___4_ 0='Unchecked' 1='Checked';
	value nms_xxx_3m___5_ 0='Unchecked' 1='Checked';
	value nms_xxx_3m___999_ 0='Unchecked' 1='Checked';
	value nms_mdo_3m_ 1='Yes' 0='No';
	value nms_cost_3m_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value nms_inc_3m_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value nms_emp_3m_ 1='Yes' 0='No';
	value nms_emp_inc_3m_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value nms_emp_ben_3m_ 1='Yes' 0='No';
	value nms_otinc_3m_ 0='In Canadian dollars (CAD)' 1='In United States Dollars (USD)';
	value nms_edu_cr_3m_ 1='Yes' 0='No';
	value nms_edu_ful_3m_ 1='Yes' 0='No';
	value nms_qul_3m_ 1='Yes' 0='No';
	value srb_3m_prst_3m_ 1='Yes' 0='No';
	value srb_prst01_3m_ 1='Yes' 0='No';
	value srb_prst02_3m_ 1='Yes' 0='No';
	value srb_prst03_3m_ 1='Yes' 0='No';
	value srb_prst04_3m_ 1='Yes' 0='No';
	value srb_prst05_3m_ 1='Yes' 0='No';
	value srb_3m_3m_ 1='Yes' 0='No';
	value srb_3m_f_3m_ 1='Yes' 0='No';
	value srb_1m_f_3m_ 1='Yes' 0='No';
	value srb_1m_fc_pv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_po_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_pa_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_npv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_npo_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_npa_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_cv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_co_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_ca_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_mcv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_mco_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_fc_mca_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_f_hiv_3m_ 0='No' 1='Yes' 
		2='Don''t know';
	value srb_1m_fc_hiv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_hcv_3m_ 0='No' 1='Yes' 
		2='Don''t know';
	value srb_1m_fc_hcv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_cc_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_hro_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_main_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_aph_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_f_drg_psy_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_3m_m_3m_ 1='Yes' 0='No';
	value srb_1m_m_3m_ 1='Yes' 0='No';
	value srb_1m_mc_pv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_po_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_pa_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_npv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_npo_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_npa_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_cv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_co_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_ca_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_mcv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_mco_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_mc_mca_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always' 9999='Not Applicable';
	value srb_1m_m_hiv_3m_ 0='No' 1='Yes' 
		2='Don''t know';
	value srb_1m_mc_hiv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_hcv_3m_ 0='No' 1='Yes' 
		2='Don''t know';
	value srb_1m_mc_hcv_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_cc_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_hro_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_main_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_aph_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value srb_1m_m_drg_psy_3m_ 0='Never' 1='Rarely' 
		2='Some of the time' 3='Very often' 
		4='Always';
	value bsi_3m_1_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_2_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_3_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_4_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_5_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_6_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_7_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_8_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_9_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_10_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_11_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_12_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_13_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_14_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_15_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_16_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_17_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value bsi_3m_18_ 0='Not at all' 1='A little bit' 
		2='Moderately' 3='Quite a bit' 
		4='Extremely';
	value followup_3m_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value eis_status_3m_ 0='HCV positive' 1='HCV negative';
	value eis_1_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_2_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_3_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree or Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_4_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_5_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_6_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_7_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_8_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_9_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_10_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_11_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_12_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_13_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_14_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_15_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_16_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_17_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_18_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_19_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_20_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_21_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value eis_22_3m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree' 5='Not Applicable';
	value cpe_1_3m_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cpe_2_3m_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cpe_3_3m_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cpe_4_3m_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cce_1_3m_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cce_2_3m_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cce_3_3m_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value cce_4_3m_ 0='Cannot do at all' 1='Probably cannot do' 
		2='Moderately certain can do' 3='Probably can do' 
		4='Certain can do';
	value followup_3m_eis_cpe__v_7_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value prep_prescribe_ 0='No' 1='Yes';
	value adh_prep_ 0='No' 1='Yes';
	value stop_prep_ 0='No' 1='Yes';
	value prep_last4week_ 0='No' 1='Yes';
	value prep_now_ 0='No' 1='Yes';
	value adh2_noncompliance___1_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___2_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___3_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___4_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___5_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___6_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___7_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___8_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___9_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___10_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___11_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___12_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___13_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___14_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___15_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___16_ 0='Unchecked' 1='Checked';
	value adh2_noncompliance___17_ 0='Unchecked' 1='Checked';
	value adh2_prepchange_ 0='No' 1='Yes';
	value adh_hcv_ 0='No' 1='Yes';
	value adh4_hcvchange_ 0='No' 1='Yes';
	value adh4_noncompliance___1_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___2_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___3_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___4_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___5_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___6_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___7_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___8_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___9_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___10_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___11_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___12_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___13_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___14_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___15_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___16_ 0='Unchecked' 1='Checked';
	value adh4_noncompliance___17_ 0='Unchecked' 1='Checked';
	value followup_3m_adh2_4_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value idu_cnty_6m_ 0='Canada' 1='United States';
	value auc_1_6m_ 0='Never' 1='Monthly or less' 
		2='2 to 4 times a month' 3='2 to 3 times a week' 
		4='4 or more times a week';
	value auc_2_6m_ 0='1 or 2' 1='3 or 4' 
		2='5 or 6' 3='7, 8, or 9' 
		4='10 or more';
	value auc_11_6m_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_12_6m_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_3_6m_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_4_6m_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_5_6m_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_6_6m_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_7_6m_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_8_6m_ 0='Never' 1='Less than monthly' 
		2='Monthly' 3='Weekly' 
		4='Daily or almost daily';
	value auc_9_6m_ 0='No' 1='Yes, but not in the last six months' 
		2='Yes, during the last six months';
	value auc_10_6m_ 0='No' 1='Yes, but not in the past 6 months' 
		2='Yes, during the past 6 months';
	value dst_1_6m_ 0='No' 1='Yes';
	value dst_2_6m_ 0='No' 1='Yes';
	value dst_3_6m_ 0='No' 1='Yes';
	value dst_4_6m_ 0='No' 1='Yes';
	value dst_5_6m_ 0='No' 1='Yes';
	value dst_6_6m_ 0='No' 1='Yes';
	value dst_7_6m_ 0='No' 1='Yes';
	value dst_8_6m_ 0='No' 1='Yes';
	value dst_9_6m_ 0='No' 1='Yes';
	value dst_10_6m_ 0='No' 1='Yes';
	value odu_6m_6m_ 0='No' 1='Yes' 
		2='Choose not to answer';
	value odu_6m_tim_acdt_6m_ 0='No' 1='Yes' 
		2='Choose not to answer';
	value aiv_6m_pa_6m_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_pa_sp_6m_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sex_6m_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sex_sp_6m_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sp_vio_6m_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sp_brc_6m_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value aiv_6m_sp_ctl_6m_ 0='No' 1='Yes' 
		2='Refuse to answer';
	value act_1_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_2_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_3_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_4_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_5_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value act_6_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_1_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_2_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_3_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_4_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_5_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_6_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_7_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_8_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_9_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_10_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_11_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_12_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_13_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_14_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_17_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value cdu_18_6m_ 0='Strongly Disagree' 1='Disagree' 
		2='Neither Agree nor Disagree' 3='Agree' 
		4='Strongly Agree';
	value followup_6m_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value ac1_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value ac2_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value ac3_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value ac4_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value ac5_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value ac6_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value ac7_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value ac8_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value ac9_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value ac10_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_1_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_2_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_3_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_4_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_5_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_6_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_7_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_8_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_9_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value pns_10_ 0='Strongly Disagree' 1='Disagree' 
		2='Slightly Disagree' 3='Slightly Agree' 
		4='Agree' 5='Strongly Agree';
	value intervention_satisfa_v_8_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value scf_reasonend_ 0='Completed study' 1='Participant withdrew consent' 
		2='Participant became pregnant during participation' 3='In the Principal Investigator''s opinion, it was not in the participant''s best interest to continue:' 
		4='Adverse event' 5='Serious adverse event' 
		6='Lost to follow-up' 7='Unknown' 
		8='Other';
	value end_of_study_form_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value eom_whatmed___0_ 0='Unchecked' 1='Checked';
	value eom_whatmed___1_ 0='Unchecked' 1='Checked';
	value eom_whatmed___2_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___0_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___1_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___2_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___3_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___4_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___5_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___6_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___7_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___8_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___9_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___10_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___11_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___12_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___13_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___14_ 0='Unchecked' 1='Checked';
	value eom_reason_truvada___15_ 0='Unchecked' 1='Checked';
	value eom_primreason___0_ 0='Unchecked' 1='Checked';
	value eom_primreason___1_ 0='Unchecked' 1='Checked';
	value eom_primreason___2_ 0='Unchecked' 1='Checked';
	value eom_primreason___3_ 0='Unchecked' 1='Checked';
	value eom_primreason___4_ 0='Unchecked' 1='Checked';
	value eom_primreason___5_ 0='Unchecked' 1='Checked';
	value eom_primreason___6_ 0='Unchecked' 1='Checked';
	value eom_primreason___7_ 0='Unchecked' 1='Checked';
	value eom_primreason___8_ 0='Unchecked' 1='Checked';
	value eom_primreason___9_ 0='Unchecked' 1='Checked';
	value eom_primreason___10_ 0='Unchecked' 1='Checked';
	value eom_primreason___11_ 0='Unchecked' 1='Checked';
	value eom_primreason___12_ 0='Unchecked' 1='Checked';
	value eom_primreason___13_ 0='Unchecked' 1='Checked';
	value eom_primreason___14_ 0='Unchecked' 1='Checked';
	value eom_primreason___15_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___0_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___1_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___2_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___3_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___4_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___5_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___6_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___7_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___8_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___9_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___10_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___11_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___12_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___13_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___14_ 0='Unchecked' 1='Checked';
	value eom_reason_hcv___15_ 0='Unchecked' 1='Checked';
	value end_of_medication_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value ae_typereport___0_ 0='Unchecked' 1='Checked';
	value ae_typereport___1_ 0='Unchecked' 1='Checked';
	value ae_typereport___2_ 0='Unchecked' 1='Checked';
	value ae_guidelines_ 1='Yes' 0='No';
	value ae_severity_ 0='Mild' 1='Moderate' 
		2='Severe';
	value ae_expect_ 0='Anticipated/Expected' 1='Unanticipated/Unexpected';
	value ae_relation_med_ 0='Unrelated' 1='Unlikely' 
		2='Possible' 3='Probably' 
		4='Definitely' 5='Unknown (unable to judge)';
	value ae_treatment___0_ 0='Unchecked' 1='Checked';
	value ae_treatment___1_ 0='Unchecked' 1='Checked';
	value ae_treatment___2_ 0='Unchecked' 1='Checked';
	value ae_treatment___3_ 0='Unchecked' 1='Checked';
	value ae_treatment___4_ 0='Unchecked' 1='Checked';
	value ae_treatment___5_ 0='Unchecked' 1='Checked';
	value ae_outcome_ 0='Resolved' 1='Ongoing' 
		2='Ongoing at end of study participation' 3='Severity/Frequency increased' 
		4='Death';
	value smi_txarm_ 0='On-site integrated care with adherence counseling' 1='Off-site patient referral to specialized care with patient navigation';
	value smi_prepmed_ 0='Truvada' 1='Other PrEP medication' 
		2='Not prescribed';
	value prep_disp_ 0='Dispensed, not yet started' 1='Dispensed and started';
	value smi_prep_action___0_ 0='Unchecked' 1='Checked';
	value smi_prep_action___1_ 0='Unchecked' 1='Checked';
	value smi_prep_action___2_ 0='Unchecked' 1='Checked';
	value smi_prep_action___3_ 0='Unchecked' 1='Checked';
	value smi_prep_action___4_ 0='Unchecked' 1='Checked';
	value smi_prep_action___5_ 0='Unchecked' 1='Checked';
	value smi_prep_action___6_ 0='Unchecked' 1='Checked';
	value smi_prep_action___7_ 0='Unchecked' 1='Checked';
	value smi_hcv_ 0='Antibody negative, RNA negative' 2='Antibody positive, RNA negative' 
		3='Antibody positive, RNA positive';
	value smi_hcv_baseline_ 0='Antibody negative, RNA negative' 2='Antibody positive, RNA negative' 
		3='Antibody positive, RNA positive';
	value smi_hcvmed_ 0='Epclusa' 1='Other HCV medication' 
		2='Not prescribed';
	value hcv_disp_ 0='Dispensed, not yet started' 1='Dispensed and started';
	value smi_action___0_ 0='Unchecked' 1='Checked';
	value smi_action___1_ 0='Unchecked' 1='Checked';
	value smi_action___2_ 0='Unchecked' 1='Checked';
	value smi_action___3_ 0='Unchecked' 1='Checked';
	value smi_action___4_ 0='Unchecked' 1='Checked';
	value smi_action___5_ 0='Unchecked' 1='Checked';
	value smi_action___6_ 0='Unchecked' 1='Checked';
	value smi_action___7_ 0='Unchecked' 1='Checked';
	value adverse_event_form_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value sae_type___0_ 0='Unchecked' 1='Checked';
	value sae_type___1_ 0='Unchecked' 1='Checked';
	value sae_type___2_ 0='Unchecked' 1='Checked';
	value sae_criteria___0_ 0='Unchecked' 1='Checked';
	value sae_criteria___1_ 0='Unchecked' 1='Checked';
	value sae_criteria___2_ 0='Unchecked' 1='Checked';
	value sae_criteria___3_ 0='Unchecked' 1='Checked';
	value sae_criteria___4_ 0='Unchecked' 1='Checked';
	value sae_criteria___5_ 0='Unchecked' 1='Checked';
	value sae_severity_ 0='Mild' 1='Moderate' 
		2='Severe';
	value sae_expect_ 0='Anticipated/Expected' 1='Unanticipated/Unexpected';
	value sae_related_ 0='Unrelated' 1='Unlikely' 
		2='Possible' 3='Probably' 
		4='Definitely' 5='Unknown (unable to judge)';
	value sae_outcome_ 0='Recovered without sequelae' 1='Recovered with sequelae' 
		2='Ongoing' 3='Recovering' 
		4='Death';
	value sae_death_certificate_ 0='No' 1='Yes' 
		2='Pending';
	value sae_death_cause_ 0='Overdose' 1='Accident' 
		2='Suicide' 3='Disease/Illness' 
		4='Unknown' 5='Other';
	value sae_information___0_ 0='Unchecked' 1='Checked';
	value sae_information___1_ 0='Unchecked' 1='Checked';
	value sae_information___2_ 0='Unchecked' 1='Checked';
	value sae_information___3_ 0='Unchecked' 1='Checked';
	value sae_information___4_ 0='Unchecked' 1='Checked';
	value sae_information___5_ 0='Unchecked' 1='Checked';
	value sae_death_autopsy_ 0='No' 1='Yes' 
		2='Pending';
	value sae_txarm_ 0='On-site integrated care with adherence counseling' 1='Off-site patient referral to specialized care with patient navigation';
	value sae_prepmed_ 0='Truvada' 1='Other PrEP medication' 
		2='Not prescribed';
	value sae_prep_disp_ 0='Dispensed, not yet started' 1='Dispended and started';
	value sae_action___0_ 0='Unchecked' 1='Checked';
	value sae_action___1_ 0='Unchecked' 1='Checked';
	value sae_action___2_ 0='Unchecked' 1='Checked';
	value sae_action___3_ 0='Unchecked' 1='Checked';
	value sae_action___4_ 0='Unchecked' 1='Checked';
	value sae_action___5_ 0='Unchecked' 1='Checked';
	value sae_action___6_ 0='Unchecked' 1='Checked';
	value sae_action___7_ 0='Unchecked' 1='Checked';
	value sae_prep_abate_ 0='No' 1='Yes' 
		2='Not applicable';
	value sae_prep_reappear_ 0='No' 1='Yes' 
		2='Not applicable';
	value sae_hcv_ 0='Antibody negative, RNA negative' 2='Antibody positive, RNA negative' 
		3='Antibody positive, RNA positive';
	value sae_hcvmed_ 0='Epclusa' 1='Other HCV medication' 
		2='Not prescribed';
	value hcv_med_disp_ 0='Dispensed, not started' 1='Dispensed and started';
	value sae_hcv_abate_ 0='No' 1='Yes' 
		2='Not applicable';
	value sae_hcv_reappear_ 0='No' 1='Yes' 
		2='Not applicable';
	value sae_action_hcv___0_ 0='Unchecked' 1='Checked';
	value sae_action_hcv___1_ 0='Unchecked' 1='Checked';
	value sae_action_hcv___2_ 0='Unchecked' 1='Checked';
	value sae_action_hcv___3_ 0='Unchecked' 1='Checked';
	value sae_action_hcv___4_ 0='Unchecked' 1='Checked';
	value sae_action_hcv___5_ 0='Unchecked' 1='Checked';
	value sae_action_hcv___6_ 0='Unchecked' 1='Checked';
	value sae_action_hcv___7_ 0='Unchecked' 1='Checked';
	value sae_ongoing_ 1='Yes' 0='No';
	value sae_ongoing_rmh_ 1='Yes' 0='No';
	value serious_adverse_even_v_9_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value rmv_ 1='Vacation' 2='Incarceration' 
		3='Hospitalization' 4='No-show (unable to reschedule)' 
		5='Unable to contact patient' 6='Patient refuses visit' 
		7='Death' 8='Other';
	value missed_visit_form_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value medi_pres___1_ 0='Unchecked' 1='Checked';
	value medi_pres___2_ 0='Unchecked' 1='Checked';
	value medi_pres___3_ 0='Unchecked' 1='Checked';
	value medi_dispense___1_ 0='Unchecked' 1='Checked';
	value medi_dispense___2_ 0='Unchecked' 1='Checked';
	value medi_dispense___3_ 0='Unchecked' 1='Checked';
	value treatment_initiation_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';

	run;

data work.redcap; %let _EFIERR_ = 0;
infile &csv_file  delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=1 ;

	informat record_id $500. ;
	informat redcap_event_name $500. ;
	informat redcap_repeat_instrument $500. ;
	informat redcap_repeat_instance best32. ;
	informat redcap_data_access_group $500. ;
	informat redcap_survey_identifier $500. ;
	informat languages_timestamp $500. ;
	informat id_paper best32. ;
	informat languages best32. ;
	informat languages_complete best32. ;
	informat screening_timestamp $500. ;
	informat sdem_visit yymmdd10. ;
	informat sdem_reside best32. ;
	informat sdem_lang_mon best32. ;
	informat sdem_lang_mia best32. ;
	informat sdem_lang_mia_2 best32. ;
	informat sdem_age best32. ;
	informat sdem_oat best32. ;
	informat sdem_sev best32. ;
	informat sdem_sev_no best32. ;
	informat sdem_sex best32. ;
	informat sdem_gender best32. ;
	informat sdem_prg_c best32. ;
	informat sdem_prg_c2 best32. ;
	informat sdem_prg_b best32. ;
	informat sdem_brsf best32. ;
	informat sdem_prg_ct18 best32. ;
	informat vcp_inject_6mo best32. ;
	informat sdem_hiv_etst best32. ;
	informat sdem_hiv_rtst_r best32. ;
	informat sdem_prp_cu best32. ;
	informat sdem_hcv best32. ;
	informat sdem_hcv_fail best32. ;
	informat sdem_wil_fol best32. ;
	informat sdem_elig best32. ;
	informat sdem_hcv_etst best32. ;
	informat sdem_hcv_rtst yymmdd10. ;
	informat sdem_hcv_rtst_r best32. ;
	informat sdem_hcv_etst_w___0 best32. ;
	informat sdem_hcv_etst_w___1 best32. ;
	informat sdem_hcv_etst_w___2 best32. ;
	informat sdem_hcv_etst_w___3 best32. ;
	informat sdem_hcv_etst_w___4 best32. ;
	informat sdem_hcv_etst_w___5 best32. ;
	informat sdem_hcv_etst_w___6 best32. ;
	informat sdem_hcv_etst_w___7 best32. ;
	informat sdem_hcv_etst_w___8 best32. ;
	informat sdem_hcv_etst_w___9 best32. ;
	informat sdem_hcv_etst_w___10 best32. ;
	informat sdem_hcv_etst_w___11 best32. ;
	informat sdem_hcv_etst_w___12 best32. ;
	informat sdem_hcv_etst_w___13 best32. ;
	informat sdem_hcv_etst_w___14 best32. ;
	informat sdem_hcv_etst_w___15 best32. ;
	informat sdem_hcv_etst_w___16 best32. ;
	informat sdem_hiv_rtst yymmdd10. ;
	informat shhr_hiv_etstw___0 best32. ;
	informat shhr_hiv_etstw___1 best32. ;
	informat shhr_hiv_etstw___2 best32. ;
	informat shhr_hiv_etstw___3 best32. ;
	informat shhr_hiv_etstw___4 best32. ;
	informat shhr_hiv_etstw___5 best32. ;
	informat shhr_hiv_etstw___6 best32. ;
	informat shhr_hiv_etstw___7 best32. ;
	informat shhr_hiv_etstw___8 best32. ;
	informat shhr_hiv_etstw___9 best32. ;
	informat shhr_hiv_etstw___10 best32. ;
	informat shhr_hiv_etstw___11 best32. ;
	informat shhr_hiv_etstw___12 best32. ;
	informat shhr_hiv_etstw___13 best32. ;
	informat shhr_hiv_etstw___14 best32. ;
	informat shhr_hiv_etstw___15 best32. ;
	informat shhr_hiv_etstw___16 best32. ;
	informat shhr_hiv_etstw___17 best32. ;
	informat shhr_hiv_etstw_ot $500. ;
	informat shhr_tst_cunt best32. ;
	informat shhr_tst_fst $500. ;
	informat shhr_tstr_cunt best32. ;
	informat shhr_ntst_r $500. ;
	informat shhr_tst_plc $500. ;
	informat shhr_tst_r best32. ;
	informat shkq_1 best32. ;
	informat shkq_2 best32. ;
	informat shkq_3 best32. ;
	informat shkq_4 best32. ;
	informat shkq_5 best32. ;
	informat shkq_6 best32. ;
	informat shkq_7 best32. ;
	informat shkq_8 best32. ;
	informat shkq_9 best32. ;
	informat shkq_10 best32. ;
	informat shkq_11 best32. ;
	informat shkq_12 best32. ;
	informat preg_result best32. ;
	informat scr_c_hcv_res best32. ;
	informat insti best32. ;
	informat sdem_slep6m best32. ;
	informat sdem_slep6m_ot $500. ;
	informat sdem_live6m_hls best32. ;
	informat sdem_live6m_shl1 best32. ;
	informat sdem_live6m_trs best32. ;
	informat sdem_live6m_htl best32. ;
	informat sdem_live6m_hiv best32. ;
	informat sdem_live6m_sut best32. ;
	informat sdem_live6m_shl2 best32. ;
	informat sdem_live6m_shl3 best32. ;
	informat sdem_live6m_shl4 best32. ;
	informat sdem_live6m_shl5 best32. ;
	informat sdem_fod_qul best32. ;
	informat sdem_fod_frq best32. ;
	informat sdem_ild best32. ;
	informat sdem_ild_txt $500. ;
	informat sdem_idu best32. ;
	informat sdem_idu_6m best32. ;
	informat sdem_idu_tim yymmdd10. ;
	informat sdem_idu6m___0 best32. ;
	informat sdem_idu6m___1 best32. ;
	informat sdem_idu6m___2 best32. ;
	informat sdem_idu6m___3 best32. ;
	informat sdem_idu6m___4 best32. ;
	informat sdem_idu6m___5 best32. ;
	informat sdem_idu6m___6 best32. ;
	informat sdem_idu6m___7 best32. ;
	informat shlt_r best32. ;
	informat shlt_l best32. ;
	informat shlt_f best32. ;
	informat sdem_dis_hcv best32. ;
	informat sdem_dis_hiv best32. ;
	informat sdem_dis_sex best32. ;
	informat sdem_dis_gay best32. ;
	informat sdem_dis_race best32. ;
	informat sdem_dis_sub best32. ;
	informat result_insti_2 best32. ;
	informat sdem_int_evr best32. ;
	informat sdem_int_elg best32. ;
	informat sdem_int_elg_ot $500. ;
	informat sdem_int_chge $500. ;
	informat screening_complete best32. ;
	informat vir_dbs yymmdd10. ;
	informat vir_tbs time5. ;
	informat vir_insti best32. ;
	informat vir_rapid best32. ;
	informat vir_rna2 best32. ;
	informat vir_rna2_val $500. ;
	informat vir_hcvgen $500. ;
	informat vir_pan_cd $500. ;
	informat vir_pan_cl $500. ;
	informat vir_pan_k $500. ;
	informat vir_pan_na $500. ;
	informat vir_pan_phos $500. ;
	informat vir_serum $500. ;
	informat vir_hbs best32. ;
	informat vir_hbc best32. ;
	informat vir_a best32. ;
	informat vir_hav best32. ;
	informat vir_cbc_wbc best32. ;
	informat vir_cbc_rbc best32. ;
	informat vir_cbc_hem best32. ;
	informat vir_cbc_hem_2 best32. ;
	informat vir_cbc_mcv best32. ;
	informat vir_cbc_mch best32. ;
	informat vir_cbc_mchc best32. ;
	informat vir_cbc_rdw best32. ;
	informat vir_cbc_plat best32. ;
	informat vir_cbc_mpv best32. ;
	informat vir_cbc_neut best32. ;
	informat vir_cbc_lym best32. ;
	informat vir_cbc_mon best32. ;
	informat vir_cbc_eos best32. ;
	informat vir_cbc_baso best32. ;
	informat vir_aspami $500. ;
	informat vir_alaami $500. ;
	informat vir_alkpho $500. ;
	informat vir_bili $500. ;
	informat vir_albumin $500. ;
	informat vir_inr $500. ;
	informat vir_bts $500. ;
	informat vir_ot $5000. ;
	informat comment $5000. ;
	informat screening_specific_c_v_0 best32. ;
	informat vt_dvs yymmdd10. ;
	informat vt_tvs time5. ;
	informat vt_bpm $500. ;
	informat vt_mmhg $500. ;
	informat vt_minute $500. ;
	informat vt_temp best32. ;
	informat vt_f best32. ;
	informat vt_c best32. ;
	informat vt_height best32. ;
	informat vt_in $500. ;
	informat vt_cm $500. ;
	informat vt_weight best32. ;
	informat vt_lb $500. ;
	informat vt_kg $500. ;
	informat vt_cir best32. ;
	informat vt_cir_in $500. ;
	informat vt_cir_cm $500. ;
	informat vital_signs_complete best32. ;
	informat ec_fem_0_ps best32. ;
	informat ec_fem_1_ps best32. ;
	informat ec_fem_2_ps best32. ;
	informat ec_fem_3_ps best32. ;
	informat ec_exc_1_ps best32. ;
	informat ec_exc_2_ps best32. ;
	informat ec_exc_3_ps best32. ;
	informat ec_exc_4_ps best32. ;
	informat ec_exc_5_ps best32. ;
	informat ec_exc_6_ps best32. ;
	informat ec_exc_7_ps best32. ;
	informat ec_exc_8_ps best32. ;
	informat ec_exc_11_ps best32. ;
	informat ec_exc_12_ps best32. ;
	informat ec_sign_ps best32. ;
	informat comment_elig2 $5000. ;
	informat initial $500. ;
	informat physician_checklist_complete best32. ;
	informat ur_test_bas___0 best32. ;
	informat ur_test_bas___1 best32. ;
	informat ur_test_bas___2 best32. ;
	informat result_upt_bas best32. ;
	informat dbs_bas best32. ;
	informat ct_bas___1 best32. ;
	informat ct_bas___2 best32. ;
	informat ct_bas___3 best32. ;
	informat ng_test_bas___1 best32. ;
	informat ng_test_bas___2 best32. ;
	informat ng_test_bas___3 best32. ;
	informat vir_ct_oral best32. ;
	informat vir_ct_uro best32. ;
	informat vir_ct_rec best32. ;
	informat vir_ng_oral best32. ;
	informat vir_ng_uro best32. ;
	informat vir_ng_rec best32. ;
	informat baseline_specific_co_v_1 best32. ;
	informat date_of_specimen_3m yymmdd10. ;
	informat ur_test_bas_3m best32. ;
	informat result_upt_bas_3m best32. ;
	informat dbs_bas_3m best32. ;
	informat ct_bas_3m___1 best32. ;
	informat ct_bas_3m___2 best32. ;
	informat ct_bas_3m___3 best32. ;
	informat ct_bas_3m___4 best32. ;
	informat ct_other_3m $500. ;
	informat ng_test_bas_3m___1 best32. ;
	informat ng_test_bas_3m___2 best32. ;
	informat ng_test_bas_3m___3 best32. ;
	informat ng_test_bas_3m___4 best32. ;
	informat chlamydia_other_2 $500. ;
	informat vir_ct_oral_3m best32. ;
	informat vir_ct_uro_3m best32. ;
	informat vir_ct_rec_3m best32. ;
	informat vir_ng_oral_3m best32. ;
	informat vir_ng_uro_3m best32. ;
	informat vir_ng_rec_3m best32. ;
	informat vir_ng_other_3m best32. ;
	informat vir_ct_other_3m best32. ;
	informat syphilis_3m best32. ;
	informat hcv_status_3m best32. ;
	informat hcv_ant_3m best32. ;
	informat hcv_ant_res_3m best32. ;
	informat hcv_notest_reason_3m $500. ;
	informat hcv_rna_quan_3m $500. ;
	informat hcv_geno_3m $500. ;
	informat hcv_rna_quan_12wkp_3m best32. ;
	informat hcv_rna_quan_12wkp_3m_q best32. ;
	informat hcv_rna_quan_12wkp_why_3m $500. ;
	informat hiv_ab_3m best32. ;
	informat hiv_noanti_rea_3m $500. ;
	informat hbv_sur_ant_3m best32. ;
	informat hbv_nop_rea_3m $500. ;
	informat serum_creatinine_3m $500. ;
	informat comments_3m $5000. ;
	informat fu_specific_collecti_v_2 best32. ;
	informat baseline_timestamp $500. ;
	informat dem_visit yymmdd10. ;
	informat idu_cnty best32. ;
	informat dem_gender best32. ;
	informat dem_gender_ot $500. ;
	informat dem_gender_t best32. ;
	informat dem_gender_s best32. ;
	informat dem_gender_id best32. ;
	informat dem_gender_id_ot $500. ;
	informat dem_residence best32. ;
	informat dem_race_hisp best32. ;
	informat dem_aborig best32. ;
	informat dem_indian1 best32. ;
	informat dem_indian2 best32. ;
	informat dem_indian3 $500. ;
	informat dem_race best32. ;
	informat dem_race_ot $500. ;
	informat dem_ethnic $500. ;
	informat dem_trip_time time5. ;
	informat dem_trip_trans best32. ;
	informat dem_trip_ot $500. ;
	informat dem_edu best32. ;
	informat dem_marital best32. ;
	informat dem_employ best32. ;
	informat dem_employ_ot $500. ;
	informat dem_hltins best32. ;
	informat dem_hltins_can best32. ;
	informat dem_hltins_t0 best32. ;
	informat dem_hltins_t1 best32. ;
	informat dem_hltins_t2 best32. ;
	informat dem_hltins_t3 best32. ;
	informat dem_hltins_t4 best32. ;
	informat dem_hltins_t5 best32. ;
	informat dem_hltins_t6 best32. ;
	informat dem_hltins_t7 best32. ;
	informat dem_hltins_t8 best32. ;
	informat dem_hltins_t9 best32. ;
	informat dem_hltins_t10 best32. ;
	informat dem_hltins_t11 $500. ;
	informat dem_hltins_t12 $500. ;
	informat dem_hltins_t13 $500. ;
	informat dem_hltins_t14 best32. ;
	informat dem_hltins_t15___0 best32. ;
	informat dem_hltins_t15___1 best32. ;
	informat dem_hltins_t15___2 best32. ;
	informat dem_hltins_t15___3 best32. ;
	informat dem_hltins_t15___4 best32. ;
	informat dem_hltins_t15___5 best32. ;
	informat dem_hltins_t16 $500. ;
	informat sub_ever___1 best32. ;
	informat sub_ever___2 best32. ;
	informat sub_ever___3 best32. ;
	informat sub_ever___4 best32. ;
	informat sub_ever___5 best32. ;
	informat sub_ever___6 best32. ;
	informat sub_ever___7 best32. ;
	informat sub_ever___8 best32. ;
	informat sub_ever___9 best32. ;
	informat sub_ever___10 best32. ;
	informat sub_ever___11 best32. ;
	informat sub_ever___12 best32. ;
	informat sub_ever___13 best32. ;
	informat sub_ever___14 best32. ;
	informat sub_ever___15 best32. ;
	informat sub_ever___16 best32. ;
	informat sub_ever___17 best32. ;
	informat sub_ever___18 best32. ;
	informat sub_ever___19 best32. ;
	informat sub_ever___20 best32. ;
	informat sub_ever___21 best32. ;
	informat sub_ever___22 best32. ;
	informat sub_ever___23 best32. ;
	informat sub_ever___24 best32. ;
	informat sub_ever___25 best32. ;
	informat sub_ever___26 best32. ;
	informat sub_ever___27 best32. ;
	informat sub_ever26_ot $500. ;
	informat sub_6m1 best32. ;
	informat sub_6m2 best32. ;
	informat sub_6m3 best32. ;
	informat sub_6m4 best32. ;
	informat sub_6m5 best32. ;
	informat sub_6m6 best32. ;
	informat sub_6m7 best32. ;
	informat sub_6m8 best32. ;
	informat sub_6m9 best32. ;
	informat sub_6m10 best32. ;
	informat sub_6m11 best32. ;
	informat sub_6m12 best32. ;
	informat sub_6m13 best32. ;
	informat sub_6m14 best32. ;
	informat sub_6m15 best32. ;
	informat sub_6m16 best32. ;
	informat sub_6m17 best32. ;
	informat sub_6m18 best32. ;
	informat sub_6m19 best32. ;
	informat sub_6m20 best32. ;
	informat sub_6m21 best32. ;
	informat sub_6m22 best32. ;
	informat sub_6m23 best32. ;
	informat sub_6m24 best32. ;
	informat sub_6m25 best32. ;
	informat sub_6m26 best32. ;
	informat sub_6m27 best32. ;
	informat sub_frq1m $500. ;
	informat sub_idu1m_her best32. ;
	informat sub_idu1m_her_frq $500. ;
	informat sub_idu1m_her_frqm best32. ;
	informat sub_1m_her best32. ;
	informat sub_1m_her_frq $500. ;
	informat sub_1m_her_frqm best32. ;
	informat sub_idu1m_cp best32. ;
	informat sub_idu1m_cp_frq $500. ;
	informat sub_idu1m_cp_frqm best32. ;
	informat sub_idu1m_fent best32. ;
	informat sub_idu1m_fent_frq $500. ;
	informat sub_idu1m_fent_frqm best32. ;
	informat sub_idu1m_cc best32. ;
	informat sub_idu1m_cc_frq $500. ;
	informat sub_idu1m_cc_frqm best32. ;
	informat sub_1m_cp best32. ;
	informat sub_1m_cp_frq $500. ;
	informat sub_1m_cp_frqm best32. ;
	informat sub_1m_cc best32. ;
	informat sub_1m_cc_frq $500. ;
	informat sub_1m_cc_frqm best32. ;
	informat sub_1m_cs best32. ;
	informat sub_1m_cs_frq $500. ;
	informat sub_1m_cs_frqm best32. ;
	informat sub_idu1m_sb best32. ;
	informat sub_idu1m_sb_frq $500. ;
	informat sub_idu1m_sb_frqm best32. ;
	informat sub_idu1m_sox best32. ;
	informat sub_idu1m_sox_frq $500. ;
	informat sub_idu1m_sox_frqm $500. ;
	informat sub_1m_sox best32. ;
	informat sub_1m_sox_frq $500. ;
	informat sub_1m_sox_frqm $500. ;
	informat sub_idu1m_meth best32. ;
	informat sub_idu1m_meth_frq $500. ;
	informat sub_idu1m_meth_frqm $500. ;
	informat sub_1m_meth best32. ;
	informat sub_1m_meth_frq $500. ;
	informat sub_1m_meth_frqm $500. ;
	informat sub_idu1m_aph best32. ;
	informat sub_idu1m_aph_frq $500. ;
	informat sub_idu1m_aph_frqm best32. ;
	informat sub_1m_aph best32. ;
	informat sub_1m_aph_frq $500. ;
	informat sub_1m_aph_frqm best32. ;
	informat sub_idu1m_barb best32. ;
	informat sub_idu1m_barb_frq $500. ;
	informat sub_idu1m_barb_frqm best32. ;
	informat sub_1m_barb best32. ;
	informat sub_1m_barb_frq $500. ;
	informat sub_1m_barb_frqm best32. ;
	informat sub_idu1m_traq best32. ;
	informat sub_idu1m_traq_frq $500. ;
	informat sub_idu1m_traq_frqm best32. ;
	informat sub_1m_traq best32. ;
	informat sub_1m_traq_frq $500. ;
	informat sub_1m_traq_frqm best32. ;
	informat sub_1m_marj best32. ;
	informat sub_1m_marj_frq $500. ;
	informat sub_1m_marj_frqm best32. ;
	informat sub_idu1m_psy best32. ;
	informat sub_idu1m_psy_frq $500. ;
	informat sub_idu1m_psy_frqm best32. ;
	informat sub_1m_psy best32. ;
	informat sub_1m_psy_frq $500. ;
	informat sub_1m_psy_frqm best32. ;
	informat sub_idu6m_oop $500. ;
	informat sub_idu6m_oop_frq $500. ;
	informat sub_idu1m_oop best32. ;
	informat sub_idu1m_oop_frq $500. ;
	informat sub_idu1m_oop_frqm1 $500. ;
	informat sub_idu1m_oop_frqm2 best32. ;
	informat sub_idu1m_oop_fit best32. ;
	informat sub_idu1m_oop_fit1 best32. ;
	informat sub_idu1m_oop_fit2 best32. ;
	informat sub_idu1m_oop_lo best32. ;
	informat sub_idu1m_oop_lo1 best32. ;
	informat sub_idu1m_oop_lo2 best32. ;
	informat sub_6m_oop $500. ;
	informat sub_6m_oop_frq $500. ;
	informat sub_1m_oop best32. ;
	informat sub_1m_oop_frq $500. ;
	informat sub_1m_oop_frqm1 $500. ;
	informat sub_1m_oop_frqm2 best32. ;
	informat sub_idu6m_om $500. ;
	informat sub_idu1m_om best32. ;
	informat sub_idu1m_om_frq $500. ;
	informat sub_idu1m_om_frqm best32. ;
	informat sub_6m_om $500. ;
	informat sub_1m_om best32. ;
	informat sub_1m_om_frq $500. ;
	informat sub_1m_om_frqm best32. ;
	informat sub_idu6m_ot best32. ;
	informat sub_idu6m_ott $500. ;
	informat sub_idu1m_ot best32. ;
	informat sub_idu1m_ot_frq $500. ;
	informat sub_idu1m_ot_frqm best32. ;
	informat sub_nidu6m_ot best32. ;
	informat sub_nidu6m_ot_non $500. ;
	informat sub_nidu1m_ot best32. ;
	informat sub_nidu1m_ot_frq $500. ;
	informat sub_nidu1m_ot_frqm best32. ;
	informat auc_1 best32. ;
	informat auc_2 best32. ;
	informat auc_11 best32. ;
	informat auc_12 best32. ;
	informat auc_3 best32. ;
	informat auc_4 best32. ;
	informat auc_5 best32. ;
	informat auc_6 best32. ;
	informat auc_7 best32. ;
	informat auc_8 best32. ;
	informat auc_9 best32. ;
	informat auc_10 best32. ;
	informat dst_1 best32. ;
	informat dst_2 best32. ;
	informat dst_3 best32. ;
	informat dst_4 best32. ;
	informat dst_5 best32. ;
	informat dst_6 best32. ;
	informat dst_7 best32. ;
	informat dst_8 best32. ;
	informat dst_9 best32. ;
	informat dst_10 best32. ;
	informat idu_6mplc1 $500. ;
	informat idu_6mplc2___0 best32. ;
	informat idu_6mplc2___1 best32. ;
	informat idu_6mplc2___2 best32. ;
	informat idu_6mplc2___3 best32. ;
	informat idu_6mplc2___4 best32. ;
	informat idu_6mplc2___5 best32. ;
	informat idu_6mplc2___6 best32. ;
	informat idu_6mplc2___7 best32. ;
	informat idu_6mplc2___8 best32. ;
	informat idu_6mplc2___9 best32. ;
	informat idu_6mplc2___10 best32. ;
	informat idu_6mplc2___11 best32. ;
	informat idu_6mplc2_ot $500. ;
	informat idu_plc best32. ;
	informat idu_1m_day best32. ;
	informat idu_frq_pday $500. ;
	informat idu_2m_day best32. ;
	informat idu_3m_day best32. ;
	informat idu_ru_6m best32. ;
	informat idu_hi_6m best32. ;
	informat sidu_header4 best32. ;
	informat idu_frq best32. ;
	informat idu_frq_c $500. ;
	informat idu_stp_3m_ob best32. ;
	informat idu_stp_3m3 best32. ;
	informat idu_stp_3m3_vb___0 best32. ;
	informat idu_stp_3m3_vb___1 best32. ;
	informat idu_stp_3m3_v $500. ;
	informat idu_stp_3m3_b $500. ;
	informat idu_stp_3m2 best32. ;
	informat idu_stp_3m2_vb___0 best32. ;
	informat idu_stp_3m2_vb___1 best32. ;
	informat idu_stp_3m2_v $500. ;
	informat idu_stp_3m2_b $500. ;
	informat idu_stp_3m1 best32. ;
	informat idu_stp_3m1_vb___0 best32. ;
	informat idu_stp_3m1_vb___1 best32. ;
	informat idu_stp_3m1_v $500. ;
	informat idu_stp_3m1_b $500. ;
	informat idu_6mrec01_us best32. ;
	informat idu_6mrec05_us best32. ;
	informat idu_6mrec06_us best32. ;
	informat idu_6mrec07_us best32. ;
	informat idu_6mrec08_us best32. ;
	informat idu_6mrec09_us best32. ;
	informat idu_6mrec10_us best32. ;
	informat idu_6mrec11_us best32. ;
	informat idu_6mrec13_us best32. ;
	informat idu_6mrec14_us best32. ;
	informat idu_6mrec15_us best32. ;
	informat idu_6mrec18_us best32. ;
	informat idu_6mrec19_us best32. ;
	informat idu_6mrec19_ot $500. ;
	informat idu_6mrec01 best32. ;
	informat idu_6mrec02 best32. ;
	informat idu_6mrec03 best32. ;
	informat idu_6mrec04 best32. ;
	informat idu_6mrec05 best32. ;
	informat idu_6mrec06 best32. ;
	informat idu_6mrec07 best32. ;
	informat idu_6mrec08 best32. ;
	informat idu_6mrec09 best32. ;
	informat idu_6mrec10 best32. ;
	informat idu_6mrec11 best32. ;
	informat idu_6mrec12 best32. ;
	informat idu_6mrec13 best32. ;
	informat idu_6mrec14 best32. ;
	informat idu_6mrec15 best32. ;
	informat idu_6mrec16 best32. ;
	informat idu_6mrec17 best32. ;
	informat idu_6mrec18 best32. ;
	informat idu_6mrec19 best32. ;
	informat idu_6mrec19_ot_2 $500. ;
	informat idu_6mrecp01 $500. ;
	informat idu_6mrecp01_us $500. ;
	informat idu_6mrecp02 $500. ;
	informat idu_6mrecp03 $500. ;
	informat idu_6mrecp04 $500. ;
	informat idu_6mrecp05 $500. ;
	informat idu_6mrecp06 $500. ;
	informat idu_6mrecp07 $500. ;
	informat idu_6mrecp08 $500. ;
	informat idu_6mrecp09 $500. ;
	informat idu_6mrecp09_us $500. ;
	informat idu_6mrecp10 $500. ;
	informat idu_6mrecp11 $500. ;
	informat idu_6mrecp12 $500. ;
	informat idu_6mrecp13 $500. ;
	informat idu_6mrecp14 $500. ;
	informat idu_6mrecp15 $500. ;
	informat idu_6mrecp16 $500. ;
	informat idu_6mrecp17 $500. ;
	informat idu_6mrecp18 $500. ;
	informat idu_6mrecp19 $500. ;
	informat idu_6mnum $500. ;
	informat idu_6mnum_my $500. ;
	informat idu_6mnum_ot $500. ;
	informat idu_6mkit $500. ;
	informat idu_6mkit_calc best32. ;
	informat idu_6mkit_my $500. ;
	informat idu_6mkit_ot $500. ;
	informat idu_6msrg $500. ;
	informat idu_6msrg_my $500. ;
	informat idu_6msrg_ot $500. ;
	informat sdu_srg best32. ;
	informat sdu_srg_tim $500. ;
	informat sdu_srg_6m_frq best32. ;
	informat sdu_srg_6m_pp $500. ;
	informat sdu_srg_6m_ppw___0 best32. ;
	informat sdu_srg_6m_ppw___1 best32. ;
	informat sdu_srg_6m_ppw___2 best32. ;
	informat sdu_srg_6m_ppw___3 best32. ;
	informat sdu_srg_6m_ppw___4 best32. ;
	informat sdu_srg_6m_ppw___5 best32. ;
	informat sdu_srg_6m_ppw___6 best32. ;
	informat sdu_srg_6m_ppw___7 best32. ;
	informat sdu_srg_6m_ppw___8 best32. ;
	informat sdu_srg_6m_ppw___9 best32. ;
	informat sdu_srg_6m_ppw___10 best32. ;
	informat sdu_srg_6m_ppw_ot $500. ;
	informat sdu_srg_6m_ppwm best32. ;
	informat sdu_srg_pp $500. ;
	informat sdu_wrk best32. ;
	informat sdu_wrk_tim $500. ;
	informat sdu_wrk_6m_frq best32. ;
	informat sdu_wrk_6m_pp $500. ;
	informat sdu_wrk_6m_ppw___0 best32. ;
	informat sdu_wrk_6m_ppw___1 best32. ;
	informat sdu_wrk_6m_ppw___2 best32. ;
	informat sdu_wrk_6m_ppw___3 best32. ;
	informat sdu_wrk_6m_ppw___4 best32. ;
	informat sdu_wrk_6m_ppw___5 best32. ;
	informat sdu_wrk_6m_ppw___6 best32. ;
	informat sdu_wrk_6m_ppw___7 best32. ;
	informat sdu_wrk_6m_ppw___8 best32. ;
	informat sdu_wrk_6m_ppw___9 best32. ;
	informat sdu_wrk_6m_ppw___10 best32. ;
	informat sdu_wrk_6m_ppw_ot $500. ;
	informat sdu_wrk_6m_ppwm best32. ;
	informat sdu_wrk_pp $500. ;
	informat sdu_srg_hiv best32. ;
	informat sdu_srg_hcv best32. ;
	informat sdu_wrk_hiv best32. ;
	informat sdu_wrk_hcv best32. ;
	informat sdu_tgtr best32. ;
	informat odu_6m best32. ;
	informat odu_6m_frq best32. ;
	informat odu_6m_frq_acdt best32. ;
	informat odu_6m_tim yymmdd10. ;
	informat odu_6m_tim_acdt best32. ;
	informat ath_1 best32. ;
	informat ath_2 best32. ;
	informat ath_3 best32. ;
	informat ath_4 best32. ;
	informat ath_5 best32. ;
	informat ath_6 best32. ;
	informat eis_status best32. ;
	informat atc_1 best32. ;
	informat atc_2 best32. ;
	informat atc_3 best32. ;
	informat atc_4 best32. ;
	informat atc_5 best32. ;
	informat atc_6 best32. ;
	informat eis_1 best32. ;
	informat eis_2 best32. ;
	informat eis_3 best32. ;
	informat eis_4 best32. ;
	informat eis_5 best32. ;
	informat eis_6 best32. ;
	informat eis_7 best32. ;
	informat eis_8 best32. ;
	informat eis_9 best32. ;
	informat eis_10 best32. ;
	informat eis_11 best32. ;
	informat eis_12 best32. ;
	informat eis_13 best32. ;
	informat eis_14 best32. ;
	informat eis_15 best32. ;
	informat eis_16 best32. ;
	informat eis_17 best32. ;
	informat eis_18 best32. ;
	informat eis_19 best32. ;
	informat eis_20 best32. ;
	informat eis_21 best32. ;
	informat eis_22 best32. ;
	informat mmt_1 best32. ;
	informat mmt_2 best32. ;
	informat mmt_3 best32. ;
	informat mmt_4 best32. ;
	informat mmt_5 best32. ;
	informat mmt_6 best32. ;
	informat mmt_7 best32. ;
	informat mmt_8 best32. ;
	informat mmt_9 best32. ;
	informat mmt_10 best32. ;
	informat mmt_11 best32. ;
	informat aiv_kid_evr_pa best32. ;
	informat aiv_adt_evr_pa best32. ;
	informat aiv_adt_evr_pa_sp best32. ;
	informat aiv_6m_pa best32. ;
	informat aiv_6m_pa_sp best32. ;
	informat aiv_kid_evr_sex best32. ;
	informat aiv_adt_evr_sex best32. ;
	informat aiv_evr_sex_sp best32. ;
	informat aiv_6m_sex best32. ;
	informat aiv_6m_sex_sp best32. ;
	informat aiv_evr_sp_vio best32. ;
	informat aiv_6m_sp_vio best32. ;
	informat aiv_evr_sp_brc best32. ;
	informat aiv_6m_sp_brc best32. ;
	informat aiv_evr_sp_ctl best32. ;
	informat aiv_6m_sp_ctl best32. ;
	informat ssi_1 best32. ;
	informat ssi_2 best32. ;
	informat ssi_2a best32. ;
	informat ssi_3 best32. ;
	informat ssi_4 best32. ;
	informat ssi_5 best32. ;
	informat ssi_6 best32. ;
	informat ssi_7 best32. ;
	informat ssi_8 best32. ;
	informat ssi_9 best32. ;
	informat ssi_10 best32. ;
	informat ssi_11 best32. ;
	informat ssi_12 best32. ;
	informat ssi_13 best32. ;
	informat ssi_14 best32. ;
	informat ssi_15 best32. ;
	informat ssi_16 best32. ;
	informat ssi_17 best32. ;
	informat bpi_evr best32. ;
	informat bpi_plc___1 best32. ;
	informat bpi_plc___2 best32. ;
	informat bpi_plc___3 best32. ;
	informat bpi_plc___4 best32. ;
	informat bpi_plc___5 best32. ;
	informat bpi_plc___6 best32. ;
	informat bpi_plc___7 best32. ;
	informat bpi_plc___8 best32. ;
	informat bpi_plc___9 best32. ;
	informat bpi_plc___10 best32. ;
	informat bpi_plc___11 best32. ;
	informat bpi_plc_ot $500. ;
	informat bpi_plc_w best32. ;
	informat bpi_plc_l best32. ;
	informat bpi_plc_m best32. ;
	informat bpi_plc_now best32. ;
	informat bpi_med $500. ;
	informat bpi_med_p best32. ;
	informat bpi_1 best32. ;
	informat bpi_2 best32. ;
	informat bpi_3 best32. ;
	informat bpi_4 best32. ;
	informat bpi_5 best32. ;
	informat bpi_6 best32. ;
	informat bpi_7 best32. ;
	informat bsi_1 best32. ;
	informat bsi_2 best32. ;
	informat bsi_3 best32. ;
	informat bsi_4 best32. ;
	informat bsi_5 best32. ;
	informat bsi_6 best32. ;
	informat bsi_7 best32. ;
	informat bsi_8 best32. ;
	informat bsi_9 best32. ;
	informat bsi_10 best32. ;
	informat bsi_11 best32. ;
	informat bsi_12 best32. ;
	informat bsi_13 best32. ;
	informat bsi_14 best32. ;
	informat bsi_15 best32. ;
	informat bsi_16 best32. ;
	informat bsi_17 best32. ;
	informat bsi_18 best32. ;
	informat hfs_1 best32. ;
	informat hfs_1a best32. ;
	informat hfs_2 best32. ;
	informat hfs_2a best32. ;
	informat hfs_3 best32. ;
	informat hfs_3a best32. ;
	informat hfs_4 best32. ;
	informat hfs_4a best32. ;
	informat hfs_5 best32. ;
	informat hfs_5a best32. ;
	informat hfs_6 best32. ;
	informat hfs_6a best32. ;
	informat hfs_7 best32. ;
	informat hfs_7a best32. ;
	informat hfs_8 best32. ;
	informat hfs_8a best32. ;
	informat hfs_9 best32. ;
	informat hfs_9a best32. ;
	informat qol_1 best32. ;
	informat qol_2 best32. ;
	informat qol_3 best32. ;
	informat qol_4 best32. ;
	informat qol_5 best32. ;
	informat qol_helth1 best32. ;
	informat cla_1 best32. ;
	informat cla_1a best32. ;
	informat cla_1a_cad $500. ;
	informat cla_1a_usd $500. ;
	informat cla_2 best32. ;
	informat cla_2a $500. ;
	informat cla_3a best32. ;
	informat cla_3c best32. ;
	informat cla_3d best32. ;
	informat cla_3e best32. ;
	informat cla_4a best32. ;
	informat cla_4c best32. ;
	informat cla_4d best32. ;
	informat cla_4e best32. ;
	informat cla_5a best32. ;
	informat cla_5c best32. ;
	informat cla_5d best32. ;
	informat cla_5e best32. ;
	informat cla_6a best32. ;
	informat cla_6c best32. ;
	informat cla_6d best32. ;
	informat cla_6e best32. ;
	informat cla_7a best32. ;
	informat cla_7c best32. ;
	informat cla_7d best32. ;
	informat cla_7e best32. ;
	informat cla_8a best32. ;
	informat cla_8c best32. ;
	informat cla_8d best32. ;
	informat cla_8e best32. ;
	informat cla_9a best32. ;
	informat cla_9c best32. ;
	informat cla_9d best32. ;
	informat cla_9e best32. ;
	informat cla_10a best32. ;
	informat cla_10c best32. ;
	informat cla_10d best32. ;
	informat cla_10e best32. ;
	informat cla_11a best32. ;
	informat cla_11c best32. ;
	informat cla_11d best32. ;
	informat cla_11e best32. ;
	informat cla_12a best32. ;
	informat cla_12c best32. ;
	informat cla_12d best32. ;
	informat cla_12e best32. ;
	informat cla_13a best32. ;
	informat cla_13c best32. ;
	informat cla_13d best32. ;
	informat cla_13e best32. ;
	informat cla_14a best32. ;
	informat cla_14c best32. ;
	informat cla_14d best32. ;
	informat cla_14e best32. ;
	informat cla_15a best32. ;
	informat cla_15c best32. ;
	informat cla_15d best32. ;
	informat cla_15e best32. ;
	informat cla_16a best32. ;
	informat cla_16c best32. ;
	informat cla_16d best32. ;
	informat cla_16e best32. ;
	informat cla_17a best32. ;
	informat cla_17c best32. ;
	informat cla_17d best32. ;
	informat cla_17e best32. ;
	informat cla_18a best32. ;
	informat cla_18c best32. ;
	informat cla_18d best32. ;
	informat cla_18e best32. ;
	informat cla_20a best32. ;
	informat cla_20c best32. ;
	informat cla_20d best32. ;
	informat cla_20e best32. ;
	informat cla_22a best32. ;
	informat cla_22c best32. ;
	informat cla_22d best32. ;
	informat cla_22e best32. ;
	informat cla_23a best32. ;
	informat cla_23c best32. ;
	informat cla_23d best32. ;
	informat cla_23e best32. ;
	informat cla_24a best32. ;
	informat cla_24c best32. ;
	informat cla_24d best32. ;
	informat cla_24e best32. ;
	informat cla_25a best32. ;
	informat cla_25b best32. ;
	informat cla_25c best32. ;
	informat cla_25d___0 best32. ;
	informat cla_25d___1 best32. ;
	informat cla_25d___2 best32. ;
	informat cla_25d___3 best32. ;
	informat cla_25d___4 best32. ;
	informat cla_25d___5 best32. ;
	informat cla_25d___6 best32. ;
	informat cla_25d___7 best32. ;
	informat cla_25d___8 best32. ;
	informat cla_25d___9 best32. ;
	informat cla_25d___10 best32. ;
	informat cla_25d___11 best32. ;
	informat cla_25d___12 best32. ;
	informat cla_25d___13 best32. ;
	informat cla_25d___14 best32. ;
	informat cla_25d___15 best32. ;
	informat cla_25d___16 best32. ;
	informat cla_25d___17 best32. ;
	informat cla_25d___18 best32. ;
	informat cla_25d___19 best32. ;
	informat cla_25d___20 best32. ;
	informat cla_25d___21 best32. ;
	informat cla_25e $500. ;
	informat cla_26a best32. ;
	informat cla_26a_t $500. ;
	informat cla_26c $500. ;
	informat cla_26d best32. ;
	informat cla_26e best32. ;
	informat nms_er best32. ;
	informat nms_er_frq best32. ;
	informat nms_hsp best32. ;
	informat nms_hps_frq best32. ;
	informat nms_hps_nigt best32. ;
	informat nms_hps_drg best32. ;
	informat nms_hps_drg_frq best32. ;
	informat nms_hps_drg_nigt best32. ;
	informat nms_otp best32. ;
	informat nms_otp_frq best32. ;
	informat nms_rsd best32. ;
	informat nms_rsd_frq best32. ;
	informat nms_rsd_nigt best32. ;
	informat nms_auc best32. ;
	informat nms_auc_frq best32. ;
	informat nms_auc_med___0 best32. ;
	informat nms_auc_med___1 best32. ;
	informat nms_auc_med___2 best32. ;
	informat nms_auc_med___3 best32. ;
	informat nms_auc_med___4 best32. ;
	informat nms_auc_med_ot $500. ;
	informat nms_auc_med_dos $500. ;
	informat nms_opd best32. ;
	informat nms_opd_frq best32. ;
	informat nms_opd_med___0 best32. ;
	informat nms_opd_med___1 best32. ;
	informat nms_opd_med___2 best32. ;
	informat nms_opd_med___3 best32. ;
	informat nms_opd_med___4 best32. ;
	informat nms_opd_med___5 best32. ;
	informat nms_opd_med___6 best32. ;
	informat nms_opd_med_ot $500. ;
	informat nms_opd_med_dos $500. ;
	informat nms_mnt best32. ;
	informat nms_mnt_med $500. ;
	informat nms_mnt_frq best32. ;
	informat nms_mnt_dos $500. ;
	informat nms_trp best32. ;
	informat nms_trp_frq01 best32. ;
	informat nms_trp_frq02 $500. ;
	informat nms_xxx___1 best32. ;
	informat nms_xxx___2 best32. ;
	informat nms_xxx___3 best32. ;
	informat nms_xxx___4 best32. ;
	informat nms_xxx___5 best32. ;
	informat nms_xxx___999 best32. ;
	informat nms_mdo best32. ;
	informat nms_mod_frq best32. ;
	informat nms_mod_frq_doc best32. ;
	informat nms_cost best32. ;
	informat nms_cost_cad $500. ;
	informat nms_cost_usd $500. ;
	informat nms_inc best32. ;
	informat nms_inc_cad $500. ;
	informat nms_inc_usd $500. ;
	informat nms_emp best32. ;
	informat nms_ocu $500. ;
	informat nms_emp_frq best32. ;
	informat nms_emp_inc best32. ;
	informat nms_emp_cad $500. ;
	informat nms_emp_usd $500. ;
	informat nms_emp_ben best32. ;
	informat nms_emp_bend $500. ;
	informat nms_otinc best32. ;
	informat nms_otinc_cad $500. ;
	informat nms_otinc_usd $500. ;
	informat nms_edu best32. ;
	informat nms_edu_cr best32. ;
	informat nms_edu_ful best32. ;
	informat nms_hc best32. ;
	informat nms_hc01 best32. ;
	informat nms_hc02 best32. ;
	informat nms_hc03 best32. ;
	informat nms_hc04 best32. ;
	informat nms_qul best32. ;
	informat nms_oul_frq best32. ;
	informat act_1 best32. ;
	informat act_2 best32. ;
	informat act_3 best32. ;
	informat act_4 best32. ;
	informat act_5 best32. ;
	informat act_6 best32. ;
	informat srb_age $500. ;
	informat srb_3m_prst best32. ;
	informat srb_prst_tim yymmdd10. ;
	informat srb_prst01 best32. ;
	informat srb_prst02 best32. ;
	informat srb_prst03 best32. ;
	informat srb_prst04 best32. ;
	informat srb_prst05 best32. ;
	informat srb_prst_stp yymmdd10. ;
	informat srb_3m best32. ;
	informat srb_3m_sxp best32. ;
	informat srb_3m_sxp_f best32. ;
	informat srb_3m_sxp_m best32. ;
	informat srb_3m_f best32. ;
	informat srb_3m_f_sxp best32. ;
	informat srb_3m_f_sxp_p best32. ;
	informat srb_3m_f_sxp_pidu best32. ;
	informat srb_3m_f_sxp_np best32. ;
	informat srb_3m_f_sxp_npidu $500. ;
	informat srb_3m_f_sxp_c $500. ;
	informat srb_3m_f_sxp_cidu best32. ;
	informat srb_3m_f_sxp_mc best32. ;
	informat srb_3m_f_sxp_mcidu best32. ;
	informat srb_1m_f best32. ;
	informat srb_1m_fc_pv best32. ;
	informat srb_1m_fc_po best32. ;
	informat srb_1m_fc_pa best32. ;
	informat srb_1m_fc_npv best32. ;
	informat srb_1m_fc_npo best32. ;
	informat srb_1m_fc_npa best32. ;
	informat srb_1m_fc_cv best32. ;
	informat srb_1m_fc_co best32. ;
	informat srb_1m_fc_ca best32. ;
	informat srb_1m_fc_mcv best32. ;
	informat srb_1m_fc_mco best32. ;
	informat srb_1m_fc_mca best32. ;
	informat srb_1m_f_hiv best32. ;
	informat srb_1m_fc_hiv best32. ;
	informat srb_1m_f_hcv best32. ;
	informat srb_1m_fc_hcv best32. ;
	informat srb_1m_f_drg_cc best32. ;
	informat srb_1m_f_drg_hro best32. ;
	informat srb_1m_f_drg_main best32. ;
	informat srb_1m_f_drg_aph best32. ;
	informat srb_1m_f_drg_psy best32. ;
	informat srb_1m_f_drg_ot $500. ;
	informat srb_3m_m best32. ;
	informat srb_3m_m_sxp best32. ;
	informat srb_3m_m_sxp_p best32. ;
	informat srb_3m_m_sxp_pidu $500. ;
	informat srb_3m_m_sxp_np best32. ;
	informat srb_3m_m_sxp_npidu best32. ;
	informat srb_3m_m_sxp_c best32. ;
	informat srb_3m_m_sxp_cidu best32. ;
	informat srb_3m_m_sxp_mc best32. ;
	informat srb_3m_m_sxp_mcidu best32. ;
	informat srb_1m_m best32. ;
	informat srb_1m_mc_pv best32. ;
	informat srb_1m_mc_po best32. ;
	informat srb_1m_mc_pa best32. ;
	informat srb_1m_mc_npv best32. ;
	informat srb_1m_mc_npo best32. ;
	informat srb_1m_mc_npa best32. ;
	informat srb_1m_mc_cv best32. ;
	informat srb_1m_mc_co best32. ;
	informat srb_1m_mc_ca best32. ;
	informat srb_1m_mc_mcv best32. ;
	informat srb_1m_mc_mco best32. ;
	informat srb_1m_mc_mca best32. ;
	informat srb_1m_m_hiv best32. ;
	informat srb_1m_mc_hiv best32. ;
	informat srb_1m_m_hcv best32. ;
	informat srb_1m_mc_hcv best32. ;
	informat srb_1m_m_drg_cc best32. ;
	informat srb_1m_m_drg_hro best32. ;
	informat srb_1m_m_drg_main best32. ;
	informat srb_1m_m_drg_aph best32. ;
	informat srb_1m_m_drg_psy best32. ;
	informat sbr_1m_m_drg_ot $500. ;
	informat cdu_1 best32. ;
	informat cdu_2 best32. ;
	informat cdu_3 best32. ;
	informat cdu_4 best32. ;
	informat cdu_5 best32. ;
	informat cdu_6 best32. ;
	informat cdu_7 best32. ;
	informat cdu_8 best32. ;
	informat cdu_9 best32. ;
	informat cdu_10 best32. ;
	informat cdu_11 best32. ;
	informat cdu_12 best32. ;
	informat cdu_13 best32. ;
	informat cdu_14 best32. ;
	informat cdu_15 $500. ;
	informat cdu_16 $500. ;
	informat cdu_17 best32. ;
	informat cdu_18 best32. ;
	informat cpe_1 best32. ;
	informat cpe_2 best32. ;
	informat cpe_3 best32. ;
	informat cpe_4 best32. ;
	informat cce_1 best32. ;
	informat cce_2 best32. ;
	informat cce_3 best32. ;
	informat cce_4 best32. ;
	informat baseline_complete best32. ;
	informat relationship_with_ph_v_3 $500. ;
	informat rphcv1 best32. ;
	informat rphcv2 best32. ;
	informat rphcv3 best32. ;
	informat rphcv4 best32. ;
	informat rphcv_5 best32. ;
	informat rphcv_6 best32. ;
	informat rphcv_7 best32. ;
	informat rphcv_8 best32. ;
	informat rphcv_9 best32. ;
	informat rphcv_10 best32. ;
	informat rphcv_11 best32. ;
	informat relationship_with_ph_v_4 best32. ;
	informat ec_yrs best32. ;
	informat ec_hivneg best32. ;
	informat ec_inj6 best32. ;
	informat ec_vic best32. ;
	informat ec_fu best32. ;
	informat ec_com best32. ;
	informat ec_serv best32. ;
	informat rc_consent best32. ;
	informat rc_quiz best32. ;
	informat rc_report best32. ;
	informat rc_hippa best32. ;
	informat rc_release best32. ;
	informat rc_locator best32. ;
	informat rc_vital best32. ;
	informat rc_psychiatric best32. ;
	informat rc_scc best32. ;
	informat rc_informed best32. ;
	informat rc_base best32. ;
	informat ec_pc_yes best32. ;
	informat comment_nonelig $5000. ;
	informat ec_all_2 best32. ;
	informat ec_sign $500. ;
	informat ec_comments $5000. ;
	informat randomization_checkl_v_5 best32. ;
	informat rand_ele best32. ;
	informat rand_date yymmdd10. ;
	informat rand_arm best32. ;
	informat rand_reason best32. ;
	informat rand_why $500. ;
	informat rand_other $500. ;
	informat rand_by $500. ;
	informat rand_randomization_complete best32. ;
	informat followup_3m_timestamp $500. ;
	informat dem_visit_3m yymmdd10. ;
	informat idu_cnty_3m best32. ;
	informat dem_gender_3m best32. ;
	informat dem_gender_ot_3m $500. ;
	informat dem_gender_t_3m best32. ;
	informat dem_gender_s_3m best32. ;
	informat dem_gender_id_3m best32. ;
	informat dem_gender_id_ot_3m $500. ;
	informat dem_trip_time_3m time5. ;
	informat dem_trip_trans_3m best32. ;
	informat dem_trip_ot_3m $500. ;
	informat dem_edu_3m best32. ;
	informat dem_marital_3m best32. ;
	informat dem_employ_3m best32. ;
	informat dem_employ_ot_3m $500. ;
	informat dem_hltins_3m best32. ;
	informat dem_hltins_can_3m best32. ;
	informat dem_hltins_t0_3m best32. ;
	informat dem_hltins_t1_3m best32. ;
	informat dem_hltins_t2_3m best32. ;
	informat dem_hltins_t3_3m best32. ;
	informat dem_hltins_t4_3m best32. ;
	informat dem_hltins_t5_3m best32. ;
	informat dem_hltins_t6_3m best32. ;
	informat dem_hltins_t7_3m best32. ;
	informat dem_hltins_t8_3m best32. ;
	informat dem_hltins_t9_3m best32. ;
	informat dem_hltins_t10_3m best32. ;
	informat dem_hltins_t11_3m $500. ;
	informat dem_hltins_t12_3m $500. ;
	informat dem_hltins_t13_3m $500. ;
	informat dem_hltins_t14_3m best32. ;
	informat dem_hltins_t15_3m___0 best32. ;
	informat dem_hltins_t15_3m___1 best32. ;
	informat dem_hltins_t15_3m___2 best32. ;
	informat dem_hltins_t15_3m___3 best32. ;
	informat dem_hltins_t15_3m___4 best32. ;
	informat dem_hltins_t15_3m___5 best32. ;
	informat dem_hltins_t16_3m $500. ;
	informat sub_6m1_3m best32. ;
	informat sub_6m2_3m best32. ;
	informat sub_6m3_3m best32. ;
	informat sub_6m4_3m best32. ;
	informat sub_6m5_3m best32. ;
	informat sub_6m6_3m best32. ;
	informat sub_6m7_3m best32. ;
	informat sub_6m8_3m best32. ;
	informat sub_6m9_3m best32. ;
	informat sub_6m10_3m best32. ;
	informat sub_6m11_3m best32. ;
	informat sub_6m12_3m best32. ;
	informat sub_6m13_3m best32. ;
	informat sub_6m14_3m best32. ;
	informat sub_6m15_3m best32. ;
	informat sub_6m16_3m best32. ;
	informat sub_6m17_3m best32. ;
	informat sub_6m18_3m best32. ;
	informat sub_6m19_3m best32. ;
	informat sub_6m20_3m best32. ;
	informat sub_6m21_3m best32. ;
	informat sub_6m22_3m best32. ;
	informat sub_6m23_3m best32. ;
	informat sub_6m24_3m best32. ;
	informat sub_6m25_3m best32. ;
	informat sub_6m26_3m best32. ;
	informat sub_6m27_3m best32. ;
	informat sub_frq1m_3m $500. ;
	informat sub_idu1m_her_3m best32. ;
	informat sub_idu1m_her_frq_3m $500. ;
	informat sub_idu1m_her_frqm_3m best32. ;
	informat sub_1m_her_3m best32. ;
	informat sub_1m_her_frq_3m $500. ;
	informat sub_1m_fent_frq_3m $500. ;
	informat sub_1m_her_frqm_3m best32. ;
	informat sub_1m_fent_3m best32. ;
	informat sub_1m_fent_frqm_3m best32. ;
	informat sub_idu1m_cp_3m best32. ;
	informat sub_idu1m_cp_frq_3m $500. ;
	informat sub_idu1m_cp_frqm_3m best32. ;
	informat sub_idu1m_cc_3m best32. ;
	informat sub_idu1m_cc_frq_3m $500. ;
	informat sub_idu1m_cc_frqm_3m best32. ;
	informat sub_1m_cp_3m best32. ;
	informat sub_1m_cp_frq_3m $500. ;
	informat sub_1m_cp_frqm_3m best32. ;
	informat sub_1m_cc_3m best32. ;
	informat sub_1m_cc_frq_3m $500. ;
	informat sub_1m_cc_frqm_3m best32. ;
	informat sub_1m_cs_3m best32. ;
	informat sub_1m_cs_frq_3m $500. ;
	informat sub_1m_cs_frqm_3m best32. ;
	informat sub_idu1m_sb_3m best32. ;
	informat sub_idu1m_sb_frq_3m $500. ;
	informat sub_idu1m_sb_frqm_3m best32. ;
	informat sub_idu1m_sox_3m best32. ;
	informat sub_idu1m_sox_frq_3m $500. ;
	informat sub_idu1m_sox_frqm_3m $500. ;
	informat sub_1m_sox_3m best32. ;
	informat sub_1m_sox_frq_3m $500. ;
	informat sub_1m_sox_frqm_3m $500. ;
	informat sub_idu1m_meth_3m best32. ;
	informat sub_idu1m_meth_frq_3m $500. ;
	informat sub_idu1m_meth_frqm_3m $500. ;
	informat sub_1m_meth_3m best32. ;
	informat sub_1m_meth_frq_3m $500. ;
	informat sub_1m_meth_frqm_3m $500. ;
	informat sub_idu1m_aph_3m best32. ;
	informat sub_idu1m_aph_frq_3m $500. ;
	informat sub_idu1m_aph_frqm_3m best32. ;
	informat sub_1m_aph_3m best32. ;
	informat sub_1m_aph_frq_3m $500. ;
	informat sub_1m_aph_frqm_3m best32. ;
	informat sub_idu1m_barb_3m best32. ;
	informat sub_idu1m_barb_frq_3m $500. ;
	informat sub_idu1m_barb_frqm_3m best32. ;
	informat sub_1m_barb_3m best32. ;
	informat sub_1m_barb_frq_3m $500. ;
	informat sub_1m_barb_frqm_3m best32. ;
	informat sub_idu1m_traq_3m best32. ;
	informat sub_idu1m_traq_frq_3m $500. ;
	informat sub_idu1m_traq_frqm_3m best32. ;
	informat sub_1m_traq_3m best32. ;
	informat sub_1m_traq_frq_3m $500. ;
	informat sub_1m_traq_frqm_3m best32. ;
	informat sub_1m_marj_3m best32. ;
	informat sub_1m_marj_frq_3m $500. ;
	informat sub_1m_marj_frqm_3m best32. ;
	informat sub_idu1m_psy_3m best32. ;
	informat sub_idu1m_psy_frq_3m $500. ;
	informat sub_idu1m_psy_frqm_3m best32. ;
	informat sub_1m_psy_3m best32. ;
	informat sub_1m_psy_frq_3m $500. ;
	informat sub_1m_psy_frqm_3m best32. ;
	informat sub_idu6m_oop_3m $500. ;
	informat sub_idu6m_oop_frq_3m $500. ;
	informat sub_idu1m_oop_3m best32. ;
	informat sub_idu1m_oop_frq_3m $500. ;
	informat sub_idu1m_oop_frqm1_3m $500. ;
	informat sub_idu1m_oop_frqm2_3m best32. ;
	informat sub_idu1m_oop_fit_3m best32. ;
	informat sub_idu1m_oop_fit1_3m best32. ;
	informat sub_idu1m_oop_fit2_3m best32. ;
	informat sub_idu1m_oop_lo_3m best32. ;
	informat sub_idu1m_oop_lo1_3m best32. ;
	informat sub_idu1m_oop_lo2_3m best32. ;
	informat sub_6m_oop_3m $500. ;
	informat sub_6m_oop_frq_3m $500. ;
	informat sub_1m_oop_3m best32. ;
	informat sub_1m_oop_frq_3m $500. ;
	informat sub_1m_oop_frqm1_3m $500. ;
	informat sub_1m_oop_frqm2_3m best32. ;
	informat sub_idu6m_om_3m $500. ;
	informat sub_idu1m_om_3m best32. ;
	informat sub_idu1m_om_frq_3m $500. ;
	informat sub_idu1m_om_frqm_3m best32. ;
	informat sub_6m_om_3m $500. ;
	informat sub_1m_om_3m best32. ;
	informat sub_1m_om_frq_3m $500. ;
	informat sub_1m_om_frqm_3m best32. ;
	informat sub_idu6m_ot_3m best32. ;
	informat sub_idu6m_ott_3m $500. ;
	informat sub_idu1m_ot_3m best32. ;
	informat sub_idu1m_ot_frq_3m $500. ;
	informat sub_idu1m_ot_frqm_3m best32. ;
	informat sub_nidu6m_ot_3m best32. ;
	informat sub_nidu6m_ot_non_3m $500. ;
	informat sub_nidu1m_ot_3m best32. ;
	informat sub_nidu1m_ot_frq_3m $500. ;
	informat sub_nidu1m_ot_frqm_3m best32. ;
	informat idu_3m best32. ;
	informat idu_6mplc1_3m $500. ;
	informat idu_6mplc2_3m___0 best32. ;
	informat idu_6mplc2_3m___1 best32. ;
	informat idu_6mplc2_3m___2 best32. ;
	informat idu_6mplc2_3m___3 best32. ;
	informat idu_6mplc2_3m___4 best32. ;
	informat idu_6mplc2_3m___5 best32. ;
	informat idu_6mplc2_3m___6 best32. ;
	informat idu_6mplc2_3m___7 best32. ;
	informat idu_6mplc2_3m___8 best32. ;
	informat idu_6mplc2_3m___9 best32. ;
	informat idu_6mplc2_3m___10 best32. ;
	informat idu_6mplc2_3m___11 best32. ;
	informat idu_6mplc2_ot_3m $500. ;
	informat idu_plc_3m best32. ;
	informat idu_1m_day_3m best32. ;
	informat idu_frq_pday_3m $500. ;
	informat idu_2m_day_3m best32. ;
	informat idu_3m_day_3m best32. ;
	informat idu_ru_6m_3m best32. ;
	informat idu_hi_6m_3m best32. ;
	informat sidu_header4_3m best32. ;
	informat idu_frq_3m best32. ;
	informat idu_frq_c_3m $500. ;
	informat idu_stp_3m_ob_3m best32. ;
	informat idu_stp_3m3_3m best32. ;
	informat idu_stp_3m3_vb_3m___0 best32. ;
	informat idu_stp_3m3_vb_3m___1 best32. ;
	informat idu_stp_3m3_v_3m $500. ;
	informat idu_stp_3m3_b_3m $500. ;
	informat idu_stp_3m2_3m best32. ;
	informat idu_stp_3m2_vb_3m___0 best32. ;
	informat idu_stp_3m2_vb_3m___1 best32. ;
	informat idu_stp_3m2_v_3m $500. ;
	informat idu_stp_3m2_b_3m $500. ;
	informat idu_stp_3m1_3m best32. ;
	informat idu_stp_3m1_vb_3m___0 best32. ;
	informat idu_stp_3m1_vb_3m___1 best32. ;
	informat idu_stp_3m1_v_3m $500. ;
	informat idu_stp_3m1_b_3m $500. ;
	informat idu_6mrec01_3m best32. ;
	informat idu_6mrec02_3m best32. ;
	informat idu_6mrec03_3m best32. ;
	informat idu_6mrec04_3m best32. ;
	informat idu_6mrec05_3m best32. ;
	informat idu_6mrec06_3m best32. ;
	informat idu_6mrec07_3m best32. ;
	informat idu_6mrec08_3m best32. ;
	informat idu_6mrec09_3m best32. ;
	informat idu_6mrec10_3m best32. ;
	informat idu_6mrec11_3m best32. ;
	informat idu_6mrec12_3m best32. ;
	informat idu_6mrec13_3m best32. ;
	informat idu_6mrec14_3m best32. ;
	informat idu_6mrec15_3m best32. ;
	informat idu_6mrec16_3m best32. ;
	informat idu_6mrec17_3m best32. ;
	informat idu_6mrec18_3m best32. ;
	informat idu_6mrec19_3m best32. ;
	informat idu_6mrec19_ot_2_3m $500. ;
	informat idu_6mrec01_us_3m best32. ;
	informat idu_6mrec05_us_3m best32. ;
	informat idu_6mrec06_us_3m best32. ;
	informat idu_6mrec07_us_3m best32. ;
	informat idu_6mrec08_us_3m best32. ;
	informat idu_6mrec09_us_3m best32. ;
	informat idu_6mrec10_us_3m best32. ;
	informat idu_6mrec11_us_3m best32. ;
	informat idu_6mrec13_us_3m best32. ;
	informat idu_6mrec14_us_3m best32. ;
	informat idu_6mrec15_us_3m best32. ;
	informat idu_6mrec18_us_3m best32. ;
	informat idu_6mrec19_us_3m best32. ;
	informat idu_6mrec19_ot_3m $500. ;
	informat idu_6mrecp01_3m $500. ;
	informat idu_6mrecp01_us_3m $500. ;
	informat idu_6mrecp02_3m $500. ;
	informat idu_6mrecp03_3m $500. ;
	informat idu_6mrecp04_3m $500. ;
	informat idu_6mrecp05_3m $500. ;
	informat idu_6mrecp06_3m $500. ;
	informat idu_6mrecp07_3m $500. ;
	informat idu_6mrecp08_3m $500. ;
	informat idu_6mrecp09_3m $500. ;
	informat idu_6mrecp09_us_3m $500. ;
	informat idu_6mrecp10_3m $500. ;
	informat idu_6mrecp11_3m $500. ;
	informat idu_6mrecp12_3m $500. ;
	informat idu_6mrecp13_3m $500. ;
	informat idu_6mrecp14_3m $500. ;
	informat idu_6mrecp15_3m $500. ;
	informat idu_6mrecp16_3m $500. ;
	informat idu_6mrecp17_3m $500. ;
	informat idu_6mrecp18_3m $500. ;
	informat idu_6mrecp19_3m $500. ;
	informat idu_6mnum_3m $500. ;
	informat idu_6mnum_my_3m $500. ;
	informat idu_6mnum_ot_3m $500. ;
	informat idu_6mkit_3m $500. ;
	informat idu_6mkit_calc_3m best32. ;
	informat idu_6mkit_my_3m $500. ;
	informat idu_6mkit_ot_3m $500. ;
	informat idu_6msrg_3m $500. ;
	informat idu_6msrg_my_3m $500. ;
	informat idu_6msrg_ot_3m $500. ;
	informat sdu_srg_3m best32. ;
	informat sdu_srg_tim_3m $500. ;
	informat sdu_srg_6m_frq_3m best32. ;
	informat sdu_srg_6m_pp_3m $500. ;
	informat sdu_srg_6m_ppw_3m___0 best32. ;
	informat sdu_srg_6m_ppw_3m___1 best32. ;
	informat sdu_srg_6m_ppw_3m___2 best32. ;
	informat sdu_srg_6m_ppw_3m___3 best32. ;
	informat sdu_srg_6m_ppw_3m___4 best32. ;
	informat sdu_srg_6m_ppw_3m___5 best32. ;
	informat sdu_srg_6m_ppw_3m___6 best32. ;
	informat sdu_srg_6m_ppw_3m___7 best32. ;
	informat sdu_srg_6m_ppw_3m___8 best32. ;
	informat sdu_srg_6m_ppw_3m___9 best32. ;
	informat sdu_srg_6m_ppw_3m___10 best32. ;
	informat sdu_srg_6m_ppw_ot_3m $500. ;
	informat sdu_srg_6m_ppwm_3m best32. ;
	informat sdu_srg_pp_3m $500. ;
	informat sdu_wrk_3m best32. ;
	informat sdu_wrk_tim_3m $500. ;
	informat sdu_wrk_6m_frq_3m best32. ;
	informat sdu_wrk_6m_pp_3m $500. ;
	informat sdu_wrk_6m_ppw_3m___0 best32. ;
	informat sdu_wrk_6m_ppw_3m___1 best32. ;
	informat sdu_wrk_6m_ppw_3m___2 best32. ;
	informat sdu_wrk_6m_ppw_3m___3 best32. ;
	informat sdu_wrk_6m_ppw_3m___4 best32. ;
	informat sdu_wrk_6m_ppw_3m___5 best32. ;
	informat sdu_wrk_6m_ppw_3m___6 best32. ;
	informat sdu_wrk_6m_ppw_3m___7 best32. ;
	informat sdu_wrk_6m_ppw_3m___8 best32. ;
	informat sdu_wrk_6m_ppw_3m___9 best32. ;
	informat sdu_wrk_6m_ppw_3m___10 best32. ;
	informat sdu_wrk_6m_ppw_ot_3m $500. ;
	informat sdu_wrk_6m_ppwm_3m best32. ;
	informat sdu_wrk_pp_3m $500. ;
	informat sdu_srg_hiv_3m best32. ;
	informat sdu_srg_hcv_3m best32. ;
	informat sdu_wrk_hiv_3m best32. ;
	informat sdu_wrk_hcv_3m best32. ;
	informat sdu_tgtr_3m best32. ;
	informat bpi_evr_3m best32. ;
	informat bpi_plc_3m___1 best32. ;
	informat bpi_plc_3m___2 best32. ;
	informat bpi_plc_3m___3 best32. ;
	informat bpi_plc_3m___4 best32. ;
	informat bpi_plc_3m___5 best32. ;
	informat bpi_plc_3m___6 best32. ;
	informat bpi_plc_3m___7 best32. ;
	informat bpi_plc_3m___8 best32. ;
	informat bpi_plc_3m___9 best32. ;
	informat bpi_plc_3m___10 best32. ;
	informat bpi_plc_3m___11 best32. ;
	informat bpi_plc_ot_3m $500. ;
	informat bpi_plc_w_3m best32. ;
	informat bpi_plc_l_3m best32. ;
	informat bpi_plc_m_3m best32. ;
	informat bpi_plc_now_3m best32. ;
	informat bpi_med_3m $500. ;
	informat bpi_med_p_3m best32. ;
	informat bpi_1_3m best32. ;
	informat bpi_2_3m best32. ;
	informat bpi_3_3m best32. ;
	informat bpi_4_3m best32. ;
	informat bpi_5_3m best32. ;
	informat bpi_6_3m best32. ;
	informat bpi_7_3m best32. ;
	informat hfs_1_3m best32. ;
	informat hfs_1a_3m best32. ;
	informat hfs_2_3m best32. ;
	informat hfs_2a_3m best32. ;
	informat hfs_3_3m best32. ;
	informat hfs_3a_3m best32. ;
	informat hfs_4_3m best32. ;
	informat hfs_4a_3m best32. ;
	informat hfs_5_3m best32. ;
	informat hfs_5a_3m best32. ;
	informat hfs_6_3m best32. ;
	informat hfs_6a_3m best32. ;
	informat hfs_7_3m best32. ;
	informat hfs_7a_3m best32. ;
	informat hfs_8_3m best32. ;
	informat hfs_8a_3m best32. ;
	informat hfs_9_3m best32. ;
	informat hfs_9a_3m best32. ;
	informat cla_1_3m best32. ;
	informat cla_1a_3m best32. ;
	informat cla_1a_cad_3m $500. ;
	informat cla_1a_usd_3m $500. ;
	informat cla_2_3m best32. ;
	informat cla_2a_3m $500. ;
	informat cla_3c_3m best32. ;
	informat cla_3d_3m best32. ;
	informat cla_3e_3m best32. ;
	informat cla_4c_3m best32. ;
	informat cla_4d_3m best32. ;
	informat cla_4e_3m best32. ;
	informat cla_5c_3m best32. ;
	informat cla_5d_3m best32. ;
	informat cla_5e_3m best32. ;
	informat cla_6c_3m best32. ;
	informat cla_6d_3m best32. ;
	informat cla_6e_3m best32. ;
	informat cla_7c_3m best32. ;
	informat cla_7d_3m best32. ;
	informat cla_7e_3m best32. ;
	informat cla_8c_3m best32. ;
	informat cla_8d_3m best32. ;
	informat cla_8e_3m best32. ;
	informat cla_9c_3m best32. ;
	informat cla_9d_3m best32. ;
	informat cla_9e_3m best32. ;
	informat cla_10c_3m best32. ;
	informat cla_10d_3m best32. ;
	informat cla_10e_3m best32. ;
	informat cla_11c_3m best32. ;
	informat cla_11d_3m best32. ;
	informat cla_11e_3m best32. ;
	informat cla_12c_3m best32. ;
	informat cla_12d_3m best32. ;
	informat cla_12e_3m best32. ;
	informat cla_13c_3m best32. ;
	informat cla_13d_3m best32. ;
	informat cla_13e_3m best32. ;
	informat cla_14c_3m best32. ;
	informat cla_14d_3m best32. ;
	informat cla_14e_3m best32. ;
	informat cla_15c_3m best32. ;
	informat cla_15d_3m best32. ;
	informat cla_15e_3m best32. ;
	informat cla_16c_3m best32. ;
	informat cla_16d_3m best32. ;
	informat cla_16e_3m best32. ;
	informat cla_17c_3m best32. ;
	informat cla_17d_3m best32. ;
	informat cla_17e_3m best32. ;
	informat cla_18c_3m best32. ;
	informat cla_18d_3m best32. ;
	informat cla_18e_3m best32. ;
	informat cla_20c_3m best32. ;
	informat cla_20d_3m best32. ;
	informat cla_20e_3m best32. ;
	informat cla_22c_3m best32. ;
	informat cla_22d_3m best32. ;
	informat cla_22e_3m best32. ;
	informat cla_23c_3m best32. ;
	informat cla_23d_3m best32. ;
	informat cla_23e_3m best32. ;
	informat cla_24c_3m best32. ;
	informat cla_24d_3m best32. ;
	informat cla_24e_3m best32. ;
	informat cla_25a_3m best32. ;
	informat cla_25b_3m best32. ;
	informat cla_25c_3m $500. ;
	informat cla_25d_3m___0 best32. ;
	informat cla_25d_3m___1 best32. ;
	informat cla_25d_3m___2 best32. ;
	informat cla_25d_3m___3 best32. ;
	informat cla_25d_3m___4 best32. ;
	informat cla_25d_3m___5 best32. ;
	informat cla_25d_3m___6 best32. ;
	informat cla_25d_3m___7 best32. ;
	informat cla_25d_3m___8 best32. ;
	informat cla_25d_3m___9 best32. ;
	informat cla_25d_3m___10 best32. ;
	informat cla_25d_3m___11 best32. ;
	informat cla_25d_3m___12 best32. ;
	informat cla_25d_3m___13 best32. ;
	informat cla_25d_3m___14 best32. ;
	informat cla_25d_3m___15 best32. ;
	informat cla_25d_3m___16 best32. ;
	informat cla_25d_3m___17 best32. ;
	informat cla_25d_3m___18 best32. ;
	informat cla_25d_3m___19 best32. ;
	informat cla_25d_3m___20 best32. ;
	informat cla_25d_3m___21 best32. ;
	informat cla_25e_3m $500. ;
	informat cla_26a_3m best32. ;
	informat cla_26b_3m $500. ;
	informat cla_26d_3m best32. ;
	informat cla_26e_3m best32. ;
	informat cla_26f_3m best32. ;
	informat nms_er_3m best32. ;
	informat nms_er_frq_3m best32. ;
	informat nms_hsp_3m best32. ;
	informat nms_hps_frq_3m best32. ;
	informat nms_hps_nigt_3m best32. ;
	informat nms_hps_drg_3m best32. ;
	informat nms_hps_drg_frq_3m best32. ;
	informat nms_hps_drg_nigt_3m best32. ;
	informat nms_otp_3m best32. ;
	informat nms_otp_frq_3m best32. ;
	informat nms_rsd_3m best32. ;
	informat nms_rsd_frq_3m best32. ;
	informat nms_rsd_nigt_3m best32. ;
	informat nms_auc_3m best32. ;
	informat nms_auc_frq_3m best32. ;
	informat nms_auc_med_3m___0 best32. ;
	informat nms_auc_med_3m___1 best32. ;
	informat nms_auc_med_3m___2 best32. ;
	informat nms_auc_med_3m___3 best32. ;
	informat nms_auc_med_3m___4 best32. ;
	informat nms_auc_med_ot_3m $500. ;
	informat nms_auc_med_dos_3m $500. ;
	informat nms_opd_3m best32. ;
	informat nms_opd_frq_3m best32. ;
	informat nms_opd_med_3m___0 best32. ;
	informat nms_opd_med_3m___1 best32. ;
	informat nms_opd_med_3m___2 best32. ;
	informat nms_opd_med_3m___3 best32. ;
	informat nms_opd_med_3m___4 best32. ;
	informat nms_opd_med_3m___5 best32. ;
	informat nms_opd_med_3m___6 best32. ;
	informat nms_opd_med_ot_3m $500. ;
	informat nms_opd_med_dos_3m $500. ;
	informat nms_mnt_3m best32. ;
	informat nms_mnt_med_3m $500. ;
	informat nms_mnt_frq_3m best32. ;
	informat nms_mnt_dos_3m $500. ;
	informat nms_trp_3m best32. ;
	informat nms_trp_frq01_3m best32. ;
	informat nms_trp_frq02_3m $500. ;
	informat nms_xxx_3m___1 best32. ;
	informat nms_xxx_3m___2 best32. ;
	informat nms_xxx_3m___3 best32. ;
	informat nms_xxx_3m___4 best32. ;
	informat nms_xxx_3m___5 best32. ;
	informat nms_xxx_3m___999 best32. ;
	informat nms_mdo_3m best32. ;
	informat nms_mod_frq_3m best32. ;
	informat nms_mod_frq_doc_3m best32. ;
	informat nms_cost_3m best32. ;
	informat nms_cost_cad_3m $500. ;
	informat nms_cost_usd_3m $500. ;
	informat nms_inc_3m best32. ;
	informat nms_inc_cad_3m $500. ;
	informat nms_inc_usd_3m $500. ;
	informat nms_emp_3m best32. ;
	informat nms_ocu_3m $500. ;
	informat nms_emp_frq_3m best32. ;
	informat nms_emp_inc_3m best32. ;
	informat nms_emp_cad_3m $500. ;
	informat nms_emp_usd_3m $500. ;
	informat nms_emp_ben_3m best32. ;
	informat nms_emp_bend_3m $500. ;
	informat nms_otinc_3m best32. ;
	informat nms_otinc_cad_3m $500. ;
	informat nms_otinc_usd_3m $500. ;
	informat nms_edu_3m best32. ;
	informat nms_edu_cr_3m best32. ;
	informat nms_edu_ful_3m best32. ;
	informat nms_hc_3m best32. ;
	informat nms_hc01_3m best32. ;
	informat nms_hc02_3m best32. ;
	informat nms_hc03_3m best32. ;
	informat nms_hc04_3m best32. ;
	informat nms_qul_3m best32. ;
	informat nms_oul_frq_3m best32. ;
	informat srb_age_3m best32. ;
	informat srb_3m_prst_3m best32. ;
	informat srb_prst_tim_3m yymmdd10. ;
	informat srb_prst01_3m best32. ;
	informat srb_prst02_3m best32. ;
	informat srb_prst03_3m best32. ;
	informat srb_prst04_3m best32. ;
	informat srb_prst05_3m best32. ;
	informat srb_prst_stp_3m yymmdd10. ;
	informat srb_3m_3m best32. ;
	informat srb_3m_sxp_3m best32. ;
	informat srb_3m_sxp_f_3m best32. ;
	informat srb_3m_sxp_m_3m best32. ;
	informat srb_3m_f_3m best32. ;
	informat srb_3m_f_sxp_3m best32. ;
	informat srb_3m_f_sxp_p_3m best32. ;
	informat srb_3m_f_sxp_pidu_3m best32. ;
	informat srb_3m_f_sxp_np_3m best32. ;
	informat srb_3m_f_sxp_npidu_3m $500. ;
	informat srb_3m_f_sxp_c_3m $500. ;
	informat srb_3m_f_sxp_cidu_3m best32. ;
	informat srb_3m_f_sxp_mc_3m best32. ;
	informat srb_3m_f_sxp_mcidu_3m best32. ;
	informat srb_1m_f_3m best32. ;
	informat srb_1m_fc_pv_3m best32. ;
	informat srb_1m_fc_po_3m best32. ;
	informat srb_1m_fc_pa_3m best32. ;
	informat srb_1m_fc_npv_3m best32. ;
	informat srb_1m_fc_npo_3m best32. ;
	informat srb_1m_fc_npa_3m best32. ;
	informat srb_1m_fc_cv_3m best32. ;
	informat srb_1m_fc_co_3m best32. ;
	informat srb_1m_fc_ca_3m best32. ;
	informat srb_1m_fc_mcv_3m best32. ;
	informat srb_1m_fc_mco_3m best32. ;
	informat srb_1m_fc_mca_3m best32. ;
	informat srb_1m_f_hiv_3m best32. ;
	informat srb_1m_fc_hiv_3m best32. ;
	informat srb_1m_f_hcv_3m best32. ;
	informat srb_1m_fc_hcv_3m best32. ;
	informat srb_1m_f_drg_cc_3m best32. ;
	informat srb_1m_f_drg_hro_3m best32. ;
	informat srb_1m_f_drg_main_3m best32. ;
	informat srb_1m_f_drg_aph_3m best32. ;
	informat srb_1m_f_drg_psy_3m best32. ;
	informat srb_1m_f_drg_ot_3m $500. ;
	informat srb_3m_m_3m best32. ;
	informat srb_3m_m_sxp_3m best32. ;
	informat srb_3m_m_sxp_p_3m best32. ;
	informat srb_3m_m_sxp_pidu_3m $500. ;
	informat srb_3m_m_sxp_np_3m best32. ;
	informat srb_3m_m_sxp_npidu_3m best32. ;
	informat srb_3m_m_sxp_c_3m best32. ;
	informat srb_3m_m_sxp_cidu_3m best32. ;
	informat srb_3m_m_sxp_mc_3m best32. ;
	informat srb_3m_m_sxp_mcidu_3m best32. ;
	informat srb_1m_m_3m best32. ;
	informat srb_1m_mc_pv_3m best32. ;
	informat srb_1m_mc_po_3m best32. ;
	informat srb_1m_mc_pa_3m best32. ;
	informat srb_1m_mc_npv_3m best32. ;
	informat srb_1m_mc_npo_3m best32. ;
	informat srb_1m_mc_npa_3m best32. ;
	informat srb_1m_mc_cv_3m best32. ;
	informat srb_1m_mc_co_3m best32. ;
	informat srb_1m_mc_ca_3m best32. ;
	informat srb_1m_mc_mcv_3m best32. ;
	informat srb_1m_mc_mco_3m best32. ;
	informat srb_1m_mc_mca_3m best32. ;
	informat srb_1m_m_hiv_3m best32. ;
	informat sbr_1m_m_drg_ot_3m $500. ;
	informat srb_1m_mc_hiv_3m best32. ;
	informat srb_1m_m_hcv_3m best32. ;
	informat srb_1m_mc_hcv_3m best32. ;
	informat srb_1m_m_drg_cc_3m best32. ;
	informat srb_1m_m_drg_hro_3m best32. ;
	informat srb_1m_m_drg_main_3m best32. ;
	informat srb_1m_m_drg_aph_3m best32. ;
	informat srb_1m_m_drg_psy_3m best32. ;
	informat bsi_3m_1 best32. ;
	informat bsi_3m_2 best32. ;
	informat bsi_3m_3 best32. ;
	informat bsi_3m_4 best32. ;
	informat bsi_3m_5 best32. ;
	informat bsi_3m_6 best32. ;
	informat bsi_3m_7 best32. ;
	informat bsi_3m_8 best32. ;
	informat bsi_3m_9 best32. ;
	informat bsi_3m_10 best32. ;
	informat bsi_3m_11 best32. ;
	informat bsi_3m_12 best32. ;
	informat bsi_3m_13 best32. ;
	informat bsi_3m_14 best32. ;
	informat bsi_3m_15 best32. ;
	informat bsi_3m_16 best32. ;
	informat bsi_3m_17 best32. ;
	informat bsi_3m_18 best32. ;
	informat followup_3m_complete best32. ;
	informat followup_3m_eis_cpe__v_6 $500. ;
	informat eis_status_3m best32. ;
	informat eis_1_3m best32. ;
	informat eis_2_3m best32. ;
	informat eis_3_3m best32. ;
	informat eis_4_3m best32. ;
	informat eis_5_3m best32. ;
	informat eis_6_3m best32. ;
	informat eis_7_3m best32. ;
	informat eis_8_3m best32. ;
	informat eis_9_3m best32. ;
	informat eis_10_3m best32. ;
	informat eis_11_3m best32. ;
	informat eis_12_3m best32. ;
	informat eis_13_3m best32. ;
	informat eis_14_3m best32. ;
	informat eis_15_3m best32. ;
	informat eis_16_3m best32. ;
	informat eis_17_3m best32. ;
	informat eis_18_3m best32. ;
	informat eis_19_3m best32. ;
	informat eis_20_3m best32. ;
	informat eis_21_3m best32. ;
	informat eis_22_3m best32. ;
	informat cpe_1_3m best32. ;
	informat cpe_2_3m best32. ;
	informat cpe_3_3m best32. ;
	informat cpe_4_3m best32. ;
	informat cce_1_3m best32. ;
	informat cce_2_3m best32. ;
	informat cce_3_3m best32. ;
	informat cce_4_3m best32. ;
	informat followup_3m_eis_cpe__v_7 best32. ;
	informat followup_3m_adh2_4_timestamp $500. ;
	informat adh2_visitdate yymmdd10. ;
	informat prep_prescribe best32. ;
	informat adh_prep best32. ;
	informat stop_prep best32. ;
	informat prep_last4week best32. ;
	informat prep_now best32. ;
	informat prep_misspercent best32. ;
	informat prep_missdose best32. ;
	informat adh2_noncompliance___1 best32. ;
	informat adh2_noncompliance___2 best32. ;
	informat adh2_noncompliance___3 best32. ;
	informat adh2_noncompliance___4 best32. ;
	informat adh2_noncompliance___5 best32. ;
	informat adh2_noncompliance___6 best32. ;
	informat adh2_noncompliance___7 best32. ;
	informat adh2_noncompliance___8 best32. ;
	informat adh2_noncompliance___9 best32. ;
	informat adh2_noncompliance___10 best32. ;
	informat adh2_noncompliance___11 best32. ;
	informat adh2_noncompliance___12 best32. ;
	informat adh2_noncompliance___13 best32. ;
	informat adh2_noncompliance___14 best32. ;
	informat adh2_noncompliance___15 best32. ;
	informat adh2_noncompliance___16 best32. ;
	informat adh2_noncompliance___17 best32. ;
	informat adh2_noncomplyspec $500. ;
	informat adh2_prepchange best32. ;
	informat adh2_changprepspec $500. ;
	informat adh2_newprepdateprescr yymmdd10. ;
	informat adh2_newprepdateingest yymmdd10. ;
	informat adh_hcv best32. ;
	informat adh4_hcvchange best32. ;
	informat adh4_changhcvspec $500. ;
	informat adh4_newhcvdateprescr yymmdd10. ;
	informat adh4_newhcvdateingest yymmdd10. ;
	informat adh4_noncompliance___1 best32. ;
	informat adh4_noncompliance___2 best32. ;
	informat adh4_noncompliance___3 best32. ;
	informat adh4_noncompliance___4 best32. ;
	informat adh4_noncompliance___5 best32. ;
	informat adh4_noncompliance___6 best32. ;
	informat adh4_noncompliance___7 best32. ;
	informat adh4_noncompliance___8 best32. ;
	informat adh4_noncompliance___9 best32. ;
	informat adh4_noncompliance___10 best32. ;
	informat adh4_noncompliance___11 best32. ;
	informat adh4_noncompliance___12 best32. ;
	informat adh4_noncompliance___13 best32. ;
	informat adh4_noncompliance___14 best32. ;
	informat adh4_noncompliance___15 best32. ;
	informat adh4_noncompliance___16 best32. ;
	informat adh4_noncompliance___17 best32. ;
	informat adh4_noncomplyspec $500. ;
	informat adh4_nopillslastpresc $500. ;
	informat adh4_nopillsleft $500. ;
	informat followup_3m_adh2_4_complete best32. ;
	informat followup_6m_timestamp $500. ;
	informat idu_cnty_6m best32. ;
	informat auc_1_6m best32. ;
	informat auc_2_6m best32. ;
	informat auc_11_6m best32. ;
	informat auc_12_6m best32. ;
	informat auc_3_6m best32. ;
	informat auc_4_6m best32. ;
	informat auc_5_6m best32. ;
	informat auc_6_6m best32. ;
	informat auc_7_6m best32. ;
	informat auc_8_6m best32. ;
	informat auc_9_6m best32. ;
	informat auc_10_6m best32. ;
	informat dst_1_6m best32. ;
	informat dst_2_6m best32. ;
	informat dst_3_6m best32. ;
	informat dst_4_6m best32. ;
	informat dst_5_6m best32. ;
	informat dst_6_6m best32. ;
	informat dst_7_6m best32. ;
	informat dst_8_6m best32. ;
	informat dst_9_6m best32. ;
	informat dst_10_6m best32. ;
	informat odu_6m_6m best32. ;
	informat odu_6m_frq_6m best32. ;
	informat odu_6m_frq_acdt_6m best32. ;
	informat odu_6m_tim_6m yymmdd10. ;
	informat odu_6m_tim_acdt_6m best32. ;
	informat aiv_6m_pa_6m best32. ;
	informat aiv_6m_pa_sp_6m best32. ;
	informat aiv_6m_sex_6m best32. ;
	informat aiv_6m_sex_sp_6m best32. ;
	informat aiv_6m_sp_vio_6m best32. ;
	informat aiv_6m_sp_brc_6m best32. ;
	informat aiv_6m_sp_ctl_6m best32. ;
	informat act_1_6m best32. ;
	informat act_2_6m best32. ;
	informat act_3_6m best32. ;
	informat act_4_6m best32. ;
	informat act_5_6m best32. ;
	informat act_6_6m best32. ;
	informat cdu_1_6m best32. ;
	informat cdu_2_6m best32. ;
	informat cdu_3_6m best32. ;
	informat cdu_4_6m best32. ;
	informat cdu_5_6m best32. ;
	informat cdu_6_6m best32. ;
	informat cdu_7_6m best32. ;
	informat cdu_8_6m best32. ;
	informat cdu_9_6m best32. ;
	informat cdu_10_6m best32. ;
	informat cdu_11_6m best32. ;
	informat cdu_12_6m best32. ;
	informat cdu_13_6m best32. ;
	informat cdu_14_6m best32. ;
	informat cdu_15_6m $500. ;
	informat cdu_16_6m $500. ;
	informat cdu_17_6m best32. ;
	informat cdu_18_6m best32. ;
	informat followup_6m_complete best32. ;
	informat ac1 best32. ;
	informat ac2 best32. ;
	informat ac3 best32. ;
	informat ac4 best32. ;
	informat ac5 best32. ;
	informat ac6 best32. ;
	informat ac7 best32. ;
	informat ac8 best32. ;
	informat ac9 best32. ;
	informat ac10 best32. ;
	informat pns_1 best32. ;
	informat pns_2 best32. ;
	informat pns_3 best32. ;
	informat pns_4 best32. ;
	informat pns_5 best32. ;
	informat pns_6 best32. ;
	informat pns_7 best32. ;
	informat pns_8 best32. ;
	informat pns_9 best32. ;
	informat pns_10 best32. ;
	informat intervention_satisfa_v_8 best32. ;
	informat scf_lastvisit yymmdd10. ;
	informat scf_reasonend best32. ;
	informat scf_reason_ltf $500. ;
	informat scf_reason_date yymmdd10. ;
	informat scf_other $500. ;
	informat scf_comment $5000. ;
	informat end_of_study_form_complete best32. ;
	informat eom_date yymmdd10. ;
	informat eom_whatmed___0 best32. ;
	informat eom_whatmed___1 best32. ;
	informat eom_whatmed___2 best32. ;
	informat eom_whatmed_hcv $500. ;
	informat eom_last_truvada yymmdd10. ;
	informat eom_last_epc yymmdd10. ;
	informat eom_last_ot yymmdd10. ;
	informat eom_reason_truvada___0 best32. ;
	informat eom_reason_truvada___1 best32. ;
	informat eom_reason_truvada___2 best32. ;
	informat eom_reason_truvada___3 best32. ;
	informat eom_reason_truvada___4 best32. ;
	informat eom_reason_truvada___5 best32. ;
	informat eom_reason_truvada___6 best32. ;
	informat eom_reason_truvada___7 best32. ;
	informat eom_reason_truvada___8 best32. ;
	informat eom_reason_truvada___9 best32. ;
	informat eom_reason_truvada___10 best32. ;
	informat eom_reason_truvada___11 best32. ;
	informat eom_reason_truvada___12 best32. ;
	informat eom_reason_truvada___13 best32. ;
	informat eom_reason_truvada___14 best32. ;
	informat eom_reason_truvada___15 best32. ;
	informat eom_other $500. ;
	informat eom_primreason___0 best32. ;
	informat eom_primreason___1 best32. ;
	informat eom_primreason___2 best32. ;
	informat eom_primreason___3 best32. ;
	informat eom_primreason___4 best32. ;
	informat eom_primreason___5 best32. ;
	informat eom_primreason___6 best32. ;
	informat eom_primreason___7 best32. ;
	informat eom_primreason___8 best32. ;
	informat eom_primreason___9 best32. ;
	informat eom_primreason___10 best32. ;
	informat eom_primreason___11 best32. ;
	informat eom_primreason___12 best32. ;
	informat eom_primreason___13 best32. ;
	informat eom_primreason___14 best32. ;
	informat eom_primreason___15 best32. ;
	informat eom_other2 $500. ;
	informat eom_reason_hcv___0 best32. ;
	informat eom_reason_hcv___1 best32. ;
	informat eom_reason_hcv___2 best32. ;
	informat eom_reason_hcv___3 best32. ;
	informat eom_reason_hcv___4 best32. ;
	informat eom_reason_hcv___5 best32. ;
	informat eom_reason_hcv___6 best32. ;
	informat eom_reason_hcv___7 best32. ;
	informat eom_reason_hcv___8 best32. ;
	informat eom_reason_hcv___9 best32. ;
	informat eom_reason_hcv___10 best32. ;
	informat eom_reason_hcv___11 best32. ;
	informat eom_reason_hcv___12 best32. ;
	informat eom_reason_hcv___13 best32. ;
	informat eom_reason_hcv___14 best32. ;
	informat eom_reason_hcv___15 best32. ;
	informat eom_other3 $500. ;
	informat end_of_medication_complete best32. ;
	informat ae_describe $500. ;
	informat ae_number best32. ;
	informat ae_datereport yymmdd10. ;
	informat ae_typereport___0 best32. ;
	informat ae_typereport___1 best32. ;
	informat ae_typereport___2 best32. ;
	informat ae_od yymmdd10. ;
	informat ae_guidelines best32. ;
	informat ae_severity best32. ;
	informat ae_expect best32. ;
	informat ae_relation_med best32. ;
	informat ae_treatment___0 best32. ;
	informat ae_treatment___1 best32. ;
	informat ae_treatment___2 best32. ;
	informat ae_treatment___3 best32. ;
	informat ae_treatment___4 best32. ;
	informat ae_treatment___5 best32. ;
	informat ae_other $500. ;
	informat ae_treatment2 $5000. ;
	informat ae_outcome best32. ;
	informat ae_status yymmdd10. ;
	informat smi_txarm best32. ;
	informat smi_prepmed best32. ;
	informat smi_specify_2 $500. ;
	informat prep_disp best32. ;
	informat smi_prep_start yymmdd10. ;
	informat smi_prep_last $500. ;
	informat smi_prep_action___0 best32. ;
	informat smi_prep_action___1 best32. ;
	informat smi_prep_action___2 best32. ;
	informat smi_prep_action___3 best32. ;
	informat smi_prep_action___4 best32. ;
	informat smi_prep_action___5 best32. ;
	informat smi_prep_action___6 best32. ;
	informat smi_prep_action___7 best32. ;
	informat smi_hcv best32. ;
	informat smi_hcv_baseline best32. ;
	informat smi_hcvmed best32. ;
	informat smi_specify $500. ;
	informat hcv_disp best32. ;
	informat smi_hcv_start $500. ;
	informat smi_hcv_last $500. ;
	informat smi_action___0 best32. ;
	informat smi_action___1 best32. ;
	informat smi_action___2 best32. ;
	informat smi_action___3 best32. ;
	informat smi_action___4 best32. ;
	informat smi_action___5 best32. ;
	informat smi_action___6 best32. ;
	informat smi_action___7 best32. ;
	informat smi_describe $5000. ;
	informat smi_by $500. ;
	informat adverse_event_form_complete best32. ;
	informat sae_number $500. ;
	informat sae_date yymmdd10. ;
	informat sae_type___0 best32. ;
	informat sae_type___1 best32. ;
	informat sae_type___2 best32. ;
	informat sae_describe $500. ;
	informat sae_onset yymmdd10. ;
	informat sae_criteria___0 best32. ;
	informat sae_criteria___1 best32. ;
	informat sae_criteria___2 best32. ;
	informat sae_criteria___3 best32. ;
	informat sae_criteria___4 best32. ;
	informat sae_criteria___5 best32. ;
	informat sae_admission_date yymmdd10. ;
	informat sae_discharge_date yymmdd10. ;
	informat sae_severity best32. ;
	informat sae_expect best32. ;
	informat sae_related best32. ;
	informat sae_rationale $500. ;
	informat sae_outcome best32. ;
	informat sae_resolution yymmdd10. ;
	informat sae_death_date_2 yymmdd10. ;
	informat sae_death_site yymmdd10. ;
	informat sae_death_certificate best32. ;
	informat sae_death_cause best32. ;
	informat sae_other $500. ;
	informat sae_information___0 best32. ;
	informat sae_information___1 best32. ;
	informat sae_information___2 best32. ;
	informat sae_information___3 best32. ;
	informat sae_information___4 best32. ;
	informat sae_information___5 best32. ;
	informat sae_other2 $500. ;
	informat sae_death_autopsy best32. ;
	informat sae_txarm best32. ;
	informat sae_prepmed best32. ;
	informat sae_specify_2 $500. ;
	informat sae_prep_disp best32. ;
	informat sae_prep_start yymmdd10. ;
	informat sae_prep_end yymmdd10. ;
	informat sae_action___0 best32. ;
	informat sae_action___1 best32. ;
	informat sae_action___2 best32. ;
	informat sae_action___3 best32. ;
	informat sae_action___4 best32. ;
	informat sae_action___5 best32. ;
	informat sae_action___6 best32. ;
	informat sae_action___7 best32. ;
	informat sae_prep_abate best32. ;
	informat sae_prep_reappear best32. ;
	informat sae_hcv best32. ;
	informat sae_hcvmed best32. ;
	informat sae_specify $500. ;
	informat hcv_med_disp best32. ;
	informat sae_hcv_start yymmdd10. ;
	informat sae_hcv_end $500. ;
	informat sae_hcv_abate best32. ;
	informat sae_hcv_reappear best32. ;
	informat sae_action_hcv___0 best32. ;
	informat sae_action_hcv___1 best32. ;
	informat sae_action_hcv___2 best32. ;
	informat sae_action_hcv___3 best32. ;
	informat sae_action_hcv___4 best32. ;
	informat sae_action_hcv___5 best32. ;
	informat sae_action_hcv___6 best32. ;
	informat sae_action_hcv___7 best32. ;
	informat sae_tx $500. ;
	informat sae_add_action_hcv $500. ;
	informat sae_med $5000. ;
	informat sae_med_dose $5000. ;
	informat sae_med_start $500. ;
	informat sae_med_stop $500. ;
	informat sae_ongoing best32. ;
	informat sae_condition $5000. ;
	informat sae_condition_start yymmdd10. ;
	informat sae_condition_stop $500. ;
	informat sae_ongoing_rmh best32. ;
	informat sae_event_narrative $5000. ;
	informat sae_initial $500. ;
	informat serious_adverse_even_v_9 best32. ;
	informat date_visit yymmdd10. ;
	informat rmv best32. ;
	informat com $5000. ;
	informat missed_visit_form_complete best32. ;
	informat medi_pres___1 best32. ;
	informat medi_pres___2 best32. ;
	informat medi_pres___3 best32. ;
	informat medi_pres_ot $500. ;
	informat pres_dose $500. ;
	informat date_truvada yymmdd10. ;
	informat date_epclusa yymmdd10. ;
	informat date_other yymmdd10. ;
	informat medi_dispense___1 best32. ;
	informat medi_dispense___2 best32. ;
	informat medi_dispense___3 best32. ;
	informat date_truvada_disp yymmdd10. ;
	informat date_epclusa_dis yymmdd10. ;
	informat date_other_disp yymmdd10. ;
	informat com_dose $5000. ;
	informat treatment_initiation_complete best32. ;

	format record_id $500. ;
	format redcap_event_name $500. ;
	format redcap_repeat_instrument $500. ;
	format redcap_repeat_instance best12. ;
	format redcap_data_access_group $500. ;
	format redcap_survey_identifier $500. ;
	format languages_timestamp $500. ;
	format id_paper best12. ;
	format languages best12. ;
	format languages_complete best12. ;
	format screening_timestamp $500. ;
	format sdem_visit yymmdd10. ;
	format sdem_reside best12. ;
	format sdem_lang_mon best12. ;
	format sdem_lang_mia best12. ;
	format sdem_lang_mia_2 best12. ;
	format sdem_age best12. ;
	format sdem_oat best12. ;
	format sdem_sev best12. ;
	format sdem_sev_no best12. ;
	format sdem_sex best12. ;
	format sdem_gender best12. ;
	format sdem_prg_c best12. ;
	format sdem_prg_c2 best12. ;
	format sdem_prg_b best12. ;
	format sdem_brsf best12. ;
	format sdem_prg_ct18 best12. ;
	format vcp_inject_6mo best12. ;
	format sdem_hiv_etst best12. ;
	format sdem_hiv_rtst_r best12. ;
	format sdem_prp_cu best12. ;
	format sdem_hcv best12. ;
	format sdem_hcv_fail best12. ;
	format sdem_wil_fol best12. ;
	format sdem_elig best12. ;
	format sdem_hcv_etst best12. ;
	format sdem_hcv_rtst yymmdd10. ;
	format sdem_hcv_rtst_r best12. ;
	format sdem_hcv_etst_w___0 best12. ;
	format sdem_hcv_etst_w___1 best12. ;
	format sdem_hcv_etst_w___2 best12. ;
	format sdem_hcv_etst_w___3 best12. ;
	format sdem_hcv_etst_w___4 best12. ;
	format sdem_hcv_etst_w___5 best12. ;
	format sdem_hcv_etst_w___6 best12. ;
	format sdem_hcv_etst_w___7 best12. ;
	format sdem_hcv_etst_w___8 best12. ;
	format sdem_hcv_etst_w___9 best12. ;
	format sdem_hcv_etst_w___10 best12. ;
	format sdem_hcv_etst_w___11 best12. ;
	format sdem_hcv_etst_w___12 best12. ;
	format sdem_hcv_etst_w___13 best12. ;
	format sdem_hcv_etst_w___14 best12. ;
	format sdem_hcv_etst_w___15 best12. ;
	format sdem_hcv_etst_w___16 best12. ;
	format sdem_hiv_rtst yymmdd10. ;
	format shhr_hiv_etstw___0 best12. ;
	format shhr_hiv_etstw___1 best12. ;
	format shhr_hiv_etstw___2 best12. ;
	format shhr_hiv_etstw___3 best12. ;
	format shhr_hiv_etstw___4 best12. ;
	format shhr_hiv_etstw___5 best12. ;
	format shhr_hiv_etstw___6 best12. ;
	format shhr_hiv_etstw___7 best12. ;
	format shhr_hiv_etstw___8 best12. ;
	format shhr_hiv_etstw___9 best12. ;
	format shhr_hiv_etstw___10 best12. ;
	format shhr_hiv_etstw___11 best12. ;
	format shhr_hiv_etstw___12 best12. ;
	format shhr_hiv_etstw___13 best12. ;
	format shhr_hiv_etstw___14 best12. ;
	format shhr_hiv_etstw___15 best12. ;
	format shhr_hiv_etstw___16 best12. ;
	format shhr_hiv_etstw___17 best12. ;
	format shhr_hiv_etstw_ot $500. ;
	format shhr_tst_cunt best12. ;
	format shhr_tst_fst $500. ;
	format shhr_tstr_cunt best12. ;
	format shhr_ntst_r $500. ;
	format shhr_tst_plc $500. ;
	format shhr_tst_r best12. ;
	format shkq_1 best12. ;
	format shkq_2 best12. ;
	format shkq_3 best12. ;
	format shkq_4 best12. ;
	format shkq_5 best12. ;
	format shkq_6 best12. ;
	format shkq_7 best12. ;
	format shkq_8 best12. ;
	format shkq_9 best12. ;
	format shkq_10 best12. ;
	format shkq_11 best12. ;
	format shkq_12 best12. ;
	format preg_result best12. ;
	format scr_c_hcv_res best12. ;
	format insti best12. ;
	format sdem_slep6m best12. ;
	format sdem_slep6m_ot $500. ;
	format sdem_live6m_hls best12. ;
	format sdem_live6m_shl1 best12. ;
	format sdem_live6m_trs best12. ;
	format sdem_live6m_htl best12. ;
	format sdem_live6m_hiv best12. ;
	format sdem_live6m_sut best12. ;
	format sdem_live6m_shl2 best12. ;
	format sdem_live6m_shl3 best12. ;
	format sdem_live6m_shl4 best12. ;
	format sdem_live6m_shl5 best12. ;
	format sdem_fod_qul best12. ;
	format sdem_fod_frq best12. ;
	format sdem_ild best12. ;
	format sdem_ild_txt $500. ;
	format sdem_idu best12. ;
	format sdem_idu_6m best12. ;
	format sdem_idu_tim yymmdd10. ;
	format sdem_idu6m___0 best12. ;
	format sdem_idu6m___1 best12. ;
	format sdem_idu6m___2 best12. ;
	format sdem_idu6m___3 best12. ;
	format sdem_idu6m___4 best12. ;
	format sdem_idu6m___5 best12. ;
	format sdem_idu6m___6 best12. ;
	format sdem_idu6m___7 best12. ;
	format shlt_r best12. ;
	format shlt_l best12. ;
	format shlt_f best12. ;
	format sdem_dis_hcv best12. ;
	format sdem_dis_hiv best12. ;
	format sdem_dis_sex best12. ;
	format sdem_dis_gay best12. ;
	format sdem_dis_race best12. ;
	format sdem_dis_sub best12. ;
	format result_insti_2 best12. ;
	format sdem_int_evr best12. ;
	format sdem_int_elg best12. ;
	format sdem_int_elg_ot $500. ;
	format sdem_int_chge $500. ;
	format screening_complete best12. ;
	format vir_dbs yymmdd10. ;
	format vir_tbs time5. ;
	format vir_insti best12. ;
	format vir_rapid best12. ;
	format vir_rna2 best12. ;
	format vir_rna2_val $500. ;
	format vir_hcvgen $500. ;
	format vir_pan_cd $500. ;
	format vir_pan_cl $500. ;
	format vir_pan_k $500. ;
	format vir_pan_na $500. ;
	format vir_pan_phos $500. ;
	format vir_serum $500. ;
	format vir_hbs best12. ;
	format vir_hbc best12. ;
	format vir_a best12. ;
	format vir_hav best12. ;
	format vir_cbc_wbc best12. ;
	format vir_cbc_rbc best12. ;
	format vir_cbc_hem best12. ;
	format vir_cbc_hem_2 best12. ;
	format vir_cbc_mcv best12. ;
	format vir_cbc_mch best12. ;
	format vir_cbc_mchc best12. ;
	format vir_cbc_rdw best12. ;
	format vir_cbc_plat best12. ;
	format vir_cbc_mpv best12. ;
	format vir_cbc_neut best12. ;
	format vir_cbc_lym best12. ;
	format vir_cbc_mon best12. ;
	format vir_cbc_eos best12. ;
	format vir_cbc_baso best12. ;
	format vir_aspami $500. ;
	format vir_alaami $500. ;
	format vir_alkpho $500. ;
	format vir_bili $500. ;
	format vir_albumin $500. ;
	format vir_inr $500. ;
	format vir_bts $500. ;
	format vir_ot $5000. ;
	format comment $5000. ;
	format screening_specific_c_v_0 best12. ;
	format vt_dvs yymmdd10. ;
	format vt_tvs time5. ;
	format vt_bpm $500. ;
	format vt_mmhg $500. ;
	format vt_minute $500. ;
	format vt_temp best12. ;
	format vt_f best12. ;
	format vt_c best12. ;
	format vt_height best12. ;
	format vt_in $500. ;
	format vt_cm $500. ;
	format vt_weight best12. ;
	format vt_lb $500. ;
	format vt_kg $500. ;
	format vt_cir best12. ;
	format vt_cir_in $500. ;
	format vt_cir_cm $500. ;
	format vital_signs_complete best12. ;
	format ec_fem_0_ps best12. ;
	format ec_fem_1_ps best12. ;
	format ec_fem_2_ps best12. ;
	format ec_fem_3_ps best12. ;
	format ec_exc_1_ps best12. ;
	format ec_exc_2_ps best12. ;
	format ec_exc_3_ps best12. ;
	format ec_exc_4_ps best12. ;
	format ec_exc_5_ps best12. ;
	format ec_exc_6_ps best12. ;
	format ec_exc_7_ps best12. ;
	format ec_exc_8_ps best12. ;
	format ec_exc_11_ps best12. ;
	format ec_exc_12_ps best12. ;
	format ec_sign_ps best12. ;
	format comment_elig2 $5000. ;
	format initial $500. ;
	format physician_checklist_complete best12. ;
	format ur_test_bas___0 best12. ;
	format ur_test_bas___1 best12. ;
	format ur_test_bas___2 best12. ;
	format result_upt_bas best12. ;
	format dbs_bas best12. ;
	format ct_bas___1 best12. ;
	format ct_bas___2 best12. ;
	format ct_bas___3 best12. ;
	format ng_test_bas___1 best12. ;
	format ng_test_bas___2 best12. ;
	format ng_test_bas___3 best12. ;
	format vir_ct_oral best12. ;
	format vir_ct_uro best12. ;
	format vir_ct_rec best12. ;
	format vir_ng_oral best12. ;
	format vir_ng_uro best12. ;
	format vir_ng_rec best12. ;
	format baseline_specific_co_v_1 best12. ;
	format date_of_specimen_3m yymmdd10. ;
	format ur_test_bas_3m best12. ;
	format result_upt_bas_3m best12. ;
	format dbs_bas_3m best12. ;
	format ct_bas_3m___1 best12. ;
	format ct_bas_3m___2 best12. ;
	format ct_bas_3m___3 best12. ;
	format ct_bas_3m___4 best12. ;
	format ct_other_3m $500. ;
	format ng_test_bas_3m___1 best12. ;
	format ng_test_bas_3m___2 best12. ;
	format ng_test_bas_3m___3 best12. ;
	format ng_test_bas_3m___4 best12. ;
	format chlamydia_other_2 $500. ;
	format vir_ct_oral_3m best12. ;
	format vir_ct_uro_3m best12. ;
	format vir_ct_rec_3m best12. ;
	format vir_ng_oral_3m best12. ;
	format vir_ng_uro_3m best12. ;
	format vir_ng_rec_3m best12. ;
	format vir_ng_other_3m best12. ;
	format vir_ct_other_3m best12. ;
	format syphilis_3m best12. ;
	format hcv_status_3m best12. ;
	format hcv_ant_3m best12. ;
	format hcv_ant_res_3m best12. ;
	format hcv_notest_reason_3m $500. ;
	format hcv_rna_quan_3m $500. ;
	format hcv_geno_3m $500. ;
	format hcv_rna_quan_12wkp_3m best12. ;
	format hcv_rna_quan_12wkp_3m_q best12. ;
	format hcv_rna_quan_12wkp_why_3m $500. ;
	format hiv_ab_3m best12. ;
	format hiv_noanti_rea_3m $500. ;
	format hbv_sur_ant_3m best12. ;
	format hbv_nop_rea_3m $500. ;
	format serum_creatinine_3m $500. ;
	format comments_3m $5000. ;
	format fu_specific_collecti_v_2 best12. ;
	format baseline_timestamp $500. ;
	format dem_visit yymmdd10. ;
	format idu_cnty best12. ;
	format dem_gender best12. ;
	format dem_gender_ot $500. ;
	format dem_gender_t best12. ;
	format dem_gender_s best12. ;
	format dem_gender_id best12. ;
	format dem_gender_id_ot $500. ;
	format dem_residence best12. ;
	format dem_race_hisp best12. ;
	format dem_aborig best12. ;
	format dem_indian1 best12. ;
	format dem_indian2 best12. ;
	format dem_indian3 $500. ;
	format dem_race best12. ;
	format dem_race_ot $500. ;
	format dem_ethnic $500. ;
	format dem_trip_time time5. ;
	format dem_trip_trans best12. ;
	format dem_trip_ot $500. ;
	format dem_edu best12. ;
	format dem_marital best12. ;
	format dem_employ best12. ;
	format dem_employ_ot $500. ;
	format dem_hltins best12. ;
	format dem_hltins_can best12. ;
	format dem_hltins_t0 best12. ;
	format dem_hltins_t1 best12. ;
	format dem_hltins_t2 best12. ;
	format dem_hltins_t3 best12. ;
	format dem_hltins_t4 best12. ;
	format dem_hltins_t5 best12. ;
	format dem_hltins_t6 best12. ;
	format dem_hltins_t7 best12. ;
	format dem_hltins_t8 best12. ;
	format dem_hltins_t9 best12. ;
	format dem_hltins_t10 best12. ;
	format dem_hltins_t11 $500. ;
	format dem_hltins_t12 $500. ;
	format dem_hltins_t13 $500. ;
	format dem_hltins_t14 best12. ;
	format dem_hltins_t15___0 best12. ;
	format dem_hltins_t15___1 best12. ;
	format dem_hltins_t15___2 best12. ;
	format dem_hltins_t15___3 best12. ;
	format dem_hltins_t15___4 best12. ;
	format dem_hltins_t15___5 best12. ;
	format dem_hltins_t16 $500. ;
	format sub_ever___1 best12. ;
	format sub_ever___2 best12. ;
	format sub_ever___3 best12. ;
	format sub_ever___4 best12. ;
	format sub_ever___5 best12. ;
	format sub_ever___6 best12. ;
	format sub_ever___7 best12. ;
	format sub_ever___8 best12. ;
	format sub_ever___9 best12. ;
	format sub_ever___10 best12. ;
	format sub_ever___11 best12. ;
	format sub_ever___12 best12. ;
	format sub_ever___13 best12. ;
	format sub_ever___14 best12. ;
	format sub_ever___15 best12. ;
	format sub_ever___16 best12. ;
	format sub_ever___17 best12. ;
	format sub_ever___18 best12. ;
	format sub_ever___19 best12. ;
	format sub_ever___20 best12. ;
	format sub_ever___21 best12. ;
	format sub_ever___22 best12. ;
	format sub_ever___23 best12. ;
	format sub_ever___24 best12. ;
	format sub_ever___25 best12. ;
	format sub_ever___26 best12. ;
	format sub_ever___27 best12. ;
	format sub_ever26_ot $500. ;
	format sub_6m1 best12. ;
	format sub_6m2 best12. ;
	format sub_6m3 best12. ;
	format sub_6m4 best12. ;
	format sub_6m5 best12. ;
	format sub_6m6 best12. ;
	format sub_6m7 best12. ;
	format sub_6m8 best12. ;
	format sub_6m9 best12. ;
	format sub_6m10 best12. ;
	format sub_6m11 best12. ;
	format sub_6m12 best12. ;
	format sub_6m13 best12. ;
	format sub_6m14 best12. ;
	format sub_6m15 best12. ;
	format sub_6m16 best12. ;
	format sub_6m17 best12. ;
	format sub_6m18 best12. ;
	format sub_6m19 best12. ;
	format sub_6m20 best12. ;
	format sub_6m21 best12. ;
	format sub_6m22 best12. ;
	format sub_6m23 best12. ;
	format sub_6m24 best12. ;
	format sub_6m25 best12. ;
	format sub_6m26 best12. ;
	format sub_6m27 best12. ;
	format sub_frq1m $500. ;
	format sub_idu1m_her best12. ;
	format sub_idu1m_her_frq $500. ;
	format sub_idu1m_her_frqm best12. ;
	format sub_1m_her best12. ;
	format sub_1m_her_frq $500. ;
	format sub_1m_her_frqm best12. ;
	format sub_idu1m_cp best12. ;
	format sub_idu1m_cp_frq $500. ;
	format sub_idu1m_cp_frqm best12. ;
	format sub_idu1m_fent best12. ;
	format sub_idu1m_fent_frq $500. ;
	format sub_idu1m_fent_frqm best12. ;
	format sub_idu1m_cc best12. ;
	format sub_idu1m_cc_frq $500. ;
	format sub_idu1m_cc_frqm best12. ;
	format sub_1m_cp best12. ;
	format sub_1m_cp_frq $500. ;
	format sub_1m_cp_frqm best12. ;
	format sub_1m_cc best12. ;
	format sub_1m_cc_frq $500. ;
	format sub_1m_cc_frqm best12. ;
	format sub_1m_cs best12. ;
	format sub_1m_cs_frq $500. ;
	format sub_1m_cs_frqm best12. ;
	format sub_idu1m_sb best12. ;
	format sub_idu1m_sb_frq $500. ;
	format sub_idu1m_sb_frqm best12. ;
	format sub_idu1m_sox best12. ;
	format sub_idu1m_sox_frq $500. ;
	format sub_idu1m_sox_frqm $500. ;
	format sub_1m_sox best12. ;
	format sub_1m_sox_frq $500. ;
	format sub_1m_sox_frqm $500. ;
	format sub_idu1m_meth best12. ;
	format sub_idu1m_meth_frq $500. ;
	format sub_idu1m_meth_frqm $500. ;
	format sub_1m_meth best12. ;
	format sub_1m_meth_frq $500. ;
	format sub_1m_meth_frqm $500. ;
	format sub_idu1m_aph best12. ;
	format sub_idu1m_aph_frq $500. ;
	format sub_idu1m_aph_frqm best12. ;
	format sub_1m_aph best12. ;
	format sub_1m_aph_frq $500. ;
	format sub_1m_aph_frqm best12. ;
	format sub_idu1m_barb best12. ;
	format sub_idu1m_barb_frq $500. ;
	format sub_idu1m_barb_frqm best12. ;
	format sub_1m_barb best12. ;
	format sub_1m_barb_frq $500. ;
	format sub_1m_barb_frqm best12. ;
	format sub_idu1m_traq best12. ;
	format sub_idu1m_traq_frq $500. ;
	format sub_idu1m_traq_frqm best12. ;
	format sub_1m_traq best12. ;
	format sub_1m_traq_frq $500. ;
	format sub_1m_traq_frqm best12. ;
	format sub_1m_marj best12. ;
	format sub_1m_marj_frq $500. ;
	format sub_1m_marj_frqm best12. ;
	format sub_idu1m_psy best12. ;
	format sub_idu1m_psy_frq $500. ;
	format sub_idu1m_psy_frqm best12. ;
	format sub_1m_psy best12. ;
	format sub_1m_psy_frq $500. ;
	format sub_1m_psy_frqm best12. ;
	format sub_idu6m_oop $500. ;
	format sub_idu6m_oop_frq $500. ;
	format sub_idu1m_oop best12. ;
	format sub_idu1m_oop_frq $500. ;
	format sub_idu1m_oop_frqm1 $500. ;
	format sub_idu1m_oop_frqm2 best12. ;
	format sub_idu1m_oop_fit best12. ;
	format sub_idu1m_oop_fit1 best12. ;
	format sub_idu1m_oop_fit2 best12. ;
	format sub_idu1m_oop_lo best12. ;
	format sub_idu1m_oop_lo1 best12. ;
	format sub_idu1m_oop_lo2 best12. ;
	format sub_6m_oop $500. ;
	format sub_6m_oop_frq $500. ;
	format sub_1m_oop best12. ;
	format sub_1m_oop_frq $500. ;
	format sub_1m_oop_frqm1 $500. ;
	format sub_1m_oop_frqm2 best12. ;
	format sub_idu6m_om $500. ;
	format sub_idu1m_om best12. ;
	format sub_idu1m_om_frq $500. ;
	format sub_idu1m_om_frqm best12. ;
	format sub_6m_om $500. ;
	format sub_1m_om best12. ;
	format sub_1m_om_frq $500. ;
	format sub_1m_om_frqm best12. ;
	format sub_idu6m_ot best12. ;
	format sub_idu6m_ott $500. ;
	format sub_idu1m_ot best12. ;
	format sub_idu1m_ot_frq $500. ;
	format sub_idu1m_ot_frqm best12. ;
	format sub_nidu6m_ot best12. ;
	format sub_nidu6m_ot_non $500. ;
	format sub_nidu1m_ot best12. ;
	format sub_nidu1m_ot_frq $500. ;
	format sub_nidu1m_ot_frqm best12. ;
	format auc_1 best12. ;
	format auc_2 best12. ;
	format auc_11 best12. ;
	format auc_12 best12. ;
	format auc_3 best12. ;
	format auc_4 best12. ;
	format auc_5 best12. ;
	format auc_6 best12. ;
	format auc_7 best12. ;
	format auc_8 best12. ;
	format auc_9 best12. ;
	format auc_10 best12. ;
	format dst_1 best12. ;
	format dst_2 best12. ;
	format dst_3 best12. ;
	format dst_4 best12. ;
	format dst_5 best12. ;
	format dst_6 best12. ;
	format dst_7 best12. ;
	format dst_8 best12. ;
	format dst_9 best12. ;
	format dst_10 best12. ;
	format idu_6mplc1 $500. ;
	format idu_6mplc2___0 best12. ;
	format idu_6mplc2___1 best12. ;
	format idu_6mplc2___2 best12. ;
	format idu_6mplc2___3 best12. ;
	format idu_6mplc2___4 best12. ;
	format idu_6mplc2___5 best12. ;
	format idu_6mplc2___6 best12. ;
	format idu_6mplc2___7 best12. ;
	format idu_6mplc2___8 best12. ;
	format idu_6mplc2___9 best12. ;
	format idu_6mplc2___10 best12. ;
	format idu_6mplc2___11 best12. ;
	format idu_6mplc2_ot $500. ;
	format idu_plc best12. ;
	format idu_1m_day best12. ;
	format idu_frq_pday $500. ;
	format idu_2m_day best12. ;
	format idu_3m_day best12. ;
	format idu_ru_6m best12. ;
	format idu_hi_6m best12. ;
	format sidu_header4 best12. ;
	format idu_frq best12. ;
	format idu_frq_c $500. ;
	format idu_stp_3m_ob best12. ;
	format idu_stp_3m3 best12. ;
	format idu_stp_3m3_vb___0 best12. ;
	format idu_stp_3m3_vb___1 best12. ;
	format idu_stp_3m3_v $500. ;
	format idu_stp_3m3_b $500. ;
	format idu_stp_3m2 best12. ;
	format idu_stp_3m2_vb___0 best12. ;
	format idu_stp_3m2_vb___1 best12. ;
	format idu_stp_3m2_v $500. ;
	format idu_stp_3m2_b $500. ;
	format idu_stp_3m1 best12. ;
	format idu_stp_3m1_vb___0 best12. ;
	format idu_stp_3m1_vb___1 best12. ;
	format idu_stp_3m1_v $500. ;
	format idu_stp_3m1_b $500. ;
	format idu_6mrec01_us best12. ;
	format idu_6mrec05_us best12. ;
	format idu_6mrec06_us best12. ;
	format idu_6mrec07_us best12. ;
	format idu_6mrec08_us best12. ;
	format idu_6mrec09_us best12. ;
	format idu_6mrec10_us best12. ;
	format idu_6mrec11_us best12. ;
	format idu_6mrec13_us best12. ;
	format idu_6mrec14_us best12. ;
	format idu_6mrec15_us best12. ;
	format idu_6mrec18_us best12. ;
	format idu_6mrec19_us best12. ;
	format idu_6mrec19_ot $500. ;
	format idu_6mrec01 best12. ;
	format idu_6mrec02 best12. ;
	format idu_6mrec03 best12. ;
	format idu_6mrec04 best12. ;
	format idu_6mrec05 best12. ;
	format idu_6mrec06 best12. ;
	format idu_6mrec07 best12. ;
	format idu_6mrec08 best12. ;
	format idu_6mrec09 best12. ;
	format idu_6mrec10 best12. ;
	format idu_6mrec11 best12. ;
	format idu_6mrec12 best12. ;
	format idu_6mrec13 best12. ;
	format idu_6mrec14 best12. ;
	format idu_6mrec15 best12. ;
	format idu_6mrec16 best12. ;
	format idu_6mrec17 best12. ;
	format idu_6mrec18 best12. ;
	format idu_6mrec19 best12. ;
	format idu_6mrec19_ot_2 $500. ;
	format idu_6mrecp01 $500. ;
	format idu_6mrecp01_us $500. ;
	format idu_6mrecp02 $500. ;
	format idu_6mrecp03 $500. ;
	format idu_6mrecp04 $500. ;
	format idu_6mrecp05 $500. ;
	format idu_6mrecp06 $500. ;
	format idu_6mrecp07 $500. ;
	format idu_6mrecp08 $500. ;
	format idu_6mrecp09 $500. ;
	format idu_6mrecp09_us $500. ;
	format idu_6mrecp10 $500. ;
	format idu_6mrecp11 $500. ;
	format idu_6mrecp12 $500. ;
	format idu_6mrecp13 $500. ;
	format idu_6mrecp14 $500. ;
	format idu_6mrecp15 $500. ;
	format idu_6mrecp16 $500. ;
	format idu_6mrecp17 $500. ;
	format idu_6mrecp18 $500. ;
	format idu_6mrecp19 $500. ;
	format idu_6mnum $500. ;
	format idu_6mnum_my $500. ;
	format idu_6mnum_ot $500. ;
	format idu_6mkit $500. ;
	format idu_6mkit_calc best12. ;
	format idu_6mkit_my $500. ;
	format idu_6mkit_ot $500. ;
	format idu_6msrg $500. ;
	format idu_6msrg_my $500. ;
	format idu_6msrg_ot $500. ;
	format sdu_srg best12. ;
	format sdu_srg_tim $500. ;
	format sdu_srg_6m_frq best12. ;
	format sdu_srg_6m_pp $500. ;
	format sdu_srg_6m_ppw___0 best12. ;
	format sdu_srg_6m_ppw___1 best12. ;
	format sdu_srg_6m_ppw___2 best12. ;
	format sdu_srg_6m_ppw___3 best12. ;
	format sdu_srg_6m_ppw___4 best12. ;
	format sdu_srg_6m_ppw___5 best12. ;
	format sdu_srg_6m_ppw___6 best12. ;
	format sdu_srg_6m_ppw___7 best12. ;
	format sdu_srg_6m_ppw___8 best12. ;
	format sdu_srg_6m_ppw___9 best12. ;
	format sdu_srg_6m_ppw___10 best12. ;
	format sdu_srg_6m_ppw_ot $500. ;
	format sdu_srg_6m_ppwm best12. ;
	format sdu_srg_pp $500. ;
	format sdu_wrk best12. ;
	format sdu_wrk_tim $500. ;
	format sdu_wrk_6m_frq best12. ;
	format sdu_wrk_6m_pp $500. ;
	format sdu_wrk_6m_ppw___0 best12. ;
	format sdu_wrk_6m_ppw___1 best12. ;
	format sdu_wrk_6m_ppw___2 best12. ;
	format sdu_wrk_6m_ppw___3 best12. ;
	format sdu_wrk_6m_ppw___4 best12. ;
	format sdu_wrk_6m_ppw___5 best12. ;
	format sdu_wrk_6m_ppw___6 best12. ;
	format sdu_wrk_6m_ppw___7 best12. ;
	format sdu_wrk_6m_ppw___8 best12. ;
	format sdu_wrk_6m_ppw___9 best12. ;
	format sdu_wrk_6m_ppw___10 best12. ;
	format sdu_wrk_6m_ppw_ot $500. ;
	format sdu_wrk_6m_ppwm best12. ;
	format sdu_wrk_pp $500. ;
	format sdu_srg_hiv best12. ;
	format sdu_srg_hcv best12. ;
	format sdu_wrk_hiv best12. ;
	format sdu_wrk_hcv best12. ;
	format sdu_tgtr best12. ;
	format odu_6m best12. ;
	format odu_6m_frq best12. ;
	format odu_6m_frq_acdt best12. ;
	format odu_6m_tim yymmdd10. ;
	format odu_6m_tim_acdt best12. ;
	format ath_1 best12. ;
	format ath_2 best12. ;
	format ath_3 best12. ;
	format ath_4 best12. ;
	format ath_5 best12. ;
	format ath_6 best12. ;
	format eis_status best12. ;
	format atc_1 best12. ;
	format atc_2 best12. ;
	format atc_3 best12. ;
	format atc_4 best12. ;
	format atc_5 best12. ;
	format atc_6 best12. ;
	format eis_1 best12. ;
	format eis_2 best12. ;
	format eis_3 best12. ;
	format eis_4 best12. ;
	format eis_5 best12. ;
	format eis_6 best12. ;
	format eis_7 best12. ;
	format eis_8 best12. ;
	format eis_9 best12. ;
	format eis_10 best12. ;
	format eis_11 best12. ;
	format eis_12 best12. ;
	format eis_13 best12. ;
	format eis_14 best12. ;
	format eis_15 best12. ;
	format eis_16 best12. ;
	format eis_17 best12. ;
	format eis_18 best12. ;
	format eis_19 best12. ;
	format eis_20 best12. ;
	format eis_21 best12. ;
	format eis_22 best12. ;
	format mmt_1 best12. ;
	format mmt_2 best12. ;
	format mmt_3 best12. ;
	format mmt_4 best12. ;
	format mmt_5 best12. ;
	format mmt_6 best12. ;
	format mmt_7 best12. ;
	format mmt_8 best12. ;
	format mmt_9 best12. ;
	format mmt_10 best12. ;
	format mmt_11 best12. ;
	format aiv_kid_evr_pa best12. ;
	format aiv_adt_evr_pa best12. ;
	format aiv_adt_evr_pa_sp best12. ;
	format aiv_6m_pa best12. ;
	format aiv_6m_pa_sp best12. ;
	format aiv_kid_evr_sex best12. ;
	format aiv_adt_evr_sex best12. ;
	format aiv_evr_sex_sp best12. ;
	format aiv_6m_sex best12. ;
	format aiv_6m_sex_sp best12. ;
	format aiv_evr_sp_vio best12. ;
	format aiv_6m_sp_vio best12. ;
	format aiv_evr_sp_brc best12. ;
	format aiv_6m_sp_brc best12. ;
	format aiv_evr_sp_ctl best12. ;
	format aiv_6m_sp_ctl best12. ;
	format ssi_1 best12. ;
	format ssi_2 best12. ;
	format ssi_2a best12. ;
	format ssi_3 best12. ;
	format ssi_4 best12. ;
	format ssi_5 best12. ;
	format ssi_6 best12. ;
	format ssi_7 best12. ;
	format ssi_8 best12. ;
	format ssi_9 best12. ;
	format ssi_10 best12. ;
	format ssi_11 best12. ;
	format ssi_12 best12. ;
	format ssi_13 best12. ;
	format ssi_14 best12. ;
	format ssi_15 best12. ;
	format ssi_16 best12. ;
	format ssi_17 best12. ;
	format bpi_evr best12. ;
	format bpi_plc___1 best12. ;
	format bpi_plc___2 best12. ;
	format bpi_plc___3 best12. ;
	format bpi_plc___4 best12. ;
	format bpi_plc___5 best12. ;
	format bpi_plc___6 best12. ;
	format bpi_plc___7 best12. ;
	format bpi_plc___8 best12. ;
	format bpi_plc___9 best12. ;
	format bpi_plc___10 best12. ;
	format bpi_plc___11 best12. ;
	format bpi_plc_ot $500. ;
	format bpi_plc_w best12. ;
	format bpi_plc_l best12. ;
	format bpi_plc_m best12. ;
	format bpi_plc_now best12. ;
	format bpi_med $500. ;
	format bpi_med_p best12. ;
	format bpi_1 best12. ;
	format bpi_2 best12. ;
	format bpi_3 best12. ;
	format bpi_4 best12. ;
	format bpi_5 best12. ;
	format bpi_6 best12. ;
	format bpi_7 best12. ;
	format bsi_1 best12. ;
	format bsi_2 best12. ;
	format bsi_3 best12. ;
	format bsi_4 best12. ;
	format bsi_5 best12. ;
	format bsi_6 best12. ;
	format bsi_7 best12. ;
	format bsi_8 best12. ;
	format bsi_9 best12. ;
	format bsi_10 best12. ;
	format bsi_11 best12. ;
	format bsi_12 best12. ;
	format bsi_13 best12. ;
	format bsi_14 best12. ;
	format bsi_15 best12. ;
	format bsi_16 best12. ;
	format bsi_17 best12. ;
	format bsi_18 best12. ;
	format hfs_1 best12. ;
	format hfs_1a best12. ;
	format hfs_2 best12. ;
	format hfs_2a best12. ;
	format hfs_3 best12. ;
	format hfs_3a best12. ;
	format hfs_4 best12. ;
	format hfs_4a best12. ;
	format hfs_5 best12. ;
	format hfs_5a best12. ;
	format hfs_6 best12. ;
	format hfs_6a best12. ;
	format hfs_7 best12. ;
	format hfs_7a best12. ;
	format hfs_8 best12. ;
	format hfs_8a best12. ;
	format hfs_9 best12. ;
	format hfs_9a best12. ;
	format qol_1 best12. ;
	format qol_2 best12. ;
	format qol_3 best12. ;
	format qol_4 best12. ;
	format qol_5 best12. ;
	format qol_helth1 best12. ;
	format cla_1 best12. ;
	format cla_1a best12. ;
	format cla_1a_cad $500. ;
	format cla_1a_usd $500. ;
	format cla_2 best12. ;
	format cla_2a $500. ;
	format cla_3a best12. ;
	format cla_3c best12. ;
	format cla_3d best12. ;
	format cla_3e best12. ;
	format cla_4a best12. ;
	format cla_4c best12. ;
	format cla_4d best12. ;
	format cla_4e best12. ;
	format cla_5a best12. ;
	format cla_5c best12. ;
	format cla_5d best12. ;
	format cla_5e best12. ;
	format cla_6a best12. ;
	format cla_6c best12. ;
	format cla_6d best12. ;
	format cla_6e best12. ;
	format cla_7a best12. ;
	format cla_7c best12. ;
	format cla_7d best12. ;
	format cla_7e best12. ;
	format cla_8a best12. ;
	format cla_8c best12. ;
	format cla_8d best12. ;
	format cla_8e best12. ;
	format cla_9a best12. ;
	format cla_9c best12. ;
	format cla_9d best12. ;
	format cla_9e best12. ;
	format cla_10a best12. ;
	format cla_10c best12. ;
	format cla_10d best12. ;
	format cla_10e best12. ;
	format cla_11a best12. ;
	format cla_11c best12. ;
	format cla_11d best12. ;
	format cla_11e best12. ;
	format cla_12a best12. ;
	format cla_12c best12. ;
	format cla_12d best12. ;
	format cla_12e best12. ;
	format cla_13a best12. ;
	format cla_13c best12. ;
	format cla_13d best12. ;
	format cla_13e best12. ;
	format cla_14a best12. ;
	format cla_14c best12. ;
	format cla_14d best12. ;
	format cla_14e best12. ;
	format cla_15a best12. ;
	format cla_15c best12. ;
	format cla_15d best12. ;
	format cla_15e best12. ;
	format cla_16a best12. ;
	format cla_16c best12. ;
	format cla_16d best12. ;
	format cla_16e best12. ;
	format cla_17a best12. ;
	format cla_17c best12. ;
	format cla_17d best12. ;
	format cla_17e best12. ;
	format cla_18a best12. ;
	format cla_18c best12. ;
	format cla_18d best12. ;
	format cla_18e best12. ;
	format cla_20a best12. ;
	format cla_20c best12. ;
	format cla_20d best12. ;
	format cla_20e best12. ;
	format cla_22a best12. ;
	format cla_22c best12. ;
	format cla_22d best12. ;
	format cla_22e best12. ;
	format cla_23a best12. ;
	format cla_23c best12. ;
	format cla_23d best12. ;
	format cla_23e best12. ;
	format cla_24a best12. ;
	format cla_24c best12. ;
	format cla_24d best12. ;
	format cla_24e best12. ;
	format cla_25a best12. ;
	format cla_25b best12. ;
	format cla_25c best12. ;
	format cla_25d___0 best12. ;
	format cla_25d___1 best12. ;
	format cla_25d___2 best12. ;
	format cla_25d___3 best12. ;
	format cla_25d___4 best12. ;
	format cla_25d___5 best12. ;
	format cla_25d___6 best12. ;
	format cla_25d___7 best12. ;
	format cla_25d___8 best12. ;
	format cla_25d___9 best12. ;
	format cla_25d___10 best12. ;
	format cla_25d___11 best12. ;
	format cla_25d___12 best12. ;
	format cla_25d___13 best12. ;
	format cla_25d___14 best12. ;
	format cla_25d___15 best12. ;
	format cla_25d___16 best12. ;
	format cla_25d___17 best12. ;
	format cla_25d___18 best12. ;
	format cla_25d___19 best12. ;
	format cla_25d___20 best12. ;
	format cla_25d___21 best12. ;
	format cla_25e $500. ;
	format cla_26a best12. ;
	format cla_26a_t $500. ;
	format cla_26c $500. ;
	format cla_26d best12. ;
	format cla_26e best12. ;
	format nms_er best12. ;
	format nms_er_frq best12. ;
	format nms_hsp best12. ;
	format nms_hps_frq best12. ;
	format nms_hps_nigt best12. ;
	format nms_hps_drg best12. ;
	format nms_hps_drg_frq best12. ;
	format nms_hps_drg_nigt best12. ;
	format nms_otp best12. ;
	format nms_otp_frq best12. ;
	format nms_rsd best12. ;
	format nms_rsd_frq best12. ;
	format nms_rsd_nigt best12. ;
	format nms_auc best12. ;
	format nms_auc_frq best12. ;
	format nms_auc_med___0 best12. ;
	format nms_auc_med___1 best12. ;
	format nms_auc_med___2 best12. ;
	format nms_auc_med___3 best12. ;
	format nms_auc_med___4 best12. ;
	format nms_auc_med_ot $500. ;
	format nms_auc_med_dos $500. ;
	format nms_opd best12. ;
	format nms_opd_frq best12. ;
	format nms_opd_med___0 best12. ;
	format nms_opd_med___1 best12. ;
	format nms_opd_med___2 best12. ;
	format nms_opd_med___3 best12. ;
	format nms_opd_med___4 best12. ;
	format nms_opd_med___5 best12. ;
	format nms_opd_med___6 best12. ;
	format nms_opd_med_ot $500. ;
	format nms_opd_med_dos $500. ;
	format nms_mnt best12. ;
	format nms_mnt_med $500. ;
	format nms_mnt_frq best12. ;
	format nms_mnt_dos $500. ;
	format nms_trp best12. ;
	format nms_trp_frq01 best12. ;
	format nms_trp_frq02 $500. ;
	format nms_xxx___1 best12. ;
	format nms_xxx___2 best12. ;
	format nms_xxx___3 best12. ;
	format nms_xxx___4 best12. ;
	format nms_xxx___5 best12. ;
	format nms_xxx___999 best12. ;
	format nms_mdo best12. ;
	format nms_mod_frq best12. ;
	format nms_mod_frq_doc best12. ;
	format nms_cost best12. ;
	format nms_cost_cad $500. ;
	format nms_cost_usd $500. ;
	format nms_inc best12. ;
	format nms_inc_cad $500. ;
	format nms_inc_usd $500. ;
	format nms_emp best12. ;
	format nms_ocu $500. ;
	format nms_emp_frq best12. ;
	format nms_emp_inc best12. ;
	format nms_emp_cad $500. ;
	format nms_emp_usd $500. ;
	format nms_emp_ben best12. ;
	format nms_emp_bend $500. ;
	format nms_otinc best12. ;
	format nms_otinc_cad $500. ;
	format nms_otinc_usd $500. ;
	format nms_edu best12. ;
	format nms_edu_cr best12. ;
	format nms_edu_ful best12. ;
	format nms_hc best12. ;
	format nms_hc01 best12. ;
	format nms_hc02 best12. ;
	format nms_hc03 best12. ;
	format nms_hc04 best12. ;
	format nms_qul best12. ;
	format nms_oul_frq best12. ;
	format act_1 best12. ;
	format act_2 best12. ;
	format act_3 best12. ;
	format act_4 best12. ;
	format act_5 best12. ;
	format act_6 best12. ;
	format srb_age $500. ;
	format srb_3m_prst best12. ;
	format srb_prst_tim yymmdd10. ;
	format srb_prst01 best12. ;
	format srb_prst02 best12. ;
	format srb_prst03 best12. ;
	format srb_prst04 best12. ;
	format srb_prst05 best12. ;
	format srb_prst_stp yymmdd10. ;
	format srb_3m best12. ;
	format srb_3m_sxp best12. ;
	format srb_3m_sxp_f best12. ;
	format srb_3m_sxp_m best12. ;
	format srb_3m_f best12. ;
	format srb_3m_f_sxp best12. ;
	format srb_3m_f_sxp_p best12. ;
	format srb_3m_f_sxp_pidu best12. ;
	format srb_3m_f_sxp_np best12. ;
	format srb_3m_f_sxp_npidu $500. ;
	format srb_3m_f_sxp_c $500. ;
	format srb_3m_f_sxp_cidu best12. ;
	format srb_3m_f_sxp_mc best12. ;
	format srb_3m_f_sxp_mcidu best12. ;
	format srb_1m_f best12. ;
	format srb_1m_fc_pv best12. ;
	format srb_1m_fc_po best12. ;
	format srb_1m_fc_pa best12. ;
	format srb_1m_fc_npv best12. ;
	format srb_1m_fc_npo best12. ;
	format srb_1m_fc_npa best12. ;
	format srb_1m_fc_cv best12. ;
	format srb_1m_fc_co best12. ;
	format srb_1m_fc_ca best12. ;
	format srb_1m_fc_mcv best12. ;
	format srb_1m_fc_mco best12. ;
	format srb_1m_fc_mca best12. ;
	format srb_1m_f_hiv best12. ;
	format srb_1m_fc_hiv best12. ;
	format srb_1m_f_hcv best12. ;
	format srb_1m_fc_hcv best12. ;
	format srb_1m_f_drg_cc best12. ;
	format srb_1m_f_drg_hro best12. ;
	format srb_1m_f_drg_main best12. ;
	format srb_1m_f_drg_aph best12. ;
	format srb_1m_f_drg_psy best12. ;
	format srb_1m_f_drg_ot $500. ;
	format srb_3m_m best12. ;
	format srb_3m_m_sxp best12. ;
	format srb_3m_m_sxp_p best12. ;
	format srb_3m_m_sxp_pidu $500. ;
	format srb_3m_m_sxp_np best12. ;
	format srb_3m_m_sxp_npidu best12. ;
	format srb_3m_m_sxp_c best12. ;
	format srb_3m_m_sxp_cidu best12. ;
	format srb_3m_m_sxp_mc best12. ;
	format srb_3m_m_sxp_mcidu best12. ;
	format srb_1m_m best12. ;
	format srb_1m_mc_pv best12. ;
	format srb_1m_mc_po best12. ;
	format srb_1m_mc_pa best12. ;
	format srb_1m_mc_npv best12. ;
	format srb_1m_mc_npo best12. ;
	format srb_1m_mc_npa best12. ;
	format srb_1m_mc_cv best12. ;
	format srb_1m_mc_co best12. ;
	format srb_1m_mc_ca best12. ;
	format srb_1m_mc_mcv best12. ;
	format srb_1m_mc_mco best12. ;
	format srb_1m_mc_mca best12. ;
	format srb_1m_m_hiv best12. ;
	format srb_1m_mc_hiv best12. ;
	format srb_1m_m_hcv best12. ;
	format srb_1m_mc_hcv best12. ;
	format srb_1m_m_drg_cc best12. ;
	format srb_1m_m_drg_hro best12. ;
	format srb_1m_m_drg_main best12. ;
	format srb_1m_m_drg_aph best12. ;
	format srb_1m_m_drg_psy best12. ;
	format sbr_1m_m_drg_ot $500. ;
	format cdu_1 best12. ;
	format cdu_2 best12. ;
	format cdu_3 best12. ;
	format cdu_4 best12. ;
	format cdu_5 best12. ;
	format cdu_6 best12. ;
	format cdu_7 best12. ;
	format cdu_8 best12. ;
	format cdu_9 best12. ;
	format cdu_10 best12. ;
	format cdu_11 best12. ;
	format cdu_12 best12. ;
	format cdu_13 best12. ;
	format cdu_14 best12. ;
	format cdu_15 $500. ;
	format cdu_16 $500. ;
	format cdu_17 best12. ;
	format cdu_18 best12. ;
	format cpe_1 best12. ;
	format cpe_2 best12. ;
	format cpe_3 best12. ;
	format cpe_4 best12. ;
	format cce_1 best12. ;
	format cce_2 best12. ;
	format cce_3 best12. ;
	format cce_4 best12. ;
	format baseline_complete best12. ;
	format relationship_with_ph_v_3 $500. ;
	format rphcv1 best12. ;
	format rphcv2 best12. ;
	format rphcv3 best12. ;
	format rphcv4 best12. ;
	format rphcv_5 best12. ;
	format rphcv_6 best12. ;
	format rphcv_7 best12. ;
	format rphcv_8 best12. ;
	format rphcv_9 best12. ;
	format rphcv_10 best12. ;
	format rphcv_11 best12. ;
	format relationship_with_ph_v_4 best12. ;
	format ec_yrs best12. ;
	format ec_hivneg best12. ;
	format ec_inj6 best12. ;
	format ec_vic best12. ;
	format ec_fu best12. ;
	format ec_com best12. ;
	format ec_serv best12. ;
	format rc_consent best12. ;
	format rc_quiz best12. ;
	format rc_report best12. ;
	format rc_hippa best12. ;
	format rc_release best12. ;
	format rc_locator best12. ;
	format rc_vital best12. ;
	format rc_psychiatric best12. ;
	format rc_scc best12. ;
	format rc_informed best12. ;
	format rc_base best12. ;
	format ec_pc_yes best12. ;
	format comment_nonelig $5000. ;
	format ec_all_2 best12. ;
	format ec_sign $500. ;
	format ec_comments $5000. ;
	format randomization_checkl_v_5 best12. ;
	format rand_ele best12. ;
	format rand_date yymmdd10. ;
	format rand_arm best12. ;
	format rand_reason best12. ;
	format rand_why $500. ;
	format rand_other $500. ;
	format rand_by $500. ;
	format rand_randomization_complete best12. ;
	format followup_3m_timestamp $500. ;
	format dem_visit_3m yymmdd10. ;
	format idu_cnty_3m best12. ;
	format dem_gender_3m best12. ;
	format dem_gender_ot_3m $500. ;
	format dem_gender_t_3m best12. ;
	format dem_gender_s_3m best12. ;
	format dem_gender_id_3m best12. ;
	format dem_gender_id_ot_3m $500. ;
	format dem_trip_time_3m time5. ;
	format dem_trip_trans_3m best12. ;
	format dem_trip_ot_3m $500. ;
	format dem_edu_3m best12. ;
	format dem_marital_3m best12. ;
	format dem_employ_3m best12. ;
	format dem_employ_ot_3m $500. ;
	format dem_hltins_3m best12. ;
	format dem_hltins_can_3m best12. ;
	format dem_hltins_t0_3m best12. ;
	format dem_hltins_t1_3m best12. ;
	format dem_hltins_t2_3m best12. ;
	format dem_hltins_t3_3m best12. ;
	format dem_hltins_t4_3m best12. ;
	format dem_hltins_t5_3m best12. ;
	format dem_hltins_t6_3m best12. ;
	format dem_hltins_t7_3m best12. ;
	format dem_hltins_t8_3m best12. ;
	format dem_hltins_t9_3m best12. ;
	format dem_hltins_t10_3m best12. ;
	format dem_hltins_t11_3m $500. ;
	format dem_hltins_t12_3m $500. ;
	format dem_hltins_t13_3m $500. ;
	format dem_hltins_t14_3m best12. ;
	format dem_hltins_t15_3m___0 best12. ;
	format dem_hltins_t15_3m___1 best12. ;
	format dem_hltins_t15_3m___2 best12. ;
	format dem_hltins_t15_3m___3 best12. ;
	format dem_hltins_t15_3m___4 best12. ;
	format dem_hltins_t15_3m___5 best12. ;
	format dem_hltins_t16_3m $500. ;
	format sub_6m1_3m best12. ;
	format sub_6m2_3m best12. ;
	format sub_6m3_3m best12. ;
	format sub_6m4_3m best12. ;
	format sub_6m5_3m best12. ;
	format sub_6m6_3m best12. ;
	format sub_6m7_3m best12. ;
	format sub_6m8_3m best12. ;
	format sub_6m9_3m best12. ;
	format sub_6m10_3m best12. ;
	format sub_6m11_3m best12. ;
	format sub_6m12_3m best12. ;
	format sub_6m13_3m best12. ;
	format sub_6m14_3m best12. ;
	format sub_6m15_3m best12. ;
	format sub_6m16_3m best12. ;
	format sub_6m17_3m best12. ;
	format sub_6m18_3m best12. ;
	format sub_6m19_3m best12. ;
	format sub_6m20_3m best12. ;
	format sub_6m21_3m best12. ;
	format sub_6m22_3m best12. ;
	format sub_6m23_3m best12. ;
	format sub_6m24_3m best12. ;
	format sub_6m25_3m best12. ;
	format sub_6m26_3m best12. ;
	format sub_6m27_3m best12. ;
	format sub_frq1m_3m $500. ;
	format sub_idu1m_her_3m best12. ;
	format sub_idu1m_her_frq_3m $500. ;
	format sub_idu1m_her_frqm_3m best12. ;
	format sub_1m_her_3m best12. ;
	format sub_1m_her_frq_3m $500. ;
	format sub_1m_fent_frq_3m $500. ;
	format sub_1m_her_frqm_3m best12. ;
	format sub_1m_fent_3m best12. ;
	format sub_1m_fent_frqm_3m best12. ;
	format sub_idu1m_cp_3m best12. ;
	format sub_idu1m_cp_frq_3m $500. ;
	format sub_idu1m_cp_frqm_3m best12. ;
	format sub_idu1m_cc_3m best12. ;
	format sub_idu1m_cc_frq_3m $500. ;
	format sub_idu1m_cc_frqm_3m best12. ;
	format sub_1m_cp_3m best12. ;
	format sub_1m_cp_frq_3m $500. ;
	format sub_1m_cp_frqm_3m best12. ;
	format sub_1m_cc_3m best12. ;
	format sub_1m_cc_frq_3m $500. ;
	format sub_1m_cc_frqm_3m best12. ;
	format sub_1m_cs_3m best12. ;
	format sub_1m_cs_frq_3m $500. ;
	format sub_1m_cs_frqm_3m best12. ;
	format sub_idu1m_sb_3m best12. ;
	format sub_idu1m_sb_frq_3m $500. ;
	format sub_idu1m_sb_frqm_3m best12. ;
	format sub_idu1m_sox_3m best12. ;
	format sub_idu1m_sox_frq_3m $500. ;
	format sub_idu1m_sox_frqm_3m $500. ;
	format sub_1m_sox_3m best12. ;
	format sub_1m_sox_frq_3m $500. ;
	format sub_1m_sox_frqm_3m $500. ;
	format sub_idu1m_meth_3m best12. ;
	format sub_idu1m_meth_frq_3m $500. ;
	format sub_idu1m_meth_frqm_3m $500. ;
	format sub_1m_meth_3m best12. ;
	format sub_1m_meth_frq_3m $500. ;
	format sub_1m_meth_frqm_3m $500. ;
	format sub_idu1m_aph_3m best12. ;
	format sub_idu1m_aph_frq_3m $500. ;
	format sub_idu1m_aph_frqm_3m best12. ;
	format sub_1m_aph_3m best12. ;
	format sub_1m_aph_frq_3m $500. ;
	format sub_1m_aph_frqm_3m best12. ;
	format sub_idu1m_barb_3m best12. ;
	format sub_idu1m_barb_frq_3m $500. ;
	format sub_idu1m_barb_frqm_3m best12. ;
	format sub_1m_barb_3m best12. ;
	format sub_1m_barb_frq_3m $500. ;
	format sub_1m_barb_frqm_3m best12. ;
	format sub_idu1m_traq_3m best12. ;
	format sub_idu1m_traq_frq_3m $500. ;
	format sub_idu1m_traq_frqm_3m best12. ;
	format sub_1m_traq_3m best12. ;
	format sub_1m_traq_frq_3m $500. ;
	format sub_1m_traq_frqm_3m best12. ;
	format sub_1m_marj_3m best12. ;
	format sub_1m_marj_frq_3m $500. ;
	format sub_1m_marj_frqm_3m best12. ;
	format sub_idu1m_psy_3m best12. ;
	format sub_idu1m_psy_frq_3m $500. ;
	format sub_idu1m_psy_frqm_3m best12. ;
	format sub_1m_psy_3m best12. ;
	format sub_1m_psy_frq_3m $500. ;
	format sub_1m_psy_frqm_3m best12. ;
	format sub_idu6m_oop_3m $500. ;
	format sub_idu6m_oop_frq_3m $500. ;
	format sub_idu1m_oop_3m best12. ;
	format sub_idu1m_oop_frq_3m $500. ;
	format sub_idu1m_oop_frqm1_3m $500. ;
	format sub_idu1m_oop_frqm2_3m best12. ;
	format sub_idu1m_oop_fit_3m best12. ;
	format sub_idu1m_oop_fit1_3m best12. ;
	format sub_idu1m_oop_fit2_3m best12. ;
	format sub_idu1m_oop_lo_3m best12. ;
	format sub_idu1m_oop_lo1_3m best12. ;
	format sub_idu1m_oop_lo2_3m best12. ;
	format sub_6m_oop_3m $500. ;
	format sub_6m_oop_frq_3m $500. ;
	format sub_1m_oop_3m best12. ;
	format sub_1m_oop_frq_3m $500. ;
	format sub_1m_oop_frqm1_3m $500. ;
	format sub_1m_oop_frqm2_3m best12. ;
	format sub_idu6m_om_3m $500. ;
	format sub_idu1m_om_3m best12. ;
	format sub_idu1m_om_frq_3m $500. ;
	format sub_idu1m_om_frqm_3m best12. ;
	format sub_6m_om_3m $500. ;
	format sub_1m_om_3m best12. ;
	format sub_1m_om_frq_3m $500. ;
	format sub_1m_om_frqm_3m best12. ;
	format sub_idu6m_ot_3m best12. ;
	format sub_idu6m_ott_3m $500. ;
	format sub_idu1m_ot_3m best12. ;
	format sub_idu1m_ot_frq_3m $500. ;
	format sub_idu1m_ot_frqm_3m best12. ;
	format sub_nidu6m_ot_3m best12. ;
	format sub_nidu6m_ot_non_3m $500. ;
	format sub_nidu1m_ot_3m best12. ;
	format sub_nidu1m_ot_frq_3m $500. ;
	format sub_nidu1m_ot_frqm_3m best12. ;
	format idu_3m best12. ;
	format idu_6mplc1_3m $500. ;
	format idu_6mplc2_3m___0 best12. ;
	format idu_6mplc2_3m___1 best12. ;
	format idu_6mplc2_3m___2 best12. ;
	format idu_6mplc2_3m___3 best12. ;
	format idu_6mplc2_3m___4 best12. ;
	format idu_6mplc2_3m___5 best12. ;
	format idu_6mplc2_3m___6 best12. ;
	format idu_6mplc2_3m___7 best12. ;
	format idu_6mplc2_3m___8 best12. ;
	format idu_6mplc2_3m___9 best12. ;
	format idu_6mplc2_3m___10 best12. ;
	format idu_6mplc2_3m___11 best12. ;
	format idu_6mplc2_ot_3m $500. ;
	format idu_plc_3m best12. ;
	format idu_1m_day_3m best12. ;
	format idu_frq_pday_3m $500. ;
	format idu_2m_day_3m best12. ;
	format idu_3m_day_3m best12. ;
	format idu_ru_6m_3m best12. ;
	format idu_hi_6m_3m best12. ;
	format sidu_header4_3m best12. ;
	format idu_frq_3m best12. ;
	format idu_frq_c_3m $500. ;
	format idu_stp_3m_ob_3m best12. ;
	format idu_stp_3m3_3m best12. ;
	format idu_stp_3m3_vb_3m___0 best12. ;
	format idu_stp_3m3_vb_3m___1 best12. ;
	format idu_stp_3m3_v_3m $500. ;
	format idu_stp_3m3_b_3m $500. ;
	format idu_stp_3m2_3m best12. ;
	format idu_stp_3m2_vb_3m___0 best12. ;
	format idu_stp_3m2_vb_3m___1 best12. ;
	format idu_stp_3m2_v_3m $500. ;
	format idu_stp_3m2_b_3m $500. ;
	format idu_stp_3m1_3m best12. ;
	format idu_stp_3m1_vb_3m___0 best12. ;
	format idu_stp_3m1_vb_3m___1 best12. ;
	format idu_stp_3m1_v_3m $500. ;
	format idu_stp_3m1_b_3m $500. ;
	format idu_6mrec01_3m best12. ;
	format idu_6mrec02_3m best12. ;
	format idu_6mrec03_3m best12. ;
	format idu_6mrec04_3m best12. ;
	format idu_6mrec05_3m best12. ;
	format idu_6mrec06_3m best12. ;
	format idu_6mrec07_3m best12. ;
	format idu_6mrec08_3m best12. ;
	format idu_6mrec09_3m best12. ;
	format idu_6mrec10_3m best12. ;
	format idu_6mrec11_3m best12. ;
	format idu_6mrec12_3m best12. ;
	format idu_6mrec13_3m best12. ;
	format idu_6mrec14_3m best12. ;
	format idu_6mrec15_3m best12. ;
	format idu_6mrec16_3m best12. ;
	format idu_6mrec17_3m best12. ;
	format idu_6mrec18_3m best12. ;
	format idu_6mrec19_3m best12. ;
	format idu_6mrec19_ot_2_3m $500. ;
	format idu_6mrec01_us_3m best12. ;
	format idu_6mrec05_us_3m best12. ;
	format idu_6mrec06_us_3m best12. ;
	format idu_6mrec07_us_3m best12. ;
	format idu_6mrec08_us_3m best12. ;
	format idu_6mrec09_us_3m best12. ;
	format idu_6mrec10_us_3m best12. ;
	format idu_6mrec11_us_3m best12. ;
	format idu_6mrec13_us_3m best12. ;
	format idu_6mrec14_us_3m best12. ;
	format idu_6mrec15_us_3m best12. ;
	format idu_6mrec18_us_3m best12. ;
	format idu_6mrec19_us_3m best12. ;
	format idu_6mrec19_ot_3m $500. ;
	format idu_6mrecp01_3m $500. ;
	format idu_6mrecp01_us_3m $500. ;
	format idu_6mrecp02_3m $500. ;
	format idu_6mrecp03_3m $500. ;
	format idu_6mrecp04_3m $500. ;
	format idu_6mrecp05_3m $500. ;
	format idu_6mrecp06_3m $500. ;
	format idu_6mrecp07_3m $500. ;
	format idu_6mrecp08_3m $500. ;
	format idu_6mrecp09_3m $500. ;
	format idu_6mrecp09_us_3m $500. ;
	format idu_6mrecp10_3m $500. ;
	format idu_6mrecp11_3m $500. ;
	format idu_6mrecp12_3m $500. ;
	format idu_6mrecp13_3m $500. ;
	format idu_6mrecp14_3m $500. ;
	format idu_6mrecp15_3m $500. ;
	format idu_6mrecp16_3m $500. ;
	format idu_6mrecp17_3m $500. ;
	format idu_6mrecp18_3m $500. ;
	format idu_6mrecp19_3m $500. ;
	format idu_6mnum_3m $500. ;
	format idu_6mnum_my_3m $500. ;
	format idu_6mnum_ot_3m $500. ;
	format idu_6mkit_3m $500. ;
	format idu_6mkit_calc_3m best12. ;
	format idu_6mkit_my_3m $500. ;
	format idu_6mkit_ot_3m $500. ;
	format idu_6msrg_3m $500. ;
	format idu_6msrg_my_3m $500. ;
	format idu_6msrg_ot_3m $500. ;
	format sdu_srg_3m best12. ;
	format sdu_srg_tim_3m $500. ;
	format sdu_srg_6m_frq_3m best12. ;
	format sdu_srg_6m_pp_3m $500. ;
	format sdu_srg_6m_ppw_3m___0 best12. ;
	format sdu_srg_6m_ppw_3m___1 best12. ;
	format sdu_srg_6m_ppw_3m___2 best12. ;
	format sdu_srg_6m_ppw_3m___3 best12. ;
	format sdu_srg_6m_ppw_3m___4 best12. ;
	format sdu_srg_6m_ppw_3m___5 best12. ;
	format sdu_srg_6m_ppw_3m___6 best12. ;
	format sdu_srg_6m_ppw_3m___7 best12. ;
	format sdu_srg_6m_ppw_3m___8 best12. ;
	format sdu_srg_6m_ppw_3m___9 best12. ;
	format sdu_srg_6m_ppw_3m___10 best12. ;
	format sdu_srg_6m_ppw_ot_3m $500. ;
	format sdu_srg_6m_ppwm_3m best12. ;
	format sdu_srg_pp_3m $500. ;
	format sdu_wrk_3m best12. ;
	format sdu_wrk_tim_3m $500. ;
	format sdu_wrk_6m_frq_3m best12. ;
	format sdu_wrk_6m_pp_3m $500. ;
	format sdu_wrk_6m_ppw_3m___0 best12. ;
	format sdu_wrk_6m_ppw_3m___1 best12. ;
	format sdu_wrk_6m_ppw_3m___2 best12. ;
	format sdu_wrk_6m_ppw_3m___3 best12. ;
	format sdu_wrk_6m_ppw_3m___4 best12. ;
	format sdu_wrk_6m_ppw_3m___5 best12. ;
	format sdu_wrk_6m_ppw_3m___6 best12. ;
	format sdu_wrk_6m_ppw_3m___7 best12. ;
	format sdu_wrk_6m_ppw_3m___8 best12. ;
	format sdu_wrk_6m_ppw_3m___9 best12. ;
	format sdu_wrk_6m_ppw_3m___10 best12. ;
	format sdu_wrk_6m_ppw_ot_3m $500. ;
	format sdu_wrk_6m_ppwm_3m best12. ;
	format sdu_wrk_pp_3m $500. ;
	format sdu_srg_hiv_3m best12. ;
	format sdu_srg_hcv_3m best12. ;
	format sdu_wrk_hiv_3m best12. ;
	format sdu_wrk_hcv_3m best12. ;
	format sdu_tgtr_3m best12. ;
	format bpi_evr_3m best12. ;
	format bpi_plc_3m___1 best12. ;
	format bpi_plc_3m___2 best12. ;
	format bpi_plc_3m___3 best12. ;
	format bpi_plc_3m___4 best12. ;
	format bpi_plc_3m___5 best12. ;
	format bpi_plc_3m___6 best12. ;
	format bpi_plc_3m___7 best12. ;
	format bpi_plc_3m___8 best12. ;
	format bpi_plc_3m___9 best12. ;
	format bpi_plc_3m___10 best12. ;
	format bpi_plc_3m___11 best12. ;
	format bpi_plc_ot_3m $500. ;
	format bpi_plc_w_3m best12. ;
	format bpi_plc_l_3m best12. ;
	format bpi_plc_m_3m best12. ;
	format bpi_plc_now_3m best12. ;
	format bpi_med_3m $500. ;
	format bpi_med_p_3m best12. ;
	format bpi_1_3m best12. ;
	format bpi_2_3m best12. ;
	format bpi_3_3m best12. ;
	format bpi_4_3m best12. ;
	format bpi_5_3m best12. ;
	format bpi_6_3m best12. ;
	format bpi_7_3m best12. ;
	format hfs_1_3m best12. ;
	format hfs_1a_3m best12. ;
	format hfs_2_3m best12. ;
	format hfs_2a_3m best12. ;
	format hfs_3_3m best12. ;
	format hfs_3a_3m best12. ;
	format hfs_4_3m best12. ;
	format hfs_4a_3m best12. ;
	format hfs_5_3m best12. ;
	format hfs_5a_3m best12. ;
	format hfs_6_3m best12. ;
	format hfs_6a_3m best12. ;
	format hfs_7_3m best12. ;
	format hfs_7a_3m best12. ;
	format hfs_8_3m best12. ;
	format hfs_8a_3m best12. ;
	format hfs_9_3m best12. ;
	format hfs_9a_3m best12. ;
	format cla_1_3m best12. ;
	format cla_1a_3m best12. ;
	format cla_1a_cad_3m $500. ;
	format cla_1a_usd_3m $500. ;
	format cla_2_3m best12. ;
	format cla_2a_3m $500. ;
	format cla_3c_3m best12. ;
	format cla_3d_3m best12. ;
	format cla_3e_3m best12. ;
	format cla_4c_3m best12. ;
	format cla_4d_3m best12. ;
	format cla_4e_3m best12. ;
	format cla_5c_3m best12. ;
	format cla_5d_3m best12. ;
	format cla_5e_3m best12. ;
	format cla_6c_3m best12. ;
	format cla_6d_3m best12. ;
	format cla_6e_3m best12. ;
	format cla_7c_3m best12. ;
	format cla_7d_3m best12. ;
	format cla_7e_3m best12. ;
	format cla_8c_3m best12. ;
	format cla_8d_3m best12. ;
	format cla_8e_3m best12. ;
	format cla_9c_3m best12. ;
	format cla_9d_3m best12. ;
	format cla_9e_3m best12. ;
	format cla_10c_3m best12. ;
	format cla_10d_3m best12. ;
	format cla_10e_3m best12. ;
	format cla_11c_3m best12. ;
	format cla_11d_3m best12. ;
	format cla_11e_3m best12. ;
	format cla_12c_3m best12. ;
	format cla_12d_3m best12. ;
	format cla_12e_3m best12. ;
	format cla_13c_3m best12. ;
	format cla_13d_3m best12. ;
	format cla_13e_3m best12. ;
	format cla_14c_3m best12. ;
	format cla_14d_3m best12. ;
	format cla_14e_3m best12. ;
	format cla_15c_3m best12. ;
	format cla_15d_3m best12. ;
	format cla_15e_3m best12. ;
	format cla_16c_3m best12. ;
	format cla_16d_3m best12. ;
	format cla_16e_3m best12. ;
	format cla_17c_3m best12. ;
	format cla_17d_3m best12. ;
	format cla_17e_3m best12. ;
	format cla_18c_3m best12. ;
	format cla_18d_3m best12. ;
	format cla_18e_3m best12. ;
	format cla_20c_3m best12. ;
	format cla_20d_3m best12. ;
	format cla_20e_3m best12. ;
	format cla_22c_3m best12. ;
	format cla_22d_3m best12. ;
	format cla_22e_3m best12. ;
	format cla_23c_3m best12. ;
	format cla_23d_3m best12. ;
	format cla_23e_3m best12. ;
	format cla_24c_3m best12. ;
	format cla_24d_3m best12. ;
	format cla_24e_3m best12. ;
	format cla_25a_3m best12. ;
	format cla_25b_3m best12. ;
	format cla_25c_3m $500. ;
	format cla_25d_3m___0 best12. ;
	format cla_25d_3m___1 best12. ;
	format cla_25d_3m___2 best12. ;
	format cla_25d_3m___3 best12. ;
	format cla_25d_3m___4 best12. ;
	format cla_25d_3m___5 best12. ;
	format cla_25d_3m___6 best12. ;
	format cla_25d_3m___7 best12. ;
	format cla_25d_3m___8 best12. ;
	format cla_25d_3m___9 best12. ;
	format cla_25d_3m___10 best12. ;
	format cla_25d_3m___11 best12. ;
	format cla_25d_3m___12 best12. ;
	format cla_25d_3m___13 best12. ;
	format cla_25d_3m___14 best12. ;
	format cla_25d_3m___15 best12. ;
	format cla_25d_3m___16 best12. ;
	format cla_25d_3m___17 best12. ;
	format cla_25d_3m___18 best12. ;
	format cla_25d_3m___19 best12. ;
	format cla_25d_3m___20 best12. ;
	format cla_25d_3m___21 best12. ;
	format cla_25e_3m $500. ;
	format cla_26a_3m best12. ;
	format cla_26b_3m $500. ;
	format cla_26d_3m best12. ;
	format cla_26e_3m best12. ;
	format cla_26f_3m best12. ;
	format nms_er_3m best12. ;
	format nms_er_frq_3m best12. ;
	format nms_hsp_3m best12. ;
	format nms_hps_frq_3m best12. ;
	format nms_hps_nigt_3m best12. ;
	format nms_hps_drg_3m best12. ;
	format nms_hps_drg_frq_3m best12. ;
	format nms_hps_drg_nigt_3m best12. ;
	format nms_otp_3m best12. ;
	format nms_otp_frq_3m best12. ;
	format nms_rsd_3m best12. ;
	format nms_rsd_frq_3m best12. ;
	format nms_rsd_nigt_3m best12. ;
	format nms_auc_3m best12. ;
	format nms_auc_frq_3m best12. ;
	format nms_auc_med_3m___0 best12. ;
	format nms_auc_med_3m___1 best12. ;
	format nms_auc_med_3m___2 best12. ;
	format nms_auc_med_3m___3 best12. ;
	format nms_auc_med_3m___4 best12. ;
	format nms_auc_med_ot_3m $500. ;
	format nms_auc_med_dos_3m $500. ;
	format nms_opd_3m best12. ;
	format nms_opd_frq_3m best12. ;
	format nms_opd_med_3m___0 best12. ;
	format nms_opd_med_3m___1 best12. ;
	format nms_opd_med_3m___2 best12. ;
	format nms_opd_med_3m___3 best12. ;
	format nms_opd_med_3m___4 best12. ;
	format nms_opd_med_3m___5 best12. ;
	format nms_opd_med_3m___6 best12. ;
	format nms_opd_med_ot_3m $500. ;
	format nms_opd_med_dos_3m $500. ;
	format nms_mnt_3m best12. ;
	format nms_mnt_med_3m $500. ;
	format nms_mnt_frq_3m best12. ;
	format nms_mnt_dos_3m $500. ;
	format nms_trp_3m best12. ;
	format nms_trp_frq01_3m best12. ;
	format nms_trp_frq02_3m $500. ;
	format nms_xxx_3m___1 best12. ;
	format nms_xxx_3m___2 best12. ;
	format nms_xxx_3m___3 best12. ;
	format nms_xxx_3m___4 best12. ;
	format nms_xxx_3m___5 best12. ;
	format nms_xxx_3m___999 best12. ;
	format nms_mdo_3m best12. ;
	format nms_mod_frq_3m best12. ;
	format nms_mod_frq_doc_3m best12. ;
	format nms_cost_3m best12. ;
	format nms_cost_cad_3m $500. ;
	format nms_cost_usd_3m $500. ;
	format nms_inc_3m best12. ;
	format nms_inc_cad_3m $500. ;
	format nms_inc_usd_3m $500. ;
	format nms_emp_3m best12. ;
	format nms_ocu_3m $500. ;
	format nms_emp_frq_3m best12. ;
	format nms_emp_inc_3m best12. ;
	format nms_emp_cad_3m $500. ;
	format nms_emp_usd_3m $500. ;
	format nms_emp_ben_3m best12. ;
	format nms_emp_bend_3m $500. ;
	format nms_otinc_3m best12. ;
	format nms_otinc_cad_3m $500. ;
	format nms_otinc_usd_3m $500. ;
	format nms_edu_3m best12. ;
	format nms_edu_cr_3m best12. ;
	format nms_edu_ful_3m best12. ;
	format nms_hc_3m best12. ;
	format nms_hc01_3m best12. ;
	format nms_hc02_3m best12. ;
	format nms_hc03_3m best12. ;
	format nms_hc04_3m best12. ;
	format nms_qul_3m best12. ;
	format nms_oul_frq_3m best12. ;
	format srb_age_3m best12. ;
	format srb_3m_prst_3m best12. ;
	format srb_prst_tim_3m yymmdd10. ;
	format srb_prst01_3m best12. ;
	format srb_prst02_3m best12. ;
	format srb_prst03_3m best12. ;
	format srb_prst04_3m best12. ;
	format srb_prst05_3m best12. ;
	format srb_prst_stp_3m yymmdd10. ;
	format srb_3m_3m best12. ;
	format srb_3m_sxp_3m best12. ;
	format srb_3m_sxp_f_3m best12. ;
	format srb_3m_sxp_m_3m best12. ;
	format srb_3m_f_3m best12. ;
	format srb_3m_f_sxp_3m best12. ;
	format srb_3m_f_sxp_p_3m best12. ;
	format srb_3m_f_sxp_pidu_3m best12. ;
	format srb_3m_f_sxp_np_3m best12. ;
	format srb_3m_f_sxp_npidu_3m $500. ;
	format srb_3m_f_sxp_c_3m $500. ;
	format srb_3m_f_sxp_cidu_3m best12. ;
	format srb_3m_f_sxp_mc_3m best12. ;
	format srb_3m_f_sxp_mcidu_3m best12. ;
	format srb_1m_f_3m best12. ;
	format srb_1m_fc_pv_3m best12. ;
	format srb_1m_fc_po_3m best12. ;
	format srb_1m_fc_pa_3m best12. ;
	format srb_1m_fc_npv_3m best12. ;
	format srb_1m_fc_npo_3m best12. ;
	format srb_1m_fc_npa_3m best12. ;
	format srb_1m_fc_cv_3m best12. ;
	format srb_1m_fc_co_3m best12. ;
	format srb_1m_fc_ca_3m best12. ;
	format srb_1m_fc_mcv_3m best12. ;
	format srb_1m_fc_mco_3m best12. ;
	format srb_1m_fc_mca_3m best12. ;
	format srb_1m_f_hiv_3m best12. ;
	format srb_1m_fc_hiv_3m best12. ;
	format srb_1m_f_hcv_3m best12. ;
	format srb_1m_fc_hcv_3m best12. ;
	format srb_1m_f_drg_cc_3m best12. ;
	format srb_1m_f_drg_hro_3m best12. ;
	format srb_1m_f_drg_main_3m best12. ;
	format srb_1m_f_drg_aph_3m best12. ;
	format srb_1m_f_drg_psy_3m best12. ;
	format srb_1m_f_drg_ot_3m $500. ;
	format srb_3m_m_3m best12. ;
	format srb_3m_m_sxp_3m best12. ;
	format srb_3m_m_sxp_p_3m best12. ;
	format srb_3m_m_sxp_pidu_3m $500. ;
	format srb_3m_m_sxp_np_3m best12. ;
	format srb_3m_m_sxp_npidu_3m best12. ;
	format srb_3m_m_sxp_c_3m best12. ;
	format srb_3m_m_sxp_cidu_3m best12. ;
	format srb_3m_m_sxp_mc_3m best12. ;
	format srb_3m_m_sxp_mcidu_3m best12. ;
	format srb_1m_m_3m best12. ;
	format srb_1m_mc_pv_3m best12. ;
	format srb_1m_mc_po_3m best12. ;
	format srb_1m_mc_pa_3m best12. ;
	format srb_1m_mc_npv_3m best12. ;
	format srb_1m_mc_npo_3m best12. ;
	format srb_1m_mc_npa_3m best12. ;
	format srb_1m_mc_cv_3m best12. ;
	format srb_1m_mc_co_3m best12. ;
	format srb_1m_mc_ca_3m best12. ;
	format srb_1m_mc_mcv_3m best12. ;
	format srb_1m_mc_mco_3m best12. ;
	format srb_1m_mc_mca_3m best12. ;
	format srb_1m_m_hiv_3m best12. ;
	format sbr_1m_m_drg_ot_3m $500. ;
	format srb_1m_mc_hiv_3m best12. ;
	format srb_1m_m_hcv_3m best12. ;
	format srb_1m_mc_hcv_3m best12. ;
	format srb_1m_m_drg_cc_3m best12. ;
	format srb_1m_m_drg_hro_3m best12. ;
	format srb_1m_m_drg_main_3m best12. ;
	format srb_1m_m_drg_aph_3m best12. ;
	format srb_1m_m_drg_psy_3m best12. ;
	format bsi_3m_1 best12. ;
	format bsi_3m_2 best12. ;
	format bsi_3m_3 best12. ;
	format bsi_3m_4 best12. ;
	format bsi_3m_5 best12. ;
	format bsi_3m_6 best12. ;
	format bsi_3m_7 best12. ;
	format bsi_3m_8 best12. ;
	format bsi_3m_9 best12. ;
	format bsi_3m_10 best12. ;
	format bsi_3m_11 best12. ;
	format bsi_3m_12 best12. ;
	format bsi_3m_13 best12. ;
	format bsi_3m_14 best12. ;
	format bsi_3m_15 best12. ;
	format bsi_3m_16 best12. ;
	format bsi_3m_17 best12. ;
	format bsi_3m_18 best12. ;
	format followup_3m_complete best12. ;
	format followup_3m_eis_cpe__v_6 $500. ;
	format eis_status_3m best12. ;
	format eis_1_3m best12. ;
	format eis_2_3m best12. ;
	format eis_3_3m best12. ;
	format eis_4_3m best12. ;
	format eis_5_3m best12. ;
	format eis_6_3m best12. ;
	format eis_7_3m best12. ;
	format eis_8_3m best12. ;
	format eis_9_3m best12. ;
	format eis_10_3m best12. ;
	format eis_11_3m best12. ;
	format eis_12_3m best12. ;
	format eis_13_3m best12. ;
	format eis_14_3m best12. ;
	format eis_15_3m best12. ;
	format eis_16_3m best12. ;
	format eis_17_3m best12. ;
	format eis_18_3m best12. ;
	format eis_19_3m best12. ;
	format eis_20_3m best12. ;
	format eis_21_3m best12. ;
	format eis_22_3m best12. ;
	format cpe_1_3m best12. ;
	format cpe_2_3m best12. ;
	format cpe_3_3m best12. ;
	format cpe_4_3m best12. ;
	format cce_1_3m best12. ;
	format cce_2_3m best12. ;
	format cce_3_3m best12. ;
	format cce_4_3m best12. ;
	format followup_3m_eis_cpe__v_7 best12. ;
	format followup_3m_adh2_4_timestamp $500. ;
	format adh2_visitdate yymmdd10. ;
	format prep_prescribe best12. ;
	format adh_prep best12. ;
	format stop_prep best12. ;
	format prep_last4week best12. ;
	format prep_now best12. ;
	format prep_misspercent best12. ;
	format prep_missdose best12. ;
	format adh2_noncompliance___1 best12. ;
	format adh2_noncompliance___2 best12. ;
	format adh2_noncompliance___3 best12. ;
	format adh2_noncompliance___4 best12. ;
	format adh2_noncompliance___5 best12. ;
	format adh2_noncompliance___6 best12. ;
	format adh2_noncompliance___7 best12. ;
	format adh2_noncompliance___8 best12. ;
	format adh2_noncompliance___9 best12. ;
	format adh2_noncompliance___10 best12. ;
	format adh2_noncompliance___11 best12. ;
	format adh2_noncompliance___12 best12. ;
	format adh2_noncompliance___13 best12. ;
	format adh2_noncompliance___14 best12. ;
	format adh2_noncompliance___15 best12. ;
	format adh2_noncompliance___16 best12. ;
	format adh2_noncompliance___17 best12. ;
	format adh2_noncomplyspec $500. ;
	format adh2_prepchange best12. ;
	format adh2_changprepspec $500. ;
	format adh2_newprepdateprescr yymmdd10. ;
	format adh2_newprepdateingest yymmdd10. ;
	format adh_hcv best12. ;
	format adh4_hcvchange best12. ;
	format adh4_changhcvspec $500. ;
	format adh4_newhcvdateprescr yymmdd10. ;
	format adh4_newhcvdateingest yymmdd10. ;
	format adh4_noncompliance___1 best12. ;
	format adh4_noncompliance___2 best12. ;
	format adh4_noncompliance___3 best12. ;
	format adh4_noncompliance___4 best12. ;
	format adh4_noncompliance___5 best12. ;
	format adh4_noncompliance___6 best12. ;
	format adh4_noncompliance___7 best12. ;
	format adh4_noncompliance___8 best12. ;
	format adh4_noncompliance___9 best12. ;
	format adh4_noncompliance___10 best12. ;
	format adh4_noncompliance___11 best12. ;
	format adh4_noncompliance___12 best12. ;
	format adh4_noncompliance___13 best12. ;
	format adh4_noncompliance___14 best12. ;
	format adh4_noncompliance___15 best12. ;
	format adh4_noncompliance___16 best12. ;
	format adh4_noncompliance___17 best12. ;
	format adh4_noncomplyspec $500. ;
	format adh4_nopillslastpresc $500. ;
	format adh4_nopillsleft $500. ;
	format followup_3m_adh2_4_complete best12. ;
	format followup_6m_timestamp $500. ;
	format idu_cnty_6m best12. ;
	format auc_1_6m best12. ;
	format auc_2_6m best12. ;
	format auc_11_6m best12. ;
	format auc_12_6m best12. ;
	format auc_3_6m best12. ;
	format auc_4_6m best12. ;
	format auc_5_6m best12. ;
	format auc_6_6m best12. ;
	format auc_7_6m best12. ;
	format auc_8_6m best12. ;
	format auc_9_6m best12. ;
	format auc_10_6m best12. ;
	format dst_1_6m best12. ;
	format dst_2_6m best12. ;
	format dst_3_6m best12. ;
	format dst_4_6m best12. ;
	format dst_5_6m best12. ;
	format dst_6_6m best12. ;
	format dst_7_6m best12. ;
	format dst_8_6m best12. ;
	format dst_9_6m best12. ;
	format dst_10_6m best12. ;
	format odu_6m_6m best12. ;
	format odu_6m_frq_6m best12. ;
	format odu_6m_frq_acdt_6m best12. ;
	format odu_6m_tim_6m yymmdd10. ;
	format odu_6m_tim_acdt_6m best12. ;
	format aiv_6m_pa_6m best12. ;
	format aiv_6m_pa_sp_6m best12. ;
	format aiv_6m_sex_6m best12. ;
	format aiv_6m_sex_sp_6m best12. ;
	format aiv_6m_sp_vio_6m best12. ;
	format aiv_6m_sp_brc_6m best12. ;
	format aiv_6m_sp_ctl_6m best12. ;
	format act_1_6m best12. ;
	format act_2_6m best12. ;
	format act_3_6m best12. ;
	format act_4_6m best12. ;
	format act_5_6m best12. ;
	format act_6_6m best12. ;
	format cdu_1_6m best12. ;
	format cdu_2_6m best12. ;
	format cdu_3_6m best12. ;
	format cdu_4_6m best12. ;
	format cdu_5_6m best12. ;
	format cdu_6_6m best12. ;
	format cdu_7_6m best12. ;
	format cdu_8_6m best12. ;
	format cdu_9_6m best12. ;
	format cdu_10_6m best12. ;
	format cdu_11_6m best12. ;
	format cdu_12_6m best12. ;
	format cdu_13_6m best12. ;
	format cdu_14_6m best12. ;
	format cdu_15_6m $500. ;
	format cdu_16_6m $500. ;
	format cdu_17_6m best12. ;
	format cdu_18_6m best12. ;
	format followup_6m_complete best12. ;
	format ac1 best12. ;
	format ac2 best12. ;
	format ac3 best12. ;
	format ac4 best12. ;
	format ac5 best12. ;
	format ac6 best12. ;
	format ac7 best12. ;
	format ac8 best12. ;
	format ac9 best12. ;
	format ac10 best12. ;
	format pns_1 best12. ;
	format pns_2 best12. ;
	format pns_3 best12. ;
	format pns_4 best12. ;
	format pns_5 best12. ;
	format pns_6 best12. ;
	format pns_7 best12. ;
	format pns_8 best12. ;
	format pns_9 best12. ;
	format pns_10 best12. ;
	format intervention_satisfa_v_8 best12. ;
	format scf_lastvisit yymmdd10. ;
	format scf_reasonend best12. ;
	format scf_reason_ltf $500. ;
	format scf_reason_date yymmdd10. ;
	format scf_other $500. ;
	format scf_comment $5000. ;
	format end_of_study_form_complete best12. ;
	format eom_date yymmdd10. ;
	format eom_whatmed___0 best12. ;
	format eom_whatmed___1 best12. ;
	format eom_whatmed___2 best12. ;
	format eom_whatmed_hcv $500. ;
	format eom_last_truvada yymmdd10. ;
	format eom_last_epc yymmdd10. ;
	format eom_last_ot yymmdd10. ;
	format eom_reason_truvada___0 best12. ;
	format eom_reason_truvada___1 best12. ;
	format eom_reason_truvada___2 best12. ;
	format eom_reason_truvada___3 best12. ;
	format eom_reason_truvada___4 best12. ;
	format eom_reason_truvada___5 best12. ;
	format eom_reason_truvada___6 best12. ;
	format eom_reason_truvada___7 best12. ;
	format eom_reason_truvada___8 best12. ;
	format eom_reason_truvada___9 best12. ;
	format eom_reason_truvada___10 best12. ;
	format eom_reason_truvada___11 best12. ;
	format eom_reason_truvada___12 best12. ;
	format eom_reason_truvada___13 best12. ;
	format eom_reason_truvada___14 best12. ;
	format eom_reason_truvada___15 best12. ;
	format eom_other $500. ;
	format eom_primreason___0 best12. ;
	format eom_primreason___1 best12. ;
	format eom_primreason___2 best12. ;
	format eom_primreason___3 best12. ;
	format eom_primreason___4 best12. ;
	format eom_primreason___5 best12. ;
	format eom_primreason___6 best12. ;
	format eom_primreason___7 best12. ;
	format eom_primreason___8 best12. ;
	format eom_primreason___9 best12. ;
	format eom_primreason___10 best12. ;
	format eom_primreason___11 best12. ;
	format eom_primreason___12 best12. ;
	format eom_primreason___13 best12. ;
	format eom_primreason___14 best12. ;
	format eom_primreason___15 best12. ;
	format eom_other2 $500. ;
	format eom_reason_hcv___0 best12. ;
	format eom_reason_hcv___1 best12. ;
	format eom_reason_hcv___2 best12. ;
	format eom_reason_hcv___3 best12. ;
	format eom_reason_hcv___4 best12. ;
	format eom_reason_hcv___5 best12. ;
	format eom_reason_hcv___6 best12. ;
	format eom_reason_hcv___7 best12. ;
	format eom_reason_hcv___8 best12. ;
	format eom_reason_hcv___9 best12. ;
	format eom_reason_hcv___10 best12. ;
	format eom_reason_hcv___11 best12. ;
	format eom_reason_hcv___12 best12. ;
	format eom_reason_hcv___13 best12. ;
	format eom_reason_hcv___14 best12. ;
	format eom_reason_hcv___15 best12. ;
	format eom_other3 $500. ;
	format end_of_medication_complete best12. ;
	format ae_describe $500. ;
	format ae_number best12. ;
	format ae_datereport yymmdd10. ;
	format ae_typereport___0 best12. ;
	format ae_typereport___1 best12. ;
	format ae_typereport___2 best12. ;
	format ae_od yymmdd10. ;
	format ae_guidelines best12. ;
	format ae_severity best12. ;
	format ae_expect best12. ;
	format ae_relation_med best12. ;
	format ae_treatment___0 best12. ;
	format ae_treatment___1 best12. ;
	format ae_treatment___2 best12. ;
	format ae_treatment___3 best12. ;
	format ae_treatment___4 best12. ;
	format ae_treatment___5 best12. ;
	format ae_other $500. ;
	format ae_treatment2 $5000. ;
	format ae_outcome best12. ;
	format ae_status yymmdd10. ;
	format smi_txarm best12. ;
	format smi_prepmed best12. ;
	format smi_specify_2 $500. ;
	format prep_disp best12. ;
	format smi_prep_start yymmdd10. ;
	format smi_prep_last $500. ;
	format smi_prep_action___0 best12. ;
	format smi_prep_action___1 best12. ;
	format smi_prep_action___2 best12. ;
	format smi_prep_action___3 best12. ;
	format smi_prep_action___4 best12. ;
	format smi_prep_action___5 best12. ;
	format smi_prep_action___6 best12. ;
	format smi_prep_action___7 best12. ;
	format smi_hcv best12. ;
	format smi_hcv_baseline best12. ;
	format smi_hcvmed best12. ;
	format smi_specify $500. ;
	format hcv_disp best12. ;
	format smi_hcv_start $500. ;
	format smi_hcv_last $500. ;
	format smi_action___0 best12. ;
	format smi_action___1 best12. ;
	format smi_action___2 best12. ;
	format smi_action___3 best12. ;
	format smi_action___4 best12. ;
	format smi_action___5 best12. ;
	format smi_action___6 best12. ;
	format smi_action___7 best12. ;
	format smi_describe $5000. ;
	format smi_by $500. ;
	format adverse_event_form_complete best12. ;
	format sae_number $500. ;
	format sae_date yymmdd10. ;
	format sae_type___0 best12. ;
	format sae_type___1 best12. ;
	format sae_type___2 best12. ;
	format sae_describe $500. ;
	format sae_onset yymmdd10. ;
	format sae_criteria___0 best12. ;
	format sae_criteria___1 best12. ;
	format sae_criteria___2 best12. ;
	format sae_criteria___3 best12. ;
	format sae_criteria___4 best12. ;
	format sae_criteria___5 best12. ;
	format sae_admission_date yymmdd10. ;
	format sae_discharge_date yymmdd10. ;
	format sae_severity best12. ;
	format sae_expect best12. ;
	format sae_related best12. ;
	format sae_rationale $500. ;
	format sae_outcome best12. ;
	format sae_resolution yymmdd10. ;
	format sae_death_date_2 yymmdd10. ;
	format sae_death_site yymmdd10. ;
	format sae_death_certificate best12. ;
	format sae_death_cause best12. ;
	format sae_other $500. ;
	format sae_information___0 best12. ;
	format sae_information___1 best12. ;
	format sae_information___2 best12. ;
	format sae_information___3 best12. ;
	format sae_information___4 best12. ;
	format sae_information___5 best12. ;
	format sae_other2 $500. ;
	format sae_death_autopsy best12. ;
	format sae_txarm best12. ;
	format sae_prepmed best12. ;
	format sae_specify_2 $500. ;
	format sae_prep_disp best12. ;
	format sae_prep_start yymmdd10. ;
	format sae_prep_end yymmdd10. ;
	format sae_action___0 best12. ;
	format sae_action___1 best12. ;
	format sae_action___2 best12. ;
	format sae_action___3 best12. ;
	format sae_action___4 best12. ;
	format sae_action___5 best12. ;
	format sae_action___6 best12. ;
	format sae_action___7 best12. ;
	format sae_prep_abate best12. ;
	format sae_prep_reappear best12. ;
	format sae_hcv best12. ;
	format sae_hcvmed best12. ;
	format sae_specify $500. ;
	format hcv_med_disp best12. ;
	format sae_hcv_start yymmdd10. ;
	format sae_hcv_end $500. ;
	format sae_hcv_abate best12. ;
	format sae_hcv_reappear best12. ;
	format sae_action_hcv___0 best12. ;
	format sae_action_hcv___1 best12. ;
	format sae_action_hcv___2 best12. ;
	format sae_action_hcv___3 best12. ;
	format sae_action_hcv___4 best12. ;
	format sae_action_hcv___5 best12. ;
	format sae_action_hcv___6 best12. ;
	format sae_action_hcv___7 best12. ;
	format sae_tx $500. ;
	format sae_add_action_hcv $500. ;
	format sae_med $5000. ;
	format sae_med_dose $5000. ;
	format sae_med_start $500. ;
	format sae_med_stop $500. ;
	format sae_ongoing best12. ;
	format sae_condition $5000. ;
	format sae_condition_start yymmdd10. ;
	format sae_condition_stop $500. ;
	format sae_ongoing_rmh best12. ;
	format sae_event_narrative $5000. ;
	format sae_initial $500. ;
	format serious_adverse_even_v_9 best12. ;
	format date_visit yymmdd10. ;
	format rmv best12. ;
	format com $5000. ;
	format missed_visit_form_complete best12. ;
	format medi_pres___1 best12. ;
	format medi_pres___2 best12. ;
	format medi_pres___3 best12. ;
	format medi_pres_ot $500. ;
	format pres_dose $500. ;
	format date_truvada yymmdd10. ;
	format date_epclusa yymmdd10. ;
	format date_other yymmdd10. ;
	format medi_dispense___1 best12. ;
	format medi_dispense___2 best12. ;
	format medi_dispense___3 best12. ;
	format date_truvada_disp yymmdd10. ;
	format date_epclusa_dis yymmdd10. ;
	format date_other_disp yymmdd10. ;
	format com_dose $5000. ;
	format treatment_initiation_complete best12. ;

input
	record_id $
	redcap_event_name $
	redcap_repeat_instrument $
	redcap_repeat_instance
	redcap_data_access_group $
	redcap_survey_identifier $
	languages_timestamp $
	id_paper
	languages
	languages_complete
	screening_timestamp $
	sdem_visit
	sdem_reside
	sdem_lang_mon
	sdem_lang_mia
	sdem_lang_mia_2
	sdem_age
	sdem_oat
	sdem_sev
	sdem_sev_no
	sdem_sex
	sdem_gender
	sdem_prg_c
	sdem_prg_c2
	sdem_prg_b
	sdem_brsf
	sdem_prg_ct18
	vcp_inject_6mo
	sdem_hiv_etst
	sdem_hiv_rtst_r
	sdem_prp_cu
	sdem_hcv
	sdem_hcv_fail
	sdem_wil_fol
	sdem_elig
	sdem_hcv_etst
	sdem_hcv_rtst
	sdem_hcv_rtst_r
	sdem_hcv_etst_w___0
	sdem_hcv_etst_w___1
	sdem_hcv_etst_w___2
	sdem_hcv_etst_w___3
	sdem_hcv_etst_w___4
	sdem_hcv_etst_w___5
	sdem_hcv_etst_w___6
	sdem_hcv_etst_w___7
	sdem_hcv_etst_w___8
	sdem_hcv_etst_w___9
	sdem_hcv_etst_w___10
	sdem_hcv_etst_w___11
	sdem_hcv_etst_w___12
	sdem_hcv_etst_w___13
	sdem_hcv_etst_w___14
	sdem_hcv_etst_w___15
	sdem_hcv_etst_w___16
	sdem_hiv_rtst
	shhr_hiv_etstw___0
	shhr_hiv_etstw___1
	shhr_hiv_etstw___2
	shhr_hiv_etstw___3
	shhr_hiv_etstw___4
	shhr_hiv_etstw___5
	shhr_hiv_etstw___6
	shhr_hiv_etstw___7
	shhr_hiv_etstw___8
	shhr_hiv_etstw___9
	shhr_hiv_etstw___10
	shhr_hiv_etstw___11
	shhr_hiv_etstw___12
	shhr_hiv_etstw___13
	shhr_hiv_etstw___14
	shhr_hiv_etstw___15
	shhr_hiv_etstw___16
	shhr_hiv_etstw___17
	shhr_hiv_etstw_ot $
	shhr_tst_cunt
	shhr_tst_fst $
	shhr_tstr_cunt
	shhr_ntst_r $
	shhr_tst_plc $
	shhr_tst_r
	shkq_1
	shkq_2
	shkq_3
	shkq_4
	shkq_5
	shkq_6
	shkq_7
	shkq_8
	shkq_9
	shkq_10
	shkq_11
	shkq_12
	preg_result
	scr_c_hcv_res
	insti
	sdem_slep6m
	sdem_slep6m_ot $
	sdem_live6m_hls
	sdem_live6m_shl1
	sdem_live6m_trs
	sdem_live6m_htl
	sdem_live6m_hiv
	sdem_live6m_sut
	sdem_live6m_shl2
	sdem_live6m_shl3
	sdem_live6m_shl4
	sdem_live6m_shl5
	sdem_fod_qul
	sdem_fod_frq
	sdem_ild
	sdem_ild_txt $
	sdem_idu
	sdem_idu_6m
	sdem_idu_tim
	sdem_idu6m___0
	sdem_idu6m___1
	sdem_idu6m___2
	sdem_idu6m___3
	sdem_idu6m___4
	sdem_idu6m___5
	sdem_idu6m___6
	sdem_idu6m___7
	shlt_r
	shlt_l
	shlt_f
	sdem_dis_hcv
	sdem_dis_hiv
	sdem_dis_sex
	sdem_dis_gay
	sdem_dis_race
	sdem_dis_sub
	result_insti_2
	sdem_int_evr
	sdem_int_elg
	sdem_int_elg_ot $
	sdem_int_chge $
	screening_complete
	vir_dbs
	vir_tbs
	vir_insti
	vir_rapid
	vir_rna2
	vir_rna2_val $
	vir_hcvgen $
	vir_pan_cd $
	vir_pan_cl $
	vir_pan_k $
	vir_pan_na $
	vir_pan_phos $
	vir_serum $
	vir_hbs
	vir_hbc
	vir_a
	vir_hav
	vir_cbc_wbc
	vir_cbc_rbc
	vir_cbc_hem
	vir_cbc_hem_2
	vir_cbc_mcv
	vir_cbc_mch
	vir_cbc_mchc
	vir_cbc_rdw
	vir_cbc_plat
	vir_cbc_mpv
	vir_cbc_neut
	vir_cbc_lym
	vir_cbc_mon
	vir_cbc_eos
	vir_cbc_baso
	vir_aspami $
	vir_alaami $
	vir_alkpho $
	vir_bili $
	vir_albumin $
	vir_inr $
	vir_bts $
	vir_ot $
	comment $
	screening_specific_c_v_0
	vt_dvs
	vt_tvs
	vt_bpm $
	vt_mmhg $
	vt_minute $
	vt_temp
	vt_f
	vt_c
	vt_height
	vt_in $
	vt_cm $
	vt_weight
	vt_lb $
	vt_kg $
	vt_cir
	vt_cir_in $
	vt_cir_cm $
	vital_signs_complete
	ec_fem_0_ps
	ec_fem_1_ps
	ec_fem_2_ps
	ec_fem_3_ps
	ec_exc_1_ps
	ec_exc_2_ps
	ec_exc_3_ps
	ec_exc_4_ps
	ec_exc_5_ps
	ec_exc_6_ps
	ec_exc_7_ps
	ec_exc_8_ps
	ec_exc_11_ps
	ec_exc_12_ps
	ec_sign_ps
	comment_elig2 $
	initial $
	physician_checklist_complete
	ur_test_bas___0
	ur_test_bas___1
	ur_test_bas___2
	result_upt_bas
	dbs_bas
	ct_bas___1
	ct_bas___2
	ct_bas___3
	ng_test_bas___1
	ng_test_bas___2
	ng_test_bas___3
	vir_ct_oral
	vir_ct_uro
	vir_ct_rec
	vir_ng_oral
	vir_ng_uro
	vir_ng_rec
	baseline_specific_co_v_1
	date_of_specimen_3m
	ur_test_bas_3m
	result_upt_bas_3m
	dbs_bas_3m
	ct_bas_3m___1
	ct_bas_3m___2
	ct_bas_3m___3
	ct_bas_3m___4
	ct_other_3m $
	ng_test_bas_3m___1
	ng_test_bas_3m___2
	ng_test_bas_3m___3
	ng_test_bas_3m___4
	chlamydia_other_2 $
	vir_ct_oral_3m
	vir_ct_uro_3m
	vir_ct_rec_3m
	vir_ng_oral_3m
	vir_ng_uro_3m
	vir_ng_rec_3m
	vir_ng_other_3m
	vir_ct_other_3m
	syphilis_3m
	hcv_status_3m
	hcv_ant_3m
	hcv_ant_res_3m
	hcv_notest_reason_3m $
	hcv_rna_quan_3m $
	hcv_geno_3m $
	hcv_rna_quan_12wkp_3m
	hcv_rna_quan_12wkp_3m_q
	hcv_rna_quan_12wkp_why_3m $
	hiv_ab_3m
	hiv_noanti_rea_3m $
	hbv_sur_ant_3m
	hbv_nop_rea_3m $
	serum_creatinine_3m $
	comments_3m $
	fu_specific_collecti_v_2
	baseline_timestamp $
	dem_visit
	idu_cnty
	dem_gender
	dem_gender_ot $
	dem_gender_t
	dem_gender_s
	dem_gender_id
	dem_gender_id_ot $
	dem_residence
	dem_race_hisp
	dem_aborig
	dem_indian1
	dem_indian2
	dem_indian3 $
	dem_race
	dem_race_ot $
	dem_ethnic $
	dem_trip_time
	dem_trip_trans
	dem_trip_ot $
	dem_edu
	dem_marital
	dem_employ
	dem_employ_ot $
	dem_hltins
	dem_hltins_can
	dem_hltins_t0
	dem_hltins_t1
	dem_hltins_t2
	dem_hltins_t3
	dem_hltins_t4
	dem_hltins_t5
	dem_hltins_t6
	dem_hltins_t7
	dem_hltins_t8
	dem_hltins_t9
	dem_hltins_t10
	dem_hltins_t11 $
	dem_hltins_t12 $
	dem_hltins_t13 $
	dem_hltins_t14
	dem_hltins_t15___0
	dem_hltins_t15___1
	dem_hltins_t15___2
	dem_hltins_t15___3
	dem_hltins_t15___4
	dem_hltins_t15___5
	dem_hltins_t16 $
	sub_ever___1
	sub_ever___2
	sub_ever___3
	sub_ever___4
	sub_ever___5
	sub_ever___6
	sub_ever___7
	sub_ever___8
	sub_ever___9
	sub_ever___10
	sub_ever___11
	sub_ever___12
	sub_ever___13
	sub_ever___14
	sub_ever___15
	sub_ever___16
	sub_ever___17
	sub_ever___18
	sub_ever___19
	sub_ever___20
	sub_ever___21
	sub_ever___22
	sub_ever___23
	sub_ever___24
	sub_ever___25
	sub_ever___26
	sub_ever___27
	sub_ever26_ot $
	sub_6m1
	sub_6m2
	sub_6m3
	sub_6m4
	sub_6m5
	sub_6m6
	sub_6m7
	sub_6m8
	sub_6m9
	sub_6m10
	sub_6m11
	sub_6m12
	sub_6m13
	sub_6m14
	sub_6m15
	sub_6m16
	sub_6m17
	sub_6m18
	sub_6m19
	sub_6m20
	sub_6m21
	sub_6m22
	sub_6m23
	sub_6m24
	sub_6m25
	sub_6m26
	sub_6m27
	sub_frq1m $
	sub_idu1m_her
	sub_idu1m_her_frq $
	sub_idu1m_her_frqm
	sub_1m_her
	sub_1m_her_frq $
	sub_1m_her_frqm
	sub_idu1m_cp
	sub_idu1m_cp_frq $
	sub_idu1m_cp_frqm
	sub_idu1m_fent
	sub_idu1m_fent_frq $
	sub_idu1m_fent_frqm
	sub_idu1m_cc
	sub_idu1m_cc_frq $
	sub_idu1m_cc_frqm
	sub_1m_cp
	sub_1m_cp_frq $
	sub_1m_cp_frqm
	sub_1m_cc
	sub_1m_cc_frq $
	sub_1m_cc_frqm
	sub_1m_cs
	sub_1m_cs_frq $
	sub_1m_cs_frqm
	sub_idu1m_sb
	sub_idu1m_sb_frq $
	sub_idu1m_sb_frqm
	sub_idu1m_sox
	sub_idu1m_sox_frq $
	sub_idu1m_sox_frqm $
	sub_1m_sox
	sub_1m_sox_frq $
	sub_1m_sox_frqm $
	sub_idu1m_meth
	sub_idu1m_meth_frq $
	sub_idu1m_meth_frqm $
	sub_1m_meth
	sub_1m_meth_frq $
	sub_1m_meth_frqm $
	sub_idu1m_aph
	sub_idu1m_aph_frq $
	sub_idu1m_aph_frqm
	sub_1m_aph
	sub_1m_aph_frq $
	sub_1m_aph_frqm
	sub_idu1m_barb
	sub_idu1m_barb_frq $
	sub_idu1m_barb_frqm
	sub_1m_barb
	sub_1m_barb_frq $
	sub_1m_barb_frqm
	sub_idu1m_traq
	sub_idu1m_traq_frq $
	sub_idu1m_traq_frqm
	sub_1m_traq
	sub_1m_traq_frq $
	sub_1m_traq_frqm
	sub_1m_marj
	sub_1m_marj_frq $
	sub_1m_marj_frqm
	sub_idu1m_psy
	sub_idu1m_psy_frq $
	sub_idu1m_psy_frqm
	sub_1m_psy
	sub_1m_psy_frq $
	sub_1m_psy_frqm
	sub_idu6m_oop $
	sub_idu6m_oop_frq $
	sub_idu1m_oop
	sub_idu1m_oop_frq $
	sub_idu1m_oop_frqm1 $
	sub_idu1m_oop_frqm2
	sub_idu1m_oop_fit
	sub_idu1m_oop_fit1
	sub_idu1m_oop_fit2
	sub_idu1m_oop_lo
	sub_idu1m_oop_lo1
	sub_idu1m_oop_lo2
	sub_6m_oop $
	sub_6m_oop_frq $
	sub_1m_oop
	sub_1m_oop_frq $
	sub_1m_oop_frqm1 $
	sub_1m_oop_frqm2
	sub_idu6m_om $
	sub_idu1m_om
	sub_idu1m_om_frq $
	sub_idu1m_om_frqm
	sub_6m_om $
	sub_1m_om
	sub_1m_om_frq $
	sub_1m_om_frqm
	sub_idu6m_ot
	sub_idu6m_ott $
	sub_idu1m_ot
	sub_idu1m_ot_frq $
	sub_idu1m_ot_frqm
	sub_nidu6m_ot
	sub_nidu6m_ot_non $
	sub_nidu1m_ot
	sub_nidu1m_ot_frq $
	sub_nidu1m_ot_frqm
	auc_1
	auc_2
	auc_11
	auc_12
	auc_3
	auc_4
	auc_5
	auc_6
	auc_7
	auc_8
	auc_9
	auc_10
	dst_1
	dst_2
	dst_3
	dst_4
	dst_5
	dst_6
	dst_7
	dst_8
	dst_9
	dst_10
	idu_6mplc1 $
	idu_6mplc2___0
	idu_6mplc2___1
	idu_6mplc2___2
	idu_6mplc2___3
	idu_6mplc2___4
	idu_6mplc2___5
	idu_6mplc2___6
	idu_6mplc2___7
	idu_6mplc2___8
	idu_6mplc2___9
	idu_6mplc2___10
	idu_6mplc2___11
	idu_6mplc2_ot $
	idu_plc
	idu_1m_day
	idu_frq_pday $
	idu_2m_day
	idu_3m_day
	idu_ru_6m
	idu_hi_6m
	sidu_header4
	idu_frq
	idu_frq_c $
	idu_stp_3m_ob
	idu_stp_3m3
	idu_stp_3m3_vb___0
	idu_stp_3m3_vb___1
	idu_stp_3m3_v $
	idu_stp_3m3_b $
	idu_stp_3m2
	idu_stp_3m2_vb___0
	idu_stp_3m2_vb___1
	idu_stp_3m2_v $
	idu_stp_3m2_b $
	idu_stp_3m1
	idu_stp_3m1_vb___0
	idu_stp_3m1_vb___1
	idu_stp_3m1_v $
	idu_stp_3m1_b $
	idu_6mrec01_us
	idu_6mrec05_us
	idu_6mrec06_us
	idu_6mrec07_us
	idu_6mrec08_us
	idu_6mrec09_us
	idu_6mrec10_us
	idu_6mrec11_us
	idu_6mrec13_us
	idu_6mrec14_us
	idu_6mrec15_us
	idu_6mrec18_us
	idu_6mrec19_us
	idu_6mrec19_ot $
	idu_6mrec01
	idu_6mrec02
	idu_6mrec03
	idu_6mrec04
	idu_6mrec05
	idu_6mrec06
	idu_6mrec07
	idu_6mrec08
	idu_6mrec09
	idu_6mrec10
	idu_6mrec11
	idu_6mrec12
	idu_6mrec13
	idu_6mrec14
	idu_6mrec15
	idu_6mrec16
	idu_6mrec17
	idu_6mrec18
	idu_6mrec19
	idu_6mrec19_ot_2 $
	idu_6mrecp01 $
	idu_6mrecp01_us $
	idu_6mrecp02 $
	idu_6mrecp03 $
	idu_6mrecp04 $
	idu_6mrecp05 $
	idu_6mrecp06 $
	idu_6mrecp07 $
	idu_6mrecp08 $
	idu_6mrecp09 $
	idu_6mrecp09_us $
	idu_6mrecp10 $
	idu_6mrecp11 $
	idu_6mrecp12 $
	idu_6mrecp13 $
	idu_6mrecp14 $
	idu_6mrecp15 $
	idu_6mrecp16 $
	idu_6mrecp17 $
	idu_6mrecp18 $
	idu_6mrecp19 $
	idu_6mnum $
	idu_6mnum_my $
	idu_6mnum_ot $
	idu_6mkit $
	idu_6mkit_calc
	idu_6mkit_my $
	idu_6mkit_ot $
	idu_6msrg $
	idu_6msrg_my $
	idu_6msrg_ot $
	sdu_srg
	sdu_srg_tim $
	sdu_srg_6m_frq
	sdu_srg_6m_pp $
	sdu_srg_6m_ppw___0
	sdu_srg_6m_ppw___1
	sdu_srg_6m_ppw___2
	sdu_srg_6m_ppw___3
	sdu_srg_6m_ppw___4
	sdu_srg_6m_ppw___5
	sdu_srg_6m_ppw___6
	sdu_srg_6m_ppw___7
	sdu_srg_6m_ppw___8
	sdu_srg_6m_ppw___9
	sdu_srg_6m_ppw___10
	sdu_srg_6m_ppw_ot $
	sdu_srg_6m_ppwm
	sdu_srg_pp $
	sdu_wrk
	sdu_wrk_tim $
	sdu_wrk_6m_frq
	sdu_wrk_6m_pp $
	sdu_wrk_6m_ppw___0
	sdu_wrk_6m_ppw___1
	sdu_wrk_6m_ppw___2
	sdu_wrk_6m_ppw___3
	sdu_wrk_6m_ppw___4
	sdu_wrk_6m_ppw___5
	sdu_wrk_6m_ppw___6
	sdu_wrk_6m_ppw___7
	sdu_wrk_6m_ppw___8
	sdu_wrk_6m_ppw___9
	sdu_wrk_6m_ppw___10
	sdu_wrk_6m_ppw_ot $
	sdu_wrk_6m_ppwm
	sdu_wrk_pp $
	sdu_srg_hiv
	sdu_srg_hcv
	sdu_wrk_hiv
	sdu_wrk_hcv
	sdu_tgtr
	odu_6m
	odu_6m_frq
	odu_6m_frq_acdt
	odu_6m_tim
	odu_6m_tim_acdt
	ath_1
	ath_2
	ath_3
	ath_4
	ath_5
	ath_6
	eis_status
	atc_1
	atc_2
	atc_3
	atc_4
	atc_5
	atc_6
	eis_1
	eis_2
	eis_3
	eis_4
	eis_5
	eis_6
	eis_7
	eis_8
	eis_9
	eis_10
	eis_11
	eis_12
	eis_13
	eis_14
	eis_15
	eis_16
	eis_17
	eis_18
	eis_19
	eis_20
	eis_21
	eis_22
	mmt_1
	mmt_2
	mmt_3
	mmt_4
	mmt_5
	mmt_6
	mmt_7
	mmt_8
	mmt_9
	mmt_10
	mmt_11
	aiv_kid_evr_pa
	aiv_adt_evr_pa
	aiv_adt_evr_pa_sp
	aiv_6m_pa
	aiv_6m_pa_sp
	aiv_kid_evr_sex
	aiv_adt_evr_sex
	aiv_evr_sex_sp
	aiv_6m_sex
	aiv_6m_sex_sp
	aiv_evr_sp_vio
	aiv_6m_sp_vio
	aiv_evr_sp_brc
	aiv_6m_sp_brc
	aiv_evr_sp_ctl
	aiv_6m_sp_ctl
	ssi_1
	ssi_2
	ssi_2a
	ssi_3
	ssi_4
	ssi_5
	ssi_6
	ssi_7
	ssi_8
	ssi_9
	ssi_10
	ssi_11
	ssi_12
	ssi_13
	ssi_14
	ssi_15
	ssi_16
	ssi_17
	bpi_evr
	bpi_plc___1
	bpi_plc___2
	bpi_plc___3
	bpi_plc___4
	bpi_plc___5
	bpi_plc___6
	bpi_plc___7
	bpi_plc___8
	bpi_plc___9
	bpi_plc___10
	bpi_plc___11
	bpi_plc_ot $
	bpi_plc_w
	bpi_plc_l
	bpi_plc_m
	bpi_plc_now
	bpi_med $
	bpi_med_p
	bpi_1
	bpi_2
	bpi_3
	bpi_4
	bpi_5
	bpi_6
	bpi_7
	bsi_1
	bsi_2
	bsi_3
	bsi_4
	bsi_5
	bsi_6
	bsi_7
	bsi_8
	bsi_9
	bsi_10
	bsi_11
	bsi_12
	bsi_13
	bsi_14
	bsi_15
	bsi_16
	bsi_17
	bsi_18
	hfs_1
	hfs_1a
	hfs_2
	hfs_2a
	hfs_3
	hfs_3a
	hfs_4
	hfs_4a
	hfs_5
	hfs_5a
	hfs_6
	hfs_6a
	hfs_7
	hfs_7a
	hfs_8
	hfs_8a
	hfs_9
	hfs_9a
	qol_1
	qol_2
	qol_3
	qol_4
	qol_5
	qol_helth1
	cla_1
	cla_1a
	cla_1a_cad $
	cla_1a_usd $
	cla_2
	cla_2a $
	cla_3a
	cla_3c
	cla_3d
	cla_3e
	cla_4a
	cla_4c
	cla_4d
	cla_4e
	cla_5a
	cla_5c
	cla_5d
	cla_5e
	cla_6a
	cla_6c
	cla_6d
	cla_6e
	cla_7a
	cla_7c
	cla_7d
	cla_7e
	cla_8a
	cla_8c
	cla_8d
	cla_8e
	cla_9a
	cla_9c
	cla_9d
	cla_9e
	cla_10a
	cla_10c
	cla_10d
	cla_10e
	cla_11a
	cla_11c
	cla_11d
	cla_11e
	cla_12a
	cla_12c
	cla_12d
	cla_12e
	cla_13a
	cla_13c
	cla_13d
	cla_13e
	cla_14a
	cla_14c
	cla_14d
	cla_14e
	cla_15a
	cla_15c
	cla_15d
	cla_15e
	cla_16a
	cla_16c
	cla_16d
	cla_16e
	cla_17a
	cla_17c
	cla_17d
	cla_17e
	cla_18a
	cla_18c
	cla_18d
	cla_18e
	cla_20a
	cla_20c
	cla_20d
	cla_20e
	cla_22a
	cla_22c
	cla_22d
	cla_22e
	cla_23a
	cla_23c
	cla_23d
	cla_23e
	cla_24a
	cla_24c
	cla_24d
	cla_24e
	cla_25a
	cla_25b
	cla_25c
	cla_25d___0
	cla_25d___1
	cla_25d___2
	cla_25d___3
	cla_25d___4
	cla_25d___5
	cla_25d___6
	cla_25d___7
	cla_25d___8
	cla_25d___9
	cla_25d___10
	cla_25d___11
	cla_25d___12
	cla_25d___13
	cla_25d___14
	cla_25d___15
	cla_25d___16
	cla_25d___17
	cla_25d___18
	cla_25d___19
	cla_25d___20
	cla_25d___21
	cla_25e $
	cla_26a
	cla_26a_t $
	cla_26c $
	cla_26d
	cla_26e
	nms_er
	nms_er_frq
	nms_hsp
	nms_hps_frq
	nms_hps_nigt
	nms_hps_drg
	nms_hps_drg_frq
	nms_hps_drg_nigt
	nms_otp
	nms_otp_frq
	nms_rsd
	nms_rsd_frq
	nms_rsd_nigt
	nms_auc
	nms_auc_frq
	nms_auc_med___0
	nms_auc_med___1
	nms_auc_med___2
	nms_auc_med___3
	nms_auc_med___4
	nms_auc_med_ot $
	nms_auc_med_dos $
	nms_opd
	nms_opd_frq
	nms_opd_med___0
	nms_opd_med___1
	nms_opd_med___2
	nms_opd_med___3
	nms_opd_med___4
	nms_opd_med___5
	nms_opd_med___6
	nms_opd_med_ot $
	nms_opd_med_dos $
	nms_mnt
	nms_mnt_med $
	nms_mnt_frq
	nms_mnt_dos $
	nms_trp
	nms_trp_frq01
	nms_trp_frq02 $
	nms_xxx___1
	nms_xxx___2
	nms_xxx___3
	nms_xxx___4
	nms_xxx___5
	nms_xxx___999
	nms_mdo
	nms_mod_frq
	nms_mod_frq_doc
	nms_cost
	nms_cost_cad $
	nms_cost_usd $
	nms_inc
	nms_inc_cad $
	nms_inc_usd $
	nms_emp
	nms_ocu $
	nms_emp_frq
	nms_emp_inc
	nms_emp_cad $
	nms_emp_usd $
	nms_emp_ben
	nms_emp_bend $
	nms_otinc
	nms_otinc_cad $
	nms_otinc_usd $
	nms_edu
	nms_edu_cr
	nms_edu_ful
	nms_hc
	nms_hc01
	nms_hc02
	nms_hc03
	nms_hc04
	nms_qul
	nms_oul_frq
	act_1
	act_2
	act_3
	act_4
	act_5
	act_6
	srb_age $
	srb_3m_prst
	srb_prst_tim
	srb_prst01
	srb_prst02
	srb_prst03
	srb_prst04
	srb_prst05
	srb_prst_stp
	srb_3m
	srb_3m_sxp
	srb_3m_sxp_f
	srb_3m_sxp_m
	srb_3m_f
	srb_3m_f_sxp
	srb_3m_f_sxp_p
	srb_3m_f_sxp_pidu
	srb_3m_f_sxp_np
	srb_3m_f_sxp_npidu $
	srb_3m_f_sxp_c $
	srb_3m_f_sxp_cidu
	srb_3m_f_sxp_mc
	srb_3m_f_sxp_mcidu
	srb_1m_f
	srb_1m_fc_pv
	srb_1m_fc_po
	srb_1m_fc_pa
	srb_1m_fc_npv
	srb_1m_fc_npo
	srb_1m_fc_npa
	srb_1m_fc_cv
	srb_1m_fc_co
	srb_1m_fc_ca
	srb_1m_fc_mcv
	srb_1m_fc_mco
	srb_1m_fc_mca
	srb_1m_f_hiv
	srb_1m_fc_hiv
	srb_1m_f_hcv
	srb_1m_fc_hcv
	srb_1m_f_drg_cc
	srb_1m_f_drg_hro
	srb_1m_f_drg_main
	srb_1m_f_drg_aph
	srb_1m_f_drg_psy
	srb_1m_f_drg_ot $
	srb_3m_m
	srb_3m_m_sxp
	srb_3m_m_sxp_p
	srb_3m_m_sxp_pidu $
	srb_3m_m_sxp_np
	srb_3m_m_sxp_npidu
	srb_3m_m_sxp_c
	srb_3m_m_sxp_cidu
	srb_3m_m_sxp_mc
	srb_3m_m_sxp_mcidu
	srb_1m_m
	srb_1m_mc_pv
	srb_1m_mc_po
	srb_1m_mc_pa
	srb_1m_mc_npv
	srb_1m_mc_npo
	srb_1m_mc_npa
	srb_1m_mc_cv
	srb_1m_mc_co
	srb_1m_mc_ca
	srb_1m_mc_mcv
	srb_1m_mc_mco
	srb_1m_mc_mca
	srb_1m_m_hiv
	srb_1m_mc_hiv
	srb_1m_m_hcv
	srb_1m_mc_hcv
	srb_1m_m_drg_cc
	srb_1m_m_drg_hro
	srb_1m_m_drg_main
	srb_1m_m_drg_aph
	srb_1m_m_drg_psy
	sbr_1m_m_drg_ot $
	cdu_1
	cdu_2
	cdu_3
	cdu_4
	cdu_5
	cdu_6
	cdu_7
	cdu_8
	cdu_9
	cdu_10
	cdu_11
	cdu_12
	cdu_13
	cdu_14
	cdu_15 $
	cdu_16 $
	cdu_17
	cdu_18
	cpe_1
	cpe_2
	cpe_3
	cpe_4
	cce_1
	cce_2
	cce_3
	cce_4
	baseline_complete
	relationship_with_ph_v_3 $
	rphcv1
	rphcv2
	rphcv3
	rphcv4
	rphcv_5
	rphcv_6
	rphcv_7
	rphcv_8
	rphcv_9
	rphcv_10
	rphcv_11
	relationship_with_ph_v_4
	ec_yrs
	ec_hivneg
	ec_inj6
	ec_vic
	ec_fu
	ec_com
	ec_serv
	rc_consent
	rc_quiz
	rc_report
	rc_hippa
	rc_release
	rc_locator
	rc_vital
	rc_psychiatric
	rc_scc
	rc_informed
	rc_base
	ec_pc_yes
	comment_nonelig $
	ec_all_2
	ec_sign $
	ec_comments $
	randomization_checkl_v_5
	rand_ele
	rand_date
	rand_arm
	rand_reason
	rand_why $
	rand_other $
	rand_by $
	rand_randomization_complete
	followup_3m_timestamp $
	dem_visit_3m
	idu_cnty_3m
	dem_gender_3m
	dem_gender_ot_3m $
	dem_gender_t_3m
	dem_gender_s_3m
	dem_gender_id_3m
	dem_gender_id_ot_3m $
	dem_trip_time_3m
	dem_trip_trans_3m
	dem_trip_ot_3m $
	dem_edu_3m
	dem_marital_3m
	dem_employ_3m
	dem_employ_ot_3m $
	dem_hltins_3m
	dem_hltins_can_3m
	dem_hltins_t0_3m
	dem_hltins_t1_3m
	dem_hltins_t2_3m
	dem_hltins_t3_3m
	dem_hltins_t4_3m
	dem_hltins_t5_3m
	dem_hltins_t6_3m
	dem_hltins_t7_3m
	dem_hltins_t8_3m
	dem_hltins_t9_3m
	dem_hltins_t10_3m
	dem_hltins_t11_3m $
	dem_hltins_t12_3m $
	dem_hltins_t13_3m $
	dem_hltins_t14_3m
	dem_hltins_t15_3m___0
	dem_hltins_t15_3m___1
	dem_hltins_t15_3m___2
	dem_hltins_t15_3m___3
	dem_hltins_t15_3m___4
	dem_hltins_t15_3m___5
	dem_hltins_t16_3m $
	sub_6m1_3m
	sub_6m2_3m
	sub_6m3_3m
	sub_6m4_3m
	sub_6m5_3m
	sub_6m6_3m
	sub_6m7_3m
	sub_6m8_3m
	sub_6m9_3m
	sub_6m10_3m
	sub_6m11_3m
	sub_6m12_3m
	sub_6m13_3m
	sub_6m14_3m
	sub_6m15_3m
	sub_6m16_3m
	sub_6m17_3m
	sub_6m18_3m
	sub_6m19_3m
	sub_6m20_3m
	sub_6m21_3m
	sub_6m22_3m
	sub_6m23_3m
	sub_6m24_3m
	sub_6m25_3m
	sub_6m26_3m
	sub_6m27_3m
	sub_frq1m_3m $
	sub_idu1m_her_3m
	sub_idu1m_her_frq_3m $
	sub_idu1m_her_frqm_3m
	sub_1m_her_3m
	sub_1m_her_frq_3m $
	sub_1m_fent_frq_3m $
	sub_1m_her_frqm_3m
	sub_1m_fent_3m
	sub_1m_fent_frqm_3m
	sub_idu1m_cp_3m
	sub_idu1m_cp_frq_3m $
	sub_idu1m_cp_frqm_3m
	sub_idu1m_cc_3m
	sub_idu1m_cc_frq_3m $
	sub_idu1m_cc_frqm_3m
	sub_1m_cp_3m
	sub_1m_cp_frq_3m $
	sub_1m_cp_frqm_3m
	sub_1m_cc_3m
	sub_1m_cc_frq_3m $
	sub_1m_cc_frqm_3m
	sub_1m_cs_3m
	sub_1m_cs_frq_3m $
	sub_1m_cs_frqm_3m
	sub_idu1m_sb_3m
	sub_idu1m_sb_frq_3m $
	sub_idu1m_sb_frqm_3m
	sub_idu1m_sox_3m
	sub_idu1m_sox_frq_3m $
	sub_idu1m_sox_frqm_3m $
	sub_1m_sox_3m
	sub_1m_sox_frq_3m $
	sub_1m_sox_frqm_3m $
	sub_idu1m_meth_3m
	sub_idu1m_meth_frq_3m $
	sub_idu1m_meth_frqm_3m $
	sub_1m_meth_3m
	sub_1m_meth_frq_3m $
	sub_1m_meth_frqm_3m $
	sub_idu1m_aph_3m
	sub_idu1m_aph_frq_3m $
	sub_idu1m_aph_frqm_3m
	sub_1m_aph_3m
	sub_1m_aph_frq_3m $
	sub_1m_aph_frqm_3m
	sub_idu1m_barb_3m
	sub_idu1m_barb_frq_3m $
	sub_idu1m_barb_frqm_3m
	sub_1m_barb_3m
	sub_1m_barb_frq_3m $
	sub_1m_barb_frqm_3m
	sub_idu1m_traq_3m
	sub_idu1m_traq_frq_3m $
	sub_idu1m_traq_frqm_3m
	sub_1m_traq_3m
	sub_1m_traq_frq_3m $
	sub_1m_traq_frqm_3m
	sub_1m_marj_3m
	sub_1m_marj_frq_3m $
	sub_1m_marj_frqm_3m
	sub_idu1m_psy_3m
	sub_idu1m_psy_frq_3m $
	sub_idu1m_psy_frqm_3m
	sub_1m_psy_3m
	sub_1m_psy_frq_3m $
	sub_1m_psy_frqm_3m
	sub_idu6m_oop_3m $
	sub_idu6m_oop_frq_3m $
	sub_idu1m_oop_3m
	sub_idu1m_oop_frq_3m $
	sub_idu1m_oop_frqm1_3m $
	sub_idu1m_oop_frqm2_3m
	sub_idu1m_oop_fit_3m
	sub_idu1m_oop_fit1_3m
	sub_idu1m_oop_fit2_3m
	sub_idu1m_oop_lo_3m
	sub_idu1m_oop_lo1_3m
	sub_idu1m_oop_lo2_3m
	sub_6m_oop_3m $
	sub_6m_oop_frq_3m $
	sub_1m_oop_3m
	sub_1m_oop_frq_3m $
	sub_1m_oop_frqm1_3m $
	sub_1m_oop_frqm2_3m
	sub_idu6m_om_3m $
	sub_idu1m_om_3m
	sub_idu1m_om_frq_3m $
	sub_idu1m_om_frqm_3m
	sub_6m_om_3m $
	sub_1m_om_3m
	sub_1m_om_frq_3m $
	sub_1m_om_frqm_3m
	sub_idu6m_ot_3m
	sub_idu6m_ott_3m $
	sub_idu1m_ot_3m
	sub_idu1m_ot_frq_3m $
	sub_idu1m_ot_frqm_3m
	sub_nidu6m_ot_3m
	sub_nidu6m_ot_non_3m $
	sub_nidu1m_ot_3m
	sub_nidu1m_ot_frq_3m $
	sub_nidu1m_ot_frqm_3m
	idu_3m
	idu_6mplc1_3m $
	idu_6mplc2_3m___0
	idu_6mplc2_3m___1
	idu_6mplc2_3m___2
	idu_6mplc2_3m___3
	idu_6mplc2_3m___4
	idu_6mplc2_3m___5
	idu_6mplc2_3m___6
	idu_6mplc2_3m___7
	idu_6mplc2_3m___8
	idu_6mplc2_3m___9
	idu_6mplc2_3m___10
	idu_6mplc2_3m___11
	idu_6mplc2_ot_3m $
	idu_plc_3m
	idu_1m_day_3m
	idu_frq_pday_3m $
	idu_2m_day_3m
	idu_3m_day_3m
	idu_ru_6m_3m
	idu_hi_6m_3m
	sidu_header4_3m
	idu_frq_3m
	idu_frq_c_3m $
	idu_stp_3m_ob_3m
	idu_stp_3m3_3m
	idu_stp_3m3_vb_3m___0
	idu_stp_3m3_vb_3m___1
	idu_stp_3m3_v_3m $
	idu_stp_3m3_b_3m $
	idu_stp_3m2_3m
	idu_stp_3m2_vb_3m___0
	idu_stp_3m2_vb_3m___1
	idu_stp_3m2_v_3m $
	idu_stp_3m2_b_3m $
	idu_stp_3m1_3m
	idu_stp_3m1_vb_3m___0
	idu_stp_3m1_vb_3m___1
	idu_stp_3m1_v_3m $
	idu_stp_3m1_b_3m $
	idu_6mrec01_3m
	idu_6mrec02_3m
	idu_6mrec03_3m
	idu_6mrec04_3m
	idu_6mrec05_3m
	idu_6mrec06_3m
	idu_6mrec07_3m
	idu_6mrec08_3m
	idu_6mrec09_3m
	idu_6mrec10_3m
	idu_6mrec11_3m
	idu_6mrec12_3m
	idu_6mrec13_3m
	idu_6mrec14_3m
	idu_6mrec15_3m
	idu_6mrec16_3m
	idu_6mrec17_3m
	idu_6mrec18_3m
	idu_6mrec19_3m
	idu_6mrec19_ot_2_3m $
	idu_6mrec01_us_3m
	idu_6mrec05_us_3m
	idu_6mrec06_us_3m
	idu_6mrec07_us_3m
	idu_6mrec08_us_3m
	idu_6mrec09_us_3m
	idu_6mrec10_us_3m
	idu_6mrec11_us_3m
	idu_6mrec13_us_3m
	idu_6mrec14_us_3m
	idu_6mrec15_us_3m
	idu_6mrec18_us_3m
	idu_6mrec19_us_3m
	idu_6mrec19_ot_3m $
	idu_6mrecp01_3m $
	idu_6mrecp01_us_3m $
	idu_6mrecp02_3m $
	idu_6mrecp03_3m $
	idu_6mrecp04_3m $
	idu_6mrecp05_3m $
	idu_6mrecp06_3m $
	idu_6mrecp07_3m $
	idu_6mrecp08_3m $
	idu_6mrecp09_3m $
	idu_6mrecp09_us_3m $
	idu_6mrecp10_3m $
	idu_6mrecp11_3m $
	idu_6mrecp12_3m $
	idu_6mrecp13_3m $
	idu_6mrecp14_3m $
	idu_6mrecp15_3m $
	idu_6mrecp16_3m $
	idu_6mrecp17_3m $
	idu_6mrecp18_3m $
	idu_6mrecp19_3m $
	idu_6mnum_3m $
	idu_6mnum_my_3m $
	idu_6mnum_ot_3m $
	idu_6mkit_3m $
	idu_6mkit_calc_3m
	idu_6mkit_my_3m $
	idu_6mkit_ot_3m $
	idu_6msrg_3m $
	idu_6msrg_my_3m $
	idu_6msrg_ot_3m $
	sdu_srg_3m
	sdu_srg_tim_3m $
	sdu_srg_6m_frq_3m
	sdu_srg_6m_pp_3m $
	sdu_srg_6m_ppw_3m___0
	sdu_srg_6m_ppw_3m___1
	sdu_srg_6m_ppw_3m___2
	sdu_srg_6m_ppw_3m___3
	sdu_srg_6m_ppw_3m___4
	sdu_srg_6m_ppw_3m___5
	sdu_srg_6m_ppw_3m___6
	sdu_srg_6m_ppw_3m___7
	sdu_srg_6m_ppw_3m___8
	sdu_srg_6m_ppw_3m___9
	sdu_srg_6m_ppw_3m___10
	sdu_srg_6m_ppw_ot_3m $
	sdu_srg_6m_ppwm_3m
	sdu_srg_pp_3m $
	sdu_wrk_3m
	sdu_wrk_tim_3m $
	sdu_wrk_6m_frq_3m
	sdu_wrk_6m_pp_3m $
	sdu_wrk_6m_ppw_3m___0
	sdu_wrk_6m_ppw_3m___1
	sdu_wrk_6m_ppw_3m___2
	sdu_wrk_6m_ppw_3m___3
	sdu_wrk_6m_ppw_3m___4
	sdu_wrk_6m_ppw_3m___5
	sdu_wrk_6m_ppw_3m___6
	sdu_wrk_6m_ppw_3m___7
	sdu_wrk_6m_ppw_3m___8
	sdu_wrk_6m_ppw_3m___9
	sdu_wrk_6m_ppw_3m___10
	sdu_wrk_6m_ppw_ot_3m $
	sdu_wrk_6m_ppwm_3m
	sdu_wrk_pp_3m $
	sdu_srg_hiv_3m
	sdu_srg_hcv_3m
	sdu_wrk_hiv_3m
	sdu_wrk_hcv_3m
	sdu_tgtr_3m
	bpi_evr_3m
	bpi_plc_3m___1
	bpi_plc_3m___2
	bpi_plc_3m___3
	bpi_plc_3m___4
	bpi_plc_3m___5
	bpi_plc_3m___6
	bpi_plc_3m___7
	bpi_plc_3m___8
	bpi_plc_3m___9
	bpi_plc_3m___10
	bpi_plc_3m___11
	bpi_plc_ot_3m $
	bpi_plc_w_3m
	bpi_plc_l_3m
	bpi_plc_m_3m
	bpi_plc_now_3m
	bpi_med_3m $
	bpi_med_p_3m
	bpi_1_3m
	bpi_2_3m
	bpi_3_3m
	bpi_4_3m
	bpi_5_3m
	bpi_6_3m
	bpi_7_3m
	hfs_1_3m
	hfs_1a_3m
	hfs_2_3m
	hfs_2a_3m
	hfs_3_3m
	hfs_3a_3m
	hfs_4_3m
	hfs_4a_3m
	hfs_5_3m
	hfs_5a_3m
	hfs_6_3m
	hfs_6a_3m
	hfs_7_3m
	hfs_7a_3m
	hfs_8_3m
	hfs_8a_3m
	hfs_9_3m
	hfs_9a_3m
	cla_1_3m
	cla_1a_3m
	cla_1a_cad_3m $
	cla_1a_usd_3m $
	cla_2_3m
	cla_2a_3m $
	cla_3c_3m
	cla_3d_3m
	cla_3e_3m
	cla_4c_3m
	cla_4d_3m
	cla_4e_3m
	cla_5c_3m
	cla_5d_3m
	cla_5e_3m
	cla_6c_3m
	cla_6d_3m
	cla_6e_3m
	cla_7c_3m
	cla_7d_3m
	cla_7e_3m
	cla_8c_3m
	cla_8d_3m
	cla_8e_3m
	cla_9c_3m
	cla_9d_3m
	cla_9e_3m
	cla_10c_3m
	cla_10d_3m
	cla_10e_3m
	cla_11c_3m
	cla_11d_3m
	cla_11e_3m
	cla_12c_3m
	cla_12d_3m
	cla_12e_3m
	cla_13c_3m
	cla_13d_3m
	cla_13e_3m
	cla_14c_3m
	cla_14d_3m
	cla_14e_3m
	cla_15c_3m
	cla_15d_3m
	cla_15e_3m
	cla_16c_3m
	cla_16d_3m
	cla_16e_3m
	cla_17c_3m
	cla_17d_3m
	cla_17e_3m
	cla_18c_3m
	cla_18d_3m
	cla_18e_3m
	cla_20c_3m
	cla_20d_3m
	cla_20e_3m
	cla_22c_3m
	cla_22d_3m
	cla_22e_3m
	cla_23c_3m
	cla_23d_3m
	cla_23e_3m
	cla_24c_3m
	cla_24d_3m
	cla_24e_3m
	cla_25a_3m
	cla_25b_3m
	cla_25c_3m $
	cla_25d_3m___0
	cla_25d_3m___1
	cla_25d_3m___2
	cla_25d_3m___3
	cla_25d_3m___4
	cla_25d_3m___5
	cla_25d_3m___6
	cla_25d_3m___7
	cla_25d_3m___8
	cla_25d_3m___9
	cla_25d_3m___10
	cla_25d_3m___11
	cla_25d_3m___12
	cla_25d_3m___13
	cla_25d_3m___14
	cla_25d_3m___15
	cla_25d_3m___16
	cla_25d_3m___17
	cla_25d_3m___18
	cla_25d_3m___19
	cla_25d_3m___20
	cla_25d_3m___21
	cla_25e_3m $
	cla_26a_3m
	cla_26b_3m $
	cla_26d_3m
	cla_26e_3m
	cla_26f_3m
	nms_er_3m
	nms_er_frq_3m
	nms_hsp_3m
	nms_hps_frq_3m
	nms_hps_nigt_3m
	nms_hps_drg_3m
	nms_hps_drg_frq_3m
	nms_hps_drg_nigt_3m
	nms_otp_3m
	nms_otp_frq_3m
	nms_rsd_3m
	nms_rsd_frq_3m
	nms_rsd_nigt_3m
	nms_auc_3m
	nms_auc_frq_3m
	nms_auc_med_3m___0
	nms_auc_med_3m___1
	nms_auc_med_3m___2
	nms_auc_med_3m___3
	nms_auc_med_3m___4
	nms_auc_med_ot_3m $
	nms_auc_med_dos_3m $
	nms_opd_3m
	nms_opd_frq_3m
	nms_opd_med_3m___0
	nms_opd_med_3m___1
	nms_opd_med_3m___2
	nms_opd_med_3m___3
	nms_opd_med_3m___4
	nms_opd_med_3m___5
	nms_opd_med_3m___6
	nms_opd_med_ot_3m $
	nms_opd_med_dos_3m $
	nms_mnt_3m
	nms_mnt_med_3m $
	nms_mnt_frq_3m
	nms_mnt_dos_3m $
	nms_trp_3m
	nms_trp_frq01_3m
	nms_trp_frq02_3m $
	nms_xxx_3m___1
	nms_xxx_3m___2
	nms_xxx_3m___3
	nms_xxx_3m___4
	nms_xxx_3m___5
	nms_xxx_3m___999
	nms_mdo_3m
	nms_mod_frq_3m
	nms_mod_frq_doc_3m
	nms_cost_3m
	nms_cost_cad_3m $
	nms_cost_usd_3m $
	nms_inc_3m
	nms_inc_cad_3m $
	nms_inc_usd_3m $
	nms_emp_3m
	nms_ocu_3m $
	nms_emp_frq_3m
	nms_emp_inc_3m
	nms_emp_cad_3m $
	nms_emp_usd_3m $
	nms_emp_ben_3m
	nms_emp_bend_3m $
	nms_otinc_3m
	nms_otinc_cad_3m $
	nms_otinc_usd_3m $
	nms_edu_3m
	nms_edu_cr_3m
	nms_edu_ful_3m
	nms_hc_3m
	nms_hc01_3m
	nms_hc02_3m
	nms_hc03_3m
	nms_hc04_3m
	nms_qul_3m
	nms_oul_frq_3m
	srb_age_3m
	srb_3m_prst_3m
	srb_prst_tim_3m
	srb_prst01_3m
	srb_prst02_3m
	srb_prst03_3m
	srb_prst04_3m
	srb_prst05_3m
	srb_prst_stp_3m
	srb_3m_3m
	srb_3m_sxp_3m
	srb_3m_sxp_f_3m
	srb_3m_sxp_m_3m
	srb_3m_f_3m
	srb_3m_f_sxp_3m
	srb_3m_f_sxp_p_3m
	srb_3m_f_sxp_pidu_3m
	srb_3m_f_sxp_np_3m
	srb_3m_f_sxp_npidu_3m $
	srb_3m_f_sxp_c_3m $
	srb_3m_f_sxp_cidu_3m
	srb_3m_f_sxp_mc_3m
	srb_3m_f_sxp_mcidu_3m
	srb_1m_f_3m
	srb_1m_fc_pv_3m
	srb_1m_fc_po_3m
	srb_1m_fc_pa_3m
	srb_1m_fc_npv_3m
	srb_1m_fc_npo_3m
	srb_1m_fc_npa_3m
	srb_1m_fc_cv_3m
	srb_1m_fc_co_3m
	srb_1m_fc_ca_3m
	srb_1m_fc_mcv_3m
	srb_1m_fc_mco_3m
	srb_1m_fc_mca_3m
	srb_1m_f_hiv_3m
	srb_1m_fc_hiv_3m
	srb_1m_f_hcv_3m
	srb_1m_fc_hcv_3m
	srb_1m_f_drg_cc_3m
	srb_1m_f_drg_hro_3m
	srb_1m_f_drg_main_3m
	srb_1m_f_drg_aph_3m
	srb_1m_f_drg_psy_3m
	srb_1m_f_drg_ot_3m $
	srb_3m_m_3m
	srb_3m_m_sxp_3m
	srb_3m_m_sxp_p_3m
	srb_3m_m_sxp_pidu_3m $
	srb_3m_m_sxp_np_3m
	srb_3m_m_sxp_npidu_3m
	srb_3m_m_sxp_c_3m
	srb_3m_m_sxp_cidu_3m
	srb_3m_m_sxp_mc_3m
	srb_3m_m_sxp_mcidu_3m
	srb_1m_m_3m
	srb_1m_mc_pv_3m
	srb_1m_mc_po_3m
	srb_1m_mc_pa_3m
	srb_1m_mc_npv_3m
	srb_1m_mc_npo_3m
	srb_1m_mc_npa_3m
	srb_1m_mc_cv_3m
	srb_1m_mc_co_3m
	srb_1m_mc_ca_3m
	srb_1m_mc_mcv_3m
	srb_1m_mc_mco_3m
	srb_1m_mc_mca_3m
	srb_1m_m_hiv_3m
	sbr_1m_m_drg_ot_3m $
	srb_1m_mc_hiv_3m
	srb_1m_m_hcv_3m
	srb_1m_mc_hcv_3m
	srb_1m_m_drg_cc_3m
	srb_1m_m_drg_hro_3m
	srb_1m_m_drg_main_3m
	srb_1m_m_drg_aph_3m
	srb_1m_m_drg_psy_3m
	bsi_3m_1
	bsi_3m_2
	bsi_3m_3
	bsi_3m_4
	bsi_3m_5
	bsi_3m_6
	bsi_3m_7
	bsi_3m_8
	bsi_3m_9
	bsi_3m_10
	bsi_3m_11
	bsi_3m_12
	bsi_3m_13
	bsi_3m_14
	bsi_3m_15
	bsi_3m_16
	bsi_3m_17
	bsi_3m_18
	followup_3m_complete
	followup_3m_eis_cpe__v_6 $
	eis_status_3m
	eis_1_3m
	eis_2_3m
	eis_3_3m
	eis_4_3m
	eis_5_3m
	eis_6_3m
	eis_7_3m
	eis_8_3m
	eis_9_3m
	eis_10_3m
	eis_11_3m
	eis_12_3m
	eis_13_3m
	eis_14_3m
	eis_15_3m
	eis_16_3m
	eis_17_3m
	eis_18_3m
	eis_19_3m
	eis_20_3m
	eis_21_3m
	eis_22_3m
	cpe_1_3m
	cpe_2_3m
	cpe_3_3m
	cpe_4_3m
	cce_1_3m
	cce_2_3m
	cce_3_3m
	cce_4_3m
	followup_3m_eis_cpe__v_7
	followup_3m_adh2_4_timestamp $
	adh2_visitdate
	prep_prescribe
	adh_prep
	stop_prep
	prep_last4week
	prep_now
	prep_misspercent
	prep_missdose
	adh2_noncompliance___1
	adh2_noncompliance___2
	adh2_noncompliance___3
	adh2_noncompliance___4
	adh2_noncompliance___5
	adh2_noncompliance___6
	adh2_noncompliance___7
	adh2_noncompliance___8
	adh2_noncompliance___9
	adh2_noncompliance___10
	adh2_noncompliance___11
	adh2_noncompliance___12
	adh2_noncompliance___13
	adh2_noncompliance___14
	adh2_noncompliance___15
	adh2_noncompliance___16
	adh2_noncompliance___17
	adh2_noncomplyspec $
	adh2_prepchange
	adh2_changprepspec $
	adh2_newprepdateprescr
	adh2_newprepdateingest
	adh_hcv
	adh4_hcvchange
	adh4_changhcvspec $
	adh4_newhcvdateprescr
	adh4_newhcvdateingest
	adh4_noncompliance___1
	adh4_noncompliance___2
	adh4_noncompliance___3
	adh4_noncompliance___4
	adh4_noncompliance___5
	adh4_noncompliance___6
	adh4_noncompliance___7
	adh4_noncompliance___8
	adh4_noncompliance___9
	adh4_noncompliance___10
	adh4_noncompliance___11
	adh4_noncompliance___12
	adh4_noncompliance___13
	adh4_noncompliance___14
	adh4_noncompliance___15
	adh4_noncompliance___16
	adh4_noncompliance___17
	adh4_noncomplyspec $
	adh4_nopillslastpresc $
	adh4_nopillsleft $
	followup_3m_adh2_4_complete
	followup_6m_timestamp $
	idu_cnty_6m
	auc_1_6m
	auc_2_6m
	auc_11_6m
	auc_12_6m
	auc_3_6m
	auc_4_6m
	auc_5_6m
	auc_6_6m
	auc_7_6m
	auc_8_6m
	auc_9_6m
	auc_10_6m
	dst_1_6m
	dst_2_6m
	dst_3_6m
	dst_4_6m
	dst_5_6m
	dst_6_6m
	dst_7_6m
	dst_8_6m
	dst_9_6m
	dst_10_6m
	odu_6m_6m
	odu_6m_frq_6m
	odu_6m_frq_acdt_6m
	odu_6m_tim_6m
	odu_6m_tim_acdt_6m
	aiv_6m_pa_6m
	aiv_6m_pa_sp_6m
	aiv_6m_sex_6m
	aiv_6m_sex_sp_6m
	aiv_6m_sp_vio_6m
	aiv_6m_sp_brc_6m
	aiv_6m_sp_ctl_6m
	act_1_6m
	act_2_6m
	act_3_6m
	act_4_6m
	act_5_6m
	act_6_6m
	cdu_1_6m
	cdu_2_6m
	cdu_3_6m
	cdu_4_6m
	cdu_5_6m
	cdu_6_6m
	cdu_7_6m
	cdu_8_6m
	cdu_9_6m
	cdu_10_6m
	cdu_11_6m
	cdu_12_6m
	cdu_13_6m
	cdu_14_6m
	cdu_15_6m $
	cdu_16_6m $
	cdu_17_6m
	cdu_18_6m
	followup_6m_complete
	ac1
	ac2
	ac3
	ac4
	ac5
	ac6
	ac7
	ac8
	ac9
	ac10
	pns_1
	pns_2
	pns_3
	pns_4
	pns_5
	pns_6
	pns_7
	pns_8
	pns_9
	pns_10
	intervention_satisfa_v_8
	scf_lastvisit
	scf_reasonend
	scf_reason_ltf $
	scf_reason_date
	scf_other $
	scf_comment $
	end_of_study_form_complete
	eom_date
	eom_whatmed___0
	eom_whatmed___1
	eom_whatmed___2
	eom_whatmed_hcv $
	eom_last_truvada
	eom_last_epc
	eom_last_ot
	eom_reason_truvada___0
	eom_reason_truvada___1
	eom_reason_truvada___2
	eom_reason_truvada___3
	eom_reason_truvada___4
	eom_reason_truvada___5
	eom_reason_truvada___6
	eom_reason_truvada___7
	eom_reason_truvada___8
	eom_reason_truvada___9
	eom_reason_truvada___10
	eom_reason_truvada___11
	eom_reason_truvada___12
	eom_reason_truvada___13
	eom_reason_truvada___14
	eom_reason_truvada___15
	eom_other $
	eom_primreason___0
	eom_primreason___1
	eom_primreason___2
	eom_primreason___3
	eom_primreason___4
	eom_primreason___5
	eom_primreason___6
	eom_primreason___7
	eom_primreason___8
	eom_primreason___9
	eom_primreason___10
	eom_primreason___11
	eom_primreason___12
	eom_primreason___13
	eom_primreason___14
	eom_primreason___15
	eom_other2 $
	eom_reason_hcv___0
	eom_reason_hcv___1
	eom_reason_hcv___2
	eom_reason_hcv___3
	eom_reason_hcv___4
	eom_reason_hcv___5
	eom_reason_hcv___6
	eom_reason_hcv___7
	eom_reason_hcv___8
	eom_reason_hcv___9
	eom_reason_hcv___10
	eom_reason_hcv___11
	eom_reason_hcv___12
	eom_reason_hcv___13
	eom_reason_hcv___14
	eom_reason_hcv___15
	eom_other3 $
	end_of_medication_complete
	ae_describe $
	ae_number
	ae_datereport
	ae_typereport___0
	ae_typereport___1
	ae_typereport___2
	ae_od
	ae_guidelines
	ae_severity
	ae_expect
	ae_relation_med
	ae_treatment___0
	ae_treatment___1
	ae_treatment___2
	ae_treatment___3
	ae_treatment___4
	ae_treatment___5
	ae_other $
	ae_treatment2 $
	ae_outcome
	ae_status
	smi_txarm
	smi_prepmed
	smi_specify_2 $
	prep_disp
	smi_prep_start
	smi_prep_last $
	smi_prep_action___0
	smi_prep_action___1
	smi_prep_action___2
	smi_prep_action___3
	smi_prep_action___4
	smi_prep_action___5
	smi_prep_action___6
	smi_prep_action___7
	smi_hcv
	smi_hcv_baseline
	smi_hcvmed
	smi_specify $
	hcv_disp
	smi_hcv_start $
	smi_hcv_last $
	smi_action___0
	smi_action___1
	smi_action___2
	smi_action___3
	smi_action___4
	smi_action___5
	smi_action___6
	smi_action___7
	smi_describe $
	smi_by $
	adverse_event_form_complete
	sae_number $
	sae_date
	sae_type___0
	sae_type___1
	sae_type___2
	sae_describe $
	sae_onset
	sae_criteria___0
	sae_criteria___1
	sae_criteria___2
	sae_criteria___3
	sae_criteria___4
	sae_criteria___5
	sae_admission_date
	sae_discharge_date
	sae_severity
	sae_expect
	sae_related
	sae_rationale $
	sae_outcome
	sae_resolution
	sae_death_date_2
	sae_death_site
	sae_death_certificate
	sae_death_cause
	sae_other $
	sae_information___0
	sae_information___1
	sae_information___2
	sae_information___3
	sae_information___4
	sae_information___5
	sae_other2 $
	sae_death_autopsy
	sae_txarm
	sae_prepmed
	sae_specify_2 $
	sae_prep_disp
	sae_prep_start
	sae_prep_end
	sae_action___0
	sae_action___1
	sae_action___2
	sae_action___3
	sae_action___4
	sae_action___5
	sae_action___6
	sae_action___7
	sae_prep_abate
	sae_prep_reappear
	sae_hcv
	sae_hcvmed
	sae_specify $
	hcv_med_disp
	sae_hcv_start
	sae_hcv_end $
	sae_hcv_abate
	sae_hcv_reappear
	sae_action_hcv___0
	sae_action_hcv___1
	sae_action_hcv___2
	sae_action_hcv___3
	sae_action_hcv___4
	sae_action_hcv___5
	sae_action_hcv___6
	sae_action_hcv___7
	sae_tx $
	sae_add_action_hcv $
	sae_med $
	sae_med_dose $
	sae_med_start $
	sae_med_stop $
	sae_ongoing
	sae_condition $
	sae_condition_start
	sae_condition_stop $
	sae_ongoing_rmh
	sae_event_narrative $
	sae_initial $
	serious_adverse_even_v_9
	date_visit
	rmv
	com $
	missed_visit_form_complete
	medi_pres___1
	medi_pres___2
	medi_pres___3
	medi_pres_ot $
	pres_dose $
	date_truvada
	date_epclusa
	date_other
	medi_dispense___1
	medi_dispense___2
	medi_dispense___3
	date_truvada_disp
	date_epclusa_dis
	date_other_disp
	com_dose $
	treatment_initiation_complete
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
	label redcap_data_access_group='Data Access Group';
	label redcap_survey_identifier='Survey Identifier';
	label languages_timestamp='Survey Timestamp';
	label id_paper='Record ID on the paper for randomization (from Montreal Site)';
	label languages='Languages';
	label languages_complete='Complete?';
	label screening_timestamp='Survey Timestamp';
	label sdem_visit='Visit Date';
	label sdem_reside='Where do you reside?';
	label sdem_lang_mon='What is your preferred language of communication?';
	label sdem_lang_mia='What is your preferred language of communication?';
	label sdem_lang_mia_2='What is your ethnicity/race?';
	label sdem_age='What is your age?';
	label sdem_oat='Are you recruited from an opioid agonist therapy (OAT) clinic or syringe access program (SAP)?';
	label sdem_sev='Do you use the services of an opioid agonist therapy (OAT) clinic or syringe access program (SAP)?';
	label sdem_sev_no='Are you willing to receive services/enroll in one of these programs?';
	label sdem_sex='What was your biological sex at birth?';
	label sdem_gender='With regards to gender, do you think of yourself as:';
	label sdem_prg_c='Are you currently pregnant?';
	label sdem_prg_c2='Are you planning to become pregnant in the next 18 months?';
	label sdem_prg_b='Are you currently breastfeeding?';
	label sdem_brsf=' Are willing to stop breastfeeding for the duration of the trial (18mo)?';
	label sdem_prg_ct18='Are you willing to use contraception for the next 18 months?';
	label vcp_inject_6mo='Have you injected drugs at any point in the last 6 months?';
	label sdem_hiv_etst='Have you ever been tested for HIV?';
	label sdem_hiv_rtst_r='What was the result of your most recent HIV test? ';
	label sdem_prp_cu='Are you currently taking PrEP (Pre-Exposure Prophylaxis)?';
	label sdem_hcv='Are you currently taking HCV medications?';
	label sdem_hcv_fail='Have you taken HCV medication in the past which did not work to treat and cure your Hepatitis C ?';
	label sdem_wil_fol='If part of the study, would you be willing to come back for regular visits over an 18 month period? ';
	label sdem_elig='';
	label sdem_hcv_etst='Have you ever been tested for HCV? ';
	label sdem_hcv_rtst='When was your most recent HCV test? (year/month/day)';
	label sdem_hcv_rtst_r='What was the result of your most recent HCV test? ';
	label sdem_hcv_etst_w___0='Why have you never been tested for HCV?  (choice=I dont think that I am at risk for HCV)';
	label sdem_hcv_etst_w___1='Why have you never been tested for HCV?  (choice=I dont have transportation)';
	label sdem_hcv_etst_w___2='Why have you never been tested for HCV?  (choice=I dont know where to go for testing)';
	label sdem_hcv_etst_w___3='Why have you never been tested for HCV?  (choice=I dont have enough time)';
	label sdem_hcv_etst_w___4='Why have you never been tested for HCV?  (choice=I dont have child care)';
	label sdem_hcv_etst_w___5='Why have you never been tested for HCV?  (choice=The testing site is too far)';
	label sdem_hcv_etst_w___6='Why have you never been tested for HCV?  (choice=I dont like the people at the testing site)';
	label sdem_hcv_etst_w___7='Why have you never been tested for HCV?  (choice=I am worried about confidentiality)';
	label sdem_hcv_etst_w___8='Why have you never been tested for HCV?  (choice=I might be recognized at the testing site)';
	label sdem_hcv_etst_w___9='Why have you never been tested for HCV?  (choice=There is no cure so why get tested?)';
	label sdem_hcv_etst_w___10='Why have you never been tested for HCV?  (choice=I cant afford the HCV test)';
	label sdem_hcv_etst_w___11='Why have you never been tested for HCV?  (choice=I cant afford treatment, so why get tested?)';
	label sdem_hcv_etst_w___12='Why have you never been tested for HCV?  (choice=I dont want to know my results)';
	label sdem_hcv_etst_w___13='Why have you never been tested for HCV?  (choice=I am afraid of losing my health insurance)';
	label sdem_hcv_etst_w___14='Why have you never been tested for HCV?  (choice=I am afraid of losing my partner)';
	label sdem_hcv_etst_w___15='Why have you never been tested for HCV?  (choice=I dont think getting tested for HCV is necessary)';
	label sdem_hcv_etst_w___16='Why have you never been tested for HCV?  (choice=I dont care about getting tested for HCV)';
	label sdem_hiv_rtst='When was your most recent HIV test? (year/month/day)';
	label shhr_hiv_etstw___0='Why have you never been tested for HIV? (choice=I dont think that I am at risk for HIV)';
	label shhr_hiv_etstw___1='Why have you never been tested for HIV? (choice=I dont have transportation)';
	label shhr_hiv_etstw___2='Why have you never been tested for HIV? (choice=I dont know where to go for testing)';
	label shhr_hiv_etstw___3='Why have you never been tested for HIV? (choice=I dont have enough time)';
	label shhr_hiv_etstw___4='Why have you never been tested for HIV? (choice=I dont have child care)';
	label shhr_hiv_etstw___5='Why have you never been tested for HIV? (choice=The testing site is too far)';
	label shhr_hiv_etstw___6='Why have you never been tested for HIV? (choice=I dont like the people at the testing site)';
	label shhr_hiv_etstw___7='Why have you never been tested for HIV? (choice=I am worried about confidentiality)';
	label shhr_hiv_etstw___8='Why have you never been tested for HIV? (choice=I might be recognized at the testing site)';
	label shhr_hiv_etstw___9='Why have you never been tested for HIV? (choice=There is no cure so why get tested?)';
	label shhr_hiv_etstw___10='Why have you never been tested for HIV? (choice=I cant afford the HIV test)';
	label shhr_hiv_etstw___11='Why have you never been tested for HIV? (choice=I cant afford treatment, so why get tested?)';
	label shhr_hiv_etstw___12='Why have you never been tested for HIV? (choice=I dont want to know my results)';
	label shhr_hiv_etstw___13='Why have you never been tested for HIV? (choice=I am afraid of losing my health insurance)';
	label shhr_hiv_etstw___14='Why have you never been tested for HIV? (choice=I am afraid of losing my partner)';
	label shhr_hiv_etstw___15='Why have you never been tested for HIV? (choice=I dont think getting tested for HIV is necessary)';
	label shhr_hiv_etstw___16='Why have you never been tested for HIV? (choice=I dont care about getting tested for HIV)';
	label shhr_hiv_etstw___17='Why have you never been tested for HIV? (choice=Other)';
	label shhr_hiv_etstw_ot='Other, please specify:';
	label shhr_tst_cunt='How many times have you been tested for HIV in your lifetime?';
	label shhr_tst_fst='When did you have your first HIV test? (year/month)';
	label shhr_tstr_cunt='About how many times of the times that you were tested for HIV in your lifetime have you received your HIV test results?';
	label shhr_ntst_r='Thinking about the last time you didn''t get your HIV result, what was the main reason you didn''t get your result?';
	label shhr_tst_plc='Where did you get your most recent HIV test?';
	label shhr_tst_r='Did you receive the results of your most recent test? ';
	label shkq_1='People with HCV can safely share their toothbrushes and razors with other people';
	label shkq_2='Nowadays, HCV can be treated in 6 months or less with oral medications';
	label shkq_3='People with HCV can safely take any herbal medicine';
	label shkq_4='People who are HIV+ can also receive HCV treatment';
	label shkq_5='People living with HCV can damage their liver when they drink alcohol';
	label shkq_6='People who received a blood transfusion in the US before 1992 may have been infected with HCV';
	label shkq_7='To help stop the spread of HCV, a person with HCV should not share any injection drug equipment';
	label shkq_8='There is a HCV vaccine that can be used to prevent people from getting infected with the HCV virus';
	label shkq_9='It is a good idea for people living with HCV to be vaccinated against Hepatitis A and B';
	label shkq_10='Studies show that more than 60% of people who inject street drugs with ''used needles'' are infected with HCV';
	label shkq_11='People can live with HCV for many years without knowing that they have been infected with the virus';
	label shkq_12='There is some risk that HCV can be given to someone by snorting cocaine with shared straws, rolled money, etc.';
	label preg_result='Rapid pregnancy test result ';
	label scr_c_hcv_res='Rapid HCV Test - OraQuick result ';
	label insti='Rapid HIV Test - INSTI result ';
	label sdem_slep6m='During the past six months, where did you live or sleep most of the time? ';
	label sdem_slep6m_ot='Other, please specify ';
	label sdem_live6m_hls='Homeless';
	label sdem_live6m_shl1='In a shelter';
	label sdem_live6m_trs='Transitional';
	label sdem_live6m_htl='Permanent single-room occupancy hotel';
	label sdem_live6m_hiv='HIV/AIDS housing/group home';
	label sdem_live6m_sut='Drug treatment facility';
	label sdem_live6m_shl2='Other residential facility or institution';
	label sdem_live6m_shl3='Staying with family/friends';
	label sdem_live6m_shl4='Rent';
	label sdem_live6m_shl5='Owner';
	label sdem_fod_qul='Over the past 4 weeks, which of the following describes the amount of food you have had available to eat?';
	label sdem_fod_frq='How many days in the previous 4 weeks have you gone with no food or not enough money to buy food?';
	label sdem_ild='Have you used drugs other than those prescribed to you for medical purposes in the past? ';
	label sdem_ild_txt='Which drugs?';
	label sdem_idu='Have you ever used injection drugs in the past? ';
	label sdem_idu_6m='Have you used injection drugs in the past 6 months? ';
	label sdem_idu_tim='When was the last time you injected drugs? (year/month/day)';
	label sdem_idu6m___0='During the past 6 months, did you ever:  (choice=Reuse a needle without cleaning it with bleach or boiling water first?)';
	label sdem_idu6m___1='During the past 6 months, did you ever:  (choice=Use a needle that you knew or suspected someone else had used before?)';
	label sdem_idu6m___2='During the past 6 months, did you ever:  (choice=Use someone elses rinse water, cooker, or cotton after they did?)';
	label sdem_idu6m___3='During the past 6 months, did you ever:  (choice=Ever skip cleaning your needle with bleach or boiling water after you were done using it?)';
	label sdem_idu6m___4='During the past 6 months, did you ever:  (choice=Let someone else use a needle after you used it?)';
	label sdem_idu6m___5='During the past 6 months, did you ever:  (choice=Let someone else use the rinse water, cooker, or cotton after you did?)';
	label sdem_idu6m___6='During the past 6 months, did you ever:  (choice=Allow someone else to inject you with drugs?)';
	label sdem_idu6m___7='During the past 6 months, did you ever:  (choice=None of the above/Not applicable)';
	label shlt_r='How often do you have someone help you read hospital materials?';
	label shlt_l='How often do you have problems learning about your medical condition because of difficulty understanding written information?';
	label shlt_f='How confident are you filling out medical forms by yourself?';
	label sdem_dis_hcv='HCV status';
	label sdem_dis_hiv='HIV status';
	label sdem_dis_sex='Gender';
	label sdem_dis_gay='Sexual Orientation or Practice';
	label sdem_dis_race='Race or ethnicity';
	label sdem_dis_sub='Drug use';
	label result_insti_2='Was active referral provided following reactive rapid HIV test result?';
	label sdem_int_evr='Is this the first time that you have been interviewed by someone on our staff to see if you are eligible to participate in this study? ';
	label sdem_int_elg='What was the outcome of the last time you spoke to us about the study? (choose one) ';
	label sdem_int_elg_ot='Other, please specify ';
	label sdem_int_chge='What happened the last time you spoke to us about the study? (open text)  ';
	label screening_complete='Complete?';
	label vir_dbs='Date virology blood sample was drawn ';
	label vir_tbs='Time blood sample was drawn ';
	label vir_insti='Rapid HIV Test (INSTI)';
	label vir_rapid='Rapid HCV (OraQuick rapid)';
	label vir_rna2='HCV RNA';
	label vir_rna2_val='value:';
	label vir_hcvgen='HCV genotype value:';
	label vir_pan_cd='Carbon Dioxide (CO2)';
	label vir_pan_cl='Chloride (Cl)';
	label vir_pan_k='Potassium (K)';
	label vir_pan_na='Sodium (Na)';
	label vir_pan_phos='Phosphorus (P)';
	label vir_serum='Serum creatinine value:';
	label vir_hbs='Anti-HBs';
	label vir_hbc='Anti-HBc';
	label vir_a='HBs Ag';
	label vir_hav='Hepatitis A IgG/IgM';
	label vir_cbc_wbc='WBC';
	label vir_cbc_rbc='RBC';
	label vir_cbc_hem='Hemoglobin';
	label vir_cbc_hem_2='Hematocrit';
	label vir_cbc_mcv='MCV';
	label vir_cbc_mch='MCH';
	label vir_cbc_mchc='MCHC';
	label vir_cbc_rdw='RDW';
	label vir_cbc_plat='Platelet Count';
	label vir_cbc_mpv='MPV';
	label vir_cbc_neut='Neutrophils (Absolute)';
	label vir_cbc_lym='Lymphocytes (Absolute)';
	label vir_cbc_mon='Monocytes (Absolute)';
	label vir_cbc_eos='Eosinophils (Absolute)';
	label vir_cbc_baso='Basophils (Absolute)';
	label vir_aspami='Aspartate aminotransferase value:';
	label vir_alaami='Alanine aminotransferase value:';
	label vir_alkpho='Alkaline phosphatase value:';
	label vir_bili='Total bilirubin value:';
	label vir_albumin='Albumin value:';
	label vir_inr='Prothrombin Time PT/INR';
	label vir_bts='Blood test for Syphilis value:';
	label vir_ot='Other tests:';
	label comment='Other comments:';
	label screening_specific_c_v_0='Complete?';
	label vt_dvs='Date vital signs were taken ';
	label vt_tvs='Time vital signs were taken ';
	label vt_bpm='Heart rate (bpm)';
	label vt_mmhg='Blood pressure (mmHg)';
	label vt_minute='Respiratory rate ';
	label vt_temp='Temperature';
	label vt_f='';
	label vt_c='';
	label vt_height='Height ';
	label vt_in='';
	label vt_cm='';
	label vt_weight='Weight ';
	label vt_lb='';
	label vt_kg='';
	label vt_cir='Waist circumference';
	label vt_cir_in='';
	label vt_cir_cm='';
	label vital_signs_complete='Complete?';
	label ec_fem_0_ps='(i) post-menopausal (12 months of spontaneous amenorrhea and ≥45 years of age)';
	label ec_fem_1_ps='(ii) documented surgically sterilized (i.e., tubal ligation, hysterectomy, or bilateral oophorectomy)';
	label ec_fem_2_ps='(i) has a negative pregnancy test at screening (pregnancy test result [screening__phase_1_arm_1][preg_result])';
	label ec_fem_3_ps='(ii) agrees to use an acceptable method of birth control throughout study; (patient reports [screening__phase_1_arm_1][sdem_prg_ct18])';
	label ec_exc_1_ps='A disabling medical condition (severe and/or unstable hepatic, neurologic, cardiac, or renal disease) as assessed by medical history, physical exam, vital signs and/or laboratory assessments that, in the opinion of the study physician, precludes safe participation in the study or the ability to provide fully informed consent';
	label ec_exc_2_ps='A disabling, unstable or acute mental condition that in the opinion of the study physician precludes safe participation in the study or ability to provide fully informed consent';
	label ec_exc_3_ps='Symptoms of acute HIV infections';
	label ec_exc_4_ps='Chronic renal failure ( <         60 ml/min )';
	label ec_exc_5_ps='Decompensated cirrhosis or history of decompensated cirrhosis';
	label ec_exc_6_ps='History of a severe adverse event, hypersensitivity reaction, or allergic reaction to either Truvada or Epclusa';
	label ec_exc_7_ps='A contraindication to the study medications';
	label ec_exc_8_ps='Prior HCV treatment failure with direct-acting antiviral regimens (patient reported [screening1_arm_1][sdem_hcv_fail] to question if had prior failure of HCV trx w DAA regimen)';
	label ec_exc_11_ps='Currently taking PrEP (Pre-Exposure Prophylaxis)? (patient reports [screening__phase_1_arm_1][sdem_prp_cu])';
	label ec_exc_12_ps='Currently taking HCV medications? (patient reports [screening__phase_1_arm_1][sdem_hcv])';
	label ec_sign_ps='I have reviewed the eligibility requirements for this participant in its entirety and acknowledge this participant meets all inclusion criteria for the M2HepPrEP study';
	label comment_elig2='Other comments (please explain reasons for non-eligibility)';
	label initial='Please initial';
	label physician_checklist_complete='Complete?';
	label ur_test_bas___0='Urine pregnancy test (choice=No)';
	label ur_test_bas___1='Urine pregnancy test (choice=Yes)';
	label ur_test_bas___2='Urine pregnancy test (choice=Not applicable)';
	label result_upt_bas='Result';
	label dbs_bas='Dried blood spot';
	label ct_bas___1='Chlamydia Trachomatis (choice=Urine test)';
	label ct_bas___2='Chlamydia Trachomatis (choice=Oral test)';
	label ct_bas___3='Chlamydia Trachomatis (choice=Other test)';
	label ng_test_bas___1='Neisseria Gonorrahea (choice=Urine test)';
	label ng_test_bas___2='Neisseria Gonorrahea (choice=Oral test)';
	label ng_test_bas___3='Neisseria Gonorrahea (choice=Other test)';
	label vir_ct_oral='Chlamydia trachomatis CT (oral)';
	label vir_ct_uro='Chlamydia trachomatis CT (urogenital)';
	label vir_ct_rec='Chlamydia trachomatis CT (rectal)';
	label vir_ng_oral='Neisseria gonorrhoeae NG (oral)';
	label vir_ng_uro='Neisseria gonorrhoeae NG (urogential)';
	label vir_ng_rec='Neisseria gonorrhoeae NG (rectal)';
	label baseline_specific_co_v_1='Complete?';
	label date_of_specimen_3m='Date of specimen collection';
	label ur_test_bas_3m='Urine pregnancy test';
	label result_upt_bas_3m='Result';
	label dbs_bas_3m='Dried blood spot';
	label ct_bas_3m___1='Chlamydia Trachomatis (choice=Urogenital test)';
	label ct_bas_3m___2='Chlamydia Trachomatis (choice=Oral test)';
	label ct_bas_3m___3='Chlamydia Trachomatis (choice=Rectal test)';
	label ct_bas_3m___4='Chlamydia Trachomatis (choice=Other test)';
	label ct_other_3m='Please specify ';
	label ng_test_bas_3m___1='Neisseria Gonorrahea (choice=Urogenital test)';
	label ng_test_bas_3m___2='Neisseria Gonorrahea (choice=Oral test)';
	label ng_test_bas_3m___3='Neisseria Gonorrahea (choice=Rectal test)';
	label ng_test_bas_3m___4='Neisseria Gonorrahea (choice=Other test)';
	label chlamydia_other_2='Please Specify';
	label vir_ct_oral_3m='Chlamydia trachomatis CT (oral)';
	label vir_ct_uro_3m='Chlamydia trachomatis CT (urogenital)';
	label vir_ct_rec_3m='Chlamydia trachomatis CT (rectal)';
	label vir_ng_oral_3m='Neisseria gonorrhoeae NG (oral)';
	label vir_ng_uro_3m='Neisseria gonorrhoeae NG (urogential)';
	label vir_ng_rec_3m='Neisseria gonorrhoeae NG (rectal)';
	label vir_ng_other_3m='Neisseria gonorrhoeae NG (Other)';
	label vir_ct_other_3m='Chlamydia trachomatis CT (Other)';
	label syphilis_3m='RPR (DX) w/refl tite and confirmatory testing';
	label hcv_status_3m='Participant HCV Status  ';
	label hcv_ant_3m='HCV Antibody Test Performed ';
	label hcv_ant_res_3m='HCV Antibody Result ';
	label hcv_notest_reason_3m='Reason HCV Ab Test not performed';
	label hcv_rna_quan_3m='HCV RNA Quantitative Result:';
	label hcv_geno_3m='HCV Genotype:';
	label hcv_rna_quan_12wkp_3m='HCV RNA Quantitative Test- 12 weeks post treatment initiation';
	label hcv_rna_quan_12wkp_3m_q='HCV RNA Quantitative Test Result - 12 weeks post treatment initiation';
	label hcv_rna_quan_12wkp_why_3m='Reason why test not performed ';
	label hiv_ab_3m='HIV Ab Test Performed';
	label hiv_noanti_rea_3m='Reason HIV-1/HIV-2 Antibody not performed';
	label hbv_sur_ant_3m='Hepatitis B Surface Antigen ';
	label hbv_nop_rea_3m='Reason Hepatitis B Test not performed';
	label serum_creatinine_3m='Serum Creatinine Result (mg/dL)';
	label comments_3m='Comments or observations';
	label fu_specific_collecti_v_2='Complete?';
	label baseline_timestamp='Survey Timestamp';
	label dem_visit='Visit Date';
	label idu_cnty='FOR THE INTERVIEWER: Is the participant accessing services in Canada or the United States? ';
	label dem_gender='With regards to gender, do you think of yourself as: ';
	label dem_gender_ot='Other: Please specify';
	label dem_gender_t='Do you identify as a transgender ______ ';
	label dem_gender_s='Have you had reassignment surgery? ';
	label dem_gender_id='With regards to sexual identity, do you think of yourself as:';
	label dem_gender_id_ot='Other: Please specify';
	label dem_residence='Where is your country of residence?';
	label dem_race_hisp='Are you of Hispanic, Latin, or Spanish origins? ';
	label dem_aborig='Do you identify as being part of the First Nations, Metis, or Inuk (Inuit)?';
	label dem_indian1='Are you a Status Indian (Registered or Treaty Indian) as defined by the Indian Act of Canada? ';
	label dem_indian2='Are you a member of a First Nation/Indian Band? ';
	label dem_indian3='Please specify what First Nation/Indian Band you are a member of:';
	label dem_race='What is your race?';
	label dem_race_ot='Other: Please specify';
	label dem_ethnic='What ethnic group do you most closely identify with? ';
	label dem_trip_time='How long does it take you to travel one-way to get here?  (HH:MM)';
	label dem_trip_trans='How do you usually travel here?';
	label dem_trip_ot='Other: please specify';
	label dem_edu='What is the highest grade or level of school you have completed or the highest degree you have received?';
	label dem_marital='What is your marital status?';
	label dem_employ='We would like to know about what you do, are you:';
	label dem_employ_ot='Other: Please specify';
	label dem_hltins='Are you covered by health insurance or another health care plan?';
	label dem_hltins_can='FOR THE INTERVIEWER: Is this participant accessing the American or Canadian healthcare system? ';
	label dem_hltins_t0='Private health insurance';
	label dem_hltins_t1='Medicare';
	label dem_hltins_t2='Medi-gap';
	label dem_hltins_t3='Medicaid';
	label dem_hltins_t4='State Children''s Health Insurance Program  (SCHIP)';
	label dem_hltins_t5='Veterans Affairs (VA) Insurance';
	label dem_hltins_t6='State-sponsored health plan';
	label dem_hltins_t7='Other government programs';
	label dem_hltins_t8='Single service plan';
	label dem_hltins_t9='ADAP';
	label dem_hltins_t10='Other insurance';
	label dem_hltins_t11='State the plan name for SCHIP:';
	label dem_hltins_t12='State the plan name for your State-sponsored health plan:';
	label dem_hltins_t13='Other: Please specify';
	label dem_hltins_t14='Do you have provincial health insurance card? ';
	label dem_hltins_t15___0='What kind of health insurance or prescription drug coverage do you have? (choice=Persons with disability)';
	label dem_hltins_t15___1='What kind of health insurance or prescription drug coverage do you have? (choice=Private insurance)';
	label dem_hltins_t15___2='What kind of health insurance or prescription drug coverage do you have? (choice=Pharmacare)';
	label dem_hltins_t15___3='What kind of health insurance or prescription drug coverage do you have? (choice=Régie de lassurance maladie du Québec (RAMQ))';
	label dem_hltins_t15___4='What kind of health insurance or prescription drug coverage do you have? (choice=Indigenous Health Care)';
	label dem_hltins_t15___5='What kind of health insurance or prescription drug coverage do you have? (choice=Other)';
	label dem_hltins_t16='Other: Please specify';
	label sub_ever___1='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Heroin IV)';
	label sub_ever___2='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Heroin smoked or snorted)';
	label sub_ever___3='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Cocaine IV (powder))';
	label sub_ever___4='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Cocaine IV (from crack))';
	label sub_ever___5='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Cocaine smoked (powder))';
	label sub_ever___6='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Cocaine smoked (freebase, crack))';
	label sub_ever___7='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Cocaine snorted)';
	label sub_ever___8='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Speedball  (heroin and cocaine or other opiates in the same syringe))';
	label sub_ever___9='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Suboxone IV, for non-medical purposes)';
	label sub_ever___10='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Suboxone non-injected, for non-medical purposes)';
	label sub_ever___11='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Methadone IV, for non-medical purposes)';
	label sub_ever___12='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Methadone non-injected, for non-medical purposes)';
	label sub_ever___13='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Amphetamines and other psychostimulants IV (speed, crystal, meth, ice))';
	label sub_ever___14='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Amphetamines and other psychostimulants non- injected, as tablet, puff, or other (speed, crystal, meth, ice))';
	label sub_ever___15='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Barbiturates IV (barbs, goofball) for non-medical purposes)';
	label sub_ever___16='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Barbiturates (barbs, goofball), non- injected, for non-medical purposes)';
	label sub_ever___17='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Tranquilizers IV (downers, peanuts, benzos), for non-medical purposes)';
	label sub_ever___18='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Tranquilizers non-injected (downers, peanuts, benzos), for non-medical purposes)';
	label sub_ever___19='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Cannabis (for non-medical purposes), marijuana, hashish, pot, weed)';
	label sub_ever___20='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Psychedelic drugs IV  (LSD, PCP, Mescaline, MDA, MDMA, Ecstasy, DMT, Mushrooms, Ketamine, GHB))';
	label sub_ever___21='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Psychedelic drugs non-injected (LSD, PCP, Mescaline, MDA, MDMA, Ecstasy, DMT, Mushrooms, Ketamine, GHB))';
	label sub_ever___22='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Other injected opiates, for non medical purposes)';
	label sub_ever___23='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Other non-injected opiates, for non medical purposes)';
	label sub_ever___24='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Other injected medication, for non medical purposes)';
	label sub_ever___25='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Other non-injected medications, for non medical purposes)';
	label sub_ever___26='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Other)';
	label sub_ever___27='Have you ever used any of the following drugs or psychoactive substances in your lifetime?  (choice=Fentanyl)';
	label sub_ever26_ot='If other, please specify';
	label sub_6m1='Heroin IV';
	label sub_6m2='Heroin smoked or snorted';
	label sub_6m3='Cocaine IV (powder)';
	label sub_6m4='Cocaine IV (from crack)';
	label sub_6m5='Cocaine smoked (powder)';
	label sub_6m6='Cocaine smoked (freebase, crack)';
	label sub_6m7='Cocaine snorted';
	label sub_6m8='Speedball  (heroin and cocaine or other opiates in the same syringe)';
	label sub_6m9='Suboxone IV, for non-medical purposes';
	label sub_6m10='Suboxone non-injected, for non-medical purposes';
	label sub_6m11='Methadone IV, for non-medical purposes';
	label sub_6m12='Methadone non-injected, for non-medical purposes';
	label sub_6m13='Amphetamines and other psychostimulants IV (speed, crystal, meth, ice)';
	label sub_6m14='Amphetamines and other psychostimulants non- injected, as tablet, puff, or other (speed, crystal, meth, ice)';
	label sub_6m15='Barbiturates IV (barbs, goofball) for non-medical purposes';
	label sub_6m16='Barbiturates (barbs, goofball), non- injected, for non-medical purposes';
	label sub_6m17='Tranquilizers IV (downers, peanuts, benzos), for non-medical purposes';
	label sub_6m18='Tranquilizers non-injected (downers, peanuts, benzos), for non-medical purposes';
	label sub_6m19='Cannabis (for non-medical purposes), marijuana, hashish, pot, weed';
	label sub_6m20='Psychedelic drugs IV  (LSD, PCP, Mescaline, MDA, MDMA, Ecstasy, DMT, Mushrooms, Ketamine, GHB)';
	label sub_6m21='Psychedelic drugs non-injected (LSD, PCP, Mescaline, MDA, MDMA, Ecstasy, DMT, Mushrooms, Ketamine, GHB)';
	label sub_6m22='Other injected opiates, for non medical purposes';
	label sub_6m23='Other non-injected opiates, for non medical purposes';
	label sub_6m24='Other injected medication, for non medical purposes';
	label sub_6m25='Other non-injected medications, for non medical purposes';
	label sub_6m26='Other';
	label sub_6m27='Fentanyl';
	label sub_frq1m='How many days in the last month did you use any and/or all of substances listed above?';
	label sub_idu1m_her='In the past month, did you inject heroin? ';
	label sub_idu1m_her_frq='In the past month, how many days in total did you inject heroin? ';
	label sub_idu1m_her_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_her='In the past month, did you smoke or snort heroin through your nose?';
	label sub_1m_her_frq='In the past month, how many days in total did you smoke or snort heroin through your nose? ';
	label sub_1m_her_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_cp='In the past month, did you inject cocaine (powder)?';
	label sub_idu1m_cp_frq='In the past month, how many days in total did you inject cocaine (powder)?';
	label sub_idu1m_cp_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_fent='In the past month, did you inject Fentanyl?';
	label sub_idu1m_fent_frq='In the past month, how many days in total did you inject Fentanyl?';
	label sub_idu1m_fent_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_cc='In the past month, did you inject cocaine (from crack)?';
	label sub_idu1m_cc_frq='In the past month, how many days in total did you inject cocaine (from crack)?';
	label sub_idu1m_cc_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_cp='In the past month, did you smoke cocaine (powder)?';
	label sub_1m_cp_frq='In the past month, how many days in total did you smoke cocaine (powder)?  ';
	label sub_1m_cp_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_cc='In the past month, did you smoke cocaine (freebase, crack)?';
	label sub_1m_cc_frq='In the past month, how many days in total did you smoke cocaine (freebase, crack)? ';
	label sub_1m_cc_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_cs='In the past month, did you snort cocaine through your nose?';
	label sub_1m_cs_frq='In the past month, how many days in total did you snort cocaine through your nose? ';
	label sub_1m_cs_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_sb='In the past month, did you inject speedball, that is, a mix of cocaine and heroin or other opiates in the same syringe? ';
	label sub_idu1m_sb_frq='In the past month, how many days in total did you inject speedball, that is, a mix of cocaine and heroin or other opiates in the same syringe? ';
	label sub_idu1m_sb_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_sox='In the past month, did you inject suboxone for non-medical purposes?';
	label sub_idu1m_sox_frq='In the past month, how many days in total did you inject suboxone for non-medical purposes? ';
	label sub_idu1m_sox_frqm='How many mg per day of suboxone did you inject for non-medical purposes? ';
	label sub_1m_sox='In the past month, did  you take non-injected suboxone for non-medical purposes?';
	label sub_1m_sox_frq='In the past month, how many days in total did you take non-injected suboxone for non-medical purposes? ';
	label sub_1m_sox_frqm='How many mg of suboxone did you take non-injected for non-medical purposes? ';
	label sub_idu1m_meth='In the past month, did you inject methadone for non-medical purposes?';
	label sub_idu1m_meth_frq='In the past month, how many days in total did you inject methadone for non-medical purposes? ';
	label sub_idu1m_meth_frqm='How many mg per day of methadone did you inject for non-medical purposes?';
	label sub_1m_meth='In the past month, did you take non-injected methadone for non-medical purposes?';
	label sub_1m_meth_frq='In the past month, how many days in total did you take non-injected methadone for non-medical purposes? ';
	label sub_1m_meth_frqm='How many mg of methadone did you take non-injected for non-medical purposes?';
	label sub_idu1m_aph='In the past month, did you inject amphetamines or other psychostimulants (speed, crystal, meth, ice)?';
	label sub_idu1m_aph_frq='In  the past month, how many days in total did you inject amphetamines or other psychostimulants (speed, crystal, meth, ice)?';
	label sub_idu1m_aph_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_aph='In the past month, did you take amphetamines or other psychostimulants non-injected in tablet, puff, or other form (speed, crystal, meth, ice)?';
	label sub_1m_aph_frq='In the past month, how many days in total did you take amphetamines or other psychostimulants non-injected in tablet, puff, or other form (speed, crystal, meth, ice)?';
	label sub_1m_aph_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_barb='In the past month, did you inject barbiturates (barbs, goofballs) for non-medical purposes?';
	label sub_idu1m_barb_frq='In the past month, how many days in total did you inject barbiturates (barbs, goofballs) for non-medical purposes? ';
	label sub_idu1m_barb_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_barb='In the past month, did you take barbiturates (barbs, goofballs) for non-medical purposes?';
	label sub_1m_barb_frq='In the past month, how many days in total did you take barbiturates (barbs, goofballs) for non-medical purposes? ';
	label sub_1m_barb_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_traq='In the past month, did you inject tranquilizers for non-medical purposes (downers, peanuts, benzos)?';
	label sub_idu1m_traq_frq='In the past month, how many days in total did you inject tranquilizers for non-medical purposes (downers, peanuts, benzos)? ';
	label sub_idu1m_traq_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_traq='In the past month, did you take tranquilizers for non-medical purposes (downers, peanuts, benzos)?';
	label sub_1m_traq_frq='In the past month, how many days in total did you take tranquilizers for non-medical purposes (downers, peanuts, benzos)? ';
	label sub_1m_traq_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_marj='In the past month, did you use cannabis, marijuana, hashish, pot, weed, etc. for non-medical purposes?';
	label sub_1m_marj_frq='In the past month, how many days in total did you use cannabis, marijuana, hashish, pot, weed, etc. for non-medical purposes?  ';
	label sub_1m_marj_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_psy='In the past month, did you inject psychedelic drugs (LSD, PCP, mescaline, MDA, MDMA, Ecstasy, DMT, mushrooms, ketamine, GHB)?';
	label sub_idu1m_psy_frq='In the past month, how many days in total did you inject psychedelic drugs (LSD, PCP, mescaline, MDA, MDMA, Ecstasy, DMT, mushrooms, ketamine, GHB)? ';
	label sub_idu1m_psy_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_psy='In the past month, did you take psychedelic drugs (LSD, PCP, mescaline, MDA, MDMA, Ecstasy, DMT, mushrooms, ketamine, GHB)?';
	label sub_1m_psy_frq='In the past month, how many days in total did you take psychedelic drugs (LSD, PCP, mesacline, MDA, MDMA, Ecstasy, DMT, mushrooms, ketamine, GHB)? ';
	label sub_1m_psy_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu6m_oop='What other opiates did you inject in the past six months? ';
	label sub_idu6m_oop_frq='If more than one opiate, which one did you inject most often? ';
	label sub_idu1m_oop='Did you inject this other opiate in the past month? ';
	label sub_idu1m_oop_frq='In the past month, how many days in total did you inject this other opiate? ';
	label sub_idu1m_oop_frqm1='On average, how many mg a day of this other opiate do you inject? ';
	label sub_idu1m_oop_frqm2='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_oop_fit='In the past month, when you did a hit of this other opiate, has it happened that the mixture did not all fit into the syringe? ';
	label sub_idu1m_oop_fit1='Did it happen that you had to inject yourself several times because the syringe could not hold all the liquid? ';
	label sub_idu1m_oop_fit2='Has it happened at least once that you injected yourself several times using a single syringe because the syringe could not hold all of the liquid? (choose one)';
	label sub_idu1m_oop_lo='In the past month, did it happen that you injected yourself with left overs of this other opiate extracted from a filter and/or a container? ';
	label sub_idu1m_oop_lo1='Had this filter or container been used by someone else beforehand? ';
	label sub_idu1m_oop_lo2='In the past month, did it happen to give someone else your left overs of this other opiate extracted from a filter and/or a container that you had used? ';
	label sub_6m_oop='In the past six months, what other opiates have you used non-injected?';
	label sub_6m_oop_frq='If more than one opiate, which one did you inject most often? (Skip question if participant named only one other opiate in previous question)';
	label sub_1m_oop='Did you use this other non-injected opiate in the last month? ';
	label sub_1m_oop_frq='In the past month, how many days in total did you use this other opiate? ';
	label sub_1m_oop_frqm1='On average, how many mg a day of this other opiate did you use?';
	label sub_1m_oop_frqm2='On average, how many times a day did you do it? (choose one) ';
	label sub_idu6m_om='In the past six months, what other medication did you inject for non-medical purposes (including Ritalin) ? ';
	label sub_idu1m_om='Did you inject this other medication for non-medical purposes (including Ritalin) in the last month? ';
	label sub_idu1m_om_frq='In the past month, how many days in total did you inject other medication for non-medical purposes? ';
	label sub_idu1m_om_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_6m_om='In the past six months, what other medication did you take for non-medical purposes (including Ritalin)?  ';
	label sub_1m_om='Did you take this other medication for non-medical purposes (including Ritalin) in the last month? ';
	label sub_1m_om_frq='In the past month, how many days in total did you take other medication for non-medical purposes? ';
	label sub_1m_om_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_idu6m_ot='Did you inject any of these other drugs? ';
	label sub_idu6m_ott='Which other drugs did you inject in the past six months?  ';
	label sub_idu1m_ot='Did you inject these other drugs in the last month? ';
	label sub_idu1m_ot_frq='In the past month, how many days in total did you inject these other drugs?';
	label sub_idu1m_ot_frqm='On average, how many times a day did you do it? (choose one) ';
	label sub_nidu6m_ot='Did you use any other drugs non-injected?';
	label sub_nidu6m_ot_non='Which other drugs did you take (non-injected) in the past six months? ';
	label sub_nidu1m_ot='Did you use these other (non-injected) drugs in the last month? ';
	label sub_nidu1m_ot_frq='In the past month, how many days in total did you take these other (non-injected) drugs?';
	label sub_nidu1m_ot_frqm='On average, how many times a day did you do it? (choose one) ';
	label auc_1='How often do you have a drink of alcohol?';
	label auc_2='How many drinks containing alcohol do you have on a typical occasion when drinking?';
	label auc_11='How often do you have 4 or more standard drinks on one occasion?';
	label auc_12='How often do you have 5 or more standard drinks on one occasion?';
	label auc_3='How often do you have 6 or more drinks on one occasion?';
	label auc_4='How often during the past 6 months have you found that you were unable to stop drinking once you started? ';
	label auc_5='How often during the past 6 months have you failed to do what was normally expected of you because of drinking?';
	label auc_6='How often during the past 6 months have you needed a first drink in the morning to get yourself going after a heavy drinking session?';
	label auc_7='How often during the past 6 months have you felt guilt or remorse after drinking?';
	label auc_8='How often during the past 6 months have you been unable to remember what happened the night before because of drinking?';
	label auc_9=' Have you or someone else been injured as a result of your drinking?';
	label auc_10='Has a relative, friend, doctor, or other health worker, been concerned about your drinking or suggested you cut down?';
	label dst_1='Have you used drugs other than those required for medical reasons?';
	label dst_2='Do you use more than one drug at a time? ';
	label dst_3='Are you always able to stop using drugs when you want to? ';
	label dst_4='Have you had blackouts or flashbacks as a result of drug use?';
	label dst_5='Do you ever feel bad or guilty about your drug use? ';
	label dst_6='Does your spouse/partner or parents ever complain about your involvement with drugs?';
	label dst_7='Have you neglected your family because of your use of drugs?';
	label dst_8='Have you engaged in illegal activities in order to obtain drugs?';
	label dst_9='Have you ever experienced withdrawal symptoms (felt sick) when you stopped taking drugs?';
	label dst_10='Have you had medical problems as a result of your drug use (e.g., memory loss, hepatitis, convulsions, bleeding, etc.)?';
	label idu_6mplc1='In the past six months, in which city or neighborhoods did you inject most often? ';
	label idu_6mplc2___0='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=At home (room/apartment))';
	label idu_6mplc2___1='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=Public restrooms/bar/restaurant)';
	label idu_6mplc2___2='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=At a friends home)';
	label idu_6mplc2___3='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=Crack house/shooting gallery)';
	label idu_6mplc2___4='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=Street (alley/entrance way))';
	label idu_6mplc2___5='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=Park)';
	label idu_6mplc2___6='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=At the dealers)';
	label idu_6mplc2___7='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=In a sauna)';
	label idu_6mplc2___8='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=In prison / in a detention centre)';
	label idu_6mplc2___9='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=Peepshow)';
	label idu_6mplc2___10='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=Room rented for an injection period)';
	label idu_6mplc2___11='In the past six months, did you inject in any of the following places? (choose any that apply) (choice=Other)';
	label idu_6mplc2_ot='Other, please specify: ';
	label idu_plc='Where do you inject most often? (choose one)';
	label idu_1m_day='How many days during the last month, starting from today''s date, did you inject drugs? ';
	label idu_frq_pday='In the [idu_1m_day] days that you said you have injected drugs in the last month, how many  times did you inject per day?';
	label idu_2m_day='How many days in the last 60 days, starting from today''s date, did you inject drugs? ';
	label idu_3m_day='How many days in the last 90 days, starting from today''s date, did you inject drugs? ';
	label idu_ru_6m='How many times have you re-used the same syringe in the past six months? ';
	label idu_hi_6m='In the past six months, how often did you need help to inject? (choose one)';
	label sidu_header4='CALCULATION : Total number of injections in the past month based on the previous answers ';
	label idu_frq='According to your answers, you have injected a total of [sidu_header4] times in the past month, does this seem correct? ';
	label idu_frq_c='If that number is incorrect, what do you think is the correct total number of times you have injected in the past month? ';
	label idu_stp_3m_ob='In the past 90 days, have you stopped injecting voluntarily or by obligation? ';
	label idu_stp_3m3='Did you stop injecting during month 3 (two months ago)?';
	label idu_stp_3m3_vb___0='When you stopped injecting during month 3, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=Voluntary)';
	label idu_stp_3m3_vb___1='When you stopped injecting during month 3, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=By obligation)';
	label idu_stp_3m3_v='How many days during month 3 did you stop injecting voluntarily? ';
	label idu_stp_3m3_b='How many days during month 3 did you stop injecting by obligation? ';
	label idu_stp_3m2='Did you stop injecting during month 2 (two months ago)?';
	label idu_stp_3m2_vb___0='When you stopped injecting during month 2, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=Voluntary)';
	label idu_stp_3m2_vb___1='When you stopped injecting during month 2, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=By obligation)';
	label idu_stp_3m2_v='How many days during month 2 did you stop injecting voluntarily?';
	label idu_stp_3m2_b='How many days during month 2 did you stop injecting by obligation? ';
	label idu_stp_3m1='Did you stop injecting during month 1 (in the past month)?';
	label idu_stp_3m1_vb___0='When you stopped injecting during month 1, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=Voluntary)';
	label idu_stp_3m1_vb___1='When you stopped injecting during month 1, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=By obligation)';
	label idu_stp_3m1_v='How many days during month 1 did you stop injecting voluntarily? ';
	label idu_stp_3m1_b='How many days during month 1 did you stop injecting by obligation? ';
	label idu_6mrec01_us='IDEA Exchange Program';
	label idu_6mrec05_us='Pharmacy';
	label idu_6mrec06_us='Other needle exchange programs(NEP)';
	label idu_6mrec07_us='Bought in the street';
	label idu_6mrec08_us='Dealer';
	label idu_6mrec09_us='Middleman (person who get syringes from a needle exchange program and distributes them on the street, free of charge)';
	label idu_6mrec10_us='Friends/partners';
	label idu_6mrec11_us='Clinic';
	label idu_6mrec13_us='Street nurse';
	label idu_6mrec14_us='Outreach worker';
	label idu_6mrec15_us='Pad';
	label idu_6mrec18_us='Supervised injection site';
	label idu_6mrec19_us='Other';
	label idu_6mrec19_ot='Other, please specify: ';
	label idu_6mrec01='Cactus';
	label idu_6mrec02='Anonyme';
	label idu_6mrec03='Spectre';
	label idu_6mrec04='Dopamine';
	label idu_6mrec05='Pharmacy';
	label idu_6mrec06='Other needle exchange programs(NEP)';
	label idu_6mrec07='Bought in the street';
	label idu_6mrec08='Dealer';
	label idu_6mrec09='Poteau (person who get syringes from a needle exchange program and distributes them on the street, free of charge)';
	label idu_6mrec10='Friends/partners';
	label idu_6mrec11='Clinic';
	label idu_6mrec12='CLSC';
	label idu_6mrec13='Street nurse';
	label idu_6mrec14='Outreach worker';
	label idu_6mrec15='Pad';
	label idu_6mrec16='Relais Méthadone';
	label idu_6mrec17='Dans la Rue (Pops)';
	label idu_6mrec18='Supervised injection site';
	label idu_6mrec19='Other';
	label idu_6mrec19_ot_2='Other, please specify: ';
	label idu_6mrecp01='What percentage of your syringes do you get from Cactus? ';
	label idu_6mrecp01_us='What percentage of your syringes do you get from the IDEA Exchange Program?';
	label idu_6mrecp02='What percentage of your syringes do you get from Anonyme? ';
	label idu_6mrecp03='What percentage of your syringes do you get from Spectre? ';
	label idu_6mrecp04='What percentage of your syringes do you get from Dopamine? ';
	label idu_6mrecp05='What percentage of your syringes do you get from the pharmacy? ';
	label idu_6mrecp06='What percentage of your syringes do you get from other needle exchange programs? ';
	label idu_6mrecp07='What percentage of your syringes do you buy off the street? ';
	label idu_6mrecp08='What percentage of your syringes do you get from a dealer? ';
	label idu_6mrecp09='What percentage of your syringes do you get from from a poteau? ';
	label idu_6mrecp09_us='What percentage of your syringes do you get from from a middle-man? ';
	label idu_6mrecp10='What percentage of your syringes do you get from friends/partners? ';
	label idu_6mrecp11='What percentage of your syringes do you get from a clinic? ';
	label idu_6mrecp12='What percentage of your syringes do you get from from CLSC ';
	label idu_6mrecp13='What percentage of your syringes do you get from a street nurse? ';
	label idu_6mrecp14='What percentage of your syringes do you get from an outreach worker? ';
	label idu_6mrecp15='What percentage of your syringes do you get from a pad? ';
	label idu_6mrecp16='What percentage of your syringes do you get from Relais Methadone? ';
	label idu_6mrecp17='What percentage of your syringes do you get from Dans la Rue (pops)? ';
	label idu_6mrecp18='What percentage of your syringes do you get from a supervised injection site? ';
	label idu_6mrecp19='What percentage of your syringes do you get from this other source?  ';
	label idu_6mnum='How many syringes, on average, did you obtain per visit when you went yourself?';
	label idu_6mnum_my='How many of these syringes were for your personal use? ';
	label idu_6mnum_ot='How many of these syringes were for other people?';
	label idu_6mkit='On average, how many kits have you obtained on each visit when you went yourself? ';
	label idu_6mkit_calc='This makes a total of [idu_6mkit] X 4 syringes';
	label idu_6mkit_my='How many of these syringes were for your personal use? ';
	label idu_6mkit_ot='How many of these syringes were for other people? ';
	label idu_6msrg='On average, how many individually bought syringes have you obtained on each visit when you went yourself?';
	label idu_6msrg_my='Of these syringes, how many were for your personal use? ';
	label idu_6msrg_ot='How many of these syringes were for other people?';
	label sdu_srg='Have you ever used a syringe which was previously used by someone else? ';
	label sdu_srg_tim='When was the last time you shared? (year/month) ';
	label sdu_srg_6m_frq='How many times have you shared a syringe in the past six months? (choose one) ';
	label sdu_srg_6m_pp='In the past six months, from how many different people have you used a syringe with which they had already injected themselves? ';
	label sdu_srg_6m_ppw___0='With whom did you use the same syringe? (choose any that apply) (choice=Girlfriend/boyfriend/spouse)';
	label sdu_srg_6m_ppw___1='With whom did you use the same syringe? (choose any that apply) (choice=Other regular sex partner)';
	label sdu_srg_6m_ppw___2='With whom did you use the same syringe? (choose any that apply) (choice=Close friend)';
	label sdu_srg_6m_ppw___3='With whom did you use the same syringe? (choose any that apply) (choice=Friends/acquintances)';
	label sdu_srg_6m_ppw___4='With whom did you use the same syringe? (choose any that apply) (choice=Family members)';
	label sdu_srg_6m_ppw___5='With whom did you use the same syringe? (choose any that apply) (choice=Drug buddies / cutter)';
	label sdu_srg_6m_ppw___6='With whom did you use the same syringe? (choose any that apply) (choice=Other business relations (client, dealer, pimp, etc. ))';
	label sdu_srg_6m_ppw___7='With whom did you use the same syringe? (choose any that apply) (choice=Strangers)';
	label sdu_srg_6m_ppw___8='With whom did you use the same syringe? (choose any that apply) (choice=Found equipment)';
	label sdu_srg_6m_ppw___9='With whom did you use the same syringe? (choose any that apply) (choice=Uncertain)';
	label sdu_srg_6m_ppw___10='With whom did you use the same syringe? (choose any that apply) (choice=Other)';
	label sdu_srg_6m_ppw_ot='Other, please specify:  ';
	label sdu_srg_6m_ppwm='Among these people, whose syringe did you use most? (choose one) ';
	label sdu_srg_pp='Enter the total number of people that the participant shared a syringe with:';
	label sdu_wrk='Have you ever used injection works which had already been used by someone else to inject? ';
	label sdu_wrk_tim='When was the last time you have used injection works which had been used by someone else to inject? (year/month).';
	label sdu_wrk_6m_frq='How many times in the past six months have you used injection works previously used by someone else? (choose one) ';
	label sdu_wrk_6m_pp='From how many people have you used previously used injection works? ';
	label sdu_wrk_6m_ppw___0='Whose works did you use? (choose any that apply) (choice=Girlfriend/boyfriend/spouse)';
	label sdu_wrk_6m_ppw___1='Whose works did you use? (choose any that apply) (choice=Other regular sex partner)';
	label sdu_wrk_6m_ppw___2='Whose works did you use? (choose any that apply) (choice=Close friend)';
	label sdu_wrk_6m_ppw___3='Whose works did you use? (choose any that apply) (choice=Friends/acquintances)';
	label sdu_wrk_6m_ppw___4='Whose works did you use? (choose any that apply) (choice=Family members)';
	label sdu_wrk_6m_ppw___5='Whose works did you use? (choose any that apply) (choice=Drug buddies / cutter)';
	label sdu_wrk_6m_ppw___6='Whose works did you use? (choose any that apply) (choice=Other business relations (client, dealer, pimp, etc. ))';
	label sdu_wrk_6m_ppw___7='Whose works did you use? (choose any that apply) (choice=Strangers)';
	label sdu_wrk_6m_ppw___8='Whose works did you use? (choose any that apply) (choice=Found equipment)';
	label sdu_wrk_6m_ppw___9='Whose works did you use? (choose any that apply) (choice=Uncertain)';
	label sdu_wrk_6m_ppw___10='Whose works did you use? (choose any that apply) (choice=Other)';
	label sdu_wrk_6m_ppw_ot='Other, please specify: ';
	label sdu_wrk_6m_ppwm='Among these people, whose works did you use most? (choose one) ';
	label sdu_wrk_pp='Enter the total number of people that the participant shared a works with ';
	label sdu_srg_hiv='In the past six months, has one or more people with whom you have shared a syringe been infected with HIV at the time? (choose one) ';
	label sdu_srg_hcv='In the past six months, has one or more people with whom you  have shared a syringe been infected with HCV at the time? (choose one) ';
	label sdu_wrk_hiv='In the past six months, has one or more people with whom you have shared injection works been infected with HIV at the time? ';
	label sdu_wrk_hcv='In the past six months, has one or more people with whom you have shared injection works been infected with HCV at the time? ';
	label sdu_tgtr='In the past six months, did you inject yourself with someone else who was injecting at the same time?';
	label odu_6m='In the past six months, have you had one or more overdoses? (choose one) ';
	label odu_6m_frq='How many overdoses have you had in the past six months? ';
	label odu_6m_frq_acdt='How many overdoses were accidental?';
	label odu_6m_tim='When was the last time you had an overdose?  (year/month/day)';
	label odu_6m_tim_acdt='Was this overdose accidental?';
	label ath_1='I am preoccupied with catching HIV.';
	label ath_2='My life would be completely disorganized if I had HIV.';
	label ath_3='I will have to change some of my life habits if I get infected with HIV.';
	label ath_4='I will be very affected emotionally if I get HIV.';
	label ath_5='I will be rejected by certain people in my life if I get HIV.';
	label ath_6='Based on your present behaviour, what is your likelihood to get infected with HIV?';
	label eis_status='FOR THE INTERVIEWER What is the participant''s HCV status  ';
	label atc_1='I am preoccupied with catching HCV. ';
	label atc_2='My life would be completely disorganized if I had HCV.';
	label atc_3='I will have to change some of my life habits if I get infected with HCV.';
	label atc_4='I will be very affected emotionally if I get HCV.';
	label atc_5='I will be rejected by certain people in my life if I get HCV.';
	label atc_6='Based on your present behaviour, what is your likelihood to get infected with HCV.';
	label eis_1='My employer/co-workers have discriminated against me. ';
	label eis_2='Some people act as though I am less competent than usual.';
	label eis_3='I feel I have been treated with less respect than usual by others.';
	label eis_4='I feel others are concerned they could catch my HCV through contact like a handshake or eating food I prepare. ';
	label eis_5='I feel others avoid me because of my HCV.';
	label eis_6='I feel some family members have rejected me because of my HCV.';
	label eis_7='I feel some friends have rejected me because of my HCV.';
	label eis_8='I encounter embarrassing situations as a result of my HCV.';
	label eis_9='Due to my HCV others seem to feel awkward and tense when they are around me.';
	label eis_10='My job security has been affected by my HCV.';
	label eis_11='I have experienced financial hardship that has affected my relationship with others.';
	label eis_12='I feel others think I am to blame for my HCV.';
	label eis_13='I do not feel I can be open with others about my HCV.';
	label eis_14='I fear someone telling others about my HCV without my permission. ';
	label eis_15='I feel I need to keep my HCV a secret. ';
	label eis_16='I feel I am at least partially to blame for my HCV.';
	label eis_17='I feel set apart from others who are well.';
	label eis_18='I have a greater need than usual for reassurance that others care about me.';
	label eis_19='Due to my HCV, I have a sense of being unequal in my relationships with others.';
	label eis_20='I feel less competent than I did before I had HCV.';
	label eis_21='Due to my HCV, I sometimes feel useless.';
	label eis_22='Changes in my appearance have affected my social relationships.';
	label mmt_1='Doctors and health care workers sometimes hide information from me.';
	label mmt_2='Doctors have my best interests in mind.';
	label mmt_3='I should not confide in doctors and health care workers because it will be used against me.';
	label mmt_4='I should be suspicious of information from doctors and health care workers.';
	label mmt_5='I cannot trust doctors and health care workers.';
	label mmt_6='I should be suspicious of modern medicine.';
	label mmt_7='Doctors and health care workers treat me like guinea pigs.';
	label mmt_8='I receive the same medical care from doctors and health care workers as other people.';
	label mmt_9='I am treated the same as other people by doctors and health care workers.';
	label mmt_10='Doctors and health care workers do not take my medical complaints seriously.';
	label mmt_11='I personally have been treated poorly or unfairly by doctors or health care workers. ';
	label aiv_kid_evr_pa='As a child, were you ever beaten, physically attacked, or physically abused?';
	label aiv_adt_evr_pa='As an adult, have you ever been beaten, physically attacked, or physically abused?';
	label aiv_adt_evr_pa_sp='Were you ever in a relationship where a sexual partner did this to you?';
	label aiv_6m_pa='Have you been beaten, physically attacked, or physically abused in the past six months?';
	label aiv_6m_pa_sp='Were you in a relationship where a sexual partner did this to you in the past six months? ';
	label aiv_kid_evr_sex='As a child, were you ever sexually attacked, raped, or sexually abused?';
	label aiv_adt_evr_sex='As an adult, have you ever been sexually attacked, raped, or sexually abused?';
	label aiv_evr_sex_sp='Were you ever in a relationship where a sexual partner did this to you?';
	label aiv_6m_sex='Have you been sexually attacked, raped, or sexually abused in the past six months?';
	label aiv_6m_sex_sp='Were you in a relationship where a sexual partner did this to you in the past six months? ';
	label aiv_evr_sp_vio='Have you ever been in a relationship where a sexual partner threatened you with violence?';
	label aiv_6m_sp_vio='Have you ever been in a relationship where a sexual partner threatened you with violence in the past six months? ';
	label aiv_evr_sp_brc='Have you ever been in a relationship where a sexual partner threw, broke, or punched things?';
	label aiv_6m_sp_brc='Have you ever been in a relationship where a sexual partner threw, broke, or punched things in the past six months? ';
	label aiv_evr_sp_ctl='Have you ever been in a relationship where you felt controlled by a sexual partner?';
	label aiv_6m_sp_ctl='Have you been in a relationship where you felt controlled by a sexual partner in the past six months?';
	label ssi_1='How many different places have you lived in over the last six months?';
	label ssi_2='How much of the time in the last six months have you been unemployed?';
	label ssi_2a='How many different full time jobs have you had in the last six months? ';
	label ssi_3='How often in the last six months have you had conflict with your relatives?';
	label ssi_4='How often in the last six months have you had conflict with your partner(s)?';
	label ssi_5='How often in the last six months have you had conflict with your friend(s)?';
	label ssi_6='About how many close friends would you estimate that you have (including a partner?)';
	label ssi_7='When you are having problems, how satisfied are you with the support your get from your friends?';
	label ssi_8='About how often do you see your friends?';
	label ssi_9='How many of the people you hang around with are users (including a partner)?';
	label ssi_10='How often have you had serious disagreements with your family about things that were important to you?';
	label ssi_11='How often have you had serious disagreements with your friends about things that were important to you?';
	label ssi_12='How often have you had serious disagreements with your partner about things that were important to you?';
	label ssi_13='Someone to love and make you feel wanted';
	label ssi_14='Someone to help with daily chores if you were sick';
	label ssi_15='Someone to help you buy medicines';
	label ssi_16='Someone to help with transportation';
	label ssi_17='Someone to give you money if you need it';
	label bpi_evr='Throughout our lives, most of us have had pain from time to time (such as minor headaches, sprains, and toothaches). Have you had pain other than these every-day kinds of pain today?';
	label bpi_plc___1='From the diagram above, please select the areas where you feel pain.  (choice=Neck)';
	label bpi_plc___2='From the diagram above, please select the areas where you feel pain.  (choice=Shoulders)';
	label bpi_plc___3='From the diagram above, please select the areas where you feel pain.  (choice=Back)';
	label bpi_plc___4='From the diagram above, please select the areas where you feel pain.  (choice=Elbows)';
	label bpi_plc___5='From the diagram above, please select the areas where you feel pain.  (choice=Wrists, Hands & Fingers)';
	label bpi_plc___6='From the diagram above, please select the areas where you feel pain.  (choice=Hips)';
	label bpi_plc___7='From the diagram above, please select the areas where you feel pain.  (choice=Knee)';
	label bpi_plc___8='From the diagram above, please select the areas where you feel pain.  (choice=Ankles)';
	label bpi_plc___9='From the diagram above, please select the areas where you feel pain.  (choice=Foot, Heel & Toe)';
	label bpi_plc___10='From the diagram above, please select the areas where you feel pain.  (choice=Not applicable/no pain)';
	label bpi_plc___11='From the diagram above, please select the areas where you feel pain.  (choice=Others)';
	label bpi_plc_ot='If the pain area is different from above, please specify where you feel pain ';
	label bpi_plc_w='On a scale of 0-10, please indicate what number best describes your pain at its worst in the last 24 hours.  Please click and drag the slider to the corresponding number';
	label bpi_plc_l='On a scale of 0-10, please indicate what number best describes  your pain at its least in the last 24 hours.  Please click and drag the slider to the corresponding number';
	label bpi_plc_m='On a scale of 0-10, please indicate what number best  describes your pain on the average.  Please click and drag the slider to the corresponding number';
	label bpi_plc_now='On a scale of 0-10, please indicate what number best describes how much pain you have right now.  Please click and drag the slider to the corresponding number';
	label bpi_med='What treatments or medications are you receiving for your pain?';
	label bpi_med_p='On a scale of 0-10, please indicate what number best describes how much relief have pain treatments or medications provided in the last 24 hours?   Please click and drag the slider to the corresponding percentage';
	label bpi_1='General activity';
	label bpi_2='Mood';
	label bpi_3='Walking Ability';
	label bpi_4='Normal Work (includes both work outside the home and housework)';
	label bpi_5='Relations with other people';
	label bpi_6='Sleep';
	label bpi_7='Enjoyment of life';
	label bsi_1='Faintness or dizziness:';
	label bsi_2='Feeling no interest in things:';
	label bsi_3='Nervousness or shakiness inside:';
	label bsi_4='Pains in heart or chest:';
	label bsi_5='Feeling lonely:';
	label bsi_6='Feeling tense or anxious:';
	label bsi_7='Nausea or upset stomach:';
	label bsi_8='Feeling blue:';
	label bsi_9='Suddenly scared for no reason:';
	label bsi_10='Trouble getting your breath:';
	label bsi_11='Feelings of worthlessness:';
	label bsi_12='Spells of terror or panic:';
	label bsi_13='Numbness or tingling in parts of body:';
	label bsi_14='Feeling hopeless about the future:';
	label bsi_15='Feeling so restless you couldn''t sit still:';
	label bsi_16='Feeling weak in parts of your body:';
	label bsi_17='Thoughts of ending your life:';
	label bsi_18='Feeling fearful:';
	label hfs_1='In the past four weeks, did you worry that you would not have enough food?';
	label hfs_1a='How often did this happen?';
	label hfs_2='In the past four weeks, were you not able to eat the kinds of foods you preferred because of a lack of resources?';
	label hfs_2a='How often did this happen?';
	label hfs_3='In the past four weeks, did you have to eat a limited variety of foods due to a lack of resources?';
	label hfs_3a='How often did this happen?';
	label hfs_4='In the past four weeks, did you have to eat some foods that you really did not want to eat because of lack of resources to obtain other types of food?';
	label hfs_4a='How often did this happen?';
	label hfs_5='In the past four weeks, did you have to eat a smaller meal than you felt you needed because there was not enough food?';
	label hfs_5a='How often did this happen?';
	label hfs_6='In the past four weeks, did you have to eat fewer meals in a day because there was not enough food?';
	label hfs_6a='How often did this happen?';
	label hfs_7='In the past four weeks, was there ever no food to eat of any kind in your household because of lack of resources to get food?';
	label hfs_7a='How often did this happen?';
	label hfs_8='In the past four weeks, did you go to sleep at night hungry because there was not enough food?';
	label hfs_8a='How often did this happen?';
	label hfs_9='In the past four weeks, did you go a whole day and night without eating anything because there was not enough food?';
	label hfs_9a='How often did this happen?';
	label qol_1='MOBILITY';
	label qol_2='SELF-CARE';
	label qol_3='USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)';
	label qol_4='PAIN/DISCOMFORT';
	label qol_5='ANXIETY/DEPRESSION';
	label qol_helth1='Click and drag the slider on the scale from 0-100 to indicate how your health is TODAY.';
	label cla_1='How many days in the past 90 days have you participated in criminal activities (excluding drug use)?';
	label cla_1a='How much money have you earned from illegal activities?';
	label cla_1a_cad='';
	label cla_1a_usd='';
	label cla_2='How many days in the past 90 days were you detained or incarcerated (spent overnight in jail)?';
	label cla_2a='What is the name of the facility (or facilities) where you were detained or incarcerated? ';
	label cla_3a='Have you ever committed drug crimes (including drug use, not drug dealing)?';
	label cla_3c='In the past 90 days, how many times have you been arrested for drug crimes (including drug use, not drug dealing)?';
	label cla_3d='In the past 90 days, how many times have you been charged with drug crimes including drug use, not drug dealing)? ';
	label cla_3e='In the past 90 days, how many times have you been convicted for committing drug crimes (including drug use, not drug dealing)? ';
	label cla_4a='Have you ever dealt drugs?';
	label cla_4c='In the past 90 days, how many times have you been arrested for dealing drugs?';
	label cla_4d='In the past 90 days, how many times have you been charged for dealing drugs? ';
	label cla_4e='In the past 90 days, how many times have you been convicted for dealing drugs? ';
	label cla_5a='Have you ever committed larceny (shoplifting, retail theft, pocket-picking)?';
	label cla_5c='In the past 90 days, how many times have you been arrested for larceny (shoplifting, retail theft, pocket-picking)? ';
	label cla_5d='In the past 90 days, how many times have you been charged for committing larceny (shoplifting, retail theft, pocket-picking)? ';
	label cla_5e='In the past 90 days, how many times have you been convicted for committing larceny (shoplifting, retail theft, pocket-picking)? ';
	label cla_6a='Have you ever committed robbery?';
	label cla_6c='In the past 90 days, how many times have you been arrested for robbery? ';
	label cla_6d='In the past 90 days, how many times have you been charged for committing robbery? ';
	label cla_6e='In the past 90 days, how many times have you been convicted for committing robbery?';
	label cla_7a='Have you ever committed motor vehicle theft?';
	label cla_7c='In the past 90 days, how many times have you been arrested for motor vehicle theft?  ';
	label cla_7d='In the past 90 days, how many times have you been charged for committing motor vehicle theft? ';
	label cla_7e='In the past 90 days, how many times have you been convicted for committing motor vehicle theft?';
	label cla_8a='Have you ever committed carjacking?';
	label cla_8c='In the past 90 days, how many times have you been arrested for carjacking? ';
	label cla_8d='In the past 90 days, how many times have you been charged for committing carjacking?';
	label cla_8e='In the past 90 days, how many times have you been convicted for committing carjacking?';
	label cla_9a='Have you ever committed burglary, breaking & entering?';
	label cla_9c='In the past 90 days, how many times have you been arrested for burglary, breaking & entering? ';
	label cla_9d='In the past 90 days, how many times have you been charged for committing burglary, breaking & entering?';
	label cla_9e='In the past 90 days, how many times have you been convicted for committing burglary, breaking & entering?';
	label cla_10a='Have you ever committed stolen property offences (receiving)? ';
	label cla_10c='In the past 90 days, how many times have you been arrested for stolen property offences (receiving)?  ';
	label cla_10d='In the past 90 days, how many times have you been charged for committing stolen property offences (receiving)? ';
	label cla_10e='In the past 90 days, how many times have you been convicted for committing stolen property offences (receiving)? ';
	label cla_11a='Have you ever committed rape/sexual assault? ';
	label cla_11c='In the past 90 days, how many times have you been arrested for rape/sexual assault?   ';
	label cla_11d='In the past 90 days, how many times have you been charged for committing rape/sexual assault? ';
	label cla_11e='In the past 90 days, how many times have you been convicted for committing rape/sexual assault? ';
	label cla_12a='Have you ever committed assault (simple/aggravated)?';
	label cla_12c='In the past 90 days, how many times have you been arrested for assault (simple/aggravated)?    ';
	label cla_12d='In the past 90 days, how many times have you been charged for committing assault (simple/aggravated)?';
	label cla_12e='In the past 90 days, how many times have you been convicted for committing assault (simple/aggravated)?';
	label cla_13a='Have you ever committed a weapon law violation? ';
	label cla_13c='In the past 90 days, how many times have you been arrested for a weapon law violation?    ';
	label cla_13d='In the past 90 days, how many times have you been charged for committing a weapon law violation? ';
	label cla_13e='In the past 90 days, how many times have you been convicted for committing a weapon law violation? ';
	label cla_14a='Have you ever committed fraud (false pretense, impersonation, welfare fraud)?';
	label cla_14c='In the past 90 days, how many times have you been arrested for fraud (false pretense, impersonation, welfare fraud)?   ';
	label cla_14d='In the past 90 days, how many times have you been charged for committing fraud (false pretense, impersonation, welfare fraud)?';
	label cla_14e='In the past 90 days, how many times have you been convicted for committing fraud (false pretense, impersonation, welfare fraud)?';
	label cla_15a='Have you ever committed forgery/counterfeiting?';
	label cla_15c='In the past 90 days, how many times have you been arrested for forgery/counterfeiting?  ';
	label cla_15d='In the past 90 days, how many times have you been charged for committing forgery/counterfeiting?';
	label cla_15e='In the past 90 days, how many times have you been convicted for committing forgery/counterfeiting?';
	label cla_16a='Have you ever committed prostitution (prostitution, assisting or promoting)?';
	label cla_16c='In the past 90 days, how many times have you been arrested for prostitution (prostitution, assisting or promoting)?   ';
	label cla_16d='In the past 90 days, how many times have you been charged for committing prostitution (prostitution, assisting or promoting)?';
	label cla_16e='In the past 90 days, how many times have you been convicted for committing prostitution (prostitution, assisting or promoting)?';
	label cla_17a='Have you ever committed arson?';
	label cla_17c='In the past 90 days, how many times have you been arrested for arson?   ';
	label cla_17d='In the past 90 days, how many times have you been charged for committing arson?';
	label cla_17e='In the past 90 days, how many times have you been convicted for committing arson?';
	label cla_18a='Have you ever committed homicide/manslaughter?';
	label cla_18c='In the past 90 days, how many times have you been arrested for homicide/manslaughter?    ';
	label cla_18d='In the past 90 days, how many times have you been charged for committing homicide/manslaughter?';
	label cla_18e='In the past 90 days, how many times have you been convicted for committing homicide/manslaughter?';
	label cla_20a='Have you ever committed destruction/damage/vandalism of property?';
	label cla_20c='In the past 90 days, how many times have you been arrested for destruction/damage/vandalism of property?    ';
	label cla_20d='In the past 90 days, how many times have you been charged for committing destruction/damage/vandalism of property?';
	label cla_20e='In the past 90 days, how many times have you been convicted for committing destruction/damage/vandalism of property?';
	label cla_22a='Have you ever committed trespass of real property?';
	label cla_22c='In the past 90 days, how many times have you been arrested for trespass of real property?    ';
	label cla_22d='In the past 90 days, how many times have you been charged for committing trespass of real property?';
	label cla_22e='In the past 90 days, how many times have you been convicted for committing trespass of real property?';
	label cla_23a='Have you ever committed disorderly conduct?';
	label cla_23c='In the past 90 days, how many times have you been arrested for disorderly conduct?   ';
	label cla_23d='In the past 90 days, how many times have you been charged for committing disorderly conduct?';
	label cla_23e='In the past 90 days, how many times have you been convicted for committing disorderly conduct?';
	label cla_24a='Have you ever driven under the influence?';
	label cla_24c='In the past 90 days, how many times have you been arrested for driven under the influence?  ';
	label cla_24d='In the past 90 days, how many times have you been charged for driving under the influence?';
	label cla_24e='In the past 90 days, how many times have you been convicted for driving under the influence?';
	label cla_25a='In the past 90 days, how many times have you been charged with parole/probation violation? ';
	label cla_25b='In the past 90 days, how many times have you been convicted for a parole/probation violation?';
	label cla_25c='In the past 90 days, how many times have you seen your parole/probation officer?';
	label cla_25d___0='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Drug crimes (including drug use, not drug dealing))';
	label cla_25d___1='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Drug dealing)';
	label cla_25d___2='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Larceny (shoplifting, retail theft, pocket-picking))';
	label cla_25d___3='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Robbery)';
	label cla_25d___4='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Motor Vehicle Theft)';
	label cla_25d___5='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Carjacking)';
	label cla_25d___6='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Burglary, Breaking & Entering)';
	label cla_25d___7='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Stolen property offences (receiving))';
	label cla_25d___8='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Rape/Sexual Assault)';
	label cla_25d___9='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Assault (simple/aggravated))';
	label cla_25d___10='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Weapon Law Violations)';
	label cla_25d___11='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Fraud (False Pretenses, Impersonation, Welfare Fraud))';
	label cla_25d___12='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Forgery/Counterfeiting)';
	label cla_25d___13='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Prostitution (Prostitution, Assisting or Promoting))';
	label cla_25d___14='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Arson)';
	label cla_25d___15='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Homicide/Manslaughter)';
	label cla_25d___16='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Destruction/Damage/Vandalism of Property)';
	label cla_25d___17='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Trespass of real property)';
	label cla_25d___18='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Disorderly Conduct)';
	label cla_25d___19='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Driving Under the Influence)';
	label cla_25d___20='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Parole/probation violation)';
	label cla_25d___21='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Other)';
	label cla_25e='Other: please specify:';
	label cla_26a='In the past 90 days, have you committed another crime we have not yet covered? ';
	label cla_26a_t='What crime? ';
	label cla_26c='In the past 90 days, how many times have you been arrested for this crime? ';
	label cla_26d='In the past 90 days, how many times have you been charged for this crime? ';
	label cla_26e='In the past 90 days, how many times have you been convicted for this crime? ';
	label nms_er='Have you visited an emergency room and not been admitted to the hospital?';
	label nms_er_frq='How many times did you visit the emergency room?';
	label nms_hsp='Have you been admitted to the hospital for any reason other than detoxification from drugs or alcohol?';
	label nms_hps_frq='How many times were you admitted to the hospital for any reason other than detoxification from drugs or alcohol?';
	label nms_hps_nigt='How many nights for all stays in the hospital for any reason other than detoxification from drugs or alcohol?';
	label nms_hps_drg='Have you been admitted into a hospital to detoxify from drugs or alcohol?';
	label nms_hps_drg_frq='How many admissions into the hospital to detoxify from drugs or alcohol?';
	label nms_hps_drg_nigt='How many nights for all stays in the hospital to detoxify from drugs or alcohol?';
	label nms_otp='Have you participated in an outpatient treatment program for drug or alcohol problems?';
	label nms_otp_frq='How many days have you participated?';
	label nms_rsd='Have you been admitted into a residential program to detoxify or for other services?';
	label nms_rsd_frq='How many admissions into a residential program to detoxify or for other services?';
	label nms_rsd_nigt='How many nights for all stays in a residential program to detoxify or for other services?';
	label nms_auc='Have you received medication to treat alcohol use disorder?';
	label nms_auc_frq='How many days have you received medication to treat alcohol use disorder?';
	label nms_auc_med___0='What medication have you received to treat alcohol use disorder? (choice=Acamprosate)';
	label nms_auc_med___1='What medication have you received to treat alcohol use disorder? (choice=Disulfiram)';
	label nms_auc_med___2='What medication have you received to treat alcohol use disorder? (choice=Naltrexone (oral))';
	label nms_auc_med___3='What medication have you received to treat alcohol use disorder? (choice=Naltrexone (injection))';
	label nms_auc_med___4='What medication have you received to treat alcohol use disorder? (choice=Other)';
	label nms_auc_med_ot='Other: please specify';
	label nms_auc_med_dos='What was the dose prescribed? (e.g., 250mg/day)?';
	label nms_opd='Have you received medication to treat opioid use disorder?';
	label nms_opd_frq='How many days have you received medication to treat opioid use disorder?';
	label nms_opd_med___0='What medication have you received to treat opioid use disorder? (choice=Buprenorphine (oral))';
	label nms_opd_med___1='What medication have you received to treat opioid use disorder? (choice=Buprenorphine (implant or injection))';
	label nms_opd_med___2='What medication have you received to treat opioid use disorder? (choice=Naltrexone (oral))';
	label nms_opd_med___3='What medication have you received to treat opioid use disorder? (choice=Naltrexone (injection))';
	label nms_opd_med___4='What medication have you received to treat opioid use disorder? (choice=Methadone)';
	label nms_opd_med___5='What medication have you received to treat opioid use disorder? (choice=LAAM)';
	label nms_opd_med___6='What medication have you received to treat opioid use disorder? (choice=Other)';
	label nms_opd_med_ot='Other: please specify:';
	label nms_opd_med_dos='What was the dose prescribed? (mg/day)?';
	label nms_mnt='Have you received medication to treat a mental health disorder? ';
	label nms_mnt_med='Which medication have you received to treat a mental health disorder?';
	label nms_mnt_frq='How many days have you received medication to treat a mental health disorder?';
	label nms_mnt_dos='What is the daily dose prescribed? (mg/day)';
	label nms_trp='Outside of the services or programs mentioned above, have you seen a therapist (i.e., a psychiatrist, psychologist, counselor, or social worker)?';
	label nms_trp_frq01='How many times did you see a psychiatrist or psychologist?';
	label nms_trp_frq02='How many times did you see a counselor or social worker?';
	label nms_xxx___1='Have you received assistance from a case manager, social worker or clinician for any of the following?   (choice=To secure housing (find a place to live))';
	label nms_xxx___2='Have you received assistance from a case manager, social worker or clinician for any of the following?   (choice=To secure benefits (e.g., supplemental security income/SSI))';
	label nms_xxx___3='Have you received assistance from a case manager, social worker or clinician for any of the following?   (choice=To secure food (qualify for food stamps and/or find a place to get food))';
	label nms_xxx___4='Have you received assistance from a case manager, social worker or clinician for any of the following?   (choice=Obtaining HCV care)';
	label nms_xxx___5='Have you received assistance from a case manager, social worker or clinician for any of the following?   (choice=Obtaining HIV prevention information or supplies (e.g., condoms))';
	label nms_xxx___999='Have you received assistance from a case manager, social worker or clinician for any of the following?   (choice=not applicable)';
	label nms_mdo='Have you visited a medical office, not including your therapist? (Include all visits to a physician, nurse, nurse practitioner, or physician''s assistant)';
	label nms_mod_frq='How many visits to a medical office have you had?';
	label nms_mod_frq_doc='At how many of these visits did you see a doctor?';
	label nms_cost='How much have you spent out of your own pocket on healthcare (including prescriptions)?';
	label nms_cost_cad='';
	label nms_cost_usd='';
	label nms_inc='What is your current personal income from all sources?';
	label nms_inc_cad='';
	label nms_inc_usd='';
	label nms_emp='Are you currently employed (part-time or full-time)?';
	label nms_ocu='What is your occupation?';
	label nms_emp_frq='How many days per week do you typically work? ';
	label nms_emp_inc='How much do you make per hour?';
	label nms_emp_cad='';
	label nms_emp_usd='';
	label nms_emp_ben='Do you have employment benefits (e.g., healthcare, retirement, etc.)? ';
	label nms_emp_bend='What employment benefits (e.g., healthcare, retirement, etc.) do you have?';
	label nms_otinc='How much money have you received from non-employment sources (e.g., unemployment, pension, benefits, social security, family and friends, etc.)? ';
	label nms_otinc_cad='';
	label nms_otinc_usd='';
	label nms_edu='How many years of school have you completed (Miami: GED = 12 years; Montreal: DES = 11 years)';
	label nms_edu_cr='Are you currently attending school?';
	label nms_edu_ful='Are you attending school full-time?';
	label nms_hc='How many hours have you spent on your healthcare (including time with providers, traveling to appointments, picking up prescriptions, etc.)?';
	label nms_hc01='How many of those hours involved missing work?';
	label nms_hc02='How many of those hours involved missing school?';
	label nms_hc03='How many additional hours of work have you missed because of problems with your physical or mental health?';
	label nms_hc04='How many additional hours of school have you missed because of problems with your physical or mental health?';
	label nms_qul='Have your healthcare needs required you to obtain assistance from other people (e.g., babysitter or someone to travel with you to appointments)?';
	label nms_oul_frq='How many hours have these individuals spent in this capacity?';
	label act_1='If I needed hospital care, I can get admitted without trouble.';
	label act_2='It is hard for me to get medical care in an emergency.';
	label act_3='Sometimes I go without the medical care I need because it is too expensive.';
	label act_4='I have easy access to the medical specialists I need.';
	label act_5='Places where I can get medical care are very conveniently located.';
	label act_6='I am able to get medical care whenever I need it.';
	label srb_age='How old were you when you began having complete sexual activities (vaginal, oral, or anal)? ';
	label srb_3m_prst='In the last 90 days, have you engaged in prostitution related activities? ';
	label srb_prst_tim='When was your first time engaging in prostitution activities (year/month/day) ?  ';
	label srb_prst01='In the last 90 days , have you ever traded sex for drugs or gifts? ';
	label srb_prst02='In the last 90 days, have you ever traded sex for money? ';
	label srb_prst03='In the last 90 days, have you ever traded sex for gifts or services? ';
	label srb_prst04='In the last 90 days, have you ever used drugs, gifts, or money to purchase sex? ';
	label srb_prst05='In the last 90 days, have you stopped engaging in prostitution activities? ';
	label srb_prst_stp='When did you stop? (year/month/day) ';
	label srb_3m='In the last 90 days, have you had any sexual activitiy? ';
	label srb_3m_sxp='In the last 90 days, how many different sexual partners have you had? ';
	label srb_3m_sxp_f='How many of these sexual partners were female?';
	label srb_3m_sxp_m='How many of these sexual partners were male?';
	label srb_3m_f='In the last 90 days, have you had vaginal, oral, or anal sexual relations with women? ';
	label srb_3m_f_sxp='In the past 90 days, how many different female sexual partners have you had? ';
	label srb_3m_f_sxp_p='How many of these partners were regular sexual partners? ';
	label srb_3m_f_sxp_pidu='How many of these regular sexual partners injected drugs? ';
	label srb_3m_f_sxp_np='How many of these partners were casual sexual partners? ';
	label srb_3m_f_sxp_npidu='How many of these casual sexual partners injected drugs? ';
	label srb_3m_f_sxp_c='How many of these sexual partners were clients?';
	label srb_3m_f_sxp_cidu='How many of these sexual clients injected drugs? ';
	label srb_3m_f_sxp_mc='How many of these partners were you a client of (prostitute)? ';
	label srb_3m_f_sxp_mcidu='How many of these partners of whom you were a client (prostitue) injected drugs? ';
	label srb_1m_f='In the past month, have you had vaginal, oral, or anal relations with women? ';
	label srb_1m_fc_pv='Regular female partners during vaginal sexual relations';
	label srb_1m_fc_po='Regular female partners during oral sexual relations';
	label srb_1m_fc_pa='Regular female partners during anal sexual relations';
	label srb_1m_fc_npv='Casual female partners during vaginal sexual relations';
	label srb_1m_fc_npo='Casual female partners during oral sexual relations';
	label srb_1m_fc_npa='Casual female partners during anal sexual relations';
	label srb_1m_fc_cv='Female client during vaginal sexual relations';
	label srb_1m_fc_co='Female client during oral sexual relations';
	label srb_1m_fc_ca='Female client during anal sexual relations';
	label srb_1m_fc_mcv='Female partners of whom you were a client during vaginal sexual relations';
	label srb_1m_fc_mco='Female partners of whom you were a client during oral sexual relations';
	label srb_1m_fc_mca='Female partners of whom you were a client during anal sexual relations';
	label srb_1m_f_hiv='In the past month, have you had vaginal, oral, or anal sexual relations with HIV positive women? ';
	label srb_1m_fc_hiv='How often did you use a condom when having vaginal, oral, or anal sexual relations with HIV positive women? (choose one) ';
	label srb_1m_f_hcv='In the past month, have you had vaginal, oral, or anal sexual relations with HCV positive women? ';
	label srb_1m_fc_hcv='How often did you use a condom when having vaginal, oral, or anal sexual relations with HCV positive women? ';
	label srb_1m_f_drg_cc='Cocaine, crack and freebase';
	label srb_1m_f_drg_hro='Heroin or other opiates';
	label srb_1m_f_drg_main='Main drug in the past 30 days, if other than cocaine, heroin, or other opiates';
	label srb_1m_f_drg_aph='Amphetamines and other psychostimulants';
	label srb_1m_f_drg_psy='Other drugs and psychoactive substances for non-medical purposes';
	label srb_1m_f_drg_ot='What was your main drug in the last 30 days, if other than cocaine, heroin, or other opiates?';
	label srb_3m_m='In the past 90 days, have you had vaginal, oral, or anal sexual relations with men? ';
	label srb_3m_m_sxp='In the past 90 days, how many different male sexual partners have you had? ';
	label srb_3m_m_sxp_p='How many of these partners were regular sexual partners? ';
	label srb_3m_m_sxp_pidu='How many of these regular sexual partners injected drugs? ';
	label srb_3m_m_sxp_np='How many of these partners were casual sexual partners? ';
	label srb_3m_m_sxp_npidu='How many of these casual sexual partners injected drugs? ';
	label srb_3m_m_sxp_c='How many of these sexual partners were clients? ';
	label srb_3m_m_sxp_cidu='How many of these sexual clients injected drugs? ';
	label srb_3m_m_sxp_mc='How many of these partners were you a client of (prostitute)? ';
	label srb_3m_m_sxp_mcidu='How many of these partners of whom you were a client (prostitue) injected drugs? ';
	label srb_1m_m='In the past month, have you had vaginal, oral, or anal relations with men? ';
	label srb_1m_mc_pv='Regular male partners during vaginal sexual relations';
	label srb_1m_mc_po='Regular male partners during oral sexual relations';
	label srb_1m_mc_pa='Regular male partners during anal sexual relations';
	label srb_1m_mc_npv='Casual male partners during vaginal sexual relations';
	label srb_1m_mc_npo='Casual male partners during oral sexual relations';
	label srb_1m_mc_npa='Casual male partners during anal sexual relations';
	label srb_1m_mc_cv='Male client during vaginal sexual relations';
	label srb_1m_mc_co='Male client during oral sexual relations';
	label srb_1m_mc_ca='Male client during anal sexual relations';
	label srb_1m_mc_mcv='Male partners of whom you were a client during vaginal sexual relations';
	label srb_1m_mc_mco='Male partners of whom you were a client during oral sexual relations';
	label srb_1m_mc_mca='Male partners of whom you were a client during anal sexual relations';
	label srb_1m_m_hiv='In the past month, have you had vaginal, oral, or anal sexual relations with HIV positive men? ';
	label srb_1m_mc_hiv='How often did you use a condom when having vaginal, oral, or anal sexual relations with HIV positive men?  ';
	label srb_1m_m_hcv='In the past month, have you had vaginal, oral, or anal sexual relations with HCV positive men?';
	label srb_1m_mc_hcv='How often did you use a condom when having vaginal, oral, or anal sexual relations with HCV positive men? ';
	label srb_1m_m_drg_cc='Cocaine, crack and freebase';
	label srb_1m_m_drg_hro='Heroin or other opiates';
	label srb_1m_m_drg_main='Main drug in the past 30 days, if other than cocaine, heroin, or other opiates';
	label srb_1m_m_drg_aph='Amphetamines and other psychostimulants';
	label srb_1m_m_drg_psy='Other drugs and psychoactive substances for non-medical purposes';
	label sbr_1m_m_drg_ot='What was your main drug in the last 30 days, if other than cocaine, heroin, or other opiates? ';
	label cdu_1='I feel confident in my ability to put a condom on myself or my partner.';
	label cdu_2='I feel confident in my ability to discuss condom usage with any partner I might have.';
	label cdu_3='I feel confident in my ability to suggest using condoms with a new partner.';
	label cdu_4='I feel confident I could suggest using a condom without my partner feeling diseased.';
	label cdu_5='If I were to suggest using a condom to a partner, I would feel afraid that he or she would reject me.';
	label cdu_6='If I were unsure of my partner''s feelings about using condoms, I would not suggest using one.';
	label cdu_7='I feel confident I could gracefully remove and dispose of a condom when having intercourse.';
	label cdu_8='I would not feel confident suggesting using condoms with a new partner because I would be afraid he or she would think I''ve had a homosexual experience.';
	label cdu_9='I would not feel confident suggesting using condoms with a new partner because I would be afraid he or she would think I thought they had a sexually transmitted disease. ';
	label cdu_10='I feel confident in my ability to put a condom on myself or my partner quickly.';
	label cdu_11='I feel confident that I would remember to use a condom even after I have been drinking.';
	label cdu_12='I feel confident that I would remember to use a condom even if I were high.';
	label cdu_13='I feel confident that I could use a condom successfully.';
	label cdu_14='I feel confident I could stop to put a condom on myself or my partner even in the heat of passion.';
	label cdu_15='How often did you use condoms in the past 30 days?';
	label cdu_16='For how long have you been using condoms every time?';
	label cdu_17='I will use condoms every time within the next six months.';
	label cdu_18='I will be using condoms every time within the next 30 days.';
	label cpe_1='Take your pills for PrEP once a day, exactly as directed, if prescribed, without ever missing a dose?';
	label cpe_2='Take your pills for PrEP, every day, even when feeling very tired or depressed?';
	label cpe_3='Remember to take your pills for PrEP, every day, for the next 30 days?';
	label cpe_4='Keep all your doctor visits without missing an appointment?';
	label cce_1='Take your pills for HCV treatment once a day, exactly as directed, if prescribed, without ever missing a dose?';
	label cce_2='Take your pills for HCV treatment, every day, even when feeling very tired or depressed?';
	label cce_3='Remember to take your pills for HCV treatment, every day, for the next 30 days?';
	label cce_4='Keep all your HCV doctor visits without missing an appointment?';
	label baseline_complete='Complete?';
	label relationship_with_ph_v_3='Survey Timestamp';
	label rphcv1='I can tell my health care provider anything, even things that I might not tell anyone else';
	label rphcv2='My health care provider cares more about holding down costs than about what is needed for my health';
	label rphcv3='My health care provider cares as much as I do about my health';
	label rphcv4='If a mistake was made in my treatment, my health care provider would try to hide it from me';
	label rphcv_5='All things considered, how much do you trust your health care provider ? ';
	label rphcv_6='Do you face barriers when accessing care because of your insurance or lack thereof?  ';
	label rphcv_7='Is transportation a barrier when you are accessing care?  ';
	label rphcv_8='How often does your provider, someone who works as part of your care team, or in your clinic help you navigate insurance to get medications?  ';
	label rphcv_9='How often do you trust your insurance will cover the care and tests your provider feels you need?  ';
	label rphcv_10=' Do you plan to recommend your health care provider to others? ';
	label rphcv_11='All things considered, how much do you trust your health insurance?  ';
	label relationship_with_ph_v_4='Complete?';
	label ec_yrs='Between 18 and 64 years old (patient reported age at screening was [screening__phase_1_arm_1][sdem_age])';
	label ec_hivneg='HIV negative  (patient reported most recent HIV status was [screening__phase_1_arm_1][sdem_hiv_rtst_r] and HIV rapid test was [screening__phase_1_arm_1][insti])';
	label ec_inj6='Reports injecting non-prescription drugs in the last 6-months (patient reported [screening__phase_1_arm_1][vcp_inject_6mo] )';
	label ec_vic='Reports living in the vicinity (patient reports residing in [screening__phase_1_arm_1][sdem_reside])';
	label ec_fu='Reports being able to return for follow-up over 18 months (patient reports [screening__phase_1_arm_1][sdem_wil_fol])';
	label ec_com='Able to communicate in English, French, or Spanish (patient preferred language of communication is [screening__phase_1_arm_1][sdem_lang_mon] (if patient is from Montreal site) or [screening__phase_1_arm_1][sdem_lang_mia])  (if patient is from Miami site)';
	label ec_serv='Recruited from opioid agonist therapy (OAT) clinic or syringe access program (SAP)  (patient reports being recruited from [screening__phase_1_arm_1][sdem_oat])';
	label rc_consent='Screening Informed Consent completed and signed? (verify on paper form)';
	label rc_quiz='Consent Quiz completed? (verify on paper form)';
	label rc_report='Screening Questionnaire completed? (verify on REDCap)';
	label rc_hippa='HIPPA Form completed and signed? (verify on paper form)';
	label rc_release='Medical Release Form completed and signed?  (verify on paper form)';
	label rc_locator='Locator Form completed? (verify on paper form)';
	label rc_vital='Vital Signs Form completed? (verify on REDCap)';
	label rc_psychiatric='Medical and Psychiatric History completed? (verify on paper form)';
	label rc_scc='Screening Specific Collection Form completed? (verify on REDCap)';
	label rc_informed='Full Informed Consent completed and signed? (verify on paper form)';
	label rc_base='Baseline Questionnaire completed (verify on REDCap)';
	label ec_pc_yes='The physician, nurse and/or clinical research staff reviewed the eligibility requirements for this participant and acknowledged that this participant meets all inclusion criteria?';
	label comment_nonelig='Other comments (please explain reasons for non-eligibility)';
	label ec_all_2='Did the participant meet the eligibility requirements for this study? ';
	label ec_sign='I have reviewed the randomization requirements for this participant in their entirety and acknowledge that this participant meets all criteria to continue to randomization. (please leave comments below in the additional comments for the reasons for ineligibility)';
	label ec_comments='Additional notes:';
	label randomization_checkl_v_5='Complete?';
	label rand_ele='It appears that all inclusion criteria have been met and no exclusion criteria have been met. Confirm that the patient is eligible for the trial and that written informed consent has occurred. ';
	label rand_date='Date of Randomization (yyyy-mm-dd)';
	label rand_arm='Randomization assignment';
	label rand_reason='If participant is eligible and not randomized, indicate the reason:';
	label rand_why='Please indicate why physician refused:';
	label rand_other='Other: please specify';
	label rand_by='Randomization performed by (print name)';
	label rand_randomization_complete='Complete?';
	label followup_3m_timestamp='Survey Timestamp';
	label dem_visit_3m='Visit Date';
	label idu_cnty_3m='FOR THE INTERVIEWER: Is the participant accessing services in Canada or the United States? ';
	label dem_gender_3m='With regards to gender, do you think of yourself as: ';
	label dem_gender_ot_3m='Other: Please specify';
	label dem_gender_t_3m='Do you identify as a transgender ______ ';
	label dem_gender_s_3m='Have you had reassignment surgery? ';
	label dem_gender_id_3m='With regards to sexual identity, do you think of yourself as:';
	label dem_gender_id_ot_3m='Other: Please specify';
	label dem_trip_time_3m='How long does it take you to travel one-way to get here?  (HH:MM)';
	label dem_trip_trans_3m='How do you usually travel here?';
	label dem_trip_ot_3m='Other: please specify';
	label dem_edu_3m='What is the highest grade or level of school you have completed or the highest degree you have received?';
	label dem_marital_3m='What is your marital status?';
	label dem_employ_3m='We would like to know about what you do, are you:';
	label dem_employ_ot_3m='Other: Please specify';
	label dem_hltins_3m='Are you covered by health insurance or another health care plan?';
	label dem_hltins_can_3m='FOR THE INTERVIEWER: Is this participant accessing the American or Canadian healthcare system? ';
	label dem_hltins_t0_3m='Private health insurance';
	label dem_hltins_t1_3m='Medicare';
	label dem_hltins_t2_3m='Medi-gap';
	label dem_hltins_t3_3m='Medicaid';
	label dem_hltins_t4_3m='State Children''s Health Insurance Program  (SCHIP)';
	label dem_hltins_t5_3m='Veterans Affairs (VA) Insurance';
	label dem_hltins_t6_3m='State-sponsored health plan';
	label dem_hltins_t7_3m='Other government programs';
	label dem_hltins_t8_3m='Single service plan';
	label dem_hltins_t9_3m='ADAP';
	label dem_hltins_t10_3m='Other insurance';
	label dem_hltins_t11_3m='State the plan name for SCHIP:';
	label dem_hltins_t12_3m='State the plan name for your State-sponsored health plan:';
	label dem_hltins_t13_3m='Other: Please specify';
	label dem_hltins_t14_3m='Do you have provincial health insurance card? ';
	label dem_hltins_t15_3m___0='What kind of health insurance or prescription drug coverage do you have? (choice=Persons with disability)';
	label dem_hltins_t15_3m___1='What kind of health insurance or prescription drug coverage do you have? (choice=Private insurance)';
	label dem_hltins_t15_3m___2='What kind of health insurance or prescription drug coverage do you have? (choice=Pharmacare)';
	label dem_hltins_t15_3m___3='What kind of health insurance or prescription drug coverage do you have? (choice=Régie de lassurance maladie du Québec (RAMQ))';
	label dem_hltins_t15_3m___4='What kind of health insurance or prescription drug coverage do you have? (choice=Indigenous Health Care)';
	label dem_hltins_t15_3m___5='What kind of health insurance or prescription drug coverage do you have? (choice=Other)';
	label dem_hltins_t16_3m='Other: Please specify';
	label sub_6m1_3m='Heroin IV';
	label sub_6m2_3m='Heroin smoked or snorted';
	label sub_6m3_3m='Cocaine IV (powder)';
	label sub_6m4_3m='Cocaine IV (from crack)';
	label sub_6m5_3m='Cocaine smoked (powder)';
	label sub_6m6_3m='Cocaine smoked (freebase, crack)';
	label sub_6m7_3m='Cocaine snorted';
	label sub_6m8_3m='Speedball  (heroin and cocaine or other opiates in the same syringe)';
	label sub_6m9_3m='Suboxone IV, for non-medical purposes';
	label sub_6m10_3m='Suboxone non-injected, for non-medical purposes';
	label sub_6m11_3m='Methadone IV, for non-medical purposes';
	label sub_6m12_3m='Methadone non-injected, for non-medical purposes';
	label sub_6m13_3m='Amphetamines and other psychostimulants IV (speed, crystal, meth, ice)';
	label sub_6m14_3m='Amphetamines and other psychostimulants non- injected, as tablet, puff, or other (speed, crystal, meth, ice)';
	label sub_6m15_3m='Barbiturates IV (barbs, goofball) for non-medical purposes';
	label sub_6m16_3m='Barbiturates (barbs, goofball), non- injected, for non-medical purposes';
	label sub_6m17_3m='Tranquilizers IV (downers, peanuts, benzos), for non-medical purposes';
	label sub_6m18_3m='Tranquilizers non-injected (downers, peanuts, benzos), for non-medical purposes';
	label sub_6m19_3m='Cannabis (for non-medical purposes), marijuana, hashish, pot, weed';
	label sub_6m20_3m='Psychedelic drugs IV  (LSD, PCP, Mescaline, MDA, MDMA, Ecstasy, DMT, Mushrooms, Ketamine, GHB)';
	label sub_6m21_3m='Psychedelic drugs non-injected (LSD, PCP, Mescaline, MDA, MDMA, Ecstasy, DMT, Mushrooms, Ketamine, GHB)';
	label sub_6m22_3m='Other injected opiates, for non-medical purposes';
	label sub_6m23_3m='Other non-injected opiates, for non-medical purposes';
	label sub_6m24_3m='Other injected medication, for non-medical purposes';
	label sub_6m25_3m='Other non-injected medications, for non-medical purposes';
	label sub_6m26_3m='Other';
	label sub_6m27_3m='Fentanyl';
	label sub_frq1m_3m='How many days in the last month did you use any and/or all of substances listed above?';
	label sub_idu1m_her_3m='In the past month, did you inject heroin? ';
	label sub_idu1m_her_frq_3m='In the past month, how many days in total did you inject heroin? ';
	label sub_idu1m_her_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_her_3m='In the past month, did you smoke or snort heroin through your nose?';
	label sub_1m_her_frq_3m='In the past month, how many days in total did you smoke or snort heroin through your nose? ';
	label sub_1m_fent_frq_3m='In the past month, how many days in total did you inject Fentanyl?';
	label sub_1m_her_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_fent_3m='In the past month, did you inject Fentanyl?';
	label sub_1m_fent_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_cp_3m='In the past month, did you inject cocaine (powder)?';
	label sub_idu1m_cp_frq_3m='In the past month, how many days in total did you inject cocaine (powder)?';
	label sub_idu1m_cp_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_cc_3m='In the past month, did you inject cocaine (from crack)?';
	label sub_idu1m_cc_frq_3m='In the past month, how many days in total did you inject cocaine (from crack)?';
	label sub_idu1m_cc_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_cp_3m='In the past month, did you smoke cocaine (powder)?';
	label sub_1m_cp_frq_3m='In the past month, how many days in total did you smoke cocaine (powder)?  ';
	label sub_1m_cp_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_cc_3m='In the past month, did you smoke cocaine (freebase, crack)?';
	label sub_1m_cc_frq_3m='In the past month, how many days in total did you smoke cocaine (freebase, crack)? ';
	label sub_1m_cc_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_cs_3m='In the past month, did you snort cocaine through your nose?';
	label sub_1m_cs_frq_3m='In the past month, how many days in total did you snort cocaine through your nose? ';
	label sub_1m_cs_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_sb_3m='In the past month, did you inject speedball, that is, a mix of cocaine and heroin or other opiates in the same syringe? ';
	label sub_idu1m_sb_frq_3m='In the past month, how many days in total did you inject speedball, that is, a mix of cocaine and heroin or other opiates in the same syringe? ';
	label sub_idu1m_sb_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_sox_3m='In the past month, did you inject suboxone for non-medical purposes?';
	label sub_idu1m_sox_frq_3m='In the past month, how many days in total did you inject suboxone for non-medical purposes? ';
	label sub_idu1m_sox_frqm_3m='How many mg per day of suboxone did you inject for non-medical purposes? ';
	label sub_1m_sox_3m='In the past month, did  you take non-injected suboxone for non-medical purposes?';
	label sub_1m_sox_frq_3m='In the past month, how many days in total did you take non-injected suboxone for non-medical purposes? ';
	label sub_1m_sox_frqm_3m='How many mg of suboxone did you take non-injected for non-medical purposes? ';
	label sub_idu1m_meth_3m='In the past month, did you inject methadone for non-medical purposes?';
	label sub_idu1m_meth_frq_3m='In the past month, how many days in total did you inject methadone for non-medical purposes? ';
	label sub_idu1m_meth_frqm_3m='How many mg per day of methadone did you inject for non-medical purposes?';
	label sub_1m_meth_3m='In the past month, did you take non-injected methadone for non-medical purposes?';
	label sub_1m_meth_frq_3m='In the past month, how many days in total did you take non-injected methadone for non-medical purposes? ';
	label sub_1m_meth_frqm_3m='How many mg of methadone did you take non-injected for non-medical purposes?';
	label sub_idu1m_aph_3m='In the past month, did you inject amphetamines or other psychostimulants (speed, crystal, meth, ice)?';
	label sub_idu1m_aph_frq_3m='In  the past month, how many days in total did you inject amphetamines or other psychostimulants (speed, crystal, meth, ice)?';
	label sub_idu1m_aph_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_aph_3m='In the past month, did you take amphetamines or other psychostimulants non-injected in tablet, puff, or other form (speed, crystal, meth, ice)?';
	label sub_1m_aph_frq_3m='In the past month, how many days in total did you take amphetamines or other psychostimulants non-injected in tablet, puff, or other form (speed, crystal, meth, ice)?';
	label sub_1m_aph_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_barb_3m='In the past month, did you inject barbituates (barbs, goofballs) for non-medical purposes?';
	label sub_idu1m_barb_frq_3m='In the past month, how many days in total did you inject barbituates (barbs, goofballs) for non-medical purposes? ';
	label sub_idu1m_barb_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_barb_3m='In the past month, did you take barbituates (barbs, goofballs) for non-medical purposes?';
	label sub_1m_barb_frq_3m='In the past month, how many days in total did you take barbituates (barbs, goofballs) for non-medical purposes? ';
	label sub_1m_barb_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_traq_3m='In the past month, did you inject tranquilizers for non-medical purposes (downers, peanuts, benzos)?';
	label sub_idu1m_traq_frq_3m='In the past month, how many days in total did you inject tranquilizers for non-medical purposes (downers, peanuts, benzos)? ';
	label sub_idu1m_traq_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_traq_3m='In the past month, did you take tranquilizers for non-medical purposes (downers, peanuts, benzos)?';
	label sub_1m_traq_frq_3m='In the past month, how many days in total did you take tranquilizers for non-medical purposes (downers, peanuts, benzos)? ';
	label sub_1m_traq_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_marj_3m='In the past month, did you use cannabis, marijuana, hashish, pot, weed, etc. for non-medical purposes?';
	label sub_1m_marj_frq_3m='In the past month, how many days in total did you use cannabis, marijuana, hashish, pot, weed, etc. for non-medical purposes?  ';
	label sub_1m_marj_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_psy_3m='In the past month, did you inject psychedelic drugs (LSD, PCP, mescaline, MDA, MDMA, Ecstasy, DMT, mushrooms, ketamine, GHB)?';
	label sub_idu1m_psy_frq_3m='In the past month, how many days in total did you inject psychedelic drugs (LSD, PCP, mescaline, MDA, MDMA, Ecstasy, DMT, mushrooms, ketamine, GHB)? ';
	label sub_idu1m_psy_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_1m_psy_3m='In the past month, did you take psychedelic drugs (LSD, PCP, mescaline, MDA, MDMA, Ecstasy, DMT, mushrooms, ketamine, GHB)?';
	label sub_1m_psy_frq_3m='In the past month, how many days in total did you take psychedelic drugs (LSD, PCP, mesacline, MDA, MDMA, Ecstasy, DMT, mushrooms, ketamine, GHB)? ';
	label sub_1m_psy_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu6m_oop_3m='What other opiates did you inject in the past 90 days? ';
	label sub_idu6m_oop_frq_3m='If more than one opiate, which one did you inject most often? ';
	label sub_idu1m_oop_3m='Did you inject this other opiate in the past month? ';
	label sub_idu1m_oop_frq_3m='In the past month, how many days in total did you inject this other opiate? ';
	label sub_idu1m_oop_frqm1_3m='On average, how many mg a day of this other opiate do you inject? ';
	label sub_idu1m_oop_frqm2_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu1m_oop_fit_3m='In the past month, when you did a hit of this other opiate, has it happened that the mixture did not all fit into the syringe? ';
	label sub_idu1m_oop_fit1_3m='Did it happen that you had to inject yourself several times because the syringe could not hold all the liquid? ';
	label sub_idu1m_oop_fit2_3m='Has it happened at least once that you injected yourself several times using a single syringe because the syringe could not hold all of the liquid? (choose one)';
	label sub_idu1m_oop_lo_3m='In the past month, did it happen that you injected yourself with left overs of this other opiate extracted from a filter and/or a container? ';
	label sub_idu1m_oop_lo1_3m='Had this filter or container been used by someone else beforehand? ';
	label sub_idu1m_oop_lo2_3m='In the past month, did it happen to give someone else your left overs of this other opiate extracted from a filter and/or a container that you had used? ';
	label sub_6m_oop_3m='In the past 90 days, what other opiates have you used non-injected?';
	label sub_6m_oop_frq_3m='If more than one opiate, which one did you inject most often? (Skip question if participant named only one other opiate in previous question)';
	label sub_1m_oop_3m='Did you use this other non-injected opiate in the last month? ';
	label sub_1m_oop_frq_3m='In the past month, how many days in total did you use this other opiate? ';
	label sub_1m_oop_frqm1_3m='On average, how many mg a day of this other opiate did you use?';
	label sub_1m_oop_frqm2_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu6m_om_3m='In the past 90 days, what other medication did you inject for non-medical purposes (including Ritalin) ? ';
	label sub_idu1m_om_3m='Did you inject this other medication for non-medical purposes (including Ritalin) in the last month? ';
	label sub_idu1m_om_frq_3m='In the past month, how many days in total did you inject other medication for non-medical purposes? ';
	label sub_idu1m_om_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_6m_om_3m='In the past 90 days, what other medication did you take for non-medical purposes (including Ritalin)?  ';
	label sub_1m_om_3m='Did you take this other medication for non-medical purposes (including Ritalin) in the last month? ';
	label sub_1m_om_frq_3m='In the past month, how many days in total did you take other medication for non-medical purposes? ';
	label sub_1m_om_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_idu6m_ot_3m='Did you inject any of these other drugs? ';
	label sub_idu6m_ott_3m='Which other drugs did you inject in the past 90 days?  ';
	label sub_idu1m_ot_3m='Did you inject these other drugs in the last month? ';
	label sub_idu1m_ot_frq_3m='In the past month, how many days in total did you inject these other drugs?';
	label sub_idu1m_ot_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label sub_nidu6m_ot_3m='Did you use any other drugs non-injected?';
	label sub_nidu6m_ot_non_3m='Which other drugs did you take (non-injected) in the past 90 days? ';
	label sub_nidu1m_ot_3m='Did you use these other (non-injected) drugs in the last month? ';
	label sub_nidu1m_ot_frq_3m='In the past month, how many days in total did you take these other (non-injected) drugs?';
	label sub_nidu1m_ot_frqm_3m='On average, how many times a day did you do it? (choose one) ';
	label idu_3m='In the past 90 days, have you injected any drugs?';
	label idu_6mplc1_3m='In the past 90 days, in which city or neighborhoods did you inject most often? ';
	label idu_6mplc2_3m___0='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=At home (room/apartment))';
	label idu_6mplc2_3m___1='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=Public restrooms/bar/restaurant)';
	label idu_6mplc2_3m___2='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=At a friends home)';
	label idu_6mplc2_3m___3='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=Crack house/shooting gallery)';
	label idu_6mplc2_3m___4='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=Street (alley/entrance way))';
	label idu_6mplc2_3m___5='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=Park)';
	label idu_6mplc2_3m___6='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=At the dealers)';
	label idu_6mplc2_3m___7='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=In a sauna)';
	label idu_6mplc2_3m___8='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=In prison / in a detention centre)';
	label idu_6mplc2_3m___9='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=Peepshow)';
	label idu_6mplc2_3m___10='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=Room rented for an injection period)';
	label idu_6mplc2_3m___11='In the past 90 days, did you inject in any of the following places? (choose any that apply) (choice=Other)';
	label idu_6mplc2_ot_3m='Other, please specify: ';
	label idu_plc_3m='Where do you inject most often? (choose one)';
	label idu_1m_day_3m='How many days during the last month, starting from today''s date, did you inject drugs? ';
	label idu_frq_pday_3m='In the [idu_1m_day_3m] days that you said you have injected drugs in the last month, how many  times did you inject per day?';
	label idu_2m_day_3m='How many days in the last 60 days, starting from today''s date, did you inject drugs? ';
	label idu_3m_day_3m='How many days in the last 90 days, starting from today''s date, did you inject drugs? ';
	label idu_ru_6m_3m='How many times have you re-used the same syringe in the past 90 days? ';
	label idu_hi_6m_3m='In the past 90 days, how often did you need help to inject? (choose one)';
	label sidu_header4_3m='CALCULATION : Total number of injections in the past month based on the previous answers ';
	label idu_frq_3m='According to your answers, you have injected a total of [sidu_header4_3m] times in the past month, does this seem correct? ';
	label idu_frq_c_3m='If that number is incorrect, what do you think is the correct total number of times you have injected in the past month? ';
	label idu_stp_3m_ob_3m='In the past 90 days, have you stopped injecting voluntarily or by obligation? ';
	label idu_stp_3m3_3m='Did you stop injecting during month 3 (two months ago)?';
	label idu_stp_3m3_vb_3m___0='When you stopped injecting during month 3, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=Voluntary)';
	label idu_stp_3m3_vb_3m___1='When you stopped injecting during month 3, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=By obligation)';
	label idu_stp_3m3_v_3m='How many days during month 3 did you stop injecting voluntarily? ';
	label idu_stp_3m3_b_3m='How many days during month 3 did you stop injecting by obligation? ';
	label idu_stp_3m2_3m='Did you stop injecting during month 2 (two months ago)?';
	label idu_stp_3m2_vb_3m___0='When you stopped injecting during month 2, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=Voluntary)';
	label idu_stp_3m2_vb_3m___1='When you stopped injecting during month 2, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=By obligation)';
	label idu_stp_3m2_v_3m='How many days during month 2 did you stop injecting voluntarily?';
	label idu_stp_3m2_b_3m='How many days during month 2 did you stop injecting by obligation? ';
	label idu_stp_3m1_3m='Did you stop injecting during month 1 (in the past month)?';
	label idu_stp_3m1_vb_3m___0='When you stopped injecting during month 1, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=Voluntary)';
	label idu_stp_3m1_vb_3m___1='When you stopped injecting during month 1, was this voluntary (detox/therapy/by yourself/etc.) or by obligation (forced therapy/prison/vacation/etc.)? (choose any that apply) (choice=By obligation)';
	label idu_stp_3m1_v_3m='How many days during month 1 did you stop injecting voluntarily? ';
	label idu_stp_3m1_b_3m='How many days during month 1 did you stop injecting by obligation? ';
	label idu_6mrec01_3m='Cactus';
	label idu_6mrec02_3m='Anonyme';
	label idu_6mrec03_3m='Spectre';
	label idu_6mrec04_3m='Dopamine';
	label idu_6mrec05_3m='Pharmacy';
	label idu_6mrec06_3m='Other needle exchange programs(NEP)';
	label idu_6mrec07_3m='Bought in the street';
	label idu_6mrec08_3m='Dealer';
	label idu_6mrec09_3m='Poteau (person who get syringes from a needle exchange program and distributes them on the street, free of charge)';
	label idu_6mrec10_3m='Friends/partners';
	label idu_6mrec11_3m='Clinic';
	label idu_6mrec12_3m='CLSC';
	label idu_6mrec13_3m='Street nurse';
	label idu_6mrec14_3m='Outreach worker';
	label idu_6mrec15_3m='Pad';
	label idu_6mrec16_3m='Relais Méthadone';
	label idu_6mrec17_3m='Dans la Rue (Pops)';
	label idu_6mrec18_3m='Supervised injection site';
	label idu_6mrec19_3m='Other';
	label idu_6mrec19_ot_2_3m='Other, please specify: ';
	label idu_6mrec01_us_3m='IDEA Exchange Program';
	label idu_6mrec05_us_3m='Pharmacy';
	label idu_6mrec06_us_3m='Other needle exchange programs(NEP)';
	label idu_6mrec07_us_3m='Bought in the street';
	label idu_6mrec08_us_3m='Dealer';
	label idu_6mrec09_us_3m='Middleman (person who get syringes from a needle exchange program and distributes them on the street, free of charge)';
	label idu_6mrec10_us_3m='Friends/partners';
	label idu_6mrec11_us_3m='Clinic';
	label idu_6mrec13_us_3m='Street nurse';
	label idu_6mrec14_us_3m='Outreach worker';
	label idu_6mrec15_us_3m='Pad';
	label idu_6mrec18_us_3m='Supervised injection site';
	label idu_6mrec19_us_3m='Other';
	label idu_6mrec19_ot_3m='Other, please specify: ';
	label idu_6mrecp01_3m='What percentage of your syringes do you get from Cactus? ';
	label idu_6mrecp01_us_3m='What percentage of your syringes do you get from the IDEA Exchange Program?';
	label idu_6mrecp02_3m='What percentage of your syringes do you get from Anonyme? ';
	label idu_6mrecp03_3m='What percentage of your syringes do you get from Spectre? ';
	label idu_6mrecp04_3m='What percentage of your syringes do you get from Dopamine? ';
	label idu_6mrecp05_3m='What percentage of your syringes do you get from the pharmacy? ';
	label idu_6mrecp06_3m='What percentage of your syringes do you get from other needle exchange programs? ';
	label idu_6mrecp07_3m='What percentage of your syringes do you buy off the street? ';
	label idu_6mrecp08_3m='What percentage of your syringes do you get from a dealer? ';
	label idu_6mrecp09_3m='What percentage of your syringes do you get from from a poteau? ';
	label idu_6mrecp09_us_3m='What percentage of your syringes do you get from from a middle-man? ';
	label idu_6mrecp10_3m='What percentage of your syringes do you get from friends/partners? ';
	label idu_6mrecp11_3m='What percentage of your syringes do you get from a clinic? ';
	label idu_6mrecp12_3m='What percentage of your syringes do you get from from CLSC ';
	label idu_6mrecp13_3m='What percentage of your syringes do you get from a street nurse? ';
	label idu_6mrecp14_3m='What percentage of your syringes do you get from an outreach worker? ';
	label idu_6mrecp15_3m='What percentage of your syringes do you get from a pad? ';
	label idu_6mrecp16_3m='What percentage of your syringes do you get from Relais Methadone? ';
	label idu_6mrecp17_3m='What percentage of your syringes do you get from Dans la Rue (pops)? ';
	label idu_6mrecp18_3m='What percentage of your syringes do you get from a supervised injection site? ';
	label idu_6mrecp19_3m='What percentage of your syringes do you get from this other source?  ';
	label idu_6mnum_3m='How many syringes, on average, did you obtain per visit when you went yourself?';
	label idu_6mnum_my_3m='How many of these syringes were for your personal use? ';
	label idu_6mnum_ot_3m='How many of these syringes were for other people?';
	label idu_6mkit_3m='On average, how many kits have you obtained on each visit when you went yourself? ';
	label idu_6mkit_calc_3m='This makes a total of [idu_6mkit] X 4 syringes';
	label idu_6mkit_my_3m='How many of these syringes were for your personal use? ';
	label idu_6mkit_ot_3m='How many of these syringes were for other people? ';
	label idu_6msrg_3m='On average, how many individually bought syringes have you obtained on each visit when you went yourself?';
	label idu_6msrg_my_3m='Of these syringes, how many were for your personal use? ';
	label idu_6msrg_ot_3m='How many of these syringes were for other people?';
	label sdu_srg_3m='Since we last saw you (about 90 days ago), have you ever used a syringe which was previously used by someone else? ';
	label sdu_srg_tim_3m='When was the last time you shared? (year/month) ';
	label sdu_srg_6m_frq_3m='How many times have you shared a syringe in the past 90 days? (choose one) ';
	label sdu_srg_6m_pp_3m='In the past 90 days, from how many different people have you used a syringe with which they had already injected themselves? ';
	label sdu_srg_6m_ppw_3m___0='With whom did you use the same syringe? (choose any that apply) (choice=Girlfriend/boyfriend/spouse)';
	label sdu_srg_6m_ppw_3m___1='With whom did you use the same syringe? (choose any that apply) (choice=Other regular sex partner)';
	label sdu_srg_6m_ppw_3m___2='With whom did you use the same syringe? (choose any that apply) (choice=Close friend)';
	label sdu_srg_6m_ppw_3m___3='With whom did you use the same syringe? (choose any that apply) (choice=Friends/acquintances)';
	label sdu_srg_6m_ppw_3m___4='With whom did you use the same syringe? (choose any that apply) (choice=Family members)';
	label sdu_srg_6m_ppw_3m___5='With whom did you use the same syringe? (choose any that apply) (choice=Drug buddies / cutter)';
	label sdu_srg_6m_ppw_3m___6='With whom did you use the same syringe? (choose any that apply) (choice=Other business relations (client, dealer, pimp, etc. ))';
	label sdu_srg_6m_ppw_3m___7='With whom did you use the same syringe? (choose any that apply) (choice=Strangers)';
	label sdu_srg_6m_ppw_3m___8='With whom did you use the same syringe? (choose any that apply) (choice=Found equipment)';
	label sdu_srg_6m_ppw_3m___9='With whom did you use the same syringe? (choose any that apply) (choice=Uncertain)';
	label sdu_srg_6m_ppw_3m___10='With whom did you use the same syringe? (choose any that apply) (choice=Other)';
	label sdu_srg_6m_ppw_ot_3m='Other, please specify:  ';
	label sdu_srg_6m_ppwm_3m='Among these people, whose syringe did you use most? (choose one) ';
	label sdu_srg_pp_3m='Enter the total number of people that the participant shared a syringe with:';
	label sdu_wrk_3m='Since we last saw you (about 90 days ago), have you ever used injection works which had already been used by someone else to inject? ';
	label sdu_wrk_tim_3m='When was the last time you have used injection works which had been used by someone else to inject? (year/month).';
	label sdu_wrk_6m_frq_3m='How many times in the past 90 days have you used injection works previously used by someone else? (choose one) ';
	label sdu_wrk_6m_pp_3m='From how many people have you used previously used injection works? ';
	label sdu_wrk_6m_ppw_3m___0='Whose works did you use? (choose any that apply) (choice=Girlfriend/boyfriend/spouse)';
	label sdu_wrk_6m_ppw_3m___1='Whose works did you use? (choose any that apply) (choice=Other regular sex partner)';
	label sdu_wrk_6m_ppw_3m___2='Whose works did you use? (choose any that apply) (choice=Close friend)';
	label sdu_wrk_6m_ppw_3m___3='Whose works did you use? (choose any that apply) (choice=Friends/acquintances)';
	label sdu_wrk_6m_ppw_3m___4='Whose works did you use? (choose any that apply) (choice=Family members)';
	label sdu_wrk_6m_ppw_3m___5='Whose works did you use? (choose any that apply) (choice=Drug buddies / cutter)';
	label sdu_wrk_6m_ppw_3m___6='Whose works did you use? (choose any that apply) (choice=Other business relations (client, dealer, pimp, etc. ))';
	label sdu_wrk_6m_ppw_3m___7='Whose works did you use? (choose any that apply) (choice=Strangers)';
	label sdu_wrk_6m_ppw_3m___8='Whose works did you use? (choose any that apply) (choice=Found equipment)';
	label sdu_wrk_6m_ppw_3m___9='Whose works did you use? (choose any that apply) (choice=Uncertain)';
	label sdu_wrk_6m_ppw_3m___10='Whose works did you use? (choose any that apply) (choice=Other)';
	label sdu_wrk_6m_ppw_ot_3m='Other, please specify: ';
	label sdu_wrk_6m_ppwm_3m='Among these people, whose works did you use most? (choose one) ';
	label sdu_wrk_pp_3m='Enter the total number of people that the participant shared a works with ';
	label sdu_srg_hiv_3m='In the past 90 days, has one or more people with whom you shave hared a syringe been infected with HIV at the time? (choose one) ';
	label sdu_srg_hcv_3m='In the past 90 days, has one or more people with whom you  have shared a syringe been infected with HCV at the time? (choose one) ';
	label sdu_wrk_hiv_3m='In the past 90 days, has one or more people with whom you have shared injection works been infected with HIV at the time? ';
	label sdu_wrk_hcv_3m='In the past 90 days, has one or more people with whom you have shared injection works been infected with HCV at the time? ';
	label sdu_tgtr_3m='In the past 90 days, did you inject yourself with someone else who was injecting at the same time?';
	label bpi_evr_3m='Throughout our lives, most of us have had pain from time to time (such as minor headaches, sprains, and toothaches). Have you had pain other than these every-day kinds of pain today?';
	label bpi_plc_3m___1='From the diagram above, please select the areas where you feel pain.  (choice=Neck)';
	label bpi_plc_3m___2='From the diagram above, please select the areas where you feel pain.  (choice=Shoulders)';
	label bpi_plc_3m___3='From the diagram above, please select the areas where you feel pain.  (choice=Back)';
	label bpi_plc_3m___4='From the diagram above, please select the areas where you feel pain.  (choice=Elbows)';
	label bpi_plc_3m___5='From the diagram above, please select the areas where you feel pain.  (choice=Wrists, Hands & Fingers)';
	label bpi_plc_3m___6='From the diagram above, please select the areas where you feel pain.  (choice=Hips)';
	label bpi_plc_3m___7='From the diagram above, please select the areas where you feel pain.  (choice=Knee)';
	label bpi_plc_3m___8='From the diagram above, please select the areas where you feel pain.  (choice=Ankles)';
	label bpi_plc_3m___9='From the diagram above, please select the areas where you feel pain.  (choice=Foot, Heel & Toe)';
	label bpi_plc_3m___10='From the diagram above, please select the areas where you feel pain.  (choice=Not applicable/no pain)';
	label bpi_plc_3m___11='From the diagram above, please select the areas where you feel pain.  (choice=Others)';
	label bpi_plc_ot_3m='If the pain area is different from above, please specify where you feel pain ';
	label bpi_plc_w_3m='On a scale of 0-10, please indicate what number best describes your pain at its worst in the last 24 hours.  Please click and drag the slider to the corresponding number';
	label bpi_plc_l_3m='On a scale of 0-10, please indicate what number best describes  your pain at its least in the last 24 hours.  Please click and drag the slider to the corresponding number';
	label bpi_plc_m_3m='On a scale of 0-10, please indicate what number best  describes your pain on the average.  Please click and drag the slider to the corresponding number';
	label bpi_plc_now_3m='On a scale of 0-10, please indicate what number best describes how much pain you have right now.  Please click and drag the slider to the corresponding number';
	label bpi_med_3m='What treatments or medications are you receiving for your pain?';
	label bpi_med_p_3m='On a scale of 0-10, please indicate what number best describes how much relief have pain treatments or medications provided in the last 24 hours?   Please click and drag the slider to the corresponding percentage';
	label bpi_1_3m='General activity';
	label bpi_2_3m='Mood';
	label bpi_3_3m='Walking Ability';
	label bpi_4_3m='Normal Work (includes both work outside the home and housework)';
	label bpi_5_3m='Relations with other people';
	label bpi_6_3m='Sleep';
	label bpi_7_3m='Enjoyment of life';
	label hfs_1_3m='In the past four weeks, did you worry that you would not have enough food?';
	label hfs_1a_3m='How often did this happen?';
	label hfs_2_3m='In the past four weeks, were you not able to eat the kinds of foods you preferred because of a lack of resources?';
	label hfs_2a_3m='How often did this happen?';
	label hfs_3_3m='In the past four weeks, did you have to eat a limited variety of foods due to a lack of resources?';
	label hfs_3a_3m='How often did this happen?';
	label hfs_4_3m='In the past four weeks, did you have to eat some foods that you really did not want to eat because of lack of resources to obtain other types of food?';
	label hfs_4a_3m='How often did this happen?';
	label hfs_5_3m='In the past four weeks, did you have to eat a smaller meal than you felt you needed because there was not enough food?';
	label hfs_5a_3m='How often did this happen?';
	label hfs_6_3m='In the past four weeks, did you have to eat fewer meals in a day because there was not enough food?';
	label hfs_6a_3m='How often did this happen?';
	label hfs_7_3m='In the past four weeks, was there ever no food to eat of any kind in your household because of lack of resources to get food?';
	label hfs_7a_3m='How often did this happen?';
	label hfs_8_3m='In the past four weeks, did you go to sleep at night hungry because there was not enough food?';
	label hfs_8a_3m='How often did this happen?';
	label hfs_9_3m='In the past four weeks, did you go a whole day and night without eating anything because there was not enough food?';
	label hfs_9a_3m='How often did this happen?';
	label cla_1_3m='How many days in the past 90 days have you participated in criminal activities (excluding drug use)?';
	label cla_1a_3m='How much money have you earned from illegal activities?';
	label cla_1a_cad_3m='';
	label cla_1a_usd_3m='';
	label cla_2_3m='How many days in the past 90 days were you detained or incarcerated (spent overnight in jail)?';
	label cla_2a_3m='What is the name of the facility (or facilities) where you were detained or incarcerated? ';
	label cla_3c_3m='In the past 90 days, how many times have you been arrested for drug crimes (including drug use, not drug dealing)?';
	label cla_3d_3m='In the past 90 days, how many times have you been charged with drug crimes including drug use, not drug dealing)? ';
	label cla_3e_3m='In the past 90 days, how many times have you been convicted for committing drug crimes (including drug use, not drug dealing)? ';
	label cla_4c_3m='In the past 90 days, how many times have you been arrested for dealt drugs?';
	label cla_4d_3m='In the past 90 days, how many times have you been charged for dealing drugs? ';
	label cla_4e_3m='In the past 90 days, how many times have you been convicted for dealing drugs? ';
	label cla_5c_3m='In the past 90 days, how many times have you been arrested for larceny (shoplifting, retail theft, pocket-picking)? ';
	label cla_5d_3m='In the past 90 days, how many times have you been charged for committing larceny (shoplifting, retail theft, pocket-picking)? ';
	label cla_5e_3m='In the past 90 days, how many times have you been convicted for committing larceny (shoplifting, retail theft, pocket-picking)? ';
	label cla_6c_3m='In the past 90 days, how many times have you been arrested for robbery? ';
	label cla_6d_3m='In the past 90 days, how many times have you been charged for committing robbery? ';
	label cla_6e_3m='In the past 90 days, how many times have you been convicted for committing robbery?';
	label cla_7c_3m='In the past 90 days, how many times have you been arrested for motor vehicle theft?  ';
	label cla_7d_3m='In the past 90 days, how many times have you been charged for committing motor vehicle theft? ';
	label cla_7e_3m='In the past 90 days, how many times have you been convicted for committing motor vehicle theft?';
	label cla_8c_3m='In the past 90 days, how many times have you been arrested for carjacking? ';
	label cla_8d_3m='In the past 90 days, how many times have you been charged for committing carjacking?';
	label cla_8e_3m='In the past 90 days, how many times have you been convicted for committing carjacking?';
	label cla_9c_3m='In the past 90 days, how many times have you been arrested for burglary, breaking & entering? ';
	label cla_9d_3m='In the past 90 days, how many times have you been charged for committing burglary, breaking & entering?';
	label cla_9e_3m='In the past 90 days, how many times have you been convicted for committing burglary, breaking & entering?';
	label cla_10c_3m='In the past 90 days, how many times have you been arrested for stolen property offences (receiving)?  ';
	label cla_10d_3m='In the past 90 days, how many times have you been charged for committing stolen property offences (receiving)? ';
	label cla_10e_3m='In the past 90 days, how many times have you been convicted for committing stolen property offences (receiving)? ';
	label cla_11c_3m='In the past 90 days, how many times have you been arrested for rape/sexual assault?   ';
	label cla_11d_3m='In the past 90 days, how many times have you been charged for committing rape/sexual assault? ';
	label cla_11e_3m='In the past 90 days, how many times have you been convicted for committing rape/sexual assault? ';
	label cla_12c_3m='In the past 90 days, how many times have you been arrested for assault (simple/aggravated)?    ';
	label cla_12d_3m='In the past 90 days, how many times have you been charged for committing assault (simple/aggravated)?';
	label cla_12e_3m='In the past 90 days, how many times have you been convicted for committing assault (simple/aggravated)?';
	label cla_13c_3m='In the past 90 days, how many times have you been arrested for a weapon law violation?    ';
	label cla_13d_3m='In the past 90 days, how many times have you been charged for committing a weapon law violation? ';
	label cla_13e_3m='In the past 90 days, how many times have you been convicted for committing a weapon law violation? ';
	label cla_14c_3m='In the past 90 days, how many times have you been arrested for fraud (false pretense, impersonation, welfare fraud)?   ';
	label cla_14d_3m='In the past 90 days, how many times have you been charged for committing fraud (false pretense, impersonation, welfare fraud)?';
	label cla_14e_3m='In the past 90 days, how many times have you been convicted for committing fraud (false pretense, impersonation, welfare fraud)?';
	label cla_15c_3m='In the past 90 days, how many times have you been arrested for forgery/counterfeiting?  ';
	label cla_15d_3m='In the past 90 days, how many times have you been charged for committing forgery/counterfeiting?';
	label cla_15e_3m='In the past 90 days, how many times have you been convicted for committing forgery/counterfeiting?';
	label cla_16c_3m='In the past 90 days, how many times have you been arrested for prostitution (prostitution, assisting or promoting)?   ';
	label cla_16d_3m='In the past 90 days, how many times have you been charged for committing prostitution (prostitution, assisting or promoting)?';
	label cla_16e_3m='In the past 90 days, how many times have you been convicted for committing prostitution (prostitution, assisting or promoting)?';
	label cla_17c_3m='In the past 90 days, how many times have you been arrested for arson?   ';
	label cla_17d_3m='In the past 90 days, how many times have you been charged for committing arson?';
	label cla_17e_3m='In the past 90 days, how many times have you been convicted for committing arson?';
	label cla_18c_3m='In the past 90 days, how many times have you been arrested for homicide/manslaughter?    ';
	label cla_18d_3m='In the past 90 days, how many times have you been charged for committing homicide/manslaughter?';
	label cla_18e_3m='In the past 90 days, how many times have you been convicted for committing homicide/manslaughter?';
	label cla_20c_3m='In the past 90 days, how many times have you been arrested for destruction/damage/vandalism of property?    ';
	label cla_20d_3m='In the past 90 days, how many times have you been charged for committing destruction/damage/vandalism of property?';
	label cla_20e_3m='In the past 90 days, how many times have you been convicted for committing destruction/damage/vandalism of property?';
	label cla_22c_3m='In the past 90 days, how many times have you been arrested for trespass of real property?    ';
	label cla_22d_3m='In the past 90 days, how many times have you been charged for committing trespass of real property?';
	label cla_22e_3m='In the past 90 days, how many times have you been convicted for committing trespass of real property?';
	label cla_23c_3m='In the past 90 days, how many times have you been arrested for disorderly conduct?   ';
	label cla_23d_3m='In the past 90 days, how many times have you been charged for committing disorderly conduct?';
	label cla_23e_3m='In the past 90 days, how many times have you been convicted for committing disorderly conduct?';
	label cla_24c_3m='In the past 90 days, how many times have you been arrested for driven under the influence?  ';
	label cla_24d_3m='In the past 90 days, how many times have you been charged for driving under the influence?';
	label cla_24e_3m='In the past 90 days, how many times have you been convicted for driving under the influence?';
	label cla_25a_3m='In the past 90 days, how many times have you been charged with parole/probation violation? ';
	label cla_25b_3m='In the past 90 days, how many times have you been convicted for a parole/probation violation?';
	label cla_25c_3m='How many times in the past 90 days have you seen your parole/probation officer?';
	label cla_25d_3m___0='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Drug crimes (including drug use, not drug dealing))';
	label cla_25d_3m___1='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Drug dealing)';
	label cla_25d_3m___2='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Larceny (shoplifting, retail theft, pocket-picking))';
	label cla_25d_3m___3='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Robbery)';
	label cla_25d_3m___4='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Motor Vehicle Theft)';
	label cla_25d_3m___5='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Carjacking)';
	label cla_25d_3m___6='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Burglary, Breaking & Entering)';
	label cla_25d_3m___7='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Stolen property offences (receiving))';
	label cla_25d_3m___8='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Rape/Sexual Assault)';
	label cla_25d_3m___9='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Assault (simple/aggravated))';
	label cla_25d_3m___10='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Weapon Law Violations)';
	label cla_25d_3m___11='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Fraud (False Pretenses, Impersonation, Welfare Fraud))';
	label cla_25d_3m___12='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Forgery/Counterfeiting)';
	label cla_25d_3m___13='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Prostitution (Prostitution, Assisting or Promoting))';
	label cla_25d_3m___14='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Arson)';
	label cla_25d_3m___15='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Homicide/Manslaughter)';
	label cla_25d_3m___16='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Destruction/Damage/Vandalism of Property)';
	label cla_25d_3m___17='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Trespass of real property)';
	label cla_25d_3m___18='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Disorderly Conduct)';
	label cla_25d_3m___19='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Driving Under the Influence)';
	label cla_25d_3m___20='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Parole/probation violation)';
	label cla_25d_3m___21='What were your parole/probation violation(s) in the past 90 days for? If any violations were related to non-compliance with treatment or parole/probation requirements, such as not showing up to appointments, providing dirty urines, etc. - code this as Other)  (choice=Other)';
	label cla_25e_3m='Other: please specify:';
	label cla_26a_3m='In the past 90 days, have you committed another crime we have not yet covered? ';
	label cla_26b_3m='What crime? ';
	label cla_26d_3m='In the past 90 days, how many times have you been arrested for this crime? ';
	label cla_26e_3m='In the past 90 days, how many times have you been charged for this crime? ';
	label cla_26f_3m='In the past 90 days, how many times have you been convicted for this crime? ';
	label nms_er_3m='Have you visited an emergency room and not been admitted to the hospital?';
	label nms_er_frq_3m='How many times did you visit the emergency room?';
	label nms_hsp_3m='Have you been admitted to the hospital for any reason other than detoxification from drugs or alcohol?';
	label nms_hps_frq_3m='How many times were you admitted to the hospital for any reason other than detoxification from drugs or alcohol?';
	label nms_hps_nigt_3m='How many nights for all stays in the hospital for any reason other than detoxification from drugs or alcohol?';
	label nms_hps_drg_3m='Have you been admitted into a hospital to detoxify from drugs or alcohol?';
	label nms_hps_drg_frq_3m='How many admissions into the hospital to detoxify from drugs or alcohol?';
	label nms_hps_drg_nigt_3m='How many nights for all stays in the hospital to detoxify from drugs or alcohol?';
	label nms_otp_3m='Have you participated in an outpatient treatment program for drug or alcohol problems?';
	label nms_otp_frq_3m='How many days have you participated?';
	label nms_rsd_3m='Have you been admitted into a residential program to detoxify or for other services?';
	label nms_rsd_frq_3m='How many admissions into a residential program to detoxify or for other services?';
	label nms_rsd_nigt_3m='How many nights for all stays in a residential program to detoxify or for other services?';
	label nms_auc_3m='Have you received medication to treat alcohol use disorder?';
	label nms_auc_frq_3m='How many days have you received medication to treat alcohol use disorder?';
	label nms_auc_med_3m___0='What medication have you received to treat alcohol use disorder? (choice=Acamprosate)';
	label nms_auc_med_3m___1='What medication have you received to treat alcohol use disorder? (choice=Disulfiram)';
	label nms_auc_med_3m___2='What medication have you received to treat alcohol use disorder? (choice=Naltrexone (oral))';
	label nms_auc_med_3m___3='What medication have you received to treat alcohol use disorder? (choice=Naltrexone (injection))';
	label nms_auc_med_3m___4='What medication have you received to treat alcohol use disorder? (choice=Other)';
	label nms_auc_med_ot_3m='Other: please specify';
	label nms_auc_med_dos_3m='What was the dose prescribed? (e.g., 250mg/day)?';
	label nms_opd_3m='Have you received medication to treat opioid use disorder?';
	label nms_opd_frq_3m='How many days have you received medication to treat opioid use disorder?';
	label nms_opd_med_3m___0='What medication have you received to treat opioid use disorder? (choice=Buprenorphine (oral))';
	label nms_opd_med_3m___1='What medication have you received to treat opioid use disorder? (choice=Buprenorphine (implant or injection))';
	label nms_opd_med_3m___2='What medication have you received to treat opioid use disorder? (choice=Naltrexone (oral))';
	label nms_opd_med_3m___3='What medication have you received to treat opioid use disorder? (choice=Naltrexone (injection))';
	label nms_opd_med_3m___4='What medication have you received to treat opioid use disorder? (choice=Methadone)';
	label nms_opd_med_3m___5='What medication have you received to treat opioid use disorder? (choice=LAAM)';
	label nms_opd_med_3m___6='What medication have you received to treat opioid use disorder? (choice=Other)';
	label nms_opd_med_ot_3m='Other: please specify:';
	label nms_opd_med_dos_3m='What was the dose prescribed? (mg/day)?';
	label nms_mnt_3m='Have you received medication to treat a mental health disorder? ';
	label nms_mnt_med_3m='Which medication have you received to treat a mental health disorder?';
	label nms_mnt_frq_3m='How many days have you received medication to treat a mental health disorder?';
	label nms_mnt_dos_3m='What is the daily dose prescribed? (mg/day)';
	label nms_trp_3m='Outside of the services or programs mentioned above, have you seen a therapist (i.e., a psychiatrist, psychologist, counselor, or social worker)?';
	label nms_trp_frq01_3m='How many times did you see a psychiatrist or psychologist?';
	label nms_trp_frq02_3m='How many times did you see a counselor or social worker?';
	label nms_xxx_3m___1='Have you received assistance from a case manager, social worker or clinician for any of the following since your last visit?   (choice=To secure housing (find a place to live))';
	label nms_xxx_3m___2='Have you received assistance from a case manager, social worker or clinician for any of the following since your last visit?   (choice=To secure benefits (e.g., supplemental security income/SSI))';
	label nms_xxx_3m___3='Have you received assistance from a case manager, social worker or clinician for any of the following since your last visit?   (choice=To secure food (qualify for food stamps and/or find a place to get food))';
	label nms_xxx_3m___4='Have you received assistance from a case manager, social worker or clinician for any of the following since your last visit?   (choice=Obtaining HCV care)';
	label nms_xxx_3m___5='Have you received assistance from a case manager, social worker or clinician for any of the following since your last visit?   (choice=Obtaining HIV prevention information or supplies (e.g., condoms))';
	label nms_xxx_3m___999='Have you received assistance from a case manager, social worker or clinician for any of the following since your last visit?   (choice=not applicable)';
	label nms_mdo_3m='Have you visited a medical office, not including your therapist? (Include all visits to a physician, nurse, nurse practitioner, or physician''s assistant)';
	label nms_mod_frq_3m='How many visits to a medical office have you had?';
	label nms_mod_frq_doc_3m='At how many of these visits did you see a doctor?';
	label nms_cost_3m='How much have you spent out of your own pocket on healthcare (including prescriptions)?';
	label nms_cost_cad_3m='';
	label nms_cost_usd_3m='';
	label nms_inc_3m='What is your current personal income from all sources?';
	label nms_inc_cad_3m='';
	label nms_inc_usd_3m='';
	label nms_emp_3m='Are you currently employed (part-time or full-time)?';
	label nms_ocu_3m='What is your occupation?';
	label nms_emp_frq_3m='How many days per week do you typically work? ';
	label nms_emp_inc_3m='How much do you make per hour?';
	label nms_emp_cad_3m='';
	label nms_emp_usd_3m='';
	label nms_emp_ben_3m='Do you have employment benefits (e.g., healthcare, retirement, etc.)? ';
	label nms_emp_bend_3m='What employment benefits (e.g., healthcare, retirement, etc.) do you have?';
	label nms_otinc_3m='How much money have you received from non-employment sources (e.g., unemployment, pension, benefits, social security, family and friends, etc.)? ';
	label nms_otinc_cad_3m='';
	label nms_otinc_usd_3m='';
	label nms_edu_3m='How many years of school have you completed (Miami: GED = 12 years; Montreal: DES = 11 years)';
	label nms_edu_cr_3m='Are you currently attending school?';
	label nms_edu_ful_3m='Are you attending school full-time?';
	label nms_hc_3m='How many hours have you spent on your healthcare (including time with providers, traveling to appointments, picking up prescriptions, etc.)?';
	label nms_hc01_3m='How many of those hours involved missing work?';
	label nms_hc02_3m='How many of those hours involved missing school?';
	label nms_hc03_3m='How many additional hours of work have you missed because of problems with your physical or mental health?';
	label nms_hc04_3m='How many additional hours of school have you missed because of problems with your physical or mental health?';
	label nms_qul_3m='Have your healthcare needs required you to obtain assistance from other people (e.g., babysitter or someone to travel with you to appointments)?';
	label nms_oul_frq_3m='How many hours have these individuals spent in this capacity?';
	label srb_age_3m='How old were you when you began having complete sexual activities (vaginal, oral, or anal)? ';
	label srb_3m_prst_3m='In the last 90 days, have you engaged in prostitution related activities? ';
	label srb_prst_tim_3m='When was your first time engaging in prostitution activities (year/month/day) ?  ';
	label srb_prst01_3m='In the last 90 days , have you ever traded sex for drugs or gifts? ';
	label srb_prst02_3m='In the last 90 days, have you ever traded sex for money? ';
	label srb_prst03_3m='In the last 90 days, have you ever traded sex for gifts or services? ';
	label srb_prst04_3m='In the last 90 days, have you ever used drugs, gifts, or money to purchase sex? ';
	label srb_prst05_3m='In the last 90 days, have you stopped engaging in prostitution activities? ';
	label srb_prst_stp_3m='When did you stop? (year/month/day) ';
	label srb_3m_3m='In the last 90 days, have you had any sexual activitiy? ';
	label srb_3m_sxp_3m='In the last 90 days, how many different sexual partners have you had? ';
	label srb_3m_sxp_f_3m='How many of these sexual partners were female?';
	label srb_3m_sxp_m_3m='How many of these sexual partners were male?';
	label srb_3m_f_3m='In the last 90 days, have you had vaginal, oral, or anal sexual relations with women? ';
	label srb_3m_f_sxp_3m='In the past 90 days, how many different female sexual partners have you had? ';
	label srb_3m_f_sxp_p_3m='How many of these partners were regular sexual partners? ';
	label srb_3m_f_sxp_pidu_3m='How many of these regular sexual partners injected drugs? ';
	label srb_3m_f_sxp_np_3m='How many of these partners were casual sexual partners? ';
	label srb_3m_f_sxp_npidu_3m='How many of these casual sexual partners injected drugs? ';
	label srb_3m_f_sxp_c_3m='How many of these sexual partners were clients?';
	label srb_3m_f_sxp_cidu_3m='How many of these sexual clients injected drugs? ';
	label srb_3m_f_sxp_mc_3m='How many of these partners were you a client of (prostitute)? ';
	label srb_3m_f_sxp_mcidu_3m='How many of these partners of whom you were a client (prostitue) injected drugs? ';
	label srb_1m_f_3m='In the past month, have you had vaginal, oral, or anal relations with women? ';
	label srb_1m_fc_pv_3m='Regular female partners during vaginal sexual relations';
	label srb_1m_fc_po_3m='Regular female partners during oral sexual relations';
	label srb_1m_fc_pa_3m='Regular female partners during anal sexual relations';
	label srb_1m_fc_npv_3m='Casual female partners during vaginal sexual relations';
	label srb_1m_fc_npo_3m='Casual female partners during oral sexual relations';
	label srb_1m_fc_npa_3m='Casual female partners during anal sexual relations';
	label srb_1m_fc_cv_3m='Female client during vaginal sexual relations';
	label srb_1m_fc_co_3m='Female client during oral sexual relations';
	label srb_1m_fc_ca_3m='Female client during anal sexual relations';
	label srb_1m_fc_mcv_3m='Female partners of whom you were a client during vaginal sexual relations';
	label srb_1m_fc_mco_3m='Female partners of whom you were a client during oral sexual relations';
	label srb_1m_fc_mca_3m='Female partners of whom you were a client during anal sexual relations';
	label srb_1m_f_hiv_3m='In the past month, have you had vaginal, oral, or anal sexual relations with HIV positive women? ';
	label srb_1m_fc_hiv_3m='How often did you use a condom when having vaginal, oral, or anal sexual relations with HIV positive women? (choose one) ';
	label srb_1m_f_hcv_3m='In the past month, have you had vaginal, oral, or anal sexual relations with HCV positive women? ';
	label srb_1m_fc_hcv_3m='How often did you use a condom when having vaginal, oral, or anal sexual relations with HCV positive women? ';
	label srb_1m_f_drg_cc_3m='Cocaine, crack and freebase';
	label srb_1m_f_drg_hro_3m='Heroin or other opiates';
	label srb_1m_f_drg_main_3m='Main drug in the past 90 days, if other than cocaine, heroin, or other opiates';
	label srb_1m_f_drg_aph_3m='Amphetamines and other psychostimulants';
	label srb_1m_f_drg_psy_3m='Other drugs and psychoactive substances for non-medical purposes';
	label srb_1m_f_drg_ot_3m='What was your main drug in the last 90 days, if other than cocaine, heroin, or other opiates?';
	label srb_3m_m_3m='In the past 90 days, have you had vaginal, oral, or anal sexual relations with men? ';
	label srb_3m_m_sxp_3m='In the past 90 days, how many different male sexual partners have you had? ';
	label srb_3m_m_sxp_p_3m='How many of these partners were regular sexual partners? ';
	label srb_3m_m_sxp_pidu_3m='How many of these regular sexual partners injected drugs? ';
	label srb_3m_m_sxp_np_3m='How many of these partners were casual sexual partners? ';
	label srb_3m_m_sxp_npidu_3m='How many of these casual sexual partners injected drugs? ';
	label srb_3m_m_sxp_c_3m='How many of these sexual partners were clients? ';
	label srb_3m_m_sxp_cidu_3m='How many of these sexual clients injected drugs? ';
	label srb_3m_m_sxp_mc_3m='How many of these partners were you a client of (prostitute)? ';
	label srb_3m_m_sxp_mcidu_3m='How many of these partners of whom you were a client (prostitue) injected drugs? ';
	label srb_1m_m_3m='In the past month, have you had vaginal, oral, or anal relations with men? ';
	label srb_1m_mc_pv_3m='Regular male partners during vaginal sexual relations';
	label srb_1m_mc_po_3m='Regular male partners during oral sexual relations';
	label srb_1m_mc_pa_3m='Regular male partners during anal sexual relations';
	label srb_1m_mc_npv_3m='Casual male partners during vaginal sexual relations';
	label srb_1m_mc_npo_3m='Casual male partners during oral sexual relations';
	label srb_1m_mc_npa_3m='Casual male partners during anal sexual relations';
	label srb_1m_mc_cv_3m='Male client during vaginal sexual relations';
	label srb_1m_mc_co_3m='Male client during oral sexual relations';
	label srb_1m_mc_ca_3m='Male client during anal sexual relations';
	label srb_1m_mc_mcv_3m='Male partners of whom you were a client during vaginal sexual relations';
	label srb_1m_mc_mco_3m='Male partners of whom you were a client during oral sexual relations';
	label srb_1m_mc_mca_3m='Male partners of whom you were a client during anal sexual relations';
	label srb_1m_m_hiv_3m='In the past month, have you had vaginal, oral, or anal sexual relations with HIV positive men? ';
	label sbr_1m_m_drg_ot_3m='What was your main drug in the last 90 days, if other than cocaine, heroin, or other opiates? ';
	label srb_1m_mc_hiv_3m='How often did you use a condom when having vaginal, oral, or anal sexual relations with HIV positive men?  ';
	label srb_1m_m_hcv_3m='How often in the past month have you had vaginal, oral, or anal sexual relations with HCV positive men?';
	label srb_1m_mc_hcv_3m='How often did you use a condom when having vaginal, oral, or anal sexual relations with HCV positive men? ';
	label srb_1m_m_drg_cc_3m='Cocaine, crack and freebase';
	label srb_1m_m_drg_hro_3m='Heroin or other opiates';
	label srb_1m_m_drg_main_3m='Main drug in the past 90 days, if other than cocaine, heroin, or other opiates';
	label srb_1m_m_drg_aph_3m='Amphetamines and other psychostimulants';
	label srb_1m_m_drg_psy_3m='Other drugs and psychoactive substances for non-medical purposes';
	label bsi_3m_1='Faintness or dizziness:';
	label bsi_3m_2='Feeling no interest in things:';
	label bsi_3m_3='Nervousness or shakiness inside:';
	label bsi_3m_4='Pains in heart or chest:';
	label bsi_3m_5='Feeling lonely:';
	label bsi_3m_6='Feeling tense or anxious:';
	label bsi_3m_7='Nausea or upset stomach:';
	label bsi_3m_8='Feeling blue:';
	label bsi_3m_9='Suddenly scared for no reason:';
	label bsi_3m_10='Trouble getting your breath:';
	label bsi_3m_11='Feelings of worthlessness:';
	label bsi_3m_12='Spells of terror or panic:';
	label bsi_3m_13='Numbness or tingling in parts of body:';
	label bsi_3m_14='Feeling hopeless about the future:';
	label bsi_3m_15='Feeling so restless you couldn''t sit still:';
	label bsi_3m_16='Feeling weak in parts of your body:';
	label bsi_3m_17='Thoughts of ending your life:';
	label bsi_3m_18='Feeling fearful:';
	label followup_3m_complete='Complete?';
	label followup_3m_eis_cpe__v_6='Survey Timestamp';
	label eis_status_3m='FOR THE INTERVIEWER What is the participant''s HCV status  ';
	label eis_1_3m='My employer/co-workers have discriminated against me. ';
	label eis_2_3m='Some people act as though I am less competent than usual.';
	label eis_3_3m='I feel I have been treated with less respect than usual by others.';
	label eis_4_3m='I feel others are concerned they could catch my HCV through contact like a handshake or eating food I prepare. ';
	label eis_5_3m='I feel others avoid me because of my HCV.';
	label eis_6_3m='I feel some family members have rejected me because of my HCV.';
	label eis_7_3m='I feel some friends have rejected me because of my HCV.';
	label eis_8_3m='I encounter embarrassing situations as a result of my HCV.';
	label eis_9_3m='Due to my HCV others seem to feel awkward and tense when they are around me.';
	label eis_10_3m='My job security has been affected by my HCV.';
	label eis_11_3m='I have experienced financial hardship that has affected my relationship with others.';
	label eis_12_3m='I feel others think I am to blame for my HCV.';
	label eis_13_3m='I do not feel I can be open with others about my HCV.';
	label eis_14_3m='I fear someone telling others about my HCV without my permission. ';
	label eis_15_3m='I feel I need to keep my HCV a secret. ';
	label eis_16_3m='I feel I am at least partially to blame for my HCV.';
	label eis_17_3m='I feel set apart from others who are well.';
	label eis_18_3m='I have a greater need than usual for reassurance that others care about me.';
	label eis_19_3m='Due to my HCV, I have a sense of being unequal in my relationships with others.';
	label eis_20_3m='I feel less competent than I did before I had HCV.';
	label eis_21_3m='Due to my HCV, I sometimes feel useless.';
	label eis_22_3m='Changes in my appearance have affected my social relationships.';
	label cpe_1_3m='Take your pills for PrEP once a day, exactly as directed, if prescribed, without ever missing a dose?';
	label cpe_2_3m='Take your pills for PrEP, every day, even when feeling very tired or depressed?';
	label cpe_3_3m='Remember to take your pills for PrEP, every day, for the next 30 days?';
	label cpe_4_3m='Keep all your doctor visits without missing an appointment?';
	label cce_1_3m='Take your pills for HCV treatment once a day, exactly as directed, if prescribed, without ever missing a dose?';
	label cce_2_3m='Take your pills for HCV treatment, every day, even when feeling very tired or depressed?';
	label cce_3_3m='Remember to take your pills for HCV treatment, every day, for the next 30 days?';
	label cce_4_3m='Keep all your HCV doctor visits without missing an appointment?';
	label followup_3m_eis_cpe__v_7='Complete?';
	label followup_3m_adh2_4_timestamp='Survey Timestamp';
	label adh2_visitdate='Visit Date';
	label prep_prescribe='Have you received a prescription for PrEP Medication since your last M2 study visit?';
	label adh_prep='Have you started taking PrEP since your last M2 study visit?';
	label stop_prep='Have you stopped taking PrEP since your last M2 study visit?';
	label prep_last4week='Have you taken PrEP medications in the past 4 weeks?  ';
	label prep_now='Are you currently taking PrEP medications?  ';
	label prep_misspercent='Provide your best guess about what percentage of your prescribed PrEP medications you have taken in the past 4 weeks:   Examples:  0% means you have taken none of your PrEP medication in the past 4 weeks, 50% means you have taken half of your PrEP medication in the past 4 weeks, and 100% means you have taken every single dose of your PrEP medication in the past 4 weeks. ';
	label prep_missdose='How many doses/pills of your PrEP medications did you miss in the past 7 days? ';
	label adh2_noncompliance___1='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I experienced physical side effects)';
	label adh2_noncompliance___2='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I wanted to drink or use illicit drugs and was worried about mixing medications (wanted to get high))';
	label adh2_noncompliance___3='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I was experiencing pain)';
	label adh2_noncompliance___4='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I think medication is not the best treatment)';
	label adh2_noncompliance___5='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I believe I am cured)';
	label adh2_noncompliance___6='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I have misconceptions about what the medication will or will not do)';
	label adh2_noncompliance___7='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I forgot to take medication)';
	label adh2_noncompliance___8='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I did not have access to medication (e.g. went on vacation and left medication at home))';
	label adh2_noncompliance___9='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I ran out of medication)';
	label adh2_noncompliance___10='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I misunderstood dosing instructions)';
	label adh2_noncompliance___11='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I felt I did not need the full prescribed dose)';
	label adh2_noncompliance___12='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I was experiencing withdrawal symptoms)';
	label adh2_noncompliance___13='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I was impatient waiting for the medication to work)';
	label adh2_noncompliance___14='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I lost the medication)';
	label adh2_noncompliance___15='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I reported that medication was stolen)';
	label adh2_noncompliance___16='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=Sold or gave away medication)';
	label adh2_noncompliance___17='If you did not comply with the assigned PREP, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=other)';
	label adh2_noncomplyspec='If other please specify';
	label adh2_prepchange='Was there a change from the assigned PrEP to an alternative PrEP since last study visit?';
	label adh2_changprepspec='If yes please specify';
	label adh2_newprepdateprescr='Date alternative PrEP was first prescribed';
	label adh2_newprepdateingest='Date alternative PrEP was first ingested';
	label adh_hcv='Have you started taking HCV medication';
	label adh4_hcvchange='Was there a change from the assigned HCV medication to an alternative HCV medication since last study visit?';
	label adh4_changhcvspec='If yea please specify';
	label adh4_newhcvdateprescr='Date alternative HCV medication was first prescribed';
	label adh4_newhcvdateingest='Date alternative HCV medication was first ingested';
	label adh4_noncompliance___1='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I experienced physical side effects)';
	label adh4_noncompliance___2='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I wanted to drink or use illicit drugs and was worried about mixing medications (wanted to get high))';
	label adh4_noncompliance___3='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I was experiencing pain)';
	label adh4_noncompliance___4='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I think medication is not the best treatment)';
	label adh4_noncompliance___5='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I believe I am cured)';
	label adh4_noncompliance___6='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I have misconceptions about what the medication will or will not do)';
	label adh4_noncompliance___7='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I forgot to take medication)';
	label adh4_noncompliance___8='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I did not have access to medication (e.g. went on vacation and left medication at home))';
	label adh4_noncompliance___9='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I ran out of medication)';
	label adh4_noncompliance___10='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I misunderstood dosing instructions)';
	label adh4_noncompliance___11='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I felt I did not need the full prescribed dose)';
	label adh4_noncompliance___12='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I was experiencing withdrawal symptoms)';
	label adh4_noncompliance___13='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I was impatient waiting for the medication to work)';
	label adh4_noncompliance___14='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I lost the medication)';
	label adh4_noncompliance___15='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=I reported that medication was stolen)';
	label adh4_noncompliance___16='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=Sold or gave away medication)';
	label adh4_noncompliance___17='If you did not comply with assigned HCV Medication, what was the reason for noncompliance? (e.g. missed dose or dose change from prescribed dose): (Check all that apply)  (choice=other)';
	label adh4_noncomplyspec='If other please specify';
	label adh4_nopillslastpresc='How many pills did you receive on your last prescription? ';
	label adh4_nopillsleft='How many pills do you have left in the package?';
	label followup_3m_adh2_4_complete='Complete?';
	label followup_6m_timestamp='Survey Timestamp';
	label idu_cnty_6m='FOR THE INTERVIEWER: Is the participant accessing services in Canada or the United States? ';
	label auc_1_6m='How often do you have a drink of alcohol?';
	label auc_2_6m='How many drinks containing alcohol do you have on a typical occasion when drinking?';
	label auc_11_6m='How often do you have 4 or more standard drinks on one occasion?';
	label auc_12_6m='How often do you have 5 or more standard drinks on one occasion?';
	label auc_3_6m='How often do you have 6 or more drinks on one occasion?';
	label auc_4_6m='How often during the past 6 months have you found that you were unable to stop drinking once you started? ';
	label auc_5_6m='How often during the past 6 months have you failed to do what was normally expected of you because of drinking?';
	label auc_6_6m='How often during the past 6 months have you needed a first drink in the morning to get yourself going after a heavy drinking session?';
	label auc_7_6m='How often during the past 6 months have you felt guilt or remorse after drinking?';
	label auc_8_6m='How often during the past 6 months have you been unable to remember what happened the night before because of drinking?';
	label auc_9_6m=' Have you or someone else been injured as a result of your drinking?';
	label auc_10_6m='Has a relative, friend, doctor, or other health worker, been concerned about your drinking or suggested you cut down?';
	label dst_1_6m='Have you used drugs other than those required for medical reasons?';
	label dst_2_6m='Do you use more than one drug at a time? ';
	label dst_3_6m='Are you always able to stop using drugs when you want to? ';
	label dst_4_6m='Have you had blackouts or flashbacks as a result of drug use?';
	label dst_5_6m='Do you ever feel bad or guilty about your drug use in the past 6 months? ';
	label dst_6_6m='Does your spouse/partner or parents ever complain about your involvement with drugs in the past 6 months?';
	label dst_7_6m='Have you neglected your family because of your use of drugs?';
	label dst_8_6m='Have you engaged in illegal activities in order to obtain drugs?';
	label dst_9_6m='Have you ever experienced withdrawal symptoms (felt sick) when you stopped taking drugs in the past 6 months?';
	label dst_10_6m='Have you had medical problems as a result of your drug use (e.g., memory loss, hepatitis, convulsions, bleeding, etc.)?';
	label odu_6m_6m='In the past six months, have you had one or more overdoses? (choose one) ';
	label odu_6m_frq_6m='How many overdoses have you had in the past six months? ';
	label odu_6m_frq_acdt_6m='How many overdoses were accidental?';
	label odu_6m_tim_6m='When was the last time you had an overdose?  (year/month/day)';
	label odu_6m_tim_acdt_6m='Was this overdose accidental?';
	label aiv_6m_pa_6m='Have you been beaten, physically attacked, or physically abused in the past six months?';
	label aiv_6m_pa_sp_6m='Were you in a relationship where a sexual partner did this to you in the past six months? ';
	label aiv_6m_sex_6m='Have you been sexually attacked, raped, or sexually abused in the past six months?';
	label aiv_6m_sex_sp_6m='Were you in a relationship where a sexual partner did this to you in the past six months? ';
	label aiv_6m_sp_vio_6m='Have you ever been in a relationship where a sexual partner threatened you with violence in the past six months? ';
	label aiv_6m_sp_brc_6m='Have you ever been in a relationship where a sexual partner threw, broke, or punched things in the past six months? ';
	label aiv_6m_sp_ctl_6m='Have you been in a relationship where you felt controlled by a sexual partner in the past six months?';
	label act_1_6m='If I needed hospital care, I can get admitted without trouble.';
	label act_2_6m='It is hard for me to get medical care in an emergency.';
	label act_3_6m='Sometimes I go without the medical care I need because it is too expensive.';
	label act_4_6m='I have an easy access to the medical specialists that I need';
	label act_5_6m='Places where I can get medical care are very conveniently located ';
	label act_6_6m='I am able to get medical care whenever I need it';
	label cdu_1_6m='I feel confident in my ability to put a condom on myself or my partner.';
	label cdu_2_6m='I feel confident in my ability to discuss condom usage with any partner I might have.';
	label cdu_3_6m='I feel confident in my ability to suggest using condoms with a new partner.';
	label cdu_4_6m='I feel confident I could suggest using a condom without my partner feeling diseased.';
	label cdu_5_6m='If I were to suggest using a condom to a partner, I would feel afraid that he or she would reject me.';
	label cdu_6_6m='If I were unsure of my partner''s feelings about using condoms, I would not suggest using one.';
	label cdu_7_6m='I feel confident I could gracefully remove and dispose of a condom when having intercourse.';
	label cdu_8_6m='I would not feel confident suggesting using condoms with a new partner because I would be afraid he or she would think I''ve had a homosexual experience.';
	label cdu_9_6m='I would not feel confident suggesting using condoms with a new partner because I would be afraid he or she would think I thought they had a sexually transmitted disease. ';
	label cdu_10_6m='I feel confident in my ability to put a condom on myself or my partner quickly.';
	label cdu_11_6m='I feel confident that I would remember to use a condom even after I have been drinking.';
	label cdu_12_6m='I feel confident that I would remember to use a condom even if I were high.';
	label cdu_13_6m='I feel confident that I could use a condom successfully.';
	label cdu_14_6m='I feel confident I could stop to put a condom on myself or my partner even in the heat of passion.';
	label cdu_15_6m='How often did you use condoms in the past 30 days?';
	label cdu_16_6m='For how long have you been using condoms every time?';
	label cdu_17_6m='I will use condoms every time within the next six months.';
	label cdu_18_6m='I will be using condoms every time within the next 30 days.';
	label followup_6m_complete='Complete?';
	label ac1='I feel my adherence counselor understood me.';
	label ac2='I believe my adherence counselor cared about me.';
	label ac3='I think I had a good relationship with my adherence counselor.';
	label ac4='I liked my adherence counselor as a person.';
	label ac5='When I wanted or needed to talk with my adherence counselor, he or she made time to talk with me.';
	label ac6='My adherence counselor repeatedly offered me help with my health care needs.';
	label ac7='My adherence consular really knows how to work with the HIV prevention and support system.';
	label ac8='My adherence counselor really knows how to work with the HCV health care system.';
	label ac9='My adherence counselor repeatedly offered me help with my substance use treatment needs.';
	label ac10='My adherence counselor really knows how to work with the substance use treatment system.';
	label pns_1='I feel my patient navigator understood me.';
	label pns_2='I believe my patient navigator cared about me.';
	label pns_3='I think I had a good relationship with my patient navigator.';
	label pns_4='I liked my patient navigator as a person.';
	label pns_5='When I wanted or needed to talk with my patient navigator, he or she made time to talk with me.';
	label pns_6='My patient navigator repeatedly offered me help with my health care needs.';
	label pns_7='My patient navigator really knows how to work with the HIV prevention and support system.';
	label pns_8='(Ask only if the participant is HCV+). My patient navigator really knows how to work with the HCV health care system.';
	label pns_9='My patient navigator repeatedly offered me help with my substance use treatment needs.';
	label pns_10='My patient navigator really knows how to work with the substance use treatment system.';
	label intervention_satisfa_v_8='Complete?';
	label scf_lastvisit='Date of last study visit ';
	label scf_reasonend='Primary reason for ending participation in the study:';
	label scf_reason_ltf='Reason (if known):';
	label scf_reason_date='Date of last contact:';
	label scf_other='Other, please specify:';
	label scf_comment='Comments';
	label end_of_study_form_complete='Complete?';
	label eom_date='Date of medication ended';
	label eom_whatmed___0='What medication was discontinued? (choose that apply) (choice=Truvada)';
	label eom_whatmed___1='What medication was discontinued? (choose that apply) (choice=Epclusa)';
	label eom_whatmed___2='What medication was discontinued? (choose that apply) (choice=Other HCV medication)';
	label eom_whatmed_hcv='What HCV medication were you taking?';
	label eom_last_truvada='What was the date of the participant''s last dose of Truvada? ';
	label eom_last_epc='What was the date of the participant''s last dose of Epclusa? ';
	label eom_last_ot='What was the date of the participant''s last dose of the Other HCV medication? ';
	label eom_reason_truvada___0='Primary reason for not completing Truvada (choose all that apply) (choice=Participant became pregnant)';
	label eom_reason_truvada___1='Primary reason for not completing Truvada (choose all that apply) (choice=Participant unable to tolerate side effects)';
	label eom_reason_truvada___2='Primary reason for not completing Truvada (choose all that apply) (choice=Contraindicated concomitant medication)';
	label eom_reason_truvada___3='Primary reason for not completing Truvada (choose all that apply) (choice=Participant left study and never returned)';
	label eom_reason_truvada___4='Primary reason for not completing Truvada (choose all that apply) (choice=Participant refused, non-specific)';
	label eom_reason_truvada___5='Primary reason for not completing Truvada (choose all that apply) (choice=Clinical deterioration: new onset of psychiatric or medical condition)';
	label eom_reason_truvada___6='Primary reason for not completing Truvada (choose all that apply) (choice=Participant feels that study treatment is no longer necessary/not working)';
	label eom_reason_truvada___7='Primary reason for not completing Truvada (choose all that apply) (choice=Participant became incarcerated)';
	label eom_reason_truvada___8='Primary reason for not completing Truvada (choose all that apply) (choice=Participant withdrew consent)';
	label eom_reason_truvada___9='Primary reason for not completing Truvada (choose all that apply) (choice=Participant moved from area)';
	label eom_reason_truvada___10='Primary reason for not completing Truvada (choose all that apply) (choice=Participant deceased)';
	label eom_reason_truvada___11='Primary reason for not completing Truvada (choose all that apply) (choice=Non-compliance - frequently missed doses)';
	label eom_reason_truvada___12='Primary reason for not completing Truvada (choose all that apply) (choice=Participant became HIV positive)';
	label eom_reason_truvada___13='Primary reason for not completing Truvada (choose all that apply) (choice=Clinical instability - as per physician discretion)';
	label eom_reason_truvada___14='Primary reason for not completing Truvada (choose all that apply) (choice=Adverse event requiring removal from medication)';
	label eom_reason_truvada___15='Primary reason for not completing Truvada (choose all that apply) (choice=Other)';
	label eom_other='Other: please specify';
	label eom_primreason___0='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant became pregnant)';
	label eom_primreason___1='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant unable to tolerate side effects)';
	label eom_primreason___2='Primary reason for not completing Epclusa (choose all that apply)  (choice=Contraindicated concomitant medication)';
	label eom_primreason___3='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant left study and never returned)';
	label eom_primreason___4='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant refused, non-specific)';
	label eom_primreason___5='Primary reason for not completing Epclusa (choose all that apply)  (choice=Clinical deterioration: new onset of psychiatric or medical condition)';
	label eom_primreason___6='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant feels that study treatment is no longer necessary/not working)';
	label eom_primreason___7='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant became incarcerated)';
	label eom_primreason___8='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant withdrew consent)';
	label eom_primreason___9='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant moved from area)';
	label eom_primreason___10='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant deceased)';
	label eom_primreason___11='Primary reason for not completing Epclusa (choose all that apply)  (choice=Non-compliance - frequently missed doses)';
	label eom_primreason___12='Primary reason for not completing Epclusa (choose all that apply)  (choice=Participant became HIV positive)';
	label eom_primreason___13='Primary reason for not completing Epclusa (choose all that apply)  (choice=Clinical instability - as per physician discretion)';
	label eom_primreason___14='Primary reason for not completing Epclusa (choose all that apply)  (choice=Adverse event requiring removal from medication)';
	label eom_primreason___15='Primary reason for not completing Epclusa (choose all that apply)  (choice=Other)';
	label eom_other2='Other: please specify';
	label eom_reason_hcv___0='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant became pregnant)';
	label eom_reason_hcv___1='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant unable to tolerate side effects)';
	label eom_reason_hcv___2='Primary reason for not completing HCV medication  (choose all that apply) (choice=Contraindicated concomitant medication)';
	label eom_reason_hcv___3='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant left study and never returned)';
	label eom_reason_hcv___4='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant refused, non-specific)';
	label eom_reason_hcv___5='Primary reason for not completing HCV medication  (choose all that apply) (choice=Clinical deterioration: new onset of psychiatric or medical condition)';
	label eom_reason_hcv___6='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant feels that study treatment is no longer necessary/not working)';
	label eom_reason_hcv___7='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant became incarcerated)';
	label eom_reason_hcv___8='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant withdrew consent)';
	label eom_reason_hcv___9='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant moved from area)';
	label eom_reason_hcv___10='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant deceased)';
	label eom_reason_hcv___11='Primary reason for not completing HCV medication  (choose all that apply) (choice=Non-compliance - frequently missed doses)';
	label eom_reason_hcv___12='Primary reason for not completing HCV medication  (choose all that apply) (choice=Participant became HIV positive)';
	label eom_reason_hcv___13='Primary reason for not completing HCV medication  (choose all that apply) (choice=Clinical instability - as per physician discretion)';
	label eom_reason_hcv___14='Primary reason for not completing HCV medication  (choose all that apply) (choice=Adverse event requiring removal from medication)';
	label eom_reason_hcv___15='Primary reason for not completing HCV medication  (choose all that apply) (choice=Other)';
	label eom_other3='Other: please specify ';
	label end_of_medication_complete='Complete?';
	label ae_describe='Adverse Event description (record only one term)';
	label ae_number='Adverse Event Number (AE #)';
	label ae_datereport='Date of report ';
	label ae_typereport___0='Type of report (choice=Initial)';
	label ae_typereport___1='Type of report (choice=Follow-up)';
	label ae_typereport___2='Type of report (choice=Final)';
	label ae_od='Onset date ';
	label ae_guidelines='Is this an SAE according to ICH guidelines? ';
	label ae_severity='Severity';
	label ae_expect='Expectedness';
	label ae_relation_med='In your medical judgment, is there a reasonable possibility that the adverse event may have been caused by the trial therapy? (Please note any relationship other than unrelated is considered related for reporting purposes).  ';
	label ae_treatment___0='Treatment (mark none or all that apply) (choice=None)';
	label ae_treatment___1='Treatment (mark none or all that apply) (choice=Non-medication treatment)';
	label ae_treatment___2='Treatment (mark none or all that apply) (choice=Medication)';
	label ae_treatment___3='Treatment (mark none or all that apply) (choice=Procedure/Surgery)';
	label ae_treatment___4='Treatment (mark none or all that apply) (choice=Hospitalization)';
	label ae_treatment___5='Treatment (mark none or all that apply) (choice=Other)';
	label ae_other='Other: please specify ';
	label ae_treatment2='Treatment: Describe any medical interventions, medications, and/or surgical treatments used to treat the event.';
	label ae_outcome='Outcome/consequences of Adverse Event';
	label ae_status='Status/outcome date (leave blank if ongoing)';
	label smi_txarm='Treatment Arm';
	label smi_prepmed='Prescribed PrEP medication';
	label smi_specify_2='Please specify:';
	label prep_disp='PrEP Medication:';
	label smi_prep_start='Date of FIRST PrEP dose ';
	label smi_prep_last='Date of LAST PrEP dose prior to event :';
	label smi_prep_action___0='Action taken regarding PrEP medication (choice=Dose not changed/None)';
	label smi_prep_action___1='Action taken regarding PrEP medication (choice=Dose delayed)';
	label smi_prep_action___2='Action taken regarding PrEP medication (choice=Dose reduced)';
	label smi_prep_action___3='Action taken regarding PrEP medication (choice=Dose increased)';
	label smi_prep_action___4='Action taken regarding PrEP medication (choice=Drug discontinued  temporarily)';
	label smi_prep_action___5='Action taken regarding PrEP medication (choice=Drug discontinued permanently)';
	label smi_prep_action___6='Action taken regarding PrEP medication (choice=Unknown)';
	label smi_prep_action___7='Action taken regarding PrEP medication (choice=Not applicable)';
	label smi_hcv='HCV Status at the time of the Adverse Event Report Date';
	label smi_hcv_baseline='HCV Status at baseline';
	label smi_hcvmed='Prescribed HCV medication';
	label smi_specify='Please specify:';
	label hcv_disp='HCV Medication:';
	label smi_hcv_start='Date of FIRST HCV medication dose:';
	label smi_hcv_last='Date of LAST HCV medication dose ';
	label smi_action___0='Action taken regarding HCV medication (choice=Dose not changed/None)';
	label smi_action___1='Action taken regarding HCV medication (choice=Dose delayed)';
	label smi_action___2='Action taken regarding HCV medication (choice=Dose reduced)';
	label smi_action___3='Action taken regarding HCV medication (choice=Dose increased)';
	label smi_action___4='Action taken regarding HCV medication (choice=Drug discontinued  temporarily)';
	label smi_action___5='Action taken regarding HCV medication (choice=Drug discontinued permanently)';
	label smi_action___6='Action taken regarding HCV medication (choice=Unknown)';
	label smi_action___7='Action taken regarding HCV medication (choice=Not applicable)';
	label smi_describe='Event Description: Description of the clinical presentation/course of the event(s), dates, times, treatment, and any other assessments which help explain the event.';
	label smi_by='Collected by :';
	label adverse_event_form_complete='Complete?';
	label sae_number='Serious Adverse Event Number (SAE #)';
	label sae_date='Date of report ';
	label sae_type___0='Type of report (choice=Initial)';
	label sae_type___1='Type of report (choice=Follow-up)';
	label sae_type___2='Type of report (choice=Final)';
	label sae_describe='Serious Adverse Event Description:';
	label sae_onset='Onset date ';
	label sae_criteria___0='Serious Criteria  (choice=Death)';
	label sae_criteria___1='Serious Criteria  (choice=Life-threatening)';
	label sae_criteria___2='Serious Criteria  (choice=Initial or prolonged hospitalization)';
	label sae_criteria___3='Serious Criteria  (choice=Persistent or significant disability/incapacity)';
	label sae_criteria___4='Serious Criteria  (choice=Congenital anomaly/birth defect)';
	label sae_criteria___5='Serious Criteria  (choice=Medically significant event)';
	label sae_admission_date='Hospital admission date ';
	label sae_discharge_date='Hospital discharge date';
	label sae_severity='Severity';
	label sae_expect='Expectedness';
	label sae_related='In your medical judgment, is there a reasonable possibility that the adverse event may have been caused by the trial therapy? (Please note any relationship other than unrelated is considered related for reporting purposes).';
	label sae_rationale='Please provide investigator rationale.';
	label sae_outcome='Outcome/consequences of Adverse Event';
	label sae_resolution='Resolution date ';
	label sae_death_date_2='Date of participant''s death ';
	label sae_death_site='Date the site became aware of the participant''s death';
	label sae_death_certificate='Was a death certificate obtained?';
	label sae_death_cause='What was the primary cause of death?';
	label sae_other='Other: please specify';
	label sae_information___0='Source of information (choose all that apply) (choice=Autopsy)';
	label sae_information___1='Source of information (choose all that apply) (choice=Medical records)';
	label sae_information___2='Source of information (choose all that apply) (choice=Death certificate)';
	label sae_information___3='Source of information (choose all that apply) (choice=Physician)';
	label sae_information___4='Source of information (choose all that apply) (choice=Locator form inquiry)';
	label sae_information___5='Source of information (choose all that apply) (choice=Other)';
	label sae_other2='Other: please specify';
	label sae_death_autopsy='Was an autopsy performed? ';
	label sae_txarm='Treatment Arm';
	label sae_prepmed='Prescribed PrEP medication';
	label sae_specify_2='Please specify:';
	label sae_prep_disp='PrEP Medication:';
	label sae_prep_start='Date of FIRST PrEP dose ';
	label sae_prep_end='Date of LAST PrEP dose prior to event:';
	label sae_action___0='Action taken regarding PrEP medication (choice=Dose not changed/None)';
	label sae_action___1='Action taken regarding PrEP medication (choice=Dose delayed)';
	label sae_action___2='Action taken regarding PrEP medication (choice=Dose reduced)';
	label sae_action___3='Action taken regarding PrEP medication (choice=Dose increased)';
	label sae_action___4='Action taken regarding PrEP medication (choice=Drug discontinued temporarily)';
	label sae_action___5='Action taken regarding PrEP medication (choice=Drug discontinued permanently)';
	label sae_action___6='Action taken regarding PrEP medication (choice=Unknown)';
	label sae_action___7='Action taken regarding PrEP medication (choice=Not applicable)';
	label sae_prep_abate='Did event abate after PrEP medication discontinuation or delay?';
	label sae_prep_reappear='Did event reappear after PrEP medication restarted?';
	label sae_hcv='HCV Status';
	label sae_hcvmed='Prescribed HCV medication';
	label sae_specify='Please specify:';
	label hcv_med_disp='HCV Medication:';
	label sae_hcv_start='Date of FIRST HCV medication dose ';
	label sae_hcv_end='Date of LAST HCV medication dose ';
	label sae_hcv_abate='Did event abate after HCV medication discontinuation or delay?';
	label sae_hcv_reappear='Did event reappear after HCV medication restarted?';
	label sae_action_hcv___0='Action taken regarding HCV medication (choice=Dose not changed/None)';
	label sae_action_hcv___1='Action taken regarding HCV medication (choice=Dose delayed)';
	label sae_action_hcv___2='Action taken regarding HCV medication (choice=Dose reduced)';
	label sae_action_hcv___3='Action taken regarding HCV medication (choice=Dose increased)';
	label sae_action_hcv___4='Action taken regarding HCV medication (choice=Drug discontinued temporarily)';
	label sae_action_hcv___5='Action taken regarding HCV medication (choice=Drug discontinued permanently)';
	label sae_action_hcv___6='Action taken regarding HCV medication (choice=Unknown)';
	label sae_action_hcv___7='Action taken regarding HCV medication (choice=Not applicable)';
	label sae_tx='Describe any medical interventions, medications, and/or surgical treatments used to treat the event.';
	label sae_add_action_hcv='Additional action taken:';
	label sae_med='Medication';
	label sae_med_dose='Daily dosing regimen';
	label sae_med_start='Start date ';
	label sae_med_stop='Stop date ';
	label sae_ongoing='Ongoing?';
	label sae_condition='Condition';
	label sae_condition_start='Start date ';
	label sae_condition_stop='Stop date ';
	label sae_ongoing_rmh='Ongoing? ';
	label sae_event_narrative='Event Description/Case Narrative: Description of the clinical presentation/course of the event(s), dates, times, treatment, and any other assessments which help explain the event.';
	label sae_initial='Collected by :';
	label serious_adverse_even_v_9='Complete?';
	label date_visit='Scheduled visit date';
	label rmv='Reason for missed visit';
	label com='Comments';
	label missed_visit_form_complete='Complete?';
	label medi_pres___1='Medication Prescribed: (choice=Truvada)';
	label medi_pres___2='Medication Prescribed: (choice=Epclusa)';
	label medi_pres___3='Medication Prescribed: (choice=Other)';
	label medi_pres_ot='if other, specify:';
	label pres_dose='Prescribed quantity';
	label date_truvada='Date of the medication Truvada prescribed';
	label date_epclusa='Date of the medication Epclusa prescribed';
	label date_other='Date of the [medi_pres_ot] medication prescribed';
	label medi_dispense___1='Medication dispensed: (choice=Truvada)';
	label medi_dispense___2='Medication dispensed: (choice=Epclusa)';
	label medi_dispense___3='Medication dispensed: (choice=Other)';
	label date_truvada_disp='Date of the medication Truvada Dispensed';
	label date_epclusa_dis='Date of the medication Epclusa Dispensed';
	label date_other_disp='Date of the other medication dispensed';
	label com_dose='Comments';
	label treatment_initiation_complete='Complete?';
	format redcap_event_name redcap_event_name_.;
	format redcap_repeat_instrument redcap_repeat_instrument_.;
	format redcap_data_access_group redcap_data_access_group_.;
	format languages languages_.;
	format languages_complete languages_complete_.;
	format sdem_reside sdem_reside_.;
	format sdem_lang_mon sdem_lang_mon_.;
	format sdem_lang_mia sdem_lang_mia_.;
	format sdem_lang_mia_2 sdem_lang_mia_2_.;
	format sdem_oat sdem_oat_.;
	format sdem_sev sdem_sev_.;
	format sdem_sev_no sdem_sev_no_.;
	format sdem_sex sdem_sex_.;
	format sdem_gender sdem_gender_.;
	format sdem_prg_c sdem_prg_c_.;
	format sdem_prg_c2 sdem_prg_c2_.;
	format sdem_prg_b sdem_prg_b_.;
	format sdem_brsf sdem_brsf_.;
	format sdem_prg_ct18 sdem_prg_ct18_.;
	format vcp_inject_6mo vcp_inject_6mo_.;
	format sdem_hiv_etst sdem_hiv_etst_.;
	format sdem_hiv_rtst_r sdem_hiv_rtst_r_.;
	format sdem_prp_cu sdem_prp_cu_.;
	format sdem_hcv sdem_hcv_.;
	format sdem_hcv_fail sdem_hcv_fail_.;
	format sdem_wil_fol sdem_wil_fol_.;
	format sdem_hcv_etst sdem_hcv_etst_.;
	format sdem_hcv_rtst_r sdem_hcv_rtst_r_.;
	format sdem_hcv_etst_w___0 sdem_hcv_etst_w___0_.;
	format sdem_hcv_etst_w___1 sdem_hcv_etst_w___1_.;
	format sdem_hcv_etst_w___2 sdem_hcv_etst_w___2_.;
	format sdem_hcv_etst_w___3 sdem_hcv_etst_w___3_.;
	format sdem_hcv_etst_w___4 sdem_hcv_etst_w___4_.;
	format sdem_hcv_etst_w___5 sdem_hcv_etst_w___5_.;
	format sdem_hcv_etst_w___6 sdem_hcv_etst_w___6_.;
	format sdem_hcv_etst_w___7 sdem_hcv_etst_w___7_.;
	format sdem_hcv_etst_w___8 sdem_hcv_etst_w___8_.;
	format sdem_hcv_etst_w___9 sdem_hcv_etst_w___9_.;
	format sdem_hcv_etst_w___10 sdem_hcv_etst_w___10_.;
	format sdem_hcv_etst_w___11 sdem_hcv_etst_w___11_.;
	format sdem_hcv_etst_w___12 sdem_hcv_etst_w___12_.;
	format sdem_hcv_etst_w___13 sdem_hcv_etst_w___13_.;
	format sdem_hcv_etst_w___14 sdem_hcv_etst_w___14_.;
	format sdem_hcv_etst_w___15 sdem_hcv_etst_w___15_.;
	format sdem_hcv_etst_w___16 sdem_hcv_etst_w___16_.;
	format shhr_hiv_etstw___0 shhr_hiv_etstw___0_.;
	format shhr_hiv_etstw___1 shhr_hiv_etstw___1_.;
	format shhr_hiv_etstw___2 shhr_hiv_etstw___2_.;
	format shhr_hiv_etstw___3 shhr_hiv_etstw___3_.;
	format shhr_hiv_etstw___4 shhr_hiv_etstw___4_.;
	format shhr_hiv_etstw___5 shhr_hiv_etstw___5_.;
	format shhr_hiv_etstw___6 shhr_hiv_etstw___6_.;
	format shhr_hiv_etstw___7 shhr_hiv_etstw___7_.;
	format shhr_hiv_etstw___8 shhr_hiv_etstw___8_.;
	format shhr_hiv_etstw___9 shhr_hiv_etstw___9_.;
	format shhr_hiv_etstw___10 shhr_hiv_etstw___10_.;
	format shhr_hiv_etstw___11 shhr_hiv_etstw___11_.;
	format shhr_hiv_etstw___12 shhr_hiv_etstw___12_.;
	format shhr_hiv_etstw___13 shhr_hiv_etstw___13_.;
	format shhr_hiv_etstw___14 shhr_hiv_etstw___14_.;
	format shhr_hiv_etstw___15 shhr_hiv_etstw___15_.;
	format shhr_hiv_etstw___16 shhr_hiv_etstw___16_.;
	format shhr_hiv_etstw___17 shhr_hiv_etstw___17_.;
	format shhr_tst_r shhr_tst_r_.;
	format shkq_1 shkq_1_.;
	format shkq_2 shkq_2_.;
	format shkq_3 shkq_3_.;
	format shkq_4 shkq_4_.;
	format shkq_5 shkq_5_.;
	format shkq_6 shkq_6_.;
	format shkq_7 shkq_7_.;
	format shkq_8 shkq_8_.;
	format shkq_9 shkq_9_.;
	format shkq_10 shkq_10_.;
	format shkq_11 shkq_11_.;
	format shkq_12 shkq_12_.;
	format preg_result preg_result_.;
	format scr_c_hcv_res scr_c_hcv_res_.;
	format insti insti_.;
	format sdem_slep6m sdem_slep6m_.;
	format sdem_live6m_hls sdem_live6m_hls_.;
	format sdem_live6m_shl1 sdem_live6m_shl1_.;
	format sdem_live6m_trs sdem_live6m_trs_.;
	format sdem_live6m_htl sdem_live6m_htl_.;
	format sdem_live6m_hiv sdem_live6m_hiv_.;
	format sdem_live6m_sut sdem_live6m_sut_.;
	format sdem_live6m_shl2 sdem_live6m_shl2_.;
	format sdem_live6m_shl3 sdem_live6m_shl3_.;
	format sdem_live6m_shl4 sdem_live6m_shl4_.;
	format sdem_live6m_shl5 sdem_live6m_shl5_.;
	format sdem_fod_qul sdem_fod_qul_.;
	format sdem_fod_frq sdem_fod_frq_.;
	format sdem_ild sdem_ild_.;
	format sdem_idu sdem_idu_.;
	format sdem_idu_6m sdem_idu_6m_.;
	format sdem_idu6m___0 sdem_idu6m___0_.;
	format sdem_idu6m___1 sdem_idu6m___1_.;
	format sdem_idu6m___2 sdem_idu6m___2_.;
	format sdem_idu6m___3 sdem_idu6m___3_.;
	format sdem_idu6m___4 sdem_idu6m___4_.;
	format sdem_idu6m___5 sdem_idu6m___5_.;
	format sdem_idu6m___6 sdem_idu6m___6_.;
	format sdem_idu6m___7 sdem_idu6m___7_.;
	format shlt_r shlt_r_.;
	format shlt_l shlt_l_.;
	format shlt_f shlt_f_.;
	format sdem_dis_hcv sdem_dis_hcv_.;
	format sdem_dis_hiv sdem_dis_hiv_.;
	format sdem_dis_sex sdem_dis_sex_.;
	format sdem_dis_gay sdem_dis_gay_.;
	format sdem_dis_race sdem_dis_race_.;
	format sdem_dis_sub sdem_dis_sub_.;
	format result_insti_2 result_insti_2_.;
	format sdem_int_evr sdem_int_evr_.;
	format sdem_int_elg sdem_int_elg_.;
	format screening_complete screening_complete_.;
	format vir_insti vir_insti_.;
	format vir_rapid vir_rapid_.;
	format vir_rna2 vir_rna2_.;
	format vir_hbs vir_hbs_.;
	format vir_hbc vir_hbc_.;
	format vir_a vir_a_.;
	format vir_hav vir_hav_.;
	format screening_specific_c_v_0 screening_specific_c_v_0_.;
	format vt_temp vt_temp_.;
	format vt_height vt_height_.;
	format vt_weight vt_weight_.;
	format vt_cir vt_cir_.;
	format vital_signs_complete vital_signs_complete_.;
	format ec_fem_0_ps ec_fem_0_ps_.;
	format ec_fem_1_ps ec_fem_1_ps_.;
	format ec_fem_2_ps ec_fem_2_ps_.;
	format ec_fem_3_ps ec_fem_3_ps_.;
	format ec_exc_1_ps ec_exc_1_ps_.;
	format ec_exc_2_ps ec_exc_2_ps_.;
	format ec_exc_3_ps ec_exc_3_ps_.;
	format ec_exc_4_ps ec_exc_4_ps_.;
	format ec_exc_5_ps ec_exc_5_ps_.;
	format ec_exc_6_ps ec_exc_6_ps_.;
	format ec_exc_7_ps ec_exc_7_ps_.;
	format ec_exc_8_ps ec_exc_8_ps_.;
	format ec_exc_11_ps ec_exc_11_ps_.;
	format ec_exc_12_ps ec_exc_12_ps_.;
	format ec_sign_ps ec_sign_ps_.;
	format physician_checklist_complete physician_checklist_complete_.;
	format ur_test_bas___0 ur_test_bas___0_.;
	format ur_test_bas___1 ur_test_bas___1_.;
	format ur_test_bas___2 ur_test_bas___2_.;
	format result_upt_bas result_upt_bas_.;
	format dbs_bas dbs_bas_.;
	format ct_bas___1 ct_bas___1_.;
	format ct_bas___2 ct_bas___2_.;
	format ct_bas___3 ct_bas___3_.;
	format ng_test_bas___1 ng_test_bas___1_.;
	format ng_test_bas___2 ng_test_bas___2_.;
	format ng_test_bas___3 ng_test_bas___3_.;
	format vir_ct_oral vir_ct_oral_.;
	format vir_ct_uro vir_ct_uro_.;
	format vir_ct_rec vir_ct_rec_.;
	format vir_ng_oral vir_ng_oral_.;
	format vir_ng_uro vir_ng_uro_.;
	format vir_ng_rec vir_ng_rec_.;
	format baseline_specific_co_v_1 baseline_specific_co_v_1_.;
	format ur_test_bas_3m ur_test_bas_3m_.;
	format result_upt_bas_3m result_upt_bas_3m_.;
	format dbs_bas_3m dbs_bas_3m_.;
	format ct_bas_3m___1 ct_bas_3m___1_.;
	format ct_bas_3m___2 ct_bas_3m___2_.;
	format ct_bas_3m___3 ct_bas_3m___3_.;
	format ct_bas_3m___4 ct_bas_3m___4_.;
	format ng_test_bas_3m___1 ng_test_bas_3m___1_.;
	format ng_test_bas_3m___2 ng_test_bas_3m___2_.;
	format ng_test_bas_3m___3 ng_test_bas_3m___3_.;
	format ng_test_bas_3m___4 ng_test_bas_3m___4_.;
	format vir_ct_oral_3m vir_ct_oral_3m_.;
	format vir_ct_uro_3m vir_ct_uro_3m_.;
	format vir_ct_rec_3m vir_ct_rec_3m_.;
	format vir_ng_oral_3m vir_ng_oral_3m_.;
	format vir_ng_uro_3m vir_ng_uro_3m_.;
	format vir_ng_rec_3m vir_ng_rec_3m_.;
	format vir_ng_other_3m vir_ng_other_3m_.;
	format vir_ct_other_3m vir_ct_other_3m_.;
	format syphilis_3m syphilis_3m_.;
	format hcv_status_3m hcv_status_3m_.;
	format hcv_ant_3m hcv_ant_3m_.;
	format hcv_ant_res_3m hcv_ant_res_3m_.;
	format hcv_rna_quan_12wkp_3m hcv_rna_quan_12wkp_3m_.;
	format hiv_ab_3m hiv_ab_3m_.;
	format hbv_sur_ant_3m hbv_sur_ant_3m_.;
	format fu_specific_collecti_v_2 fu_specific_collecti_v_2_.;
	format idu_cnty idu_cnty_.;
	format dem_gender dem_gender_.;
	format dem_gender_t dem_gender_t_.;
	format dem_gender_s dem_gender_s_.;
	format dem_gender_id dem_gender_id_.;
	format dem_residence dem_residence_.;
	format dem_race_hisp dem_race_hisp_.;
	format dem_aborig dem_aborig_.;
	format dem_indian1 dem_indian1_.;
	format dem_indian2 dem_indian2_.;
	format dem_race dem_race_.;
	format dem_trip_trans dem_trip_trans_.;
	format dem_edu dem_edu_.;
	format dem_marital dem_marital_.;
	format dem_employ dem_employ_.;
	format dem_hltins dem_hltins_.;
	format dem_hltins_can dem_hltins_can_.;
	format dem_hltins_t0 dem_hltins_t0_.;
	format dem_hltins_t1 dem_hltins_t1_.;
	format dem_hltins_t2 dem_hltins_t2_.;
	format dem_hltins_t3 dem_hltins_t3_.;
	format dem_hltins_t4 dem_hltins_t4_.;
	format dem_hltins_t5 dem_hltins_t5_.;
	format dem_hltins_t6 dem_hltins_t6_.;
	format dem_hltins_t7 dem_hltins_t7_.;
	format dem_hltins_t8 dem_hltins_t8_.;
	format dem_hltins_t9 dem_hltins_t9_.;
	format dem_hltins_t10 dem_hltins_t10_.;
	format dem_hltins_t14 dem_hltins_t14_.;
	format dem_hltins_t15___0 dem_hltins_t15___0_.;
	format dem_hltins_t15___1 dem_hltins_t15___1_.;
	format dem_hltins_t15___2 dem_hltins_t15___2_.;
	format dem_hltins_t15___3 dem_hltins_t15___3_.;
	format dem_hltins_t15___4 dem_hltins_t15___4_.;
	format dem_hltins_t15___5 dem_hltins_t15___5_.;
	format sub_ever___1 sub_ever___1_.;
	format sub_ever___2 sub_ever___2_.;
	format sub_ever___3 sub_ever___3_.;
	format sub_ever___4 sub_ever___4_.;
	format sub_ever___5 sub_ever___5_.;
	format sub_ever___6 sub_ever___6_.;
	format sub_ever___7 sub_ever___7_.;
	format sub_ever___8 sub_ever___8_.;
	format sub_ever___9 sub_ever___9_.;
	format sub_ever___10 sub_ever___10_.;
	format sub_ever___11 sub_ever___11_.;
	format sub_ever___12 sub_ever___12_.;
	format sub_ever___13 sub_ever___13_.;
	format sub_ever___14 sub_ever___14_.;
	format sub_ever___15 sub_ever___15_.;
	format sub_ever___16 sub_ever___16_.;
	format sub_ever___17 sub_ever___17_.;
	format sub_ever___18 sub_ever___18_.;
	format sub_ever___19 sub_ever___19_.;
	format sub_ever___20 sub_ever___20_.;
	format sub_ever___21 sub_ever___21_.;
	format sub_ever___22 sub_ever___22_.;
	format sub_ever___23 sub_ever___23_.;
	format sub_ever___24 sub_ever___24_.;
	format sub_ever___25 sub_ever___25_.;
	format sub_ever___26 sub_ever___26_.;
	format sub_ever___27 sub_ever___27_.;
	format sub_6m1 sub_6m1_.;
	format sub_6m2 sub_6m2_.;
	format sub_6m3 sub_6m3_.;
	format sub_6m4 sub_6m4_.;
	format sub_6m5 sub_6m5_.;
	format sub_6m6 sub_6m6_.;
	format sub_6m7 sub_6m7_.;
	format sub_6m8 sub_6m8_.;
	format sub_6m9 sub_6m9_.;
	format sub_6m10 sub_6m10_.;
	format sub_6m11 sub_6m11_.;
	format sub_6m12 sub_6m12_.;
	format sub_6m13 sub_6m13_.;
	format sub_6m14 sub_6m14_.;
	format sub_6m15 sub_6m15_.;
	format sub_6m16 sub_6m16_.;
	format sub_6m17 sub_6m17_.;
	format sub_6m18 sub_6m18_.;
	format sub_6m19 sub_6m19_.;
	format sub_6m20 sub_6m20_.;
	format sub_6m21 sub_6m21_.;
	format sub_6m22 sub_6m22_.;
	format sub_6m23 sub_6m23_.;
	format sub_6m24 sub_6m24_.;
	format sub_6m25 sub_6m25_.;
	format sub_6m26 sub_6m26_.;
	format sub_6m27 sub_6m27_.;
	format sub_idu1m_her sub_idu1m_her_.;
	format sub_idu1m_her_frqm sub_idu1m_her_frqm_.;
	format sub_1m_her sub_1m_her_.;
	format sub_1m_her_frqm sub_1m_her_frqm_.;
	format sub_idu1m_cp sub_idu1m_cp_.;
	format sub_idu1m_cp_frqm sub_idu1m_cp_frqm_.;
	format sub_idu1m_fent sub_idu1m_fent_.;
	format sub_idu1m_fent_frqm sub_idu1m_fent_frqm_.;
	format sub_idu1m_cc sub_idu1m_cc_.;
	format sub_idu1m_cc_frqm sub_idu1m_cc_frqm_.;
	format sub_1m_cp sub_1m_cp_.;
	format sub_1m_cp_frqm sub_1m_cp_frqm_.;
	format sub_1m_cc sub_1m_cc_.;
	format sub_1m_cc_frqm sub_1m_cc_frqm_.;
	format sub_1m_cs sub_1m_cs_.;
	format sub_1m_cs_frqm sub_1m_cs_frqm_.;
	format sub_idu1m_sb sub_idu1m_sb_.;
	format sub_idu1m_sb_frqm sub_idu1m_sb_frqm_.;
	format sub_idu1m_sox sub_idu1m_sox_.;
	format sub_1m_sox sub_1m_sox_.;
	format sub_idu1m_meth sub_idu1m_meth_.;
	format sub_1m_meth sub_1m_meth_.;
	format sub_idu1m_aph sub_idu1m_aph_.;
	format sub_idu1m_aph_frqm sub_idu1m_aph_frqm_.;
	format sub_1m_aph sub_1m_aph_.;
	format sub_1m_aph_frqm sub_1m_aph_frqm_.;
	format sub_idu1m_barb sub_idu1m_barb_.;
	format sub_idu1m_barb_frqm sub_idu1m_barb_frqm_.;
	format sub_1m_barb sub_1m_barb_.;
	format sub_1m_barb_frqm sub_1m_barb_frqm_.;
	format sub_idu1m_traq sub_idu1m_traq_.;
	format sub_idu1m_traq_frqm sub_idu1m_traq_frqm_.;
	format sub_1m_traq sub_1m_traq_.;
	format sub_1m_traq_frqm sub_1m_traq_frqm_.;
	format sub_1m_marj sub_1m_marj_.;
	format sub_1m_marj_frqm sub_1m_marj_frqm_.;
	format sub_idu1m_psy sub_idu1m_psy_.;
	format sub_idu1m_psy_frqm sub_idu1m_psy_frqm_.;
	format sub_1m_psy sub_1m_psy_.;
	format sub_1m_psy_frqm sub_1m_psy_frqm_.;
	format sub_idu1m_oop sub_idu1m_oop_.;
	format sub_idu1m_oop_frqm2 sub_idu1m_oop_frqm2_.;
	format sub_idu1m_oop_fit sub_idu1m_oop_fit_.;
	format sub_idu1m_oop_fit1 sub_idu1m_oop_fit1_.;
	format sub_idu1m_oop_fit2 sub_idu1m_oop_fit2_.;
	format sub_idu1m_oop_lo sub_idu1m_oop_lo_.;
	format sub_idu1m_oop_lo1 sub_idu1m_oop_lo1_.;
	format sub_idu1m_oop_lo2 sub_idu1m_oop_lo2_.;
	format sub_1m_oop sub_1m_oop_.;
	format sub_1m_oop_frqm2 sub_1m_oop_frqm2_.;
	format sub_idu1m_om sub_idu1m_om_.;
	format sub_idu1m_om_frqm sub_idu1m_om_frqm_.;
	format sub_1m_om sub_1m_om_.;
	format sub_1m_om_frqm sub_1m_om_frqm_.;
	format sub_idu6m_ot sub_idu6m_ot_.;
	format sub_idu1m_ot sub_idu1m_ot_.;
	format sub_idu1m_ot_frqm sub_idu1m_ot_frqm_.;
	format sub_nidu6m_ot sub_nidu6m_ot_.;
	format sub_nidu1m_ot sub_nidu1m_ot_.;
	format sub_nidu1m_ot_frqm sub_nidu1m_ot_frqm_.;
	format auc_1 auc_1_.;
	format auc_2 auc_2_.;
	format auc_11 auc_11_.;
	format auc_12 auc_12_.;
	format auc_3 auc_3_.;
	format auc_4 auc_4_.;
	format auc_5 auc_5_.;
	format auc_6 auc_6_.;
	format auc_7 auc_7_.;
	format auc_8 auc_8_.;
	format auc_9 auc_9_.;
	format auc_10 auc_10_.;
	format dst_1 dst_1_.;
	format dst_2 dst_2_.;
	format dst_3 dst_3_.;
	format dst_4 dst_4_.;
	format dst_5 dst_5_.;
	format dst_6 dst_6_.;
	format dst_7 dst_7_.;
	format dst_8 dst_8_.;
	format dst_9 dst_9_.;
	format dst_10 dst_10_.;
	format idu_6mplc2___0 idu_6mplc2___0_.;
	format idu_6mplc2___1 idu_6mplc2___1_.;
	format idu_6mplc2___2 idu_6mplc2___2_.;
	format idu_6mplc2___3 idu_6mplc2___3_.;
	format idu_6mplc2___4 idu_6mplc2___4_.;
	format idu_6mplc2___5 idu_6mplc2___5_.;
	format idu_6mplc2___6 idu_6mplc2___6_.;
	format idu_6mplc2___7 idu_6mplc2___7_.;
	format idu_6mplc2___8 idu_6mplc2___8_.;
	format idu_6mplc2___9 idu_6mplc2___9_.;
	format idu_6mplc2___10 idu_6mplc2___10_.;
	format idu_6mplc2___11 idu_6mplc2___11_.;
	format idu_plc idu_plc_.;
	format idu_hi_6m idu_hi_6m_.;
	format idu_frq idu_frq_.;
	format idu_stp_3m_ob idu_stp_3m_ob_.;
	format idu_stp_3m3 idu_stp_3m3_.;
	format idu_stp_3m3_vb___0 idu_stp_3m3_vb___0_.;
	format idu_stp_3m3_vb___1 idu_stp_3m3_vb___1_.;
	format idu_stp_3m2 idu_stp_3m2_.;
	format idu_stp_3m2_vb___0 idu_stp_3m2_vb___0_.;
	format idu_stp_3m2_vb___1 idu_stp_3m2_vb___1_.;
	format idu_stp_3m1 idu_stp_3m1_.;
	format idu_stp_3m1_vb___0 idu_stp_3m1_vb___0_.;
	format idu_stp_3m1_vb___1 idu_stp_3m1_vb___1_.;
	format idu_6mrec01_us idu_6mrec01_us_.;
	format idu_6mrec05_us idu_6mrec05_us_.;
	format idu_6mrec06_us idu_6mrec06_us_.;
	format idu_6mrec07_us idu_6mrec07_us_.;
	format idu_6mrec08_us idu_6mrec08_us_.;
	format idu_6mrec09_us idu_6mrec09_us_.;
	format idu_6mrec10_us idu_6mrec10_us_.;
	format idu_6mrec11_us idu_6mrec11_us_.;
	format idu_6mrec13_us idu_6mrec13_us_.;
	format idu_6mrec14_us idu_6mrec14_us_.;
	format idu_6mrec15_us idu_6mrec15_us_.;
	format idu_6mrec18_us idu_6mrec18_us_.;
	format idu_6mrec19_us idu_6mrec19_us_.;
	format idu_6mrec01 idu_6mrec01_.;
	format idu_6mrec02 idu_6mrec02_.;
	format idu_6mrec03 idu_6mrec03_.;
	format idu_6mrec04 idu_6mrec04_.;
	format idu_6mrec05 idu_6mrec05_.;
	format idu_6mrec06 idu_6mrec06_.;
	format idu_6mrec07 idu_6mrec07_.;
	format idu_6mrec08 idu_6mrec08_.;
	format idu_6mrec09 idu_6mrec09_.;
	format idu_6mrec10 idu_6mrec10_.;
	format idu_6mrec11 idu_6mrec11_.;
	format idu_6mrec12 idu_6mrec12_.;
	format idu_6mrec13 idu_6mrec13_.;
	format idu_6mrec14 idu_6mrec14_.;
	format idu_6mrec15 idu_6mrec15_.;
	format idu_6mrec16 idu_6mrec16_.;
	format idu_6mrec17 idu_6mrec17_.;
	format idu_6mrec18 idu_6mrec18_.;
	format idu_6mrec19 idu_6mrec19_.;
	format sdu_srg sdu_srg_.;
	format sdu_srg_6m_frq sdu_srg_6m_frq_.;
	format sdu_srg_6m_ppw___0 sdu_srg_6m_ppw___0_.;
	format sdu_srg_6m_ppw___1 sdu_srg_6m_ppw___1_.;
	format sdu_srg_6m_ppw___2 sdu_srg_6m_ppw___2_.;
	format sdu_srg_6m_ppw___3 sdu_srg_6m_ppw___3_.;
	format sdu_srg_6m_ppw___4 sdu_srg_6m_ppw___4_.;
	format sdu_srg_6m_ppw___5 sdu_srg_6m_ppw___5_.;
	format sdu_srg_6m_ppw___6 sdu_srg_6m_ppw___6_.;
	format sdu_srg_6m_ppw___7 sdu_srg_6m_ppw___7_.;
	format sdu_srg_6m_ppw___8 sdu_srg_6m_ppw___8_.;
	format sdu_srg_6m_ppw___9 sdu_srg_6m_ppw___9_.;
	format sdu_srg_6m_ppw___10 sdu_srg_6m_ppw___10_.;
	format sdu_srg_6m_ppwm sdu_srg_6m_ppwm_.;
	format sdu_wrk sdu_wrk_.;
	format sdu_wrk_6m_frq sdu_wrk_6m_frq_.;
	format sdu_wrk_6m_ppw___0 sdu_wrk_6m_ppw___0_.;
	format sdu_wrk_6m_ppw___1 sdu_wrk_6m_ppw___1_.;
	format sdu_wrk_6m_ppw___2 sdu_wrk_6m_ppw___2_.;
	format sdu_wrk_6m_ppw___3 sdu_wrk_6m_ppw___3_.;
	format sdu_wrk_6m_ppw___4 sdu_wrk_6m_ppw___4_.;
	format sdu_wrk_6m_ppw___5 sdu_wrk_6m_ppw___5_.;
	format sdu_wrk_6m_ppw___6 sdu_wrk_6m_ppw___6_.;
	format sdu_wrk_6m_ppw___7 sdu_wrk_6m_ppw___7_.;
	format sdu_wrk_6m_ppw___8 sdu_wrk_6m_ppw___8_.;
	format sdu_wrk_6m_ppw___9 sdu_wrk_6m_ppw___9_.;
	format sdu_wrk_6m_ppw___10 sdu_wrk_6m_ppw___10_.;
	format sdu_wrk_6m_ppwm sdu_wrk_6m_ppwm_.;
	format sdu_srg_hiv sdu_srg_hiv_.;
	format sdu_srg_hcv sdu_srg_hcv_.;
	format sdu_wrk_hiv sdu_wrk_hiv_.;
	format sdu_wrk_hcv sdu_wrk_hcv_.;
	format sdu_tgtr sdu_tgtr_.;
	format odu_6m odu_6m_.;
	format odu_6m_tim_acdt odu_6m_tim_acdt_.;
	format ath_1 ath_1_.;
	format ath_2 ath_2_.;
	format ath_3 ath_3_.;
	format ath_4 ath_4_.;
	format ath_5 ath_5_.;
	format ath_6 ath_6_.;
	format eis_status eis_status_.;
	format atc_1 atc_1_.;
	format atc_2 atc_2_.;
	format atc_3 atc_3_.;
	format atc_4 atc_4_.;
	format atc_5 atc_5_.;
	format atc_6 atc_6_.;
	format eis_1 eis_1_.;
	format eis_2 eis_2_.;
	format eis_3 eis_3_.;
	format eis_4 eis_4_.;
	format eis_5 eis_5_.;
	format eis_6 eis_6_.;
	format eis_7 eis_7_.;
	format eis_8 eis_8_.;
	format eis_9 eis_9_.;
	format eis_10 eis_10_.;
	format eis_11 eis_11_.;
	format eis_12 eis_12_.;
	format eis_13 eis_13_.;
	format eis_14 eis_14_.;
	format eis_15 eis_15_.;
	format eis_16 eis_16_.;
	format eis_17 eis_17_.;
	format eis_18 eis_18_.;
	format eis_19 eis_19_.;
	format eis_20 eis_20_.;
	format eis_21 eis_21_.;
	format eis_22 eis_22_.;
	format mmt_1 mmt_1_.;
	format mmt_2 mmt_2_.;
	format mmt_3 mmt_3_.;
	format mmt_4 mmt_4_.;
	format mmt_5 mmt_5_.;
	format mmt_6 mmt_6_.;
	format mmt_7 mmt_7_.;
	format mmt_8 mmt_8_.;
	format mmt_9 mmt_9_.;
	format mmt_10 mmt_10_.;
	format mmt_11 mmt_11_.;
	format aiv_kid_evr_pa aiv_kid_evr_pa_.;
	format aiv_adt_evr_pa aiv_adt_evr_pa_.;
	format aiv_adt_evr_pa_sp aiv_adt_evr_pa_sp_.;
	format aiv_6m_pa aiv_6m_pa_.;
	format aiv_6m_pa_sp aiv_6m_pa_sp_.;
	format aiv_kid_evr_sex aiv_kid_evr_sex_.;
	format aiv_adt_evr_sex aiv_adt_evr_sex_.;
	format aiv_evr_sex_sp aiv_evr_sex_sp_.;
	format aiv_6m_sex aiv_6m_sex_.;
	format aiv_6m_sex_sp aiv_6m_sex_sp_.;
	format aiv_evr_sp_vio aiv_evr_sp_vio_.;
	format aiv_6m_sp_vio aiv_6m_sp_vio_.;
	format aiv_evr_sp_brc aiv_evr_sp_brc_.;
	format aiv_6m_sp_brc aiv_6m_sp_brc_.;
	format aiv_evr_sp_ctl aiv_evr_sp_ctl_.;
	format aiv_6m_sp_ctl aiv_6m_sp_ctl_.;
	format ssi_1 ssi_1_.;
	format ssi_2 ssi_2_.;
	format ssi_2a ssi_2a_.;
	format ssi_3 ssi_3_.;
	format ssi_4 ssi_4_.;
	format ssi_5 ssi_5_.;
	format ssi_6 ssi_6_.;
	format ssi_7 ssi_7_.;
	format ssi_8 ssi_8_.;
	format ssi_9 ssi_9_.;
	format ssi_10 ssi_10_.;
	format ssi_11 ssi_11_.;
	format ssi_12 ssi_12_.;
	format ssi_13 ssi_13_.;
	format ssi_14 ssi_14_.;
	format ssi_15 ssi_15_.;
	format ssi_16 ssi_16_.;
	format ssi_17 ssi_17_.;
	format bpi_evr bpi_evr_.;
	format bpi_plc___1 bpi_plc___1_.;
	format bpi_plc___2 bpi_plc___2_.;
	format bpi_plc___3 bpi_plc___3_.;
	format bpi_plc___4 bpi_plc___4_.;
	format bpi_plc___5 bpi_plc___5_.;
	format bpi_plc___6 bpi_plc___6_.;
	format bpi_plc___7 bpi_plc___7_.;
	format bpi_plc___8 bpi_plc___8_.;
	format bpi_plc___9 bpi_plc___9_.;
	format bpi_plc___10 bpi_plc___10_.;
	format bpi_plc___11 bpi_plc___11_.;
	format bsi_1 bsi_1_.;
	format bsi_2 bsi_2_.;
	format bsi_3 bsi_3_.;
	format bsi_4 bsi_4_.;
	format bsi_5 bsi_5_.;
	format bsi_6 bsi_6_.;
	format bsi_7 bsi_7_.;
	format bsi_8 bsi_8_.;
	format bsi_9 bsi_9_.;
	format bsi_10 bsi_10_.;
	format bsi_11 bsi_11_.;
	format bsi_12 bsi_12_.;
	format bsi_13 bsi_13_.;
	format bsi_14 bsi_14_.;
	format bsi_15 bsi_15_.;
	format bsi_16 bsi_16_.;
	format bsi_17 bsi_17_.;
	format bsi_18 bsi_18_.;
	format hfs_1 hfs_1_.;
	format hfs_1a hfs_1a_.;
	format hfs_2 hfs_2_.;
	format hfs_2a hfs_2a_.;
	format hfs_3 hfs_3_.;
	format hfs_3a hfs_3a_.;
	format hfs_4 hfs_4_.;
	format hfs_4a hfs_4a_.;
	format hfs_5 hfs_5_.;
	format hfs_5a hfs_5a_.;
	format hfs_6 hfs_6_.;
	format hfs_6a hfs_6a_.;
	format hfs_7 hfs_7_.;
	format hfs_7a hfs_7a_.;
	format hfs_8 hfs_8_.;
	format hfs_8a hfs_8a_.;
	format hfs_9 hfs_9_.;
	format hfs_9a hfs_9a_.;
	format qol_1 qol_1_.;
	format qol_2 qol_2_.;
	format qol_3 qol_3_.;
	format qol_4 qol_4_.;
	format qol_5 qol_5_.;
	format cla_1a cla_1a_.;
	format cla_3a cla_3a_.;
	format cla_4a cla_4a_.;
	format cla_5a cla_5a_.;
	format cla_6a cla_6a_.;
	format cla_7a cla_7a_.;
	format cla_8a cla_8a_.;
	format cla_9a cla_9a_.;
	format cla_10a cla_10a_.;
	format cla_11a cla_11a_.;
	format cla_12a cla_12a_.;
	format cla_13a cla_13a_.;
	format cla_14a cla_14a_.;
	format cla_15a cla_15a_.;
	format cla_16a cla_16a_.;
	format cla_17a cla_17a_.;
	format cla_18a cla_18a_.;
	format cla_20a cla_20a_.;
	format cla_22a cla_22a_.;
	format cla_23a cla_23a_.;
	format cla_24a cla_24a_.;
	format cla_25d___0 cla_25d___0_.;
	format cla_25d___1 cla_25d___1_.;
	format cla_25d___2 cla_25d___2_.;
	format cla_25d___3 cla_25d___3_.;
	format cla_25d___4 cla_25d___4_.;
	format cla_25d___5 cla_25d___5_.;
	format cla_25d___6 cla_25d___6_.;
	format cla_25d___7 cla_25d___7_.;
	format cla_25d___8 cla_25d___8_.;
	format cla_25d___9 cla_25d___9_.;
	format cla_25d___10 cla_25d___10_.;
	format cla_25d___11 cla_25d___11_.;
	format cla_25d___12 cla_25d___12_.;
	format cla_25d___13 cla_25d___13_.;
	format cla_25d___14 cla_25d___14_.;
	format cla_25d___15 cla_25d___15_.;
	format cla_25d___16 cla_25d___16_.;
	format cla_25d___17 cla_25d___17_.;
	format cla_25d___18 cla_25d___18_.;
	format cla_25d___19 cla_25d___19_.;
	format cla_25d___20 cla_25d___20_.;
	format cla_25d___21 cla_25d___21_.;
	format cla_26a cla_26a_.;
	format nms_er nms_er_.;
	format nms_hsp nms_hsp_.;
	format nms_hps_drg nms_hps_drg_.;
	format nms_otp nms_otp_.;
	format nms_rsd nms_rsd_.;
	format nms_auc nms_auc_.;
	format nms_auc_med___0 nms_auc_med___0_.;
	format nms_auc_med___1 nms_auc_med___1_.;
	format nms_auc_med___2 nms_auc_med___2_.;
	format nms_auc_med___3 nms_auc_med___3_.;
	format nms_auc_med___4 nms_auc_med___4_.;
	format nms_opd nms_opd_.;
	format nms_opd_med___0 nms_opd_med___0_.;
	format nms_opd_med___1 nms_opd_med___1_.;
	format nms_opd_med___2 nms_opd_med___2_.;
	format nms_opd_med___3 nms_opd_med___3_.;
	format nms_opd_med___4 nms_opd_med___4_.;
	format nms_opd_med___5 nms_opd_med___5_.;
	format nms_opd_med___6 nms_opd_med___6_.;
	format nms_mnt nms_mnt_.;
	format nms_trp nms_trp_.;
	format nms_xxx___1 nms_xxx___1_.;
	format nms_xxx___2 nms_xxx___2_.;
	format nms_xxx___3 nms_xxx___3_.;
	format nms_xxx___4 nms_xxx___4_.;
	format nms_xxx___5 nms_xxx___5_.;
	format nms_xxx___999 nms_xxx___999_.;
	format nms_mdo nms_mdo_.;
	format nms_cost nms_cost_.;
	format nms_inc nms_inc_.;
	format nms_emp nms_emp_.;
	format nms_emp_inc nms_emp_inc_.;
	format nms_emp_ben nms_emp_ben_.;
	format nms_otinc nms_otinc_.;
	format nms_edu_cr nms_edu_cr_.;
	format nms_edu_ful nms_edu_ful_.;
	format nms_qul nms_qul_.;
	format act_1 act_1_.;
	format act_2 act_2_.;
	format act_3 act_3_.;
	format act_4 act_4_.;
	format act_5 act_5_.;
	format act_6 act_6_.;
	format srb_3m_prst srb_3m_prst_.;
	format srb_prst01 srb_prst01_.;
	format srb_prst02 srb_prst02_.;
	format srb_prst03 srb_prst03_.;
	format srb_prst04 srb_prst04_.;
	format srb_prst05 srb_prst05_.;
	format srb_3m srb_3m_.;
	format srb_3m_f srb_3m_f_.;
	format srb_1m_f srb_1m_f_.;
	format srb_1m_fc_pv srb_1m_fc_pv_.;
	format srb_1m_fc_po srb_1m_fc_po_.;
	format srb_1m_fc_pa srb_1m_fc_pa_.;
	format srb_1m_fc_npv srb_1m_fc_npv_.;
	format srb_1m_fc_npo srb_1m_fc_npo_.;
	format srb_1m_fc_npa srb_1m_fc_npa_.;
	format srb_1m_fc_cv srb_1m_fc_cv_.;
	format srb_1m_fc_co srb_1m_fc_co_.;
	format srb_1m_fc_ca srb_1m_fc_ca_.;
	format srb_1m_fc_mcv srb_1m_fc_mcv_.;
	format srb_1m_fc_mco srb_1m_fc_mco_.;
	format srb_1m_fc_mca srb_1m_fc_mca_.;
	format srb_1m_f_hiv srb_1m_f_hiv_.;
	format srb_1m_fc_hiv srb_1m_fc_hiv_.;
	format srb_1m_f_hcv srb_1m_f_hcv_.;
	format srb_1m_fc_hcv srb_1m_fc_hcv_.;
	format srb_1m_f_drg_cc srb_1m_f_drg_cc_.;
	format srb_1m_f_drg_hro srb_1m_f_drg_hro_.;
	format srb_1m_f_drg_main srb_1m_f_drg_main_.;
	format srb_1m_f_drg_aph srb_1m_f_drg_aph_.;
	format srb_1m_f_drg_psy srb_1m_f_drg_psy_.;
	format srb_3m_m srb_3m_m_.;
	format srb_1m_m srb_1m_m_.;
	format srb_1m_mc_pv srb_1m_mc_pv_.;
	format srb_1m_mc_po srb_1m_mc_po_.;
	format srb_1m_mc_pa srb_1m_mc_pa_.;
	format srb_1m_mc_npv srb_1m_mc_npv_.;
	format srb_1m_mc_npo srb_1m_mc_npo_.;
	format srb_1m_mc_npa srb_1m_mc_npa_.;
	format srb_1m_mc_cv srb_1m_mc_cv_.;
	format srb_1m_mc_co srb_1m_mc_co_.;
	format srb_1m_mc_ca srb_1m_mc_ca_.;
	format srb_1m_mc_mcv srb_1m_mc_mcv_.;
	format srb_1m_mc_mco srb_1m_mc_mco_.;
	format srb_1m_mc_mca srb_1m_mc_mca_.;
	format srb_1m_m_hiv srb_1m_m_hiv_.;
	format srb_1m_mc_hiv srb_1m_mc_hiv_.;
	format srb_1m_m_hcv srb_1m_m_hcv_.;
	format srb_1m_mc_hcv srb_1m_mc_hcv_.;
	format srb_1m_m_drg_cc srb_1m_m_drg_cc_.;
	format srb_1m_m_drg_hro srb_1m_m_drg_hro_.;
	format srb_1m_m_drg_main srb_1m_m_drg_main_.;
	format srb_1m_m_drg_aph srb_1m_m_drg_aph_.;
	format srb_1m_m_drg_psy srb_1m_m_drg_psy_.;
	format cdu_1 cdu_1_.;
	format cdu_2 cdu_2_.;
	format cdu_3 cdu_3_.;
	format cdu_4 cdu_4_.;
	format cdu_5 cdu_5_.;
	format cdu_6 cdu_6_.;
	format cdu_7 cdu_7_.;
	format cdu_8 cdu_8_.;
	format cdu_9 cdu_9_.;
	format cdu_10 cdu_10_.;
	format cdu_11 cdu_11_.;
	format cdu_12 cdu_12_.;
	format cdu_13 cdu_13_.;
	format cdu_14 cdu_14_.;
	format cdu_17 cdu_17_.;
	format cdu_18 cdu_18_.;
	format cpe_1 cpe_1_.;
	format cpe_2 cpe_2_.;
	format cpe_3 cpe_3_.;
	format cpe_4 cpe_4_.;
	format cce_1 cce_1_.;
	format cce_2 cce_2_.;
	format cce_3 cce_3_.;
	format cce_4 cce_4_.;
	format baseline_complete baseline_complete_.;
	format rphcv1 rphcv1_.;
	format rphcv2 rphcv2_.;
	format rphcv3 rphcv3_.;
	format rphcv4 rphcv4_.;
	format rphcv_5 rphcv_5_.;
	format rphcv_6 rphcv_6_.;
	format rphcv_7 rphcv_7_.;
	format rphcv_8 rphcv_8_.;
	format rphcv_9 rphcv_9_.;
	format rphcv_10 rphcv_10_.;
	format rphcv_11 rphcv_11_.;
	format relationship_with_ph_v_4 relationship_with_ph_v_4_.;
	format ec_yrs ec_yrs_.;
	format ec_hivneg ec_hivneg_.;
	format ec_inj6 ec_inj6_.;
	format ec_vic ec_vic_.;
	format ec_fu ec_fu_.;
	format ec_com ec_com_.;
	format ec_serv ec_serv_.;
	format rc_consent rc_consent_.;
	format rc_quiz rc_quiz_.;
	format rc_report rc_report_.;
	format rc_hippa rc_hippa_.;
	format rc_release rc_release_.;
	format rc_locator rc_locator_.;
	format rc_vital rc_vital_.;
	format rc_psychiatric rc_psychiatric_.;
	format rc_scc rc_scc_.;
	format rc_informed rc_informed_.;
	format rc_base rc_base_.;
	format ec_pc_yes ec_pc_yes_.;
	format ec_all_2 ec_all_2_.;
	format randomization_checkl_v_5 randomization_checkl_v_5_.;
	format rand_ele rand_ele_.;
	format rand_arm rand_arm_.;
	format rand_reason rand_reason_.;
	format rand_randomization_complete rand_randomization_complete_.;
	format idu_cnty_3m idu_cnty_3m_.;
	format dem_gender_3m dem_gender_3m_.;
	format dem_gender_t_3m dem_gender_t_3m_.;
	format dem_gender_s_3m dem_gender_s_3m_.;
	format dem_gender_id_3m dem_gender_id_3m_.;
	format dem_trip_trans_3m dem_trip_trans_3m_.;
	format dem_edu_3m dem_edu_3m_.;
	format dem_marital_3m dem_marital_3m_.;
	format dem_employ_3m dem_employ_3m_.;
	format dem_hltins_3m dem_hltins_3m_.;
	format dem_hltins_can_3m dem_hltins_can_3m_.;
	format dem_hltins_t0_3m dem_hltins_t0_3m_.;
	format dem_hltins_t1_3m dem_hltins_t1_3m_.;
	format dem_hltins_t2_3m dem_hltins_t2_3m_.;
	format dem_hltins_t3_3m dem_hltins_t3_3m_.;
	format dem_hltins_t4_3m dem_hltins_t4_3m_.;
	format dem_hltins_t5_3m dem_hltins_t5_3m_.;
	format dem_hltins_t6_3m dem_hltins_t6_3m_.;
	format dem_hltins_t7_3m dem_hltins_t7_3m_.;
	format dem_hltins_t8_3m dem_hltins_t8_3m_.;
	format dem_hltins_t9_3m dem_hltins_t9_3m_.;
	format dem_hltins_t10_3m dem_hltins_t10_3m_.;
	format dem_hltins_t14_3m dem_hltins_t14_3m_.;
	format dem_hltins_t15_3m___0 dem_hltins_t15_3m___0_.;
	format dem_hltins_t15_3m___1 dem_hltins_t15_3m___1_.;
	format dem_hltins_t15_3m___2 dem_hltins_t15_3m___2_.;
	format dem_hltins_t15_3m___3 dem_hltins_t15_3m___3_.;
	format dem_hltins_t15_3m___4 dem_hltins_t15_3m___4_.;
	format dem_hltins_t15_3m___5 dem_hltins_t15_3m___5_.;
	format sub_6m1_3m sub_6m1_3m_.;
	format sub_6m2_3m sub_6m2_3m_.;
	format sub_6m3_3m sub_6m3_3m_.;
	format sub_6m4_3m sub_6m4_3m_.;
	format sub_6m5_3m sub_6m5_3m_.;
	format sub_6m6_3m sub_6m6_3m_.;
	format sub_6m7_3m sub_6m7_3m_.;
	format sub_6m8_3m sub_6m8_3m_.;
	format sub_6m9_3m sub_6m9_3m_.;
	format sub_6m10_3m sub_6m10_3m_.;
	format sub_6m11_3m sub_6m11_3m_.;
	format sub_6m12_3m sub_6m12_3m_.;
	format sub_6m13_3m sub_6m13_3m_.;
	format sub_6m14_3m sub_6m14_3m_.;
	format sub_6m15_3m sub_6m15_3m_.;
	format sub_6m16_3m sub_6m16_3m_.;
	format sub_6m17_3m sub_6m17_3m_.;
	format sub_6m18_3m sub_6m18_3m_.;
	format sub_6m19_3m sub_6m19_3m_.;
	format sub_6m20_3m sub_6m20_3m_.;
	format sub_6m21_3m sub_6m21_3m_.;
	format sub_6m22_3m sub_6m22_3m_.;
	format sub_6m23_3m sub_6m23_3m_.;
	format sub_6m24_3m sub_6m24_3m_.;
	format sub_6m25_3m sub_6m25_3m_.;
	format sub_6m26_3m sub_6m26_3m_.;
	format sub_6m27_3m sub_6m27_3m_.;
	format sub_idu1m_her_3m sub_idu1m_her_3m_.;
	format sub_idu1m_her_frqm_3m sub_idu1m_her_frqm_3m_.;
	format sub_1m_her_3m sub_1m_her_3m_.;
	format sub_1m_her_frqm_3m sub_1m_her_frqm_3m_.;
	format sub_1m_fent_3m sub_1m_fent_3m_.;
	format sub_1m_fent_frqm_3m sub_1m_fent_frqm_3m_.;
	format sub_idu1m_cp_3m sub_idu1m_cp_3m_.;
	format sub_idu1m_cp_frqm_3m sub_idu1m_cp_frqm_3m_.;
	format sub_idu1m_cc_3m sub_idu1m_cc_3m_.;
	format sub_idu1m_cc_frqm_3m sub_idu1m_cc_frqm_3m_.;
	format sub_1m_cp_3m sub_1m_cp_3m_.;
	format sub_1m_cp_frqm_3m sub_1m_cp_frqm_3m_.;
	format sub_1m_cc_3m sub_1m_cc_3m_.;
	format sub_1m_cc_frqm_3m sub_1m_cc_frqm_3m_.;
	format sub_1m_cs_3m sub_1m_cs_3m_.;
	format sub_1m_cs_frqm_3m sub_1m_cs_frqm_3m_.;
	format sub_idu1m_sb_3m sub_idu1m_sb_3m_.;
	format sub_idu1m_sb_frqm_3m sub_idu1m_sb_frqm_3m_.;
	format sub_idu1m_sox_3m sub_idu1m_sox_3m_.;
	format sub_1m_sox_3m sub_1m_sox_3m_.;
	format sub_idu1m_meth_3m sub_idu1m_meth_3m_.;
	format sub_1m_meth_3m sub_1m_meth_3m_.;
	format sub_idu1m_aph_3m sub_idu1m_aph_3m_.;
	format sub_idu1m_aph_frqm_3m sub_idu1m_aph_frqm_3m_.;
	format sub_1m_aph_3m sub_1m_aph_3m_.;
	format sub_1m_aph_frqm_3m sub_1m_aph_frqm_3m_.;
	format sub_idu1m_barb_3m sub_idu1m_barb_3m_.;
	format sub_idu1m_barb_frqm_3m sub_idu1m_barb_frqm_3m_.;
	format sub_1m_barb_3m sub_1m_barb_3m_.;
	format sub_1m_barb_frqm_3m sub_1m_barb_frqm_3m_.;
	format sub_idu1m_traq_3m sub_idu1m_traq_3m_.;
	format sub_idu1m_traq_frqm_3m sub_idu1m_traq_frqm_3m_.;
	format sub_1m_traq_3m sub_1m_traq_3m_.;
	format sub_1m_traq_frqm_3m sub_1m_traq_frqm_3m_.;
	format sub_1m_marj_3m sub_1m_marj_3m_.;
	format sub_1m_marj_frqm_3m sub_1m_marj_frqm_3m_.;
	format sub_idu1m_psy_3m sub_idu1m_psy_3m_.;
	format sub_idu1m_psy_frqm_3m sub_idu1m_psy_frqm_3m_.;
	format sub_1m_psy_3m sub_1m_psy_3m_.;
	format sub_1m_psy_frqm_3m sub_1m_psy_frqm_3m_.;
	format sub_idu1m_oop_3m sub_idu1m_oop_3m_.;
	format sub_idu1m_oop_frqm2_3m sub_idu1m_oop_frqm2_3m_.;
	format sub_idu1m_oop_fit_3m sub_idu1m_oop_fit_3m_.;
	format sub_idu1m_oop_fit1_3m sub_idu1m_oop_fit1_3m_.;
	format sub_idu1m_oop_fit2_3m sub_idu1m_oop_fit2_3m_.;
	format sub_idu1m_oop_lo_3m sub_idu1m_oop_lo_3m_.;
	format sub_idu1m_oop_lo1_3m sub_idu1m_oop_lo1_3m_.;
	format sub_idu1m_oop_lo2_3m sub_idu1m_oop_lo2_3m_.;
	format sub_1m_oop_3m sub_1m_oop_3m_.;
	format sub_1m_oop_frqm2_3m sub_1m_oop_frqm2_3m_.;
	format sub_idu1m_om_3m sub_idu1m_om_3m_.;
	format sub_idu1m_om_frqm_3m sub_idu1m_om_frqm_3m_.;
	format sub_1m_om_3m sub_1m_om_3m_.;
	format sub_1m_om_frqm_3m sub_1m_om_frqm_3m_.;
	format sub_idu6m_ot_3m sub_idu6m_ot_3m_.;
	format sub_idu1m_ot_3m sub_idu1m_ot_3m_.;
	format sub_idu1m_ot_frqm_3m sub_idu1m_ot_frqm_3m_.;
	format sub_nidu6m_ot_3m sub_nidu6m_ot_3m_.;
	format sub_nidu1m_ot_3m sub_nidu1m_ot_3m_.;
	format sub_nidu1m_ot_frqm_3m sub_nidu1m_ot_frqm_3m_.;
	format idu_3m idu_3m_.;
	format idu_6mplc2_3m___0 idu_6mplc2_3m___0_.;
	format idu_6mplc2_3m___1 idu_6mplc2_3m___1_.;
	format idu_6mplc2_3m___2 idu_6mplc2_3m___2_.;
	format idu_6mplc2_3m___3 idu_6mplc2_3m___3_.;
	format idu_6mplc2_3m___4 idu_6mplc2_3m___4_.;
	format idu_6mplc2_3m___5 idu_6mplc2_3m___5_.;
	format idu_6mplc2_3m___6 idu_6mplc2_3m___6_.;
	format idu_6mplc2_3m___7 idu_6mplc2_3m___7_.;
	format idu_6mplc2_3m___8 idu_6mplc2_3m___8_.;
	format idu_6mplc2_3m___9 idu_6mplc2_3m___9_.;
	format idu_6mplc2_3m___10 idu_6mplc2_3m___10_.;
	format idu_6mplc2_3m___11 idu_6mplc2_3m___11_.;
	format idu_plc_3m idu_plc_3m_.;
	format idu_hi_6m_3m idu_hi_6m_3m_.;
	format idu_frq_3m idu_frq_3m_.;
	format idu_stp_3m_ob_3m idu_stp_3m_ob_3m_.;
	format idu_stp_3m3_3m idu_stp_3m3_3m_.;
	format idu_stp_3m3_vb_3m___0 idu_stp_3m3_vb_3m___0_.;
	format idu_stp_3m3_vb_3m___1 idu_stp_3m3_vb_3m___1_.;
	format idu_stp_3m2_3m idu_stp_3m2_3m_.;
	format idu_stp_3m2_vb_3m___0 idu_stp_3m2_vb_3m___0_.;
	format idu_stp_3m2_vb_3m___1 idu_stp_3m2_vb_3m___1_.;
	format idu_stp_3m1_3m idu_stp_3m1_3m_.;
	format idu_stp_3m1_vb_3m___0 idu_stp_3m1_vb_3m___0_.;
	format idu_stp_3m1_vb_3m___1 idu_stp_3m1_vb_3m___1_.;
	format idu_6mrec01_3m idu_6mrec01_3m_.;
	format idu_6mrec02_3m idu_6mrec02_3m_.;
	format idu_6mrec03_3m idu_6mrec03_3m_.;
	format idu_6mrec04_3m idu_6mrec04_3m_.;
	format idu_6mrec05_3m idu_6mrec05_3m_.;
	format idu_6mrec06_3m idu_6mrec06_3m_.;
	format idu_6mrec07_3m idu_6mrec07_3m_.;
	format idu_6mrec08_3m idu_6mrec08_3m_.;
	format idu_6mrec09_3m idu_6mrec09_3m_.;
	format idu_6mrec10_3m idu_6mrec10_3m_.;
	format idu_6mrec11_3m idu_6mrec11_3m_.;
	format idu_6mrec12_3m idu_6mrec12_3m_.;
	format idu_6mrec13_3m idu_6mrec13_3m_.;
	format idu_6mrec14_3m idu_6mrec14_3m_.;
	format idu_6mrec15_3m idu_6mrec15_3m_.;
	format idu_6mrec16_3m idu_6mrec16_3m_.;
	format idu_6mrec17_3m idu_6mrec17_3m_.;
	format idu_6mrec18_3m idu_6mrec18_3m_.;
	format idu_6mrec19_3m idu_6mrec19_3m_.;
	format idu_6mrec01_us_3m idu_6mrec01_us_3m_.;
	format idu_6mrec05_us_3m idu_6mrec05_us_3m_.;
	format idu_6mrec06_us_3m idu_6mrec06_us_3m_.;
	format idu_6mrec07_us_3m idu_6mrec07_us_3m_.;
	format idu_6mrec08_us_3m idu_6mrec08_us_3m_.;
	format idu_6mrec09_us_3m idu_6mrec09_us_3m_.;
	format idu_6mrec10_us_3m idu_6mrec10_us_3m_.;
	format idu_6mrec11_us_3m idu_6mrec11_us_3m_.;
	format idu_6mrec13_us_3m idu_6mrec13_us_3m_.;
	format idu_6mrec14_us_3m idu_6mrec14_us_3m_.;
	format idu_6mrec15_us_3m idu_6mrec15_us_3m_.;
	format idu_6mrec18_us_3m idu_6mrec18_us_3m_.;
	format idu_6mrec19_us_3m idu_6mrec19_us_3m_.;
	format sdu_srg_3m sdu_srg_3m_.;
	format sdu_srg_6m_frq_3m sdu_srg_6m_frq_3m_.;
	format sdu_srg_6m_ppw_3m___0 sdu_srg_6m_ppw_3m___0_.;
	format sdu_srg_6m_ppw_3m___1 sdu_srg_6m_ppw_3m___1_.;
	format sdu_srg_6m_ppw_3m___2 sdu_srg_6m_ppw_3m___2_.;
	format sdu_srg_6m_ppw_3m___3 sdu_srg_6m_ppw_3m___3_.;
	format sdu_srg_6m_ppw_3m___4 sdu_srg_6m_ppw_3m___4_.;
	format sdu_srg_6m_ppw_3m___5 sdu_srg_6m_ppw_3m___5_.;
	format sdu_srg_6m_ppw_3m___6 sdu_srg_6m_ppw_3m___6_.;
	format sdu_srg_6m_ppw_3m___7 sdu_srg_6m_ppw_3m___7_.;
	format sdu_srg_6m_ppw_3m___8 sdu_srg_6m_ppw_3m___8_.;
	format sdu_srg_6m_ppw_3m___9 sdu_srg_6m_ppw_3m___9_.;
	format sdu_srg_6m_ppw_3m___10 sdu_srg_6m_ppw_3m___10_.;
	format sdu_srg_6m_ppwm_3m sdu_srg_6m_ppwm_3m_.;
	format sdu_wrk_3m sdu_wrk_3m_.;
	format sdu_wrk_6m_frq_3m sdu_wrk_6m_frq_3m_.;
	format sdu_wrk_6m_ppw_3m___0 sdu_wrk_6m_ppw_3m___0_.;
	format sdu_wrk_6m_ppw_3m___1 sdu_wrk_6m_ppw_3m___1_.;
	format sdu_wrk_6m_ppw_3m___2 sdu_wrk_6m_ppw_3m___2_.;
	format sdu_wrk_6m_ppw_3m___3 sdu_wrk_6m_ppw_3m___3_.;
	format sdu_wrk_6m_ppw_3m___4 sdu_wrk_6m_ppw_3m___4_.;
	format sdu_wrk_6m_ppw_3m___5 sdu_wrk_6m_ppw_3m___5_.;
	format sdu_wrk_6m_ppw_3m___6 sdu_wrk_6m_ppw_3m___6_.;
	format sdu_wrk_6m_ppw_3m___7 sdu_wrk_6m_ppw_3m___7_.;
	format sdu_wrk_6m_ppw_3m___8 sdu_wrk_6m_ppw_3m___8_.;
	format sdu_wrk_6m_ppw_3m___9 sdu_wrk_6m_ppw_3m___9_.;
	format sdu_wrk_6m_ppw_3m___10 sdu_wrk_6m_ppw_3m___10_.;
	format sdu_wrk_6m_ppwm_3m sdu_wrk_6m_ppwm_3m_.;
	format sdu_srg_hiv_3m sdu_srg_hiv_3m_.;
	format sdu_srg_hcv_3m sdu_srg_hcv_3m_.;
	format sdu_wrk_hiv_3m sdu_wrk_hiv_3m_.;
	format sdu_wrk_hcv_3m sdu_wrk_hcv_3m_.;
	format sdu_tgtr_3m sdu_tgtr_3m_.;
	format bpi_evr_3m bpi_evr_3m_.;
	format bpi_plc_3m___1 bpi_plc_3m___1_.;
	format bpi_plc_3m___2 bpi_plc_3m___2_.;
	format bpi_plc_3m___3 bpi_plc_3m___3_.;
	format bpi_plc_3m___4 bpi_plc_3m___4_.;
	format bpi_plc_3m___5 bpi_plc_3m___5_.;
	format bpi_plc_3m___6 bpi_plc_3m___6_.;
	format bpi_plc_3m___7 bpi_plc_3m___7_.;
	format bpi_plc_3m___8 bpi_plc_3m___8_.;
	format bpi_plc_3m___9 bpi_plc_3m___9_.;
	format bpi_plc_3m___10 bpi_plc_3m___10_.;
	format bpi_plc_3m___11 bpi_plc_3m___11_.;
	format hfs_1_3m hfs_1_3m_.;
	format hfs_1a_3m hfs_1a_3m_.;
	format hfs_2_3m hfs_2_3m_.;
	format hfs_2a_3m hfs_2a_3m_.;
	format hfs_3_3m hfs_3_3m_.;
	format hfs_3a_3m hfs_3a_3m_.;
	format hfs_4_3m hfs_4_3m_.;
	format hfs_4a_3m hfs_4a_3m_.;
	format hfs_5_3m hfs_5_3m_.;
	format hfs_5a_3m hfs_5a_3m_.;
	format hfs_6_3m hfs_6_3m_.;
	format hfs_6a_3m hfs_6a_3m_.;
	format hfs_7_3m hfs_7_3m_.;
	format hfs_7a_3m hfs_7a_3m_.;
	format hfs_8_3m hfs_8_3m_.;
	format hfs_8a_3m hfs_8a_3m_.;
	format hfs_9_3m hfs_9_3m_.;
	format hfs_9a_3m hfs_9a_3m_.;
	format cla_1a_3m cla_1a_3m_.;
	format cla_25d_3m___0 cla_25d_3m___0_.;
	format cla_25d_3m___1 cla_25d_3m___1_.;
	format cla_25d_3m___2 cla_25d_3m___2_.;
	format cla_25d_3m___3 cla_25d_3m___3_.;
	format cla_25d_3m___4 cla_25d_3m___4_.;
	format cla_25d_3m___5 cla_25d_3m___5_.;
	format cla_25d_3m___6 cla_25d_3m___6_.;
	format cla_25d_3m___7 cla_25d_3m___7_.;
	format cla_25d_3m___8 cla_25d_3m___8_.;
	format cla_25d_3m___9 cla_25d_3m___9_.;
	format cla_25d_3m___10 cla_25d_3m___10_.;
	format cla_25d_3m___11 cla_25d_3m___11_.;
	format cla_25d_3m___12 cla_25d_3m___12_.;
	format cla_25d_3m___13 cla_25d_3m___13_.;
	format cla_25d_3m___14 cla_25d_3m___14_.;
	format cla_25d_3m___15 cla_25d_3m___15_.;
	format cla_25d_3m___16 cla_25d_3m___16_.;
	format cla_25d_3m___17 cla_25d_3m___17_.;
	format cla_25d_3m___18 cla_25d_3m___18_.;
	format cla_25d_3m___19 cla_25d_3m___19_.;
	format cla_25d_3m___20 cla_25d_3m___20_.;
	format cla_25d_3m___21 cla_25d_3m___21_.;
	format cla_26a_3m cla_26a_3m_.;
	format nms_er_3m nms_er_3m_.;
	format nms_hsp_3m nms_hsp_3m_.;
	format nms_hps_drg_3m nms_hps_drg_3m_.;
	format nms_otp_3m nms_otp_3m_.;
	format nms_rsd_3m nms_rsd_3m_.;
	format nms_auc_3m nms_auc_3m_.;
	format nms_auc_med_3m___0 nms_auc_med_3m___0_.;
	format nms_auc_med_3m___1 nms_auc_med_3m___1_.;
	format nms_auc_med_3m___2 nms_auc_med_3m___2_.;
	format nms_auc_med_3m___3 nms_auc_med_3m___3_.;
	format nms_auc_med_3m___4 nms_auc_med_3m___4_.;
	format nms_opd_3m nms_opd_3m_.;
	format nms_opd_med_3m___0 nms_opd_med_3m___0_.;
	format nms_opd_med_3m___1 nms_opd_med_3m___1_.;
	format nms_opd_med_3m___2 nms_opd_med_3m___2_.;
	format nms_opd_med_3m___3 nms_opd_med_3m___3_.;
	format nms_opd_med_3m___4 nms_opd_med_3m___4_.;
	format nms_opd_med_3m___5 nms_opd_med_3m___5_.;
	format nms_opd_med_3m___6 nms_opd_med_3m___6_.;
	format nms_mnt_3m nms_mnt_3m_.;
	format nms_trp_3m nms_trp_3m_.;
	format nms_xxx_3m___1 nms_xxx_3m___1_.;
	format nms_xxx_3m___2 nms_xxx_3m___2_.;
	format nms_xxx_3m___3 nms_xxx_3m___3_.;
	format nms_xxx_3m___4 nms_xxx_3m___4_.;
	format nms_xxx_3m___5 nms_xxx_3m___5_.;
	format nms_xxx_3m___999 nms_xxx_3m___999_.;
	format nms_mdo_3m nms_mdo_3m_.;
	format nms_cost_3m nms_cost_3m_.;
	format nms_inc_3m nms_inc_3m_.;
	format nms_emp_3m nms_emp_3m_.;
	format nms_emp_inc_3m nms_emp_inc_3m_.;
	format nms_emp_ben_3m nms_emp_ben_3m_.;
	format nms_otinc_3m nms_otinc_3m_.;
	format nms_edu_cr_3m nms_edu_cr_3m_.;
	format nms_edu_ful_3m nms_edu_ful_3m_.;
	format nms_qul_3m nms_qul_3m_.;
	format srb_3m_prst_3m srb_3m_prst_3m_.;
	format srb_prst01_3m srb_prst01_3m_.;
	format srb_prst02_3m srb_prst02_3m_.;
	format srb_prst03_3m srb_prst03_3m_.;
	format srb_prst04_3m srb_prst04_3m_.;
	format srb_prst05_3m srb_prst05_3m_.;
	format srb_3m_3m srb_3m_3m_.;
	format srb_3m_f_3m srb_3m_f_3m_.;
	format srb_1m_f_3m srb_1m_f_3m_.;
	format srb_1m_fc_pv_3m srb_1m_fc_pv_3m_.;
	format srb_1m_fc_po_3m srb_1m_fc_po_3m_.;
	format srb_1m_fc_pa_3m srb_1m_fc_pa_3m_.;
	format srb_1m_fc_npv_3m srb_1m_fc_npv_3m_.;
	format srb_1m_fc_npo_3m srb_1m_fc_npo_3m_.;
	format srb_1m_fc_npa_3m srb_1m_fc_npa_3m_.;
	format srb_1m_fc_cv_3m srb_1m_fc_cv_3m_.;
	format srb_1m_fc_co_3m srb_1m_fc_co_3m_.;
	format srb_1m_fc_ca_3m srb_1m_fc_ca_3m_.;
	format srb_1m_fc_mcv_3m srb_1m_fc_mcv_3m_.;
	format srb_1m_fc_mco_3m srb_1m_fc_mco_3m_.;
	format srb_1m_fc_mca_3m srb_1m_fc_mca_3m_.;
	format srb_1m_f_hiv_3m srb_1m_f_hiv_3m_.;
	format srb_1m_fc_hiv_3m srb_1m_fc_hiv_3m_.;
	format srb_1m_f_hcv_3m srb_1m_f_hcv_3m_.;
	format srb_1m_fc_hcv_3m srb_1m_fc_hcv_3m_.;
	format srb_1m_f_drg_cc_3m srb_1m_f_drg_cc_3m_.;
	format srb_1m_f_drg_hro_3m srb_1m_f_drg_hro_3m_.;
	format srb_1m_f_drg_main_3m srb_1m_f_drg_main_3m_.;
	format srb_1m_f_drg_aph_3m srb_1m_f_drg_aph_3m_.;
	format srb_1m_f_drg_psy_3m srb_1m_f_drg_psy_3m_.;
	format srb_3m_m_3m srb_3m_m_3m_.;
	format srb_1m_m_3m srb_1m_m_3m_.;
	format srb_1m_mc_pv_3m srb_1m_mc_pv_3m_.;
	format srb_1m_mc_po_3m srb_1m_mc_po_3m_.;
	format srb_1m_mc_pa_3m srb_1m_mc_pa_3m_.;
	format srb_1m_mc_npv_3m srb_1m_mc_npv_3m_.;
	format srb_1m_mc_npo_3m srb_1m_mc_npo_3m_.;
	format srb_1m_mc_npa_3m srb_1m_mc_npa_3m_.;
	format srb_1m_mc_cv_3m srb_1m_mc_cv_3m_.;
	format srb_1m_mc_co_3m srb_1m_mc_co_3m_.;
	format srb_1m_mc_ca_3m srb_1m_mc_ca_3m_.;
	format srb_1m_mc_mcv_3m srb_1m_mc_mcv_3m_.;
	format srb_1m_mc_mco_3m srb_1m_mc_mco_3m_.;
	format srb_1m_mc_mca_3m srb_1m_mc_mca_3m_.;
	format srb_1m_m_hiv_3m srb_1m_m_hiv_3m_.;
	format srb_1m_mc_hiv_3m srb_1m_mc_hiv_3m_.;
	format srb_1m_m_hcv_3m srb_1m_m_hcv_3m_.;
	format srb_1m_mc_hcv_3m srb_1m_mc_hcv_3m_.;
	format srb_1m_m_drg_cc_3m srb_1m_m_drg_cc_3m_.;
	format srb_1m_m_drg_hro_3m srb_1m_m_drg_hro_3m_.;
	format srb_1m_m_drg_main_3m srb_1m_m_drg_main_3m_.;
	format srb_1m_m_drg_aph_3m srb_1m_m_drg_aph_3m_.;
	format srb_1m_m_drg_psy_3m srb_1m_m_drg_psy_3m_.;
	format bsi_3m_1 bsi_3m_1_.;
	format bsi_3m_2 bsi_3m_2_.;
	format bsi_3m_3 bsi_3m_3_.;
	format bsi_3m_4 bsi_3m_4_.;
	format bsi_3m_5 bsi_3m_5_.;
	format bsi_3m_6 bsi_3m_6_.;
	format bsi_3m_7 bsi_3m_7_.;
	format bsi_3m_8 bsi_3m_8_.;
	format bsi_3m_9 bsi_3m_9_.;
	format bsi_3m_10 bsi_3m_10_.;
	format bsi_3m_11 bsi_3m_11_.;
	format bsi_3m_12 bsi_3m_12_.;
	format bsi_3m_13 bsi_3m_13_.;
	format bsi_3m_14 bsi_3m_14_.;
	format bsi_3m_15 bsi_3m_15_.;
	format bsi_3m_16 bsi_3m_16_.;
	format bsi_3m_17 bsi_3m_17_.;
	format bsi_3m_18 bsi_3m_18_.;
	format followup_3m_complete followup_3m_complete_.;
	format eis_status_3m eis_status_3m_.;
	format eis_1_3m eis_1_3m_.;
	format eis_2_3m eis_2_3m_.;
	format eis_3_3m eis_3_3m_.;
	format eis_4_3m eis_4_3m_.;
	format eis_5_3m eis_5_3m_.;
	format eis_6_3m eis_6_3m_.;
	format eis_7_3m eis_7_3m_.;
	format eis_8_3m eis_8_3m_.;
	format eis_9_3m eis_9_3m_.;
	format eis_10_3m eis_10_3m_.;
	format eis_11_3m eis_11_3m_.;
	format eis_12_3m eis_12_3m_.;
	format eis_13_3m eis_13_3m_.;
	format eis_14_3m eis_14_3m_.;
	format eis_15_3m eis_15_3m_.;
	format eis_16_3m eis_16_3m_.;
	format eis_17_3m eis_17_3m_.;
	format eis_18_3m eis_18_3m_.;
	format eis_19_3m eis_19_3m_.;
	format eis_20_3m eis_20_3m_.;
	format eis_21_3m eis_21_3m_.;
	format eis_22_3m eis_22_3m_.;
	format cpe_1_3m cpe_1_3m_.;
	format cpe_2_3m cpe_2_3m_.;
	format cpe_3_3m cpe_3_3m_.;
	format cpe_4_3m cpe_4_3m_.;
	format cce_1_3m cce_1_3m_.;
	format cce_2_3m cce_2_3m_.;
	format cce_3_3m cce_3_3m_.;
	format cce_4_3m cce_4_3m_.;
	format followup_3m_eis_cpe__v_7 followup_3m_eis_cpe__v_7_.;
	format prep_prescribe prep_prescribe_.;
	format adh_prep adh_prep_.;
	format stop_prep stop_prep_.;
	format prep_last4week prep_last4week_.;
	format prep_now prep_now_.;
	format adh2_noncompliance___1 adh2_noncompliance___1_.;
	format adh2_noncompliance___2 adh2_noncompliance___2_.;
	format adh2_noncompliance___3 adh2_noncompliance___3_.;
	format adh2_noncompliance___4 adh2_noncompliance___4_.;
	format adh2_noncompliance___5 adh2_noncompliance___5_.;
	format adh2_noncompliance___6 adh2_noncompliance___6_.;
	format adh2_noncompliance___7 adh2_noncompliance___7_.;
	format adh2_noncompliance___8 adh2_noncompliance___8_.;
	format adh2_noncompliance___9 adh2_noncompliance___9_.;
	format adh2_noncompliance___10 adh2_noncompliance___10_.;
	format adh2_noncompliance___11 adh2_noncompliance___11_.;
	format adh2_noncompliance___12 adh2_noncompliance___12_.;
	format adh2_noncompliance___13 adh2_noncompliance___13_.;
	format adh2_noncompliance___14 adh2_noncompliance___14_.;
	format adh2_noncompliance___15 adh2_noncompliance___15_.;
	format adh2_noncompliance___16 adh2_noncompliance___16_.;
	format adh2_noncompliance___17 adh2_noncompliance___17_.;
	format adh2_prepchange adh2_prepchange_.;
	format adh_hcv adh_hcv_.;
	format adh4_hcvchange adh4_hcvchange_.;
	format adh4_noncompliance___1 adh4_noncompliance___1_.;
	format adh4_noncompliance___2 adh4_noncompliance___2_.;
	format adh4_noncompliance___3 adh4_noncompliance___3_.;
	format adh4_noncompliance___4 adh4_noncompliance___4_.;
	format adh4_noncompliance___5 adh4_noncompliance___5_.;
	format adh4_noncompliance___6 adh4_noncompliance___6_.;
	format adh4_noncompliance___7 adh4_noncompliance___7_.;
	format adh4_noncompliance___8 adh4_noncompliance___8_.;
	format adh4_noncompliance___9 adh4_noncompliance___9_.;
	format adh4_noncompliance___10 adh4_noncompliance___10_.;
	format adh4_noncompliance___11 adh4_noncompliance___11_.;
	format adh4_noncompliance___12 adh4_noncompliance___12_.;
	format adh4_noncompliance___13 adh4_noncompliance___13_.;
	format adh4_noncompliance___14 adh4_noncompliance___14_.;
	format adh4_noncompliance___15 adh4_noncompliance___15_.;
	format adh4_noncompliance___16 adh4_noncompliance___16_.;
	format adh4_noncompliance___17 adh4_noncompliance___17_.;
	format followup_3m_adh2_4_complete followup_3m_adh2_4_complete_.;
	format idu_cnty_6m idu_cnty_6m_.;
	format auc_1_6m auc_1_6m_.;
	format auc_2_6m auc_2_6m_.;
	format auc_11_6m auc_11_6m_.;
	format auc_12_6m auc_12_6m_.;
	format auc_3_6m auc_3_6m_.;
	format auc_4_6m auc_4_6m_.;
	format auc_5_6m auc_5_6m_.;
	format auc_6_6m auc_6_6m_.;
	format auc_7_6m auc_7_6m_.;
	format auc_8_6m auc_8_6m_.;
	format auc_9_6m auc_9_6m_.;
	format auc_10_6m auc_10_6m_.;
	format dst_1_6m dst_1_6m_.;
	format dst_2_6m dst_2_6m_.;
	format dst_3_6m dst_3_6m_.;
	format dst_4_6m dst_4_6m_.;
	format dst_5_6m dst_5_6m_.;
	format dst_6_6m dst_6_6m_.;
	format dst_7_6m dst_7_6m_.;
	format dst_8_6m dst_8_6m_.;
	format dst_9_6m dst_9_6m_.;
	format dst_10_6m dst_10_6m_.;
	format odu_6m_6m odu_6m_6m_.;
	format odu_6m_tim_acdt_6m odu_6m_tim_acdt_6m_.;
	format aiv_6m_pa_6m aiv_6m_pa_6m_.;
	format aiv_6m_pa_sp_6m aiv_6m_pa_sp_6m_.;
	format aiv_6m_sex_6m aiv_6m_sex_6m_.;
	format aiv_6m_sex_sp_6m aiv_6m_sex_sp_6m_.;
	format aiv_6m_sp_vio_6m aiv_6m_sp_vio_6m_.;
	format aiv_6m_sp_brc_6m aiv_6m_sp_brc_6m_.;
	format aiv_6m_sp_ctl_6m aiv_6m_sp_ctl_6m_.;
	format act_1_6m act_1_6m_.;
	format act_2_6m act_2_6m_.;
	format act_3_6m act_3_6m_.;
	format act_4_6m act_4_6m_.;
	format act_5_6m act_5_6m_.;
	format act_6_6m act_6_6m_.;
	format cdu_1_6m cdu_1_6m_.;
	format cdu_2_6m cdu_2_6m_.;
	format cdu_3_6m cdu_3_6m_.;
	format cdu_4_6m cdu_4_6m_.;
	format cdu_5_6m cdu_5_6m_.;
	format cdu_6_6m cdu_6_6m_.;
	format cdu_7_6m cdu_7_6m_.;
	format cdu_8_6m cdu_8_6m_.;
	format cdu_9_6m cdu_9_6m_.;
	format cdu_10_6m cdu_10_6m_.;
	format cdu_11_6m cdu_11_6m_.;
	format cdu_12_6m cdu_12_6m_.;
	format cdu_13_6m cdu_13_6m_.;
	format cdu_14_6m cdu_14_6m_.;
	format cdu_17_6m cdu_17_6m_.;
	format cdu_18_6m cdu_18_6m_.;
	format followup_6m_complete followup_6m_complete_.;
	format ac1 ac1_.;
	format ac2 ac2_.;
	format ac3 ac3_.;
	format ac4 ac4_.;
	format ac5 ac5_.;
	format ac6 ac6_.;
	format ac7 ac7_.;
	format ac8 ac8_.;
	format ac9 ac9_.;
	format ac10 ac10_.;
	format pns_1 pns_1_.;
	format pns_2 pns_2_.;
	format pns_3 pns_3_.;
	format pns_4 pns_4_.;
	format pns_5 pns_5_.;
	format pns_6 pns_6_.;
	format pns_7 pns_7_.;
	format pns_8 pns_8_.;
	format pns_9 pns_9_.;
	format pns_10 pns_10_.;
	format intervention_satisfa_v_8 intervention_satisfa_v_8_.;
	format scf_reasonend scf_reasonend_.;
	format end_of_study_form_complete end_of_study_form_complete_.;
	format eom_whatmed___0 eom_whatmed___0_.;
	format eom_whatmed___1 eom_whatmed___1_.;
	format eom_whatmed___2 eom_whatmed___2_.;
	format eom_reason_truvada___0 eom_reason_truvada___0_.;
	format eom_reason_truvada___1 eom_reason_truvada___1_.;
	format eom_reason_truvada___2 eom_reason_truvada___2_.;
	format eom_reason_truvada___3 eom_reason_truvada___3_.;
	format eom_reason_truvada___4 eom_reason_truvada___4_.;
	format eom_reason_truvada___5 eom_reason_truvada___5_.;
	format eom_reason_truvada___6 eom_reason_truvada___6_.;
	format eom_reason_truvada___7 eom_reason_truvada___7_.;
	format eom_reason_truvada___8 eom_reason_truvada___8_.;
	format eom_reason_truvada___9 eom_reason_truvada___9_.;
	format eom_reason_truvada___10 eom_reason_truvada___10_.;
	format eom_reason_truvada___11 eom_reason_truvada___11_.;
	format eom_reason_truvada___12 eom_reason_truvada___12_.;
	format eom_reason_truvada___13 eom_reason_truvada___13_.;
	format eom_reason_truvada___14 eom_reason_truvada___14_.;
	format eom_reason_truvada___15 eom_reason_truvada___15_.;
	format eom_primreason___0 eom_primreason___0_.;
	format eom_primreason___1 eom_primreason___1_.;
	format eom_primreason___2 eom_primreason___2_.;
	format eom_primreason___3 eom_primreason___3_.;
	format eom_primreason___4 eom_primreason___4_.;
	format eom_primreason___5 eom_primreason___5_.;
	format eom_primreason___6 eom_primreason___6_.;
	format eom_primreason___7 eom_primreason___7_.;
	format eom_primreason___8 eom_primreason___8_.;
	format eom_primreason___9 eom_primreason___9_.;
	format eom_primreason___10 eom_primreason___10_.;
	format eom_primreason___11 eom_primreason___11_.;
	format eom_primreason___12 eom_primreason___12_.;
	format eom_primreason___13 eom_primreason___13_.;
	format eom_primreason___14 eom_primreason___14_.;
	format eom_primreason___15 eom_primreason___15_.;
	format eom_reason_hcv___0 eom_reason_hcv___0_.;
	format eom_reason_hcv___1 eom_reason_hcv___1_.;
	format eom_reason_hcv___2 eom_reason_hcv___2_.;
	format eom_reason_hcv___3 eom_reason_hcv___3_.;
	format eom_reason_hcv___4 eom_reason_hcv___4_.;
	format eom_reason_hcv___5 eom_reason_hcv___5_.;
	format eom_reason_hcv___6 eom_reason_hcv___6_.;
	format eom_reason_hcv___7 eom_reason_hcv___7_.;
	format eom_reason_hcv___8 eom_reason_hcv___8_.;
	format eom_reason_hcv___9 eom_reason_hcv___9_.;
	format eom_reason_hcv___10 eom_reason_hcv___10_.;
	format eom_reason_hcv___11 eom_reason_hcv___11_.;
	format eom_reason_hcv___12 eom_reason_hcv___12_.;
	format eom_reason_hcv___13 eom_reason_hcv___13_.;
	format eom_reason_hcv___14 eom_reason_hcv___14_.;
	format eom_reason_hcv___15 eom_reason_hcv___15_.;
	format end_of_medication_complete end_of_medication_complete_.;
	format ae_typereport___0 ae_typereport___0_.;
	format ae_typereport___1 ae_typereport___1_.;
	format ae_typereport___2 ae_typereport___2_.;
	format ae_guidelines ae_guidelines_.;
	format ae_severity ae_severity_.;
	format ae_expect ae_expect_.;
	format ae_relation_med ae_relation_med_.;
	format ae_treatment___0 ae_treatment___0_.;
	format ae_treatment___1 ae_treatment___1_.;
	format ae_treatment___2 ae_treatment___2_.;
	format ae_treatment___3 ae_treatment___3_.;
	format ae_treatment___4 ae_treatment___4_.;
	format ae_treatment___5 ae_treatment___5_.;
	format ae_outcome ae_outcome_.;
	format smi_txarm smi_txarm_.;
	format smi_prepmed smi_prepmed_.;
	format prep_disp prep_disp_.;
	format smi_prep_action___0 smi_prep_action___0_.;
	format smi_prep_action___1 smi_prep_action___1_.;
	format smi_prep_action___2 smi_prep_action___2_.;
	format smi_prep_action___3 smi_prep_action___3_.;
	format smi_prep_action___4 smi_prep_action___4_.;
	format smi_prep_action___5 smi_prep_action___5_.;
	format smi_prep_action___6 smi_prep_action___6_.;
	format smi_prep_action___7 smi_prep_action___7_.;
	format smi_hcv smi_hcv_.;
	format smi_hcv_baseline smi_hcv_baseline_.;
	format smi_hcvmed smi_hcvmed_.;
	format hcv_disp hcv_disp_.;
	format smi_action___0 smi_action___0_.;
	format smi_action___1 smi_action___1_.;
	format smi_action___2 smi_action___2_.;
	format smi_action___3 smi_action___3_.;
	format smi_action___4 smi_action___4_.;
	format smi_action___5 smi_action___5_.;
	format smi_action___6 smi_action___6_.;
	format smi_action___7 smi_action___7_.;
	format adverse_event_form_complete adverse_event_form_complete_.;
	format sae_type___0 sae_type___0_.;
	format sae_type___1 sae_type___1_.;
	format sae_type___2 sae_type___2_.;
	format sae_criteria___0 sae_criteria___0_.;
	format sae_criteria___1 sae_criteria___1_.;
	format sae_criteria___2 sae_criteria___2_.;
	format sae_criteria___3 sae_criteria___3_.;
	format sae_criteria___4 sae_criteria___4_.;
	format sae_criteria___5 sae_criteria___5_.;
	format sae_severity sae_severity_.;
	format sae_expect sae_expect_.;
	format sae_related sae_related_.;
	format sae_outcome sae_outcome_.;
	format sae_death_certificate sae_death_certificate_.;
	format sae_death_cause sae_death_cause_.;
	format sae_information___0 sae_information___0_.;
	format sae_information___1 sae_information___1_.;
	format sae_information___2 sae_information___2_.;
	format sae_information___3 sae_information___3_.;
	format sae_information___4 sae_information___4_.;
	format sae_information___5 sae_information___5_.;
	format sae_death_autopsy sae_death_autopsy_.;
	format sae_txarm sae_txarm_.;
	format sae_prepmed sae_prepmed_.;
	format sae_prep_disp sae_prep_disp_.;
	format sae_action___0 sae_action___0_.;
	format sae_action___1 sae_action___1_.;
	format sae_action___2 sae_action___2_.;
	format sae_action___3 sae_action___3_.;
	format sae_action___4 sae_action___4_.;
	format sae_action___5 sae_action___5_.;
	format sae_action___6 sae_action___6_.;
	format sae_action___7 sae_action___7_.;
	format sae_prep_abate sae_prep_abate_.;
	format sae_prep_reappear sae_prep_reappear_.;
	format sae_hcv sae_hcv_.;
	format sae_hcvmed sae_hcvmed_.;
	format hcv_med_disp hcv_med_disp_.;
	format sae_hcv_abate sae_hcv_abate_.;
	format sae_hcv_reappear sae_hcv_reappear_.;
	format sae_action_hcv___0 sae_action_hcv___0_.;
	format sae_action_hcv___1 sae_action_hcv___1_.;
	format sae_action_hcv___2 sae_action_hcv___2_.;
	format sae_action_hcv___3 sae_action_hcv___3_.;
	format sae_action_hcv___4 sae_action_hcv___4_.;
	format sae_action_hcv___5 sae_action_hcv___5_.;
	format sae_action_hcv___6 sae_action_hcv___6_.;
	format sae_action_hcv___7 sae_action_hcv___7_.;
	format sae_ongoing sae_ongoing_.;
	format sae_ongoing_rmh sae_ongoing_rmh_.;
	format serious_adverse_even_v_9 serious_adverse_even_v_9_.;
	format rmv rmv_.;
	format missed_visit_form_complete missed_visit_form_complete_.;
	format medi_pres___1 medi_pres___1_.;
	format medi_pres___2 medi_pres___2_.;
	format medi_pres___3 medi_pres___3_.;
	format medi_dispense___1 medi_dispense___1_.;
	format medi_dispense___2 medi_dispense___2_.;
	format medi_dispense___3 medi_dispense___3_.;
	format treatment_initiation_complete treatment_initiation_complete_.;
run;

proc contents data=redcap;
proc print data=redcap;
run;