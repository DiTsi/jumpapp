#!/bin/bash

BASE_DIR=${PWD}
VOID_PACKAGES_GIT=https://github.com/void-linux/void-packages.git
JUMPAPP_BUILD_DIR=${BASE_DIR}/void-packages/srcpkgs/jumpapp

# Clone official Void Linux build solution
git clone ${VOID_PACKAGES_GIT} void-packages
cd ${BASE_DIR}/void-packages
./xbps-src binary-bootstrap

# Create 'jumpapp' folder and build using ./xbps-src
if [ ! -d ${JUMPAPP_BUILD_DIR} ]; then mkdir ${JUMPAPP_BUILD_DIR}; fi
cp ${BASE_DIR}/template ${JUMPAPP_BUILD_DIR}/
cd ${BASE_DIR}/void-packages && ./xbps-src pkg jumpapp
