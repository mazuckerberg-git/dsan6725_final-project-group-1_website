#!/bin/bash
# chmod +x ./website/deploy_website.sh
# ./website/deploy_website.sh

rm -f ../docs/*.html

# Render files from the "website" folder to the "docs" folder
quarto render website/1_introduction.qmd

quarto render website/0_index.qmd

quarto render website

# Add and commit changes
git add docs