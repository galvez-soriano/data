*========================================================================*
/* Trabajando con ENUT */
*========================================================================*
clear
set more off
gl data= "C:\Users\galve\Documents\Lupita\Bases"
gl base= "C:\Users\galve\Documents\Lupita\NewBase"
gl doc= "C:\Users\galve\Documents\Lupita\DocLupita"
*========================================================================*
/* 2009 */
*========================================================================*
use "$data\2009\tsdem.dta", clear
gen str id_hogar=control+viv_sel+hogar
gen str id_ind=control+viv_sel+hogar+n_ren

destring sexo edad p3_6_1 p3_6_2 p3_6_3 p3_6_4 p3_6_5 p3_6_6 p3_6_7 p3_6_8 ///
p3_6_9 p3_7_1 p3_7_2 p3_7_3 p3_7_4 p3_7_5 p3_7_6 p3_7_7 p3_7_8 p3_7_9 ///
p3_7_10 p3_7_11 p3_8_1 p3_8_2 p3_9_1 p3_9_2 p3_9_3 p3_9_4 p3_10 p3_11, replace


