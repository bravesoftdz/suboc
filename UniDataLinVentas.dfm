object dmLinVentas: TdmLinVentas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object zqryLinVentas: TZQuery
    Connection = dmConn.ZconnGlent
    SQL.Strings = (
      'select F.NUMFAC as numfac,'
      '        L.LINEA AS LINEA,'
      '       f.serie as serie,'
      '       '#39'Factura Caja'#39' as Tipo,'
      '       l.codigo as codigo,'
      '       l.NOMBRE as nombre,'
      '      CAST(l.CANTIDAD as decimal(8,3)) as cantidad,'
      '      CAST(l.NETO as decimal(8,3)) as precio_unitario,'
      '      CAST(l.IMP_IVA as decimal(8,3)) as imp_iva,'
      '      CAST(l.PRECIO as decimal(8,3)) as total,'
      '      f.fecha,'
      '       case true'
      '           WHEN CODIGO like '#39'00-01%'#39' THEN '#39'Zapatos'#39
      #9#9#9#9#9' WHEN CODIGO like '#39'28-00%'#39' THEN '#39'Productos Limpieza'#39
      '           WHEN CODIGO like '#39'28-001%'#39' THEN '#39'Hormas'#39
      
        '           WHEN (CODIGO like '#39'CA%'#39'  OR CODIGO LIKE '#39'100%'#39' or cod' +
        'igo like '#39'200%'#39') THEN '#39'Calcetines'#39
      
        '           WHEN (CODIGO LIKE '#39'CI%'#39' or codigo like '#39'27-01%'#39') THEN' +
        ' '#39'Cinturones'#39
      
        '           WHEN (CODIGO LIKE '#39'CO%'#39' OR CODIGO LIKE '#39'21-00%'#39') THEN' +
        ' '#39'Cordones'#39
      '           WHEN NOMBRE LIKE '#39'%Supleme%'#39' THEN '#39'Suplementos'#39
      
        '           WHEN (CODIGO LIKE '#39'000%'#39' OR CODIGO LIKE '#39'0033'#39') THEN ' +
        #39'Descuento'#39
      
        '           WHEN (NOMBRE LIKE '#39'%Socios%'#39' OR NOMBRE LIKE '#39'%Tarifa%' +
        #39' OR CODIGO LIKE '#39'0045'#39') THEN '#39'Descuento Socios'#39
      '           WHEN CODIGO LIKE '#39'33-%'#39' THEN '#39'Gastos de env'#237'o'#39
      #9#9#9#9#9' WHEN CODIGO LIKE '#39'36-%'#39' THEN '#39'Ticket Regalo'#39
      '           WHEN NOMBRE LIKE '#39'%CANJE%'#39' THEN '#39'Canje Ticket Regalo'#39
      '       end as familia,'
      
        '      CAST(CONCAT(HOUR(L.InstanteModif),'#39':'#39', MINUTE(L.InstanteMo' +
        'dif),'#39':00'#39') as Time) as Hora,'
      
        '      cast(IF(l.linea = '#39'001'#39' OR l.linea='#39'1'#39', IF(r.forma_pago = ' +
        #39'contado'#39', sum(importe), 0), '#39#39')  as decimal(8,3)) as Formapago_' +
        'contado,'
      
        '      cast(IF(l.linea = '#39'001'#39' OR l.linea='#39'1'#39', IF(r.forma_pago = ' +
        #39'transferencia'#39', sum(importe), 0), '#39#39') as decimal(8,3)) as Forma' +
        'pago_transferencia,'
      
        '      cast(IF(l.linea = '#39'001'#39' or l.linea=1, IF(r.tipo_tarjeta = ' +
        #39'american express'#39', sum(importe), 0), '#39#39') as decimal(8,3)) as Fo' +
        'rmapago_americanexpress,'
      
        #9#9#9'cast(IF(l.linea = '#39'001'#39' or l.linea=1, IF(r.tipo_tarjeta = '#39'ma' +
        'stercard'#39', sum(importe), 0), '#39#39') as decimal(8,3)) as Formapago_m' +
        'astercard,'
      
        '      cast(IF(l.linea = '#39'001'#39' or l.linea=1, IF(r.tipo_tarjeta = ' +
        #39'visa'#39', sum(importe), 0), '#39#39') as decimal(8,3)) as Formapago_visa' +
        ','
      
        '      cast(IF(l.linea = '#39'001'#39' or l.linea=1, F.PENDIENTE, '#39#39') as ' +
        'decimal(8,3)) as pendiente_Factura,'
      
        '      cast(IF(l.linea = '#39'001'#39' or l.linea=1, F.TOTAL, '#39#39') as deci' +
        'mal(8,3)) as total_Factura'
      ''
      'from linfac l'
      'left join facturas f'
      'on l.numfac = f.numfac'
      'left join recibos r'
      'on l.numfac = r.numfac'
      ''
      'group by F.NUMFAC, '
      '         f.serie,'
      '      L.LINEA,'
      '       l.codigo,'
      '       l.NOMBRE,'
      '      CAST(l.CANTIDAD as decimal(8,3)),'
      '      CAST(l.NETO as decimal(8,3)) ,'
      '      CAST(l.IMP_IVA as decimal(8,3)),'
      '      CAST(l.PRECIO as decimal(8,3)),'
      '      f.fecha,'
      '       case true'
      '           WHEN CODIGO like '#39'00-01%'#39' THEN '#39'Zapatos'#39
      #9#9#9#9#9' WHEN CODIGO like '#39'28-00%'#39' THEN '#39'Productos Limpieza'#39
      '           WHEN CODIGO like '#39'28-001%'#39' THEN '#39'Hormas'#39
      
        '           WHEN (CODIGO like '#39'CA%'#39'  OR CODIGO LIKE '#39'100%'#39' or cod' +
        'igo like '#39'200%'#39') THEN '#39'Calcetines'#39
      
        '           WHEN (CODIGO LIKE '#39'CI%'#39' or codigo like '#39'27-01%'#39') THEN' +
        ' '#39'Cinturones'#39
      
        '           WHEN (CODIGO LIKE '#39'CO%'#39' OR CODIGO LIKE '#39'21-00%'#39') THEN' +
        ' '#39'Cordones'#39
      '           WHEN NOMBRE LIKE '#39'%Supleme%'#39' THEN '#39'Suplementos'#39
      
        '           WHEN (CODIGO LIKE '#39'000%'#39' OR CODIGO LIKE '#39'0033'#39') THEN ' +
        #39'Descuento'#39
      
        '           WHEN (NOMBRE LIKE '#39'%Socios%'#39' OR NOMBRE LIKE '#39'%Tarifa%' +
        #39' OR CODIGO LIKE '#39'0045'#39') THEN '#39'Descuento Socios'#39
      '           WHEN CODIGO LIKE '#39'33-%'#39' THEN '#39'Gastos de env'#237'o'#39
      #9#9#9#9#9' WHEN CODIGO LIKE '#39'36-%'#39' THEN '#39'Ticket Regalo'#39
      '           WHEN NOMBRE LIKE '#39'%CANJE%'#39' THEN '#39'Canje Ticket Regalo'#39
      '       end,'
      
        '      CAST(CONCAT(HOUR(L.InstanteModif),'#39':'#39', MINUTE(L.InstanteMo' +
        'dif),'#39':00'#39') as Time),'
      '       f.f_pago'
      'UNION'
      ' SELECT fr.numfac,'
      '        fr.serie,'
      '        fr.TIPO_FRA_RECTIFICADA as Tipo,'
      '        lr.linea,'
      '        lr.codigo,'
      '        lr.nombre,'
      '        lr.cantidad as Cantidad,'
      '        lr.neto as precio_unitario,'
      '        lr.imp_iva as imp_iva,'
      '        lr.precio as total,'
      '        fr.fecha, '
      '       case true'
      '           WHEN lr.CODIGO like '#39'00-01%'#39' THEN '#39'Zapatos'#39
      #9#9#9#9#9' WHEN lr.CODIGO like '#39'28-00%'#39' THEN '#39'Productos Limpieza'#39
      '           WHEN lr.CODIGO like '#39'28-001%'#39' THEN '#39'Hormas'#39
      
        '           WHEN (lr.CODIGO like '#39'CA%'#39'  OR lr.CODIGO LIKE '#39'100%'#39' ' +
        'or codigo like '#39'200%'#39') THEN '#39'Calcetines'#39
      
        '           WHEN (lr.CODIGO LIKE '#39'CI%'#39' or lr.codigo like '#39'27-01%'#39 +
        ') THEN '#39'Cinturones'#39
      
        '           WHEN (lr.CODIGO LIKE '#39'CO%'#39' OR lr.CODIGO LIKE '#39'21-00%'#39 +
        ') THEN '#39'Cordones'#39
      '           WHEN lr.NOMBRE LIKE '#39'%Supleme%'#39' THEN '#39'Suplementos'#39
      
        '           WHEN (lr.CODIGO LIKE '#39'000%'#39' OR lr.CODIGO LIKE '#39'0033'#39')' +
        ' THEN '#39'Descuento'#39
      
        '           WHEN (lr.NOMBRE LIKE '#39'%Socios%'#39' OR lr.NOMBRE LIKE '#39'%T' +
        'arifa%'#39' OR CODIGO LIKE '#39'0045'#39') THEN '#39'Descuento Socios'#39
      '           WHEN lr.CODIGO LIKE '#39'33-%'#39' THEN '#39'Gastos de env'#237'o'#39
      #9#9#9#9#9' WHEN lr.CODIGO LIKE '#39'36-%'#39' THEN '#39'Ticket Regalo'#39
      
        '           WHEN lr.NOMBRE LIKE '#39'%CANJE%'#39' THEN '#39'Canje Ticket Rega' +
        'lo'#39
      '       end as familia,'
      
        '       CAST(CONCAT(HOUR(Lr.InstanteModif),'#39':'#39', MINUTE(Lr.Instant' +
        'eModif),'#39':00'#39') as Time) as Hora,'
      '      0 as Formapago_contado,'
      '      0 as Formapago_transferencia,'
      '      0 as Formapago_americanexpress,'
      #9#9#9'0 as Formapago_mastercard,'
      '      0 as Formapago_visa,'
      '      0 as pendiente_Factura,'
      
        '      cast(IF(lr.linea = '#39'001'#39' or lr.linea=1, fr.TOTAL, '#39#39') as d' +
        'ecimal(8,3)) as total_Factura'
      ''
      '    from glt_linfac lr'
      'left join glt_facturas fr'
      'on lr.numfac = fr.numfac '
      'and lr.serie = fr.serie '
      '')
    Params = <>
    Left = 32
    Top = 16
  end
  object dsLinVentas: TDataSource
    Left = 32
    Top = 64
  end
end
