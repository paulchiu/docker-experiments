#!/bin/bash

# Back up environment settings
DEB_FRONT_SET_OLD=${DEBIAN_FRONTEND}
TERM=${TERM}

# Set environmental variables
export DEBIAN_FRONTEND="noninteractive"
export TERM="linux"
export LANG="en_US.UTF-8"
locale-gen en_US.UTF-8
dpkg-reconfigure locales

# Install components
SRC=$(dirname "$0")
source "${SRC}/install.wget.sh"
source "${SRC}/install.salt.minion.sh"

# Restore environment settings
export DEBIAN_FRONTEND="${DEB_FRONT_SET_OLD}"
export TERM="${TERM}"
