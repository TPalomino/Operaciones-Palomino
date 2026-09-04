-- OPERACIONES PALOMINO - SEGURIDAD PARA PRUEBA INICIAL
-- Ejecutar UNA VEZ en Supabase SQL Editor.
-- Permite acceso solo a usuarios autenticados.
-- Más adelante se pueden restringir permisos por rol.

do $$ declare t text; begin
  foreach t in array array['perfiles','conductores','unidades','rutas','servicios','tarifas','vencimientos','programaciones','historial_programacion','asistencias','incidencias','paradas','auditoria']
  loop
    execute format('alter table %I enable row level security', t);
    execute format('drop policy if exists "operaciones_authenticated_all" on %I', t);
    execute format('create policy "operaciones_authenticated_all" on %I for all to authenticated using (true) with check (true)', t);
  end loop;
end $$;
