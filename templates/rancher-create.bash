#!/bin/env bash
if [[ "$2" == "" ]]; then
  echo "usage: $0 <prj_name> <target_dir>"
  exit 1
fi

export RANCHER_COMPOSE=/opt/store/rancher/rancher-compose-v0.12.5/rancher-compose
export RANCHER_URL=http://ip-172-30-5-16.ap-northeast-1.compute.internal:58080
# export ENV_FILE=answers.txt

# Environment API Key (-Advanced Options- Must for some ENV)
export RANCHER_ACCESS_KEY=59F52677CBDCF96DB553
export RANCHER_SECRET_KEY=AHZcpEtcPcJKD7cCtKSmMQVmBoYLeP33DDyeXws3

PROJECT_NAME=$1
TARGET_DIR=$2

pushd .
cd $TARGET_DIR
${RANCHER_COMPOSE} --project-name ${PROJECT_NAME} create
# ${RANCHER_COMPOSE} --project-name ${PROJECT_NAME} up -d
# ${RANCHER_COMPOSE} --env-file ${ENV_FILE} up -d
# --url http://server_ip:8080 --access-key <username_of_environment_api_key> --secret-key <password_of_environment_api_key>

popd
