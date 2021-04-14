#!/usr/bin/env bash

source "./core.sh"

check_dependencies "$1"
frida -U -f "$1" -l _agent.js --no-pause
