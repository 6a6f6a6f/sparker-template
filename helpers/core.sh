#!/usr/bin/env bash

function check_dependencies {
    if [ -z "$1" ]; then
        echo "You must provide a valid package ID!"
        exit 1
    fi

    if [ ! command -v "adb" ] &>/dev/null; then
        echo "You must have Android SDK and platform-tools in your \$PATH!"
        exit 1
    fi
}
