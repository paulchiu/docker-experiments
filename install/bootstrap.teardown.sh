#!/usr/bin/env bash

# Bootstrap common teardown code; this reverses boostrap.startup.sh where appropriate

# Restore environment settings
export DEBIAN_FRONTEND="${DEB_FRONT_SET_OLD}"
export TERM="${TERM_OLD}"
