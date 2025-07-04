#!/bin/bash

# List of beginner repos
repos=(
  "cdi-lms-educators"
)
  echo "📘 Rendering book for: $repo"

  # Build GitBook into book folder
  mkdir -p docs
  Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook", output_dir = "docs")'

  # # Build PDF into pdf folder
  # mkdir -p pdf
  # Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::pdf_book", output_dir = "pdf")'

  # # Clean up intermediate files in pdf/
  # rm -f pdf/*.md pdf/*.tex
  # rm -rf pdf/_bookdown_files/
  # rm -f ./*.rds

# echo "✅ All books rendered and cleaned (GitBook + PDF)."