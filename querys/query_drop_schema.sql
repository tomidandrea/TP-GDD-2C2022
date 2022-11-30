USE [GD2C2022]
GO

BEGIN TRANSACTION

	--Drop migracion
	DROP TABLE NOT_FOUND.VENTA_PRODUCTO,NOT_FOUND.VENTA_CUPON, NOT_FOUND.CUPON, NOT_FOUND.VENTA_DESCUENTO, NOT_FOUND.VENTA, NOT_FOUND.MEDIO_PAGO,
	NOT_FOUND.TIPO_DESCUENTO, NOT_FOUND.CANAL, NOT_FOUND.CLIENTE, NOT_FOUND.COMPRA_PRODUCTO,
	NOT_FOUND.PRODUCTO_VARIANTE, NOT_FOUND.VARIANTE, NOT_FOUND.TIPO_VARIANTE, NOT_FOUND.PRODUCTO, NOT_FOUND.CATEGORIA, 
	NOT_FOUND.MARCA, NOT_FOUND.MATERIAL, NOT_FOUND.DESCUENTO_COMPRA, NOT_FOUND.COMPRA, NOT_FOUND.PROVEEDOR,
	NOT_FOUND.ENVIO_LOCALIDAD, NOT_FOUND.LOCALIDAD, NOT_FOUND.PROVINCIA, NOT_FOUND.MEDIO_ENVIO

	DROP PROCEDURE NOT_FOUND.migrar_categorias
	DROP PROCEDURE NOT_FOUND.migrar_marcas
	DROP PROCEDURE NOT_FOUND.migrar_materiales
	DROP PROCEDURE NOT_FOUND.migrar_productos
	DROP PROCEDURE NOT_FOUND.migrar_tipos_variante
	DROP PROCEDURE NOT_FOUND.migrar_variantes
	DROP PROCEDURE NOT_FOUND.migrar_productos_variantes
	DROP PROCEDURE NOT_FOUND.migrar_provincias
	DROP PROCEDURE NOT_FOUND.migrar_localidad
	DROP PROCEDURE NOT_FOUND.migrar_clientes
	DROP PROCEDURE NOT_FOUND.migrar_proveedores
	DROP PROCEDURE NOT_FOUND.migrar_medios_pago
	DROP PROCEDURE NOT_FOUND.migrar_compras
	DROP PROCEDURE NOT_FOUND.migrar_canales
	DROP PROCEDURE NOT_FOUND.migrar_medios_envio
	DROP PROCEDURE NOT_FOUND.migrar_compra_descuento
	DROP PROCEDURE NOT_FOUND.migrar_compra_producto
	DROP PROCEDURE NOT_FOUND.migrar_ventas
	DROP PROCEDURE NOT_FOUND.migrar_venta_producto
	DROP PROCEDURE NOT_FOUND.migrar_tipos_descuento
	DROP PROCEDURE NOT_FOUND.migrar_cupones
	DROP PROCEDURE NOT_FOUND.migrar_venta_cupon
	DROP PROCEDURE NOT_FOUND.migrar_venta_descuento
	DROP PROCEDURE NOT_FOUND.migrar_envio_localidad

	DROP PROCEDURE NOT_FOUND.ejecutar_procedures

	--Drop modelo BI
	DROP TABLE
	NOT_FOUND.BI_HECHOS_COMPRAS, NOT_FOUND.BI_HECHOS_VENTAS, NOT_FOUND.BI_HECHOS_DESCUENTOS, NOT_FOUND.BI_HECHOS_PRODUCTOS_VENDIDOS, 
	NOT_FOUND.BI_DIMENSION_CANAL_DE_VENTA, NOT_FOUND.BI_DIMENSION_CATEGORIA, NOT_FOUND.BI_DIMENSION_MEDIO_DE_PAGO,
	NOT_FOUND.BI_DIMENSION_PRODUCTO, NOT_FOUND.BI_DIMENSION_PROVEEDOR, NOT_FOUND.BI_DIMENSION_PROVINCIA, NOT_FOUND.BI_DIMENSION_RANGO_ETARIO,
	NOT_FOUND.BI_DIMENSION_TIEMPO, NOT_FOUND.BI_DIMENSION_TIPO_DE_DESCUENTO, NOT_FOUND.BI_DIMENSION_TIPO_DE_ENVIO

	DROP PROCEDURE NOT_FOUND.BI_migrar_canales
	DROP PROCEDURE NOT_FOUND.BI_migrar_tiempos
	DROP PROCEDURE NOT_FOUND.BI_migrar_categorias
	DROP PROCEDURE NOT_FOUND.BI_migrar_rangos_etarios
	DROP PROCEDURE NOT_FOUND.BI_migrar_productos
	DROP PROCEDURE NOT_FOUND.BI_migrar_provincias
	DROP PROCEDURE NOT_FOUND.BI_migrar_medios_de_pago
	DROP PROCEDURE NOT_FOUND.BI_migrar_tipos_de_envio
	DROP PROCEDURE NOT_FOUND.BI_migrar_tipos_de_descuento
	DROP PROCEDURE NOT_FOUND.BI_migrar_proveedores
	DROP PROCEDURE NOT_FOUND.BI_migrar_hechos_ventas
	DROP PROCEDURE NOT_FOUND.BI_migrar_hechos_descuentos
	DROP PROCEDURE NOT_FOUND.BI_migrar_hechos_compras
	DROP PROCEDURE NOT_FOUND.BI_migrar_hechos_productos_vendidos

	DROP FUNCTION NOT_FOUND.rango_etario

	DROP VIEW NOT_FOUND.BI_3_PRODUCTOS_CON_MAYOR_REPOSICION_POR_MES
	DROP VIEW NOT_FOUND.BI_AUMENTO_PROMEDIO_DE_PRECIOS_ANUAL_DE_PROVEEDORES
	DROP VIEW NOT_FOUND.BI_CATEGORIAS_DE_PROD_MAS_VEND_POR_RANGO_ETARIO_Y_MES
	DROP VIEW NOT_FOUND.BI_GANANCIAS_MENSUALES_POR_CANAL
	DROP VIEW NOT_FOUND.BI_IMPORTE_TOTAL_POR_TIPOS_DE_DESCUENTO
	DROP VIEW NOT_FOUND.BI_INGRESOS_MENSUALES_POR_MEDIOS_DE_PAGO
	DROP VIEW NOT_FOUND.BI_PORCENTAJE_DE_ENVIOS_POR_PROVINCIA
	DROP VIEW NOT_FOUND.BI_PRODUCTOS_CON_MAYOR_RENTABILIDAD_ANUAL
	DROP VIEW NOT_FOUND.BI_VALOR_PROMEDIO_ANUAL_DE_ENVIO_POR_PROVINCIA_POR_TIPO_DE_ENVIO

	--Drop schema
	DROP SCHEMA NOT_FOUND

COMMIT TRANSACTION
GO