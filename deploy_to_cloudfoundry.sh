#!/bin/bash
trap "exit" ERR

APP_NAME="alex-sportsball"

echo "-----> Deploying to Cloud Foundry"
./prepare_deploy_directory.sh

cd deploy
cf push $APP_NAME
cd ..