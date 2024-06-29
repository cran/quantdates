## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(quantdates)

## -----------------------------------------------------------------------------
AddDate(date = Sys.Date(),addDays=14,addMonths=2,addYears=3)
AddDate(date = '2019-10-04',addDays=14,addMonths=2,addYears=3)

## -----------------------------------------------------------------------------
AddBusinessDays(date = Sys.Date(),numDate = 15,loc = 'NY')
AddBusinessDays(date = '2020-10-03',numDate = 15,loc = 'NY')
AddBusinessDays(date = Sys.Date(),numDate = 15,loc = 'BOG')
AddBusinessDays(date = Sys.Date(),numDate = 15,loc = 'LDN')

## -----------------------------------------------------------------------------
LastDayOfMonth(year = 2020, month = 2)
LastDayOfMonth(year = 2024, month = 5)
LastDayOfMonth(date = '2020-02-03')

## -----------------------------------------------------------------------------
BusinessDays(loc='BOG')[2500:2520]
BusinessDays(loc='BOG', from='2020-10-10', to='2020-11-10')

## -----------------------------------------------------------------------------
NumR2DateR(as.numeric(Sys.Date()))
NumExcel2DateR(as.numeric(Sys.Date()))

## -----------------------------------------------------------------------------
difftime_leap_year(tfinal='2023-03-05',tinitial='2019-02-28',leapDatesIn=TRUE)
difftime_leap_year(tfinal=as.Date('2023-03-05'),tinitial=as.Date('2019-02-28'),leapDatesIn=TRUE)
difftime_leap_year(tfinal='2023-03-05',tinitial='2019-02-28',leapDatesIn=FALSE)
difftime_leap_year(tfinal='2023-03-05',tinitial=as.Date('2019-02-28'),leapDatesIn=FALSE)

## -----------------------------------------------------------------------------
difftime_business(tfinal='2023-03-08',tinitial='2019-02-28',wd=wdBOG)
difftime_business(tfinal='2023-03-08',tinitial='2019-02-28',wd=wdLDN)
difftime_business(tfinal='2023-03-08',tinitial='2019-02-28',wd=wdNY)

## -----------------------------------------------------------------------------
day_count(tfinal='2023-03-08',tinitial='2019-02-28',convention='ACT/365')
day_count(tfinal='2023-03-08',tinitial='2019-02-28',convention='ACT/360')
day_count(tfinal='2023-03-08',tinitial='2019-02-28',convention='30/360')
day_count(tfinal='2023-03-08',tinitial='2019-02-28',convention='NL/365')
day_count(tfinal='2023-03-08',tinitial='2019-02-28',convention='ACT/ACT-ISDA')
day_count(tfinal='2023-03-08',tinitial='2019-02-28',convention='ACT/ACT-AFB')

