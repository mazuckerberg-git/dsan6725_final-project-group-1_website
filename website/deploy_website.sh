#!/bin/bash
# chmod +x ./website/deploy_website.sh
# ./website/deploy_website.sh

rm -f docs/*

# Render files from the "website" folder to the "docs" folder

quarto render website/index.qmd

quarto render website/1_introduction.qmd
quarto render website/2_data.qmd
quarto render website/3_rag.qmd
quarto render website/4_agents.qmd
quarto render website/5_model.qmd
quarto render website/6_tools.qmd
quarto render website/7_evaluations.qmd
quarto render website/8_AI_considerations.qmd
quarto render website/9_findings.qmd
quarto render website/10_conclusion.qmd
quarto render website/11_video.qmd

quarto render website/index.qmd

quarto render website

# Add and commit changes
git add docs