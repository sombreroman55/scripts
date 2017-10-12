#!/bin/sh

# Script to cleanup tilde files
find . -type f -name '*~' -exec rm -f '{}' \;
