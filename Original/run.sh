#!/usr/bin/env bash
set -e
find ../ -type f -name "*.nl" -exec /home/dav0/devzone/undev/testbuilds/tresto4_1/bin/ipopt "{}" \;

