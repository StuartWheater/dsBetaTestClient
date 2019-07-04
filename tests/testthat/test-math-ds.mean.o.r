source("connection_to_datasets/init_all_datasets.R")
source("definition_tests/def-ds.mean.r")

context("ds.mean.o()::math::residual::multiple")
test_that("residual deviation tends to 0",
{
  connect.all.datasets()
  
  .test.residual.combined('D$INTEGER',ds.test_env$local.values[,6])
  .test.residual.combined('D$NON_NEGATIVE_INTEGER',ds.test_env$local.values[,7])
  .test.residual.combined('D$POSITIVE_INTEGER',ds.test_env$local.values[,8])
  .test.residual.combined('D$NEGATIVE_INTEGER',ds.test_env$local.values[,9]) 
  .test.residual.combined('D$NUMERIC',ds.test_env$local.values[,10])
  .test.residual.combined('D$NON_NEGATIVE_NUMERIC',ds.test_env$local.values[,11])
  .test.residual.combined('D$POSITIVE_NUMERIC',ds.test_env$local.values[,12])
  .test.residual.combined('D$NEGATIVE_NUMERIC',ds.test_env$local.values[,13]) 
  
  .test.residual.split('D$INTEGER',ds.test_env$local.values.1[,6],ds.test_env$local.values.2[,6],ds.test_env$local.values.3[,6])
  .test.residual.split('D$NON_NEGATIVE_INTEGER',ds.test_env$local.values.1[,7],ds.test_env$local.values.2[,7],ds.test_env$local.values.3[,7])
  .test.residual.split('D$POSITIVE_INTEGER',ds.test_env$local.values.1[,8],ds.test_env$local.values.2[,8],ds.test_env$local.values.3[,8])
  .test.residual.split('D$NEGATIVE_INTEGER',ds.test_env$local.values.1[,9],ds.test_env$local.values.2[,9],ds.test_env$local.values.3[,9])
  .test.residual.split('D$NUMERIC',ds.test_env$local.values.1[,10],ds.test_env$local.values.2[,10],ds.test_env$local.values.3[,10])
  .test.residual.split('D$NON_NEGATIVE_NUMERIC',ds.test_env$local.values.1[,11],ds.test_env$local.values.2[,11],ds.test_env$local.values.3[,11])
  .test.residual.split('D$POSITIVE_NUMERIC',ds.test_env$local.values.1[,12],ds.test_env$local.values.2[,12],ds.test_env$local.values.3[,12])
  .test.residual.split('D$NEGATIVE_NUMERIC',ds.test_env$local.values.1[,13],ds.test_env$local.values.2[,13],ds.test_env$local.values.3[,13])
   
})

context("ds.mean.o()::math::residual::single")
test_that("residual deviation tends to 0",
{
  connect.all.datasets()
  
  .test.residual.combined('D$INTEGER',ds.test_env$local.values[,6])
  .test.residual.combined('D$NON_NEGATIVE_INTEGER',ds.test_env$local.values[,7])
  .test.residual.combined('D$POSITIVE_INTEGER',ds.test_env$local.values[,8])
  .test.residual.combined('D$NEGATIVE_INTEGER',ds.test_env$local.values[,9]) 
  .test.residual.combined('D$NUMERIC',ds.test_env$local.values[,10])
  .test.residual.combined('D$NON_NEGATIVE_NUMERIC',ds.test_env$local.values[,11])
  .test.residual.combined('D$POSITIVE_NUMERIC',ds.test_env$local.values[,12])
  .test.residual.combined('D$NEGATIVE_NUMERIC',ds.test_env$local.values[,13]) 
  
  .test.residual.split('D$INTEGER',ds.test_env$local.values.1[,6],ds.test_env$local.values.2[,6],ds.test_env$local.values.3[,6])
  .test.residual.split('D$NON_NEGATIVE_INTEGER',ds.test_env$local.values.1[,7],ds.test_env$local.values.2[,7],ds.test_env$local.values.3[,7])
  .test.residual.split('D$POSITIVE_INTEGER',ds.test_env$local.values.1[,8],ds.test_env$local.values.2[,8],ds.test_env$local.values.3[,8])
  .test.residual.split('D$NEGATIVE_INTEGER',ds.test_env$local.values.1[,9],ds.test_env$local.values.2[,9],ds.test_env$local.values.3[,9])
  .test.residual.split('D$NUMERIC',ds.test_env$local.values.1[,10],ds.test_env$local.values.2[,10],ds.test_env$local.values.3[,10])
  .test.residual.split('D$NON_NEGATIVE_NUMERIC',ds.test_env$local.values.1[,11],ds.test_env$local.values.2[,11],ds.test_env$local.values.3[,11])
  .test.residual.split('D$POSITIVE_NUMERIC',ds.test_env$local.values.1[,12],ds.test_env$local.values.2[,12],ds.test_env$local.values.3[,12])
  .test.residual.split('D$NEGATIVE_NUMERIC',ds.test_env$local.values.1[,13],ds.test_env$local.values.2[,13],ds.test_env$local.values.3[,13])
  
})
