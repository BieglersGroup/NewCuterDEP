#!/usr/bin/env bash
set -e
find . -type f -name "*.nl" -exec /home/dav0/devzone/undev/UndDev/new_resto/bin/ipopt "{}">> out_new \;

