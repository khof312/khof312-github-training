* Run some basic regressions on auto.dta.

versionis 11

set more offum

sysuse auto, clear

* Create a local of controls.
local controls weight length turn

* Run basic regression of price on mpg.
regress price mpg `controls'

* Limiting the regression to only domestic cars
regress price mpg `controls' if foreign == 0

* Correlation between mpg and weight?
corr mpg weight

* Changing controls and re-running regression
local controls2 gear_ratio displacement
regress price mpg `controls2'
