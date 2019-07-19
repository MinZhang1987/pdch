# pdch
pdch: A Stata package that helps to check panel data across waves 

pdch shows observations from all waves if the specified condition is satisfied at any waves.

Example:

use http://www.stata-press.com/data/r13/nlswork , clear

xtdes // idcode = personal identifier; year = wave

// Show all-wave records for respondents who has ever worked at industry 5

order idcode year ind_code

pdch ind_code == 5, by(idcode) sort(year)

// sort is optional
