#!/bin/sh
# Genera public/index.html (documento completo para Vercel) a partir de contenido.html.
# Uso: ./build.sh
set -e
cd "$(dirname "$0")"
SRC=contenido.html
OUT=public/index.html
mkdir -p public
{
  cat <<'HEAD'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="description" content="Test de Inversiones 101: descubre tu filosofía, horizonte y tipo de gestión como inversor en 3 minutos.">
<meta name="theme-color" content="#03302A">
<link rel="icon" href="/favicon.svg" type="image/svg+xml">
<meta property="og:type" content="website">
<meta property="og:site_name" content="Inversiones 101">
<meta property="og:title" content="¿Qué tipo de inversor eres? · Inversiones 101">
<meta property="og:description" content="12 situaciones del día a día para descubrir tu estilo de inversión. Herramienta para miembros de la comunidad.">
<meta property="og:url" content="https://test.inversiones101.lat/">
<meta property="og:image" content="https://test-estilo-inversion.vercel.app/og.png">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
<meta property="og:image:alt" content="¿Qué tipo de inversor eres? Test de Inversiones 101">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:image" content="https://test-estilo-inversion.vercel.app/og.png">
HEAD
  sed -n '1,/<\/style>/p' "$SRC"
  printf '</head>\n<body>\n'
  sed -n '/<\/style>/,$p' "$SRC" | tail -n +2
  printf '</body>\n</html>\n'
} > "$OUT"
echo "Listo: $OUT"
