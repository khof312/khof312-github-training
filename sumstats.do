* Calculate some summary statistics for auto.dta.

version 10

set more off

sysuse auto, clear

*Describe key variables:
describe make price weight length

*Summary stats:
summarize price weight length
sort price
list weight length in 1/10

tabulate weight if price > 10000

assert inlist(foreign, 0, 1)
bys foreign: summarize price
