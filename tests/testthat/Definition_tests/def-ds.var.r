source("connection_to_datasets/init_all_datasets.R")

.test.var.combined <- function(variable.name,some.values)
{
  var.local <- var(some.values)
  var.server <- ds.var.o(variable.name,type='combine', check=TRUE, datasources=ds.test_env$connection.opal)
  expect_equal(var.server[[1]][1], var.local, tolerance = ds.test_env$tolerance)
}

.test.var.split <- function(variable.name,some.values.1,some.values.2,some.values.3)
{
  var.local.1 <- var(some.values.1)
  var.local.2 <- var(some.values.2)
  var.local.3 <- var(some.values.3)
  
  
  var.servers <- ds.var.o(x=variable.name,type='split', check=TRUE,datasources=ds.test_env$connection.opal)
  expect_equal(var.servers[[1]][1], var.local.1, tolerance = ds.test_env$tolerance)
  expect_equal(var.servers[[1]][2], var.local.2, tolerance = ds.test_env$tolerance)
  expect_equal(var.servers[[1]][3], var.local.3, tolerance = ds.test_env$tolerance)
}

.test.variance.positive.combine <- function(variable.name)
{
  var.server <- ds.var.o(variable.name,type='combine', check=TRUE, datasources=ds.test_env$connection.opal)
  expect_true(var.server$Global.Variance[1] >= 0)
}

.test.variance.positive.split <- function(variable.name)
{
  var.server <- ds.var.o(variable.name,type='combine', check=TRUE, datasources=ds.test_env$connection.opal)
  expect_true(var.server[[1]][1] >= 0)
  expect_true(var.server[[1]][2] >= 0)
  expect_true(var.server[[1]][3] >= 0)
}

.test.standard.dev.combine <- function(variable.name, some.values)
{
  std.local <- sd(some.values)
  var.server <- ds.var.o(variable.name,type='combine', datasources=ds.test_env$connection.opal)
  std.server <- sqrt(var.server$Global.Variance[1])
  expect_equal(std.server,std.local, tolerance = ds.test_env$tolerance)
}

.test.standard.dev.split <- function(variable.name, some.values.1,some.values.2,some.values.3)
{
  std.local.1 <- sd(some.values.1)
  std.local.2 <- sd(some.values.2)
  std.local.3 <- sd(some.values.3)
  
  var.servers <- ds.var.o(variable.name,type='split', datasources=ds.test_env$connection.opal)
  std.servers <- c()
  std.servers[1] <- sqrt(var.servers[[1]][1])
  std.servers[2] <- sqrt(var.servers[[1]][2])
  std.servers[3] <- sqrt(var.servers[[1]][3])
  
  expect_equal(std.servers[1],std.local.1, tolerance = ds.test_env$tolerance)
  expect_equal(std.servers[2],std.local.2, tolerance = ds.test_env$tolerance)
  expect_equal(std.servers[3],std.local.3, tolerance = ds.test_env$tolerance)
}

