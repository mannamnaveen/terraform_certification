#!/bin/sh

echo "Add files and do local commit"
git add .

echo "Commit the files"
git commit -am "Terraform-Certification"

echo "Pushing to Github Repository"
git push -u origin master
