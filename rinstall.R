# Check if there is my own R package lib
if (!dir.exists("~/.R/library")) {
  dir.create("~/.R/library", recursive = TRUE)
}

# Essential packages
pkgs = c(
  "tidyverse",
  "devtools",
  "BBmisc",
  "testthat",
  "mlr",
  "igraph",
  "remotes"
)
install.packages(pkgs, dep = TRUE)

# rt
remotes::install_github("rdatsci/rt")
# Note: see https://github.com/rdatsci/rt
# -> eventually need to add a line to .bashrc or .zshrc

# My GitHub packages
repos = paste0("jakobbossek/",
  c(
    "ecr2",
    "grapherator",
    "mcMST",
    "netgen",
    "salesperson",
    "rpn",
    "experimentR",
    "dynvrp",
    "smoof"
  ))

for (repo in repos) {
  devtools::install.github(repo)
}
