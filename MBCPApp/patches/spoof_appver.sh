#!/usr/bin/env bash
# PATCHNAME: Spoof app version
# MAXVER:
# MINVER: 6.4.47
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

# Version flag
# [old] flag is used for discontinued version from MB
# [legacy] flag is used for older app version, but not discontinued from MB
# [mbcp] is the most recent active version.

info "Spoofing app version..."

# v6.5.1x
sed -i 's|6.5.19|6.5.19.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.18|6.5.18.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.17|6.5.17.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.16|6.5.16.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.15|6.5.15.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.14|6.5.14.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.13|6.5.13.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.12|6.5.12.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.11|6.5.11.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.10|6.5.10.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.5.x
sed -i 's|6.5.9|6.5.9.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.8|6.5.8.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.7|6.5.7.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.6|6.5.6.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.5|6.5.5.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.4|6.5.4.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.3|6.5.3.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.2|6.5.2.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.1|6.5.1.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.5.0|6.5.0.mbcp|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.9x
sed -i 's|6.4.99|6.4.99.legacy|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.98|6.4.98.legacy|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.97|6.4.97.legacy|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.96|6.4.96.legacy|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.95|6.4.95.legacy|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.94|6.4.94.legacy|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.93|6.4.93.legacy|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.92|6.4.92.legacy|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.91|6.4.91.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.90|6.4.90.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.8x
sed -i 's|6.4.89|6.4.89.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.88|6.4.88.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.87|6.4.87.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.86|6.4.86.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.85|6.4.85.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.84|6.4.84.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.83|6.4.83.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.82|6.4.82.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.81|6.4.81.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.80|6.4.80.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.7x
sed -i 's|6.4.79|6.4.79.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.78|6.4.78.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.77|6.4.77.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.75|6.4.75.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.74|6.4.74.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.73|6.4.73.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.72|6.4.72.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.71|6.4.71.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.70|6.4.70.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.6x
sed -i 's|6.4.69|6.4.69.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.68|6.4.68.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.67|6.4.67.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.66|6.4.66.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.65|6.4.65.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.64|6.4.64.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.63|6.4.63.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.62|6.4.62.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.61|6.4.61.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.60|6.4.60.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.5x
sed -i 's|6.4.59|6.4.59.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.58|6.4.58.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.57|6.4.57.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.56|6.4.56.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.55|6.4.55.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.54|6.4.54.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.53|6.4.53.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.52|6.4.52.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.51|6.4.51.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.50|6.4.50.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# v6.4.4x (no older than v6.4.47 due to the open source codebase started with v6.4.47)
sed -i 's|6.4.49|6.4.49.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.48|6.4.48.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|6.4.47|6.4.47.old|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

# versionCode spoofing to prevent in-app forced update dialog, and play store / aurora store from replacing with original app :>
sed -i 's|704|1000|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|712|1001|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|727|2000|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|729|2000|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|730|2001|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|731|2002|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|733|2003|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|734|2004|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|735|2005|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|736|2006|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|737|2007|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|738|2008|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|739|2009|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|740|2010|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|741|2011|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|742|2012|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|743|2013|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|744|2014|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|745|2015|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|746|2016|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|747|2017|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|749|2018|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|750|2019|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|751|2020|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|752|2021|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|753|2022|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|754|2023|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|755|2024|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|756|2025|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|757|2026|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|758|2027|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|760|2028|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|761|2029|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|762|2030|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

sed -i 's|v6.4.66|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|v6.4.65|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|v6.4.64|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|692|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|691|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|689|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
