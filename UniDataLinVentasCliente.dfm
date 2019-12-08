object dmLinVentasClientes: TdmLinVentasClientes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 413
  Top = 287
  Height = 150
  Width = 215
  object zqryLinVentasClientes: TZQuery
    Connection = dmConn.ZconnGlent
    SQL.Strings = (
      'select l.numfac, '
      '       l.codigo, '
      '       l.nombre, '
      '       l.cantidad, '
      '       l.precio_unitario, '
      '       l.imp_iva, '
      '       l.total, '
      '       f.fecha,'
      '       f.f_pago, '
      '       l.familia, '
      '       f.codcli, '
      '       c.nombre, '
      '       c.apellidos,'
      '       c.direccion,'
      '       c.poblacion,'
      '       c.provincia,'
      '       c.Pais,'
      '       c.email,'
      '       c.Movil,'
      '       c.idmagento'
      'from vu_linfac l '
      'left join facturas f'
      'on l.numfac = f.numfac '
      'left join clientes c'
      'on f.CODCLI = c.CODIGO_CLIENTE'
      'ORDER BY C.CODIGO_CLIENTE DESC,'
      '                  F.FECHA'
      '                  DESC')
    Params = <>
    Left = 32
    Top = 16
  end
  object dsLinVentas: TDataSource
    Left = 32
    Top = 64
  end
end
