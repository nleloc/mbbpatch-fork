#!/usr/bin/env bash
# PATCHNAME: Spoof app version
# MAXVER: 6.4.90
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Spoofing app version..."

# v6.5.x
sed -i 's|6.5.0|6.5.0.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.9x
sed -i 's|6.4.99|6.4.99.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.98|6.4.98.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.97|6.4.97.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.96|6.4.96.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.95|6.4.95.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.94|6.4.94.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.93|6.4.93.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.92|6.4.92.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.91|6.4.91.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.90|6.4.90.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.8x
sed -i 's|6.4.89|6.4.89.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.88|6.4.88.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.87|6.4.87.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.86|6.4.86.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.85|6.4.85.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.84|6.4.84.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.83|6.4.83.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.82|6.4.82.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.81|6.4.81.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.80|6.4.80.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.7x
sed -i 's|6.4.79|6.4.79.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.78|6.4.78.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.77|6.4.77.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.75|6.4.75.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.74|6.4.74.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.73|6.4.73.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.72|6.4.72.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.71|6.4.71.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.70|6.4.70.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.6x
sed -i 's|6.4.69|6.4.69.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.68|6.4.68.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.67|6.4.67.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.66|6.4.66.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.65|6.4.65.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.64|6.4.64.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.63|6.4.63.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.62|6.4.62.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.61|6.4.61.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.60|6.4.60.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.5x
sed -i 's|6.4.59|6.4.59.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.58|6.4.58.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.57|6.4.57.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.56|6.4.56.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.55|6.4.55.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.54|6.4.54.mbcp|g' 'mbapk/mbapk_unpakced/AndroidManifest.xml'
sed -i 's|6.4.53|6.4.53.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.52|6.4.52.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.51|6.4.51.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.50|6.4.50.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.4x (no older than v6.4.47 due to the open source codebase started with v6.4.47)
sed -i 's|6.4.49|6.4.49.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.48|6.4.48.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.47|6.4.47.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

sed -i 's|727|2000|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

sed -i 's|v6.4.66|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|v6.4.65|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|v6.4.64|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|692|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|691|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|689|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
