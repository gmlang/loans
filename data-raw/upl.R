rm(list=ls())

library(foreign)

# set path and load data
proj_path = '~/Rpkg/loans/data-raw'
data_path = file.path(proj_path, 'credit_card_data.sav')
upl = read.spss(data_path, to.data.frame=TRUE)

# change header to lower case and change target variable name
names(upl) = tolower(names(upl))
names(upl)[names(upl) == "good_bad"] = "bad"

# save
devtools::use_data(upl, pkg = "~/Rpkg/loans", overwrite=TRUE)
