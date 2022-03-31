*========================================================================*
* Map of Mexico at county level
*========================================================================*
cd "C:\Users\galve\Documents\Papers\Current\English on labor outcomes\Data\Map\County"
shp2dta using mex_mun, database(mxdb_mun) coordinates(mxcoord_mun) genid(id_mun) replace
use "mxdb_mun.dta", clear

rename ADM2_PCODE mun
gen mun_code=substr(mun,3,5)
*destring mun_code, replace
keep mun_code id_mun

save "mex_map_county.dta", replace

spmap using "mxcoord_mun.dta", id(id_mun) 
