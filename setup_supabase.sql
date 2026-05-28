-- ================================================
-- TABLAS FINANZAS PERSONALES
-- Copia y pega esto en el SQL Editor de Supabase
-- ================================================

create table if not exists sueldos (
  id bigint primary key,
  nombre text, emp text, monto bigint, fecha text, percibido boolean default false
);
create table if not exists honorarios (
  id bigint primary key,
  cliente text, concepto text, monto bigint, fecha text, boleta text, percibido boolean default false
);
create table if not exists otros_ingresos (
  id bigint primary key,
  nombre text, tipo text, monto bigint, fecha text, percibido boolean default false
);
create table if not exists obligaciones (
  id bigint primary key,
  nombre text, cat text, monto bigint, fecha text, pagado boolean default false,
  rec text, ambito text, cuotas int default 0
);
create table if not exists reservas_d1 (
  id bigint primary key,
  hues text, entrada text, salida text, noches int, plat text, est text, monto bigint
);
create table if not exists gastos_d1 (
  id bigint primary key,
  fecha text, nombre text, cat text, monto bigint
);
create table if not exists reservas_d2 (
  id bigint primary key,
  hues text, entrada text, salida text, noches int, plat text, est text, monto bigint
);
create table if not exists gastos_d2 (
  id bigint primary key,
  fecha text, nombre text, cat text, doc text, monto bigint
);
create table if not exists ahorros (
  id bigint primary key,
  nom text, tipo text, monto bigint, actual bigint
);
create table if not exists presupuesto (
  id bigint primary key,
  nom text, pres bigint, act bigint, color text
);
create table if not exists hitos (
  id bigint primary key,
  nom text, fecha text, tipo text, detalle text
);

-- Seguridad y acceso
alter table sueldos enable row level security;
alter table honorarios enable row level security;
alter table otros_ingresos enable row level security;
alter table obligaciones enable row level security;
alter table reservas_d1 enable row level security;
alter table gastos_d1 enable row level security;
alter table reservas_d2 enable row level security;
alter table gastos_d2 enable row level security;
alter table ahorros enable row level security;
alter table presupuesto enable row level security;
alter table hitos enable row level security;

-- Políticas de acceso con clave publicable
create policy "acceso" on sueldos for all using (true) with check (true);
create policy "acceso" on honorarios for all using (true) with check (true);
create policy "acceso" on otros_ingresos for all using (true) with check (true);
create policy "acceso" on obligaciones for all using (true) with check (true);
create policy "acceso" on reservas_d1 for all using (true) with check (true);
create policy "acceso" on gastos_d1 for all using (true) with check (true);
create policy "acceso" on reservas_d2 for all using (true) with check (true);
create policy "acceso" on gastos_d2 for all using (true) with check (true);
create policy "acceso" on ahorros for all using (true) with check (true);
create policy "acceso" on presupuesto for all using (true) with check (true);
create policy "acceso" on hitos for all using (true) with check (true);
