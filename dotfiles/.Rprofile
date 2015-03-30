# Rprofile file of Jakob Bossek

# set op
options(
  repos = c(CRAN = "http://cran.uni-muenster.de"),
  help_type = "text",
  mlrMBO.debug.mode = TRUE,
  mlrMBO.show.info = FALSE
)

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

    n.cpus = 1L
    # determine number of cores on OS X
    if (isDarwin()) {
      n.cpus = as.numeric(try(system(command="sysctl -n hw.ncpu", intern = TRUE)))
    }

    # setup parallelMap
    options(
      parallelMap.default.autostart = TRUE,
      parallelMap.default.mode = "multicore",
      parallelMap.default.cpus = n.cpus,
      parallelMap.default.show.info = FALSE,
      parallelMap.default.logging = TRUE
    )

    # handle history
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
