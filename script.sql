	ALTER TABLE public.clientes
   	ALTER COLUMN cliente_active SET DEFAULT true;
	ALTER TABLE public.marcas
   	ALTER COLUMN marca_active SET DEFAULT true;
   	ALTER TABLE public.productos
   	ALTER COLUMN prod_active SET DEFAULT true;
   	ALTER TABLE public.proveedors
	ALTER COLUMN prov_active SET DEFAULT true;
	ALTER TABLE public.seccions
	ALTER COLUMN seccion_active SET DEFAULT true;
	ALTER TABLE public.tipo_meds
   	ALTER COLUMN tipo_active SET DEFAULT true;
   	
