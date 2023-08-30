#!/bin/bash

BASE_DIR=${PWD}
VOID_PACKAGES_GIT=https://github.com/void-linux/void-packages.git
VOID_PACKAGES_DIR=${BASE_DIR}/void-packages
JUMPAPP_BUILD_DIR=${VOID_PACKAGES_DIR}/srcpkgs/jumpapp

# git clone ${VOID_PACKAGES_GIT}
cd ${VOID_PACKAGES_DIR}
./xbps-src binary-bootstrap

if [ ! -d ${JUMPAPP_BUILD_DIR} ]; then mkdir ${JUMPAPP_BUILD_DIR}; fi
cp ${BASE_DIR}/template ${JUMPAPP_BUILD_DIR}/
cd ${VOID_PACKAGES_DIR} && ./xbps-src pkg jumpapp
