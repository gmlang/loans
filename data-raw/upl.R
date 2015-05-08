rm(list=ls())

# set path and load data
proj_path = '~/write/loans/data-raw'
data_path = file.path(proj_path, 'dat.rda')
load(data_path)

# rename
upl = dat

# save
devtools::use_data(upl, overwrite=TRUE)
