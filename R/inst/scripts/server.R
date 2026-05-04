#!/usr/bin/env Rscript
library(mcptools)
library(mcp)

mcp_server(tools = list(
  impute = mcptools::impute_median,
  outliers = mcptools::detect_outliers,
  correlation = mcptools::get_correlation
))
