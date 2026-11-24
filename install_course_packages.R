# Install every R package used in Probability and Statistics (BAM, IE University).
# Run once:  source("install_course_packages.R")
# Works on your laptop, Posit Cloud and Codespaces. Re-running it only installs what is missing.

course <- c(
  # documents and labs
  "rmarkdown", "knitr", "learnr", "shiny",
  # data used in the labs (MASS ships with R) and an optional extra for Levene's test
  "MASS", "car"
)

install_missing <- function(pkgs) {
  missing <- pkgs[!vapply(pkgs, requireNamespace, logical(1), quietly = TRUE)]
  if (length(missing)) {
    message("Installing: ", paste(missing, collapse = ", "))
    install.packages(missing, repos = "https://cloud.r-project.org")
  }
  still <- pkgs[!vapply(pkgs, requireNamespace, logical(1), quietly = TRUE)]
  if (length(still)) warning("Could not install: ", paste(still, collapse = ", ")) else
    message("All ", length(pkgs), " packages are ready.")
}

install_missing(course)
