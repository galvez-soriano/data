*========================================================================*
* Working with Mexican Population Data 
*========================================================================*
* Oscar Galvez-Soriano
*========================================================================*
clear
set more off
gl data= "https://raw.githubusercontent.com/galvez-soriano/data/main/MexCensus"
gl base= "C:\Users\galve\Documents\Papers\Current\English on labor outcomes\Data\Census"
*========================================================================*

local start=0
local end=0
foreach x in 1 2 3 {
	use "$base\coordinates20.dta", clear
	local start=`end'+1
	local end=75050*`x'
	keep in `start'/`end'
	save "$base\coordinates20_`x'.dta", replace
}
use "$base\coordinates20.dta", clear
keep in 225151/l
save "$base\coordinates20_4.dta", replace

local start=0
local end=0
foreach x in 1 2 3 {
	use "$base\coordinates10.dta", clear
	local start=`end'+1
	local end=75000*`x'
	keep in `start'/`end'
	save "$base\coordinates10_`x'.dta", replace
}
use "$base\coordinates10.dta", clear
keep in 225001/l
save "$base\coordinates10_4.dta", replace

local start=0
local end=0
foreach x in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 ///
25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 ///
51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 ///
77 78 79 80 81 82 83 84 85 86 87 88 89 90 {
	use "$base\census15.dta", clear
	local start=`end'+1
	local end=249365*`x'
	keep in `start'/`end'
	save "$base\census15_`x'.dta", replace
}
use "$base\census15.dta", clear
keep in 22442851/l
save "$base\census15_91.dta", replace

*/
*========================================================================*
use "$data/2020/coordinates20.dta", clear
foreach x in 2 3 4 {
	append using "$data/budget2009_`x'.dta"
}

