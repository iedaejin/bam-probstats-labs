#!/usr/bin/env bash
# Install the R packages the labs use (Codespaces).
set -euo pipefail
Rscript --vanilla -e 'source("install_course_packages.R")'
pandoc --version | head -1 || echo "Pandoc not found: R Markdown needs it"
