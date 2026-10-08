# Test de estilo de inversión · Inversiones 101

Test interactivo para los miembros de la comunidad de Inversiones 101 en Skool.

- Sitio: https://test.inversiones101.lat (alterno: https://test-estilo-inversion.vercel.app)
- Comunidad: https://www.skool.com/inversiones101

## Cómo está organizado

| Archivo | Para qué sirve |
| --- | --- |
| `contenido.html` | El test completo (preguntas, estilos, diseño). **Edita aquí.** |
| `build.sh` | Genera `public/index.html` agregando los metadatos de la página. Vercel lo ejecuta en cada deploy. |
| `public/` | Lo que se publica: `index.html`, `favicon.svg`, `og.png`. |
| `og/og-image.html` | Diseño de la imagen de vista previa. Ejecuta `sh og/render.sh` para regenerar `public/og.png` (requiere Google Chrome). |
| `vercel.json` | Configuración de Vercel (carpeta `public`, sin indexar en Google). |

## Publicar cambios

Haz commit y `git push` a la rama `main`: Vercel ejecuta `build.sh` y publica automáticamente en producción. Las ramas distintas de `main` generan una vista previa privada.
