#! /bin/sh -eu

git submodule update --init


cd eglibrary/
repo_sync() {
    echo "########################################"
    echo "## sync $1 / $2"
    echo "########################################"
    cd $1

    git clean -f
    git fetch
    git branch -d $2
    git checkout -f $2
    git pull origin $2
    git branch
    cd ..
}

repo_sync "geo-utils" "develop"
repo_sync "json-wrapper" "develop"
repo_sync "simple-logger" "develop"
repo_sync "simple-serialize" "develop"
repo_sync "simple-utils" "develop"
repo_sync "junit-support" "develop"

repo_sync "gradle-plugin-utils" "develop"
repo_sync "plugin-ci-support" "develop"
repo_sync "plugin-android-dbgenerator" "develop"
repo_sync "plugin-android-mipmap" "develop"
repo_sync "plugin-firebase-remoteconfig" "develop"

cd ../
