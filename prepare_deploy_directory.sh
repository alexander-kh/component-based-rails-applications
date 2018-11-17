#!/bin/bash
trap "exit" ERR

echo "    Copy deploy files into place"
rm -rf deploy
mkdir deploy
cp -R web_container/ deploy
cp -R components deploy
rm -rf deploy/tmp/*

echo "    Fix components directory reference"
sed -iE "s/\.\.\/components/\.\/components/" deploy/Gemfile
sed -iE "s/remote: \.\.\/components/remote: \.\/components/" \
    deploy/Gemfile.lock

echo "    Uploading applications..."