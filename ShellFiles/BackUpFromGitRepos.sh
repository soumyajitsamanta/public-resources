#!/bin/bash
# Ignored Repositories: rochus-keller/LeanQt.git
GITHUB_DOMAIN=https://github.com
echo "Checking out required repositories"
for REPO_LOC in $GITHUB_DOMAIN/soumyajitsamanta/shastras $GITHUB_DOMAIN/bvschaik/julius $GITHUB_DOMAIN/Kong/insomnia $GITHUB_DOMAIN/SchemaStore/schemastore
do
    cd ~/Project/Checkout && git clone $REPO_LOC.git
    FOLDER_LOC=$(echo $REPO_LOC | sed "s/^.*\///")
    cd $FOLDER_LOC
    git pull
    cd ..
done
echo "+ Complete"
