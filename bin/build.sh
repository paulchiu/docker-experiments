#!/usr/bin/env bash

# Vars
SCRIPT="build.sh"
SRC=$(dirname "$0")
INSTALL_SCRIPTS_DIR="install"

# Check commands
if [[ -z "${1}" ]]
then
    echo "usage: ${SCRIPT} [tag]"
    echo ""
    echo "This script is a wrapper for \"docker build -t\", the purpose being enabling"
    echo "code-reuse by copying shared directories that docker files can be built on."
    exit 1
fi

# Params
BUILD_TAG="${1}"

# Copy shared resources for building; this is needed as docker cannot reference
# files outside of this directory with its ADD command, due to reasons specified
# by http://kimh.github.io/blog/en/docker/gotchas-in-writing-dockerfile-en/#add_and_understanding_context_in_dockerfile
echo ""
echo "Copying install scripts ..."
cp -r "${SRC}/../${INSTALL_SCRIPTS_DIR}" .

# Build
docker build -t ""${BUILD_TAG}"" .

# Remove shared resources
echo ""
echo "Removing install scripts ..."
rm -rf "${INSTALL_SCRIPTS_DIR}"
