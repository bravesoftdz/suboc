object DMHistoriaClientes: TDMHistoriaClientes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 191
  Width = 549
  object unqryHistoria: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `SUBOC_HISTORIA`'
      
        '  (`ID`, `CODIGO_ARTICULO`, `DESCRIPCION_ARTICULO`, `CODIGO_CLIE' +
        'NTE`, `PRECIOVENTA_ARTICULO`, `FECHA`, `ZONA`, `DESCRIPCION_HIST' +
        'ORIA`, `NRO_FACTURA`, `LINEA_LINEA`, `ODONTOLOGO`, `SERIE_FACTUR' +
        'A`)'
      'VALUES'
      
        '  (:`ID`, :`CODIGO_ARTICULO`, :`DESCRIPCION_ARTICULO`, :`CODIGO_' +
        'CLIENTE`, :`PRECIOVENTA_ARTICULO`, :`FECHA`, :`ZONA`, :`DESCRIPC' +
        'ION_HISTORIA`, :`NRO_FACTURA`, :`LINEA_LINEA`, :`ODONTOLOGO`, :`' +
        'SERIE_FACTURA`)')
    SQLDelete.Strings = (
      'DELETE FROM `SUBOC_HISTORIA`'
      'WHERE'
      '  `ID` = :`Old_ID`')
    SQLUpdate.Strings = (
      'UPDATE `SUBOC_HISTORIA`'
      'SET'
      
        '  `ID` = :`ID`, `CODIGO_ARTICULO` = :`CODIGO_ARTICULO`, `DESCRIP' +
        'CION_ARTICULO` = :`DESCRIPCION_ARTICULO`, `CODIGO_CLIENTE` = :`C' +
        'ODIGO_CLIENTE`, `PRECIOVENTA_ARTICULO` = :`PRECIOVENTA_ARTICULO`' +
        ', `FECHA` = :`FECHA`, `ZONA` = :`ZONA`, `DESCRIPCION_HISTORIA` =' +
        ' :`DESCRIPCION_HISTORIA`, `NRO_FACTURA` = :`NRO_FACTURA`, `LINEA' +
        '_LINEA` = :`LINEA_LINEA`, `ODONTOLOGO` = :`ODONTOLOGO`, `SERIE_F' +
        'ACTURA` = :`SERIE_FACTURA`'
      'WHERE'
      '  `ID` = :`Old_ID`')
    SQLLock.Strings = (
      'SELECT * FROM SUBOC_HISTORIA'
      'WHERE'
      '  `ID` = :`Old_ID`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT * FROM `VU_SUBOC_HISTORIA`'
      'WHERE'
      '  `ID` = :`ID`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM SUBOC_HISTORIA')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT * FROM VU_SUBOC_HISTORIA'
      'ORDER BY ID DESC')
    Active = True
    Left = 320
    Top = 80
  end
  object unqryArtDataHis: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from suboc_articulos')
    Left = 488
    Top = 24
  end
  object unqryCliDataHis: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from suboc_clientes')
    Left = 488
    Top = 72
  end
  object unqryDocDataHis: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from suboc_odontologos')
    Left = 488
    Top = 128
  end
end
