#!/bin/sh

DIRECTORY_PATH=$(cd $(dirname $0)/../;pwd)

sed -e "s|%APP_DIRECTORY%|$DIRECTORY_PATH|g" application_only_hostpath.yml.template > application_only_hostpath.yml
sed -e "s|%APP_DIRECTORY%|$DIRECTORY_PATH|g" application_volume_trick.yml.template > application_volume_trick.yml
