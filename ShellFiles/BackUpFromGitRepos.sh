#!/bin/bash
# Ignored Repositories: rochus-keller/LeanQt.git
GITHUB_DOMAIN=https://github.com
echo "Checking out git repositories in GitRepos.json"
# for REPO_LOC in JabRef/jabref soumyajitsamanta/shastras bvschaik/julius Kong/insomnia SchemaStore/schemastore ioquake/ioq3 apache/jmeter
for REPO_LOC in $(cat GitRepos.json)
do
    echo $REPO_LOC
    cd ~/Project/Checkout
    git clone $REPO_LOC
    FOLDER_LOC=$(echo $REPO_LOC | sed "s/\.git//" | sed "s/^.*\///")
    cd $FOLDER_LOC
        git pull
    cd ..
done
echo "+ Complete"
