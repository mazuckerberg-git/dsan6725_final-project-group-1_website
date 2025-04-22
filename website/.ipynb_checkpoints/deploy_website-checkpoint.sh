#!/bin/bash
# chmod +x ./website_code/deploy_website.sh
# ./website_code/deploy_website.sh

rm -f ../docs/*.html

# Render files from the "website" folder to the "docs" folder
quarto render website_code/1_introduction.qmd

quarto render website_code/0_index.qmd

quarto render website_code

# Add and commit changes
git add docs