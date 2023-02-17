#!/bin/sh

echo "Add files and do local commit"
git add .
git commit -am "Welcome to Terraform-Certification"

echo "Pushing to Github Repository"
git push
