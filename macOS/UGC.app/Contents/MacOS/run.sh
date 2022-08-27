#!/bin/bash

# Check for update

HOMEBREW_NO_INSTALL_CLEANUP=y brew upgrade -q --cask eloston-chromium

# Run UGC

# --cipher-suite-blacklist - Disable insecure cipher with SSL
# --js-flags=--noexpose_wasm - Disable WebAssembly
# --fingerprinting-canvas-image-data-noise - Implements fingerprinting deception for Canvas image data retrieved via JS APIs
# --fingerprinting-canvas-measuretext-noise - Same as above but for texts
# --fingerprinting-client-rects-noise - Same as above but for shapes
# --http-accept-header - Changes the default value of the Accept HTTP header sent with HTTP requests (for Tor-like configuration)
# --disable-grease-tls - Disables GREASE for TLS (for Tor-like configuration)
# --popups-to-tabs - Open popups in a new tab
# --referrer-directive=minimal - Remove cross origin referrers (DISABLED). Use uMatrix instead
# SetIpv6ProbeFalse - Prioritise IPv4 addresses over IPv6 addresses

/Applications/Chromium.app/Contents/MacOS/Chromium --args \
    --cipher-suite-blacklist=0x000a,0x009c,0x009d,0x002f,0x0035 \
    --js-flags=--noexpose_wasm \
    --fingerprinting-canvas-image-data-noise \
    --fingerprinting-canvas-measuretext-noise \
    --fingerprinting-client-rects-noise \
    --http-accept-header \
    --disable-grease-tls \
    --popups-to-tabs \
    --enable-features=SetIpv6ProbeFalse
    
