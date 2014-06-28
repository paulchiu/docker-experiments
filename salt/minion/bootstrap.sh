#!/usr/bin/env bash

# Reference containing directory
SRC=$(dirname "$0")

# Set up
source "${SRC}/install/bootstrap.setup.sh"

# Install components
source "${SRC}/install/wget.sh"
source "${SRC}/install/salt.minion.sh"

# Tear down
source "${SRC}/install/bootstrap.teardown.sh"
