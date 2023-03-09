# FILE: data_analysis.R
# ---------------------
# Author: Sean Yoon
# Functions that are convienient for data analysis

# LOADING LIBRARIES
# -----------------

# FUNCTION: load_lib
# ------------------
load_lib <- function(packages, repos = "http://cran.us.r-project.org") {
  for (package in packages) {
    if (!require(package, character.only = TRUE)) {
      install.packages(package, repos = repos)
    }
    library(package, character.only = TRUE)
  }
}
