
* MZ Update version 3.0 Stata 13 
* 21 Oct 2018 Essex
capture program drop pdtr
program define pdtr
	syntax anything(equalok) [, by(varname)  sort(varname) list(varlist) ]  //
    capture display "CONDITION is `anything'"
    capture display "BY: `by'"
	capture display "SORT `sort'"
    capture drop _cond
	tempvar temp1	
	gen `temp1'=1 if `anything'
    egen _cond = total(`temp1'), by(`by')
	sort `by' `sort'
	br `list' if _cond>0
end
