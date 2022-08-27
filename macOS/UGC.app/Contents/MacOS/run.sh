#!/bin/bash

# Check for update

HOMEBREW_NO_INSTALL_CLEANUP=y brew upgrade -q --cask eloston-chromium

# Run UGC

CONF_FILE="${HOME}/.config/chromium/chromium-flags.conf"
if [ -f "$CONF_FILE" ]; then
    CHROMIUM_FLAGS=$(cat "${HOME}/.config/chromium/chromium-flags.conf" | grep '^\(#.*\)\?$' -v | xargs)
else
    CHROMIUM_FLAGS=
fi

/Applications/Chromium.app/Contents/MacOS/Chromium --args $CHROMIUM_FLAGS
    
