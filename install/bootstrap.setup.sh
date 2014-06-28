#!/usr/bin/env bash

# Bootstrap common setup code; for teardown, see boostrap.teardown.sh

# Back up environment settings
DEB_FRONT_SET_OLD=${DEBIAN_FRONTEND}
TERM_OLD=${TERM}

# Set environmental variables
export DEBIAN_FRONTEND="noninteractive"
export TERM="linux"
export LANG="en_US.UTF-8"
locale-gen en_US.UTF-8
dpkg-reconfigure locales
