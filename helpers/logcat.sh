#!/usr/bin/env bash

source "./core.sh"

check_dependencies "$1"

echo "Starting logcat"
adb logcat "$1":I *:S
