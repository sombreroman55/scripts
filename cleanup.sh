#!/bin/sh

# Script to clean up tilde files
find . -type f -name '*~' -exec rm -f '{}' \;
