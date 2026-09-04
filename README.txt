OPERACIONES WEB - TURISMO INTERNACIONAL PALOMINO

PASOS RAPIDOS PARA DEJARLO EN INTERNET

1. En Supabase SQL Editor, ejecutar SQL_SEGURIDAD_PRUEBA.sql.
2. Abrir config.js y pegar:
   - SUPABASE_URL: URL del proyecto (Data API / Project URL sin /rest/v1)
   - SUPABASE_PUBLISHABLE_KEY: Publishable key
3. Probar index.html localmente con un servidor web o publicar directamente en Vercel.
4. Para Vercel:
   - Crear cuenta en vercel.com
   - Subir esta carpeta a GitHub o usar Vercel CLI.
   - Publicar como sitio estático.

IMPORTANTE:
- No usar Secret Key ni service_role en config.js.
- La Publishable key está diseñada para aplicaciones cliente, pero la seguridad real la aplican RLS y las políticas.
- La política incluida es para una prueba operativa rápida: cualquier usuario autenticado puede operar las tablas.
- Antes de producción definitiva, se recomienda separar permisos por rol (Administrador / Supervisor).

FUNCIONES INCLUIDAS:
- Login con Supabase Authentication
- Dashboard
- Programación Lima / Provincias / Rutas Cortas
- Asistencia
- Conductores
- Unidades
- Incidencias
- Inicio y fin de tiempos de parada por Operaciones
- Auditoría

