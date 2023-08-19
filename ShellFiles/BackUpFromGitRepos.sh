#!/bin/bash
# Ignored Repositories: rochus-keller/LeanQt.git
CURRENT_DIR=$(pwd)
echo "Checking out git repositories in GitRepos.json"
for REPO_LOC in $(cat $CURRENT_DIR/GitRepos.json)
do
    cd ~/Project/Checkout
    echo $REPO_LOC
    git clone $REPO_LOC
    FOLDER_LOC=$(basename -s .git $REPO_LOC)
    cd $FOLDER_LOC
    git pull
done

echo "Checking out svn repositories in SvnReposDirectories.list"
for REPO_LOC_DIR in $(cat $CURRENT_DIR/SvnReposDirectories.csv)
do
    cd ~/Project/Checkout
    REPO_LOC=$(echo $REPO_LOC_DIR | awk -F "," '{print($1)}')
    echo $REPO_LOC
    FOLDER_LOC=$(echo $REPO_LOC_DIR | awk -F "," '{print($2)}')
    svn checkout $REPO_LOC $FOLDER_LOC
    cd $FOLDER_LOC
    svn up
done

echo ""
echo "+ Complete"
