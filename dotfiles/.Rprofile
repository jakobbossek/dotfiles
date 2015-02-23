# Rprofile file of Jakob Bossek

# set op
options(
  repos = c(CRAN = "http://cran.r-mirror.de/"),
  help_type = "text",
  parallelMap.default.autostart = TRUE,
  parallelMap.default.mode = "multicore",
  parallelMap.default.cpus = as.numeric(try(system(command="sysctl -n hw.ncpu", intern = TRUE))),
  parallelMap.default.show.info = FALSE,
  mlrMBO.debug.mode = TRUE,
  mlrMBO.show.info = FALSE
)
options(help_type = "html")

.First = function() {
  if (interactive()) {
    library(utils)
    library(BBmisc)
    suppressPackageStartupMessages(library(devtools))
    library(roxygen2)
    library(testthat)

    # on PALMA we always want BatchJobs
    if (Sys.info()["nodename"] %in% c("palma001")) {
      library(BatchJobs)
    } else {
      options(help_type = "html")
    }

    options(digits = 4)
    Sys.setenv(R_HISTSIZE = 4000)
    loadhistory("~/.Rhistory")
      catf("Happy coding!")
      catf("Working directory: %s", getwd())
    }
}

.Last = function() {
	if (interactive()) {
    try(savehistory("~/.Rhistory"))
 		cat("Goodbye!\n")
 	}
}
