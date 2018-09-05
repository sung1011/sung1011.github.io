#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

ls | grep -v hugo|grep -v deploy.sh|grep -v README.md | xargs rm -r
cd hugo
rm -r docs
# Build the project.
hugo -t slim # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cp -r docs/* ../

# Add changes to git.
cd ../
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
