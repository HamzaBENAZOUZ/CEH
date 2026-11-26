#!/usr/bin/env bash
# Change le numéro de version du site partout où il apparaît : APP_VERSION (js/app.js), CEH_BUILD et les « ?v= »
# (index.html), CACHE du service worker (sw.js). Usage : bash tools/bump-version.sh 3.10 31
# (3.10 = versionName de l'APK, 31 = versionCode → cache ceh-site-v31). La publication de apk/version.json
# (publish.sh) annonce ensuite la nouvelle version aux pages restées ouvertes (bandeau « Recharger »).
set -euo pipefail
cd "$(dirname "$0")/.."
VN="${1:?versionName, ex. 3.10}"; VC="${2:?versionCode, ex. 31}"
sed -i -E "s/^const APP_VERSION = \"[^\"]+\";/const APP_VERSION = \"$VN\";/" js/app.js
sed -i -E "s/window\.CEH_BUILD = \"[^\"]+\";/window.CEH_BUILD = \"$VN\";/; s/\?v=[0-9.]+\"/?v=$VN\"/g" index.html
sed -i -E "s/^const CACHE = \"ceh-site-v[0-9]+\";/const CACHE = \"ceh-site-v$VC\";/" sw.js
grep -n "APP_VERSION = " js/app.js | head -1; grep -n "CEH_BUILD = \|?v=" index.html; grep -n "^const CACHE" sw.js
