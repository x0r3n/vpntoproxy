#!/bin/bash

set -e

# Parent script for updating OpenVPN configs

# If the script is called from elsewhere
cd "${0%/*}"

# Finds all provider specific update scripts and calls them
find . -mindepth 2 -maxdepth 2 -name 'update.sh' -exec /bin/bash {} \;
