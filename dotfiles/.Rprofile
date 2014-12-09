# Rprofile file of Jakob Bossek

# set CRAN mirror manually (avoid selection of mirror for each session)
local({r <- getOption("repos"); r["CRAN"] <- "http://cran.r-mirror.de/"; options(repos = r)})

#.libPaths("~/Library/R/3.0/library")

# set op
options(
  help_type = "text",
  parallelMap.default.autostart = TRUE,
  parallelMap.default.mode = "multicore",
  parallelMap.default.cpus = as.numeric(try(system(command="sysctl -n hw.ncpu", intern = TRUE))),
  parallelMap.default.show.info = FALSE,
  mlrMBO.debug.mode = TRUE,
  mlrMBO.show.info = FALSE
)
# options(help_type = "html")

.First <- function() {
  if (interactive()) {
    cat("Happy coding!\n")
  }
}

.Last <- function() {
	if (interactive()) {
 		cat("Goodbye!\n")
 	}
}
