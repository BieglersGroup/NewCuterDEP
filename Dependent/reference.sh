#!/usr/bin/env bash
set -e
find . -type f -name "*.nl" -exec /home/dav0/devzone/undev/UndDev/build_ref/bin/ipopt "{}">> out_ref \;

