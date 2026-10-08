#!/bin/sh
# Renderiza og/og-image.html a public/og.png (1200x630) con Chrome sin interfaz. Solo se usa en tu Mac.
set -e
cd "$(dirname "$0")/.."
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 \
  --window-size=1200,630 --virtual-time-budget=6000 \
  --screenshot="$PWD/public/og.png" "file://$PWD/og/og-image.html" 2>/dev/null
echo "Listo: public/og.png"
