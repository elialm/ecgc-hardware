#!/bin/sh

# Remove old fab.zip
if [ -f fab.zip ]; then
    rm fab.zip
fi

# Use script in fab directory to zip all fabrication files
zip fab.zip ./CartGen4-*.gbr ./CartGen4-*.drl
