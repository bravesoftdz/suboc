object DMClientes: TDMClientes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 191
  Width = 455
  object dsFacturas: TDataSource
    DataSet = unqryFacturas
    Left = 120
    Top = 32
  end
  object dsLinFac: TDataSource
    DataSet = unqryLinFac
    Left = 192
    Top = 32
  end
  object dsHistoria: TDataSource
    DataSet = unqryHistoria
    Left = 264
    Top = 32
  end
  object unqryClientes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO suboc_clientes'
      
        '  (CODIGO_CLIENTE, RAZONSOCIAL_CLIENTE, NIF_CLIENTE, MOVIL_CLIEN' +
        'TE, EMAIL_CLIENTE, DIRECCION1_CLIENTE, DIRECCION2_CLIENTE, POBLA' +
        'CION_CLIENTE, PROVINCIA_CLIENTE, CPOSTAL_CLIENTE, PAIS_CLIENTE, ' +
        'OBSERVACIONES_CLIENTE, REFERENCIA_CLIENTE, TELEFONO_CLIENTE, PRO' +
        'FESION_CLIENTE, FECHA_NACIMIENTO, NOMBRE, APELLIDOS)'
      'VALUES'
      
        '  (:CODIGO_CLIENTE, :RAZONSOCIAL_CLIENTE, :NIF_CLIENTE, :MOVIL_C' +
        'LIENTE, :EMAIL_CLIENTE, :DIRECCION1_CLIENTE, :DIRECCION2_CLIENTE' +
        ', :POBLACION_CLIENTE, :PROVINCIA_CLIENTE, :CPOSTAL_CLIENTE, :PAI' +
        'S_CLIENTE, :OBSERVACIONES_CLIENTE, :REFERENCIA_CLIENTE, :TELEFON' +
        'O_CLIENTE, :PROFESION_CLIENTE, :FECHA_NACIMIENTO, :NOMBRE, :APEL' +
        'LIDOS)')
    SQLDelete.Strings = (
      'DELETE FROM suboc_clientes'
      'WHERE'
      '  CODIGO_CLIENTE = :Old_CODIGO_CLIENTE')
    SQLUpdate.Strings = (
      'UPDATE suboc_clientes'
      'SET'
      
        '  CODIGO_CLIENTE = :CODIGO_CLIENTE, RAZONSOCIAL_CLIENTE = :RAZON' +
        'SOCIAL_CLIENTE, NIF_CLIENTE = :NIF_CLIENTE, MOVIL_CLIENTE = :MOV' +
        'IL_CLIENTE, EMAIL_CLIENTE = :EMAIL_CLIENTE, DIRECCION1_CLIENTE =' +
        ' :DIRECCION1_CLIENTE, DIRECCION2_CLIENTE = :DIRECCION2_CLIENTE, ' +
        'POBLACION_CLIENTE = :POBLACION_CLIENTE, PROVINCIA_CLIENTE = :PRO' +
        'VINCIA_CLIENTE, CPOSTAL_CLIENTE = :CPOSTAL_CLIENTE, PAIS_CLIENTE' +
        ' = :PAIS_CLIENTE, OBSERVACIONES_CLIENTE = :OBSERVACIONES_CLIENTE' +
        ', REFERENCIA_CLIENTE = :REFERENCIA_CLIENTE, TELEFONO_CLIENTE = :' +
        'TELEFONO_CLIENTE, PROFESION_CLIENTE = :PROFESION_CLIENTE, FECHA_' +
        'NACIMIENTO = :FECHA_NACIMIENTO, NOMBRE = :NOMBRE, APELLIDOS = :A' +
        'PELLIDOS'
      'WHERE'
      '  CODIGO_CLIENTE = :Old_CODIGO_CLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM suboc_clientes'
      'WHERE'
      '  CODIGO_CLIENTE = :Old_CODIGO_CLIENTE'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO_CLIENTE, RAZONSOCIAL_CLIENTE, NIF_CLIENTE, MOVIL_C' +
        'LIENTE, EMAIL_CLIENTE, DIRECCION1_CLIENTE, DIRECCION2_CLIENTE, P' +
        'OBLACION_CLIENTE, PROVINCIA_CLIENTE, CPOSTAL_CLIENTE, PAIS_CLIEN' +
        'TE, OBSERVACIONES_CLIENTE, REFERENCIA_CLIENTE, TELEFONO_CLIENTE,' +
        ' PROFESION_CLIENTE, FECHA_NACIMIENTO, NOMBRE, APELLIDOS FROM sub' +
        'oc_clientes'
      'WHERE'
      '  CODIGO_CLIENTE = :CODIGO_CLIENTE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM suboc_clientes')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from suboc_clientes'
      ''
      'order by convert(CODIGO_CLIENTE, int) DESC')
    Active = True
    AfterInsert = unqryClientesAfterInsert
    BeforePost = unqryClientesBeforePost
    Left = 40
    Top = 88
  end
  object unqryFacturas: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO suboc_facturas'
      
        '  (NRO_FACTURA, SERIE_FACTURA, CODIGO_CLIENTE_FACTURA, RAZONSOCI' +
        'AL_CLIENTE_FACTURA, NIF_CLIENTE_FACTURA, MOVIL_CLIENTE_FACTURA, ' +
        'EMAIL_CLIENTE_FACTURA, DIRECCION1_CLIENTE_FACTURA, DIRECCION2_CL' +
        'IENTE_FACTURA, POBLACION_CLIENTE_FACTURA, PROVINCIA_CLIENTE_FACT' +
        'URA, CPOSTAL_CLIENTE_FACTURA, PAIS_CLIENTE_FACTURA, FECHA_FACTUR' +
        'A, TOTAL_LIQUIDO_FACTURA, FORMA_PAGO_FACTURA, NRO_FACTURA_ABONO_' +
        'FACTURA, SERIE_FACTURA_ABONO_FACTURA, DOCUMENTO_FACTURA, COMENTA' +
        'RIOS_FACTURA)'
      'VALUES'
      
        '  (:NRO_FACTURA, :SERIE_FACTURA, :CODIGO_CLIENTE_FACTURA, :RAZON' +
        'SOCIAL_CLIENTE_FACTURA, :NIF_CLIENTE_FACTURA, :MOVIL_CLIENTE_FAC' +
        'TURA, :EMAIL_CLIENTE_FACTURA, :DIRECCION1_CLIENTE_FACTURA, :DIRE' +
        'CCION2_CLIENTE_FACTURA, :POBLACION_CLIENTE_FACTURA, :PROVINCIA_C' +
        'LIENTE_FACTURA, :CPOSTAL_CLIENTE_FACTURA, :PAIS_CLIENTE_FACTURA,' +
        ' :FECHA_FACTURA, :TOTAL_LIQUIDO_FACTURA, :FORMA_PAGO_FACTURA, :N' +
        'RO_FACTURA_ABONO_FACTURA, :SERIE_FACTURA_ABONO_FACTURA, :DOCUMEN' +
        'TO_FACTURA, :COMENTARIOS_FACTURA)')
    SQLDelete.Strings = (
      'DELETE FROM suboc_facturas'
      'WHERE'
      
        '  NRO_FACTURA = :Old_NRO_FACTURA AND SERIE_FACTURA = :Old_SERIE_' +
        'FACTURA')
    SQLUpdate.Strings = (
      'UPDATE suboc_facturas'
      'SET'
      
        '  NRO_FACTURA = :NRO_FACTURA, SERIE_FACTURA = :SERIE_FACTURA, CO' +
        'DIGO_CLIENTE_FACTURA = :CODIGO_CLIENTE_FACTURA, RAZONSOCIAL_CLIE' +
        'NTE_FACTURA = :RAZONSOCIAL_CLIENTE_FACTURA, NIF_CLIENTE_FACTURA ' +
        '= :NIF_CLIENTE_FACTURA, MOVIL_CLIENTE_FACTURA = :MOVIL_CLIENTE_F' +
        'ACTURA, EMAIL_CLIENTE_FACTURA = :EMAIL_CLIENTE_FACTURA, DIRECCIO' +
        'N1_CLIENTE_FACTURA = :DIRECCION1_CLIENTE_FACTURA, DIRECCION2_CLI' +
        'ENTE_FACTURA = :DIRECCION2_CLIENTE_FACTURA, POBLACION_CLIENTE_FA' +
        'CTURA = :POBLACION_CLIENTE_FACTURA, PROVINCIA_CLIENTE_FACTURA = ' +
        ':PROVINCIA_CLIENTE_FACTURA, CPOSTAL_CLIENTE_FACTURA = :CPOSTAL_C' +
        'LIENTE_FACTURA, PAIS_CLIENTE_FACTURA = :PAIS_CLIENTE_FACTURA, FE' +
        'CHA_FACTURA = :FECHA_FACTURA, TOTAL_LIQUIDO_FACTURA = :TOTAL_LIQ' +
        'UIDO_FACTURA, FORMA_PAGO_FACTURA = :FORMA_PAGO_FACTURA, NRO_FACT' +
        'URA_ABONO_FACTURA = :NRO_FACTURA_ABONO_FACTURA, SERIE_FACTURA_AB' +
        'ONO_FACTURA = :SERIE_FACTURA_ABONO_FACTURA, DOCUMENTO_FACTURA = ' +
        ':DOCUMENTO_FACTURA, COMENTARIOS_FACTURA = :COMENTARIOS_FACTURA'
      'WHERE'
      
        '  NRO_FACTURA = :Old_NRO_FACTURA AND SERIE_FACTURA = :Old_SERIE_' +
        'FACTURA')
    SQLLock.Strings = (
      'SELECT * FROM suboc_facturas'
      'WHERE'
      
        '  NRO_FACTURA = :Old_NRO_FACTURA AND SERIE_FACTURA = :Old_SERIE_' +
        'FACTURA'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT NRO_FACTURA, SERIE_FACTURA, CODIGO_CLIENTE_FACTURA, RAZON' +
        'SOCIAL_CLIENTE_FACTURA, NIF_CLIENTE_FACTURA, MOVIL_CLIENTE_FACTU' +
        'RA, EMAIL_CLIENTE_FACTURA, DIRECCION1_CLIENTE_FACTURA, DIRECCION' +
        '2_CLIENTE_FACTURA, POBLACION_CLIENTE_FACTURA, PROVINCIA_CLIENTE_' +
        'FACTURA, CPOSTAL_CLIENTE_FACTURA, PAIS_CLIENTE_FACTURA, FECHA_FA' +
        'CTURA, TOTAL_LIQUIDO_FACTURA, FORMA_PAGO_FACTURA, NRO_FACTURA_AB' +
        'ONO_FACTURA, SERIE_FACTURA_ABONO_FACTURA, DOCUMENTO_FACTURA, COM' +
        'ENTARIOS_FACTURA FROM suboc_facturas'
      'WHERE'
      '  NRO_FACTURA = :NRO_FACTURA AND SERIE_FACTURA = :SERIE_FACTURA')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM suboc_facturas')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT * from suboc_Facturas'
      'where codigo_cliente_factura = :codigo_cliente')
    MasterSource = frmMtoClientes.dsTablaG
    MasterFields = 'CODIGO_CLIENTE'
    DetailFields = 'CODIGO_CLIENTE_FACTURA'
    Left = 120
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo_cliente'
        ParamType = ptInput
        Value = 3128
      end>
  end
  object unqryLinFac: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO suboc_facturas_lineas'
      
        '  (SERIE_FACTURA_LINEA, NRO_FACTURA_LINEA, LINEA_LINEA, CODIGO_A' +
        'RTICULO_LINEA, DESCRIPCION_ARTICULO_LINEA, ZONA, PRECIOVENTA_ART' +
        'ICULO_LINEA, CANTIDAD_LINEA, SUM_TOTAL_LINEA, ODONTOLOGO)'
      'VALUES'
      
        '  (:SERIE_FACTURA_LINEA, :NRO_FACTURA_LINEA, :LINEA_LINEA, :CODI' +
        'GO_ARTICULO_LINEA, :DESCRIPCION_ARTICULO_LINEA, :ZONA, :PRECIOVE' +
        'NTA_ARTICULO_LINEA, :CANTIDAD_LINEA, :SUM_TOTAL_LINEA, :ODONTOLO' +
        'GO)')
    SQLDelete.Strings = (
      'DELETE FROM suboc_facturas_lineas'
      'WHERE'
      
        '  SERIE_FACTURA_LINEA = :Old_SERIE_FACTURA_LINEA AND NRO_FACTURA' +
        '_LINEA = :Old_NRO_FACTURA_LINEA AND LINEA_LINEA = :Old_LINEA_LIN' +
        'EA')
    SQLUpdate.Strings = (
      'UPDATE suboc_facturas_lineas'
      'SET'
      
        '  SERIE_FACTURA_LINEA = :SERIE_FACTURA_LINEA, NRO_FACTURA_LINEA ' +
        '= :NRO_FACTURA_LINEA, LINEA_LINEA = :LINEA_LINEA, CODIGO_ARTICUL' +
        'O_LINEA = :CODIGO_ARTICULO_LINEA, DESCRIPCION_ARTICULO_LINEA = :' +
        'DESCRIPCION_ARTICULO_LINEA, ZONA = :ZONA, PRECIOVENTA_ARTICULO_L' +
        'INEA = :PRECIOVENTA_ARTICULO_LINEA, CANTIDAD_LINEA = :CANTIDAD_L' +
        'INEA, SUM_TOTAL_LINEA = :SUM_TOTAL_LINEA, ODONTOLOGO = :ODONTOLO' +
        'GO'
      'WHERE'
      
        '  SERIE_FACTURA_LINEA = :Old_SERIE_FACTURA_LINEA AND NRO_FACTURA' +
        '_LINEA = :Old_NRO_FACTURA_LINEA AND LINEA_LINEA = :Old_LINEA_LIN' +
        'EA')
    SQLLock.Strings = (
      'SELECT * FROM suboc_facturas_lineas'
      'WHERE'
      
        '  SERIE_FACTURA_LINEA = :Old_SERIE_FACTURA_LINEA AND NRO_FACTURA' +
        '_LINEA = :Old_NRO_FACTURA_LINEA AND LINEA_LINEA = :Old_LINEA_LIN' +
        'EA'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT SERIE_FACTURA_LINEA, NRO_FACTURA_LINEA, LINEA_LINEA, CODI' +
        'GO_ARTICULO_LINEA, DESCRIPCION_ARTICULO_LINEA, ZONA, PRECIOVENTA' +
        '_ARTICULO_LINEA, CANTIDAD_LINEA, SUM_TOTAL_LINEA, ODONTOLOGO FRO' +
        'M suboc_facturas_lineas'
      'WHERE'
      
        '  SERIE_FACTURA_LINEA = :SERIE_FACTURA_LINEA AND NRO_FACTURA_LIN' +
        'EA = :NRO_FACTURA_LINEA AND LINEA_LINEA = :LINEA_LINEA')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM suboc_facturas_lineas')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT F.CODIGO_CLIENTE_FACTURA, '
      '             L.*         '
      #9'FROM suboc_facturas_lineas L'
      #9'INNER JOIN suboc_facturas F'
      #9'ON L.NRO_FACTURA_LINEA = F.NRO_FACTURA'
      '                AND L.SERIE_FACTURA_LINEA = F.SERIE_FACTURA'
      #9'where F.CODIGO_CLIENTE_FACTURA = :codigo_cliente'
      'order by F.CODIGO_CLIENTE_FACTURA,'
      '              L.NRO_FACTURA_LINEA,'
      '              L.SERIE_FACTURA_LINEA,'
      '              L.LINEA_LINEA')
    MasterSource = frmMtoClientes.dsTablaG
    MasterFields = 'CODIGO_CLIENTE'
    DetailFields = 'CODIGO_CLIENTE_FACTURA'
    Active = True
    Left = 192
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo_cliente'
        ParamType = ptInput
        Value = 3128
      end>
  end
  object unqryHistoria: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO suboc_historia'
      
        '  (ID, CODIGO_ARTICULO, DESCRIPCION_ARTICULO, CODIGO_CLIENTE, PR' +
        'ECIOVENTA_ARTICULO, FECHA, ZONA, DESCRIPCION_HISTORIA, NRO_FACTU' +
        'RA, LINEA_LINEA, ODONTOLOGO, SERIE_FACTURA)'
      'VALUES'
      
        '  (:ID, :CODIGO_ARTICULO, :DESCRIPCION_ARTICULO, :CODIGO_CLIENTE' +
        ', :PRECIOVENTA_ARTICULO, :FECHA, :ZONA, :DESCRIPCION_HISTORIA, :' +
        'NRO_FACTURA, :LINEA_LINEA, :ODONTOLOGO, :SERIE_FACTURA)')
    SQLDelete.Strings = (
      'DELETE FROM suboc_historia'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE suboc_historia'
      'SET'
      
        '  ID = :ID, CODIGO_ARTICULO = :CODIGO_ARTICULO, DESCRIPCION_ARTI' +
        'CULO = :DESCRIPCION_ARTICULO, CODIGO_CLIENTE = :CODIGO_CLIENTE, ' +
        'PRECIOVENTA_ARTICULO = :PRECIOVENTA_ARTICULO, FECHA = :FECHA, ZO' +
        'NA = :ZONA, DESCRIPCION_HISTORIA = :DESCRIPCION_HISTORIA, NRO_FA' +
        'CTURA = :NRO_FACTURA, LINEA_LINEA = :LINEA_LINEA, ODONTOLOGO = :' +
        'ODONTOLOGO, SERIE_FACTURA = :SERIE_FACTURA'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM suboc_historia'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, CODIGO_ARTICULO, DESCRIPCION_ARTICULO, CODIGO_CLIENTE' +
        ', PRECIOVENTA_ARTICULO, FECHA, ZONA, DESCRIPCION_HISTORIA, NRO_F' +
        'ACTURA, LINEA_LINEA, ODONTOLOGO, SERIE_FACTURA FROM suboc_histor' +
        'ia'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM suboc_historia')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from VU_suboc_historia'
      'where codigo_cliente = :codigo_cliente'
      '')
    MasterSource = frmMtoClientes.dsTablaG
    MasterFields = 'CODIGO_CLIENTE'
    DetailFields = 'CODIGO_CLIENTE'
    Active = True
    Left = 264
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo_cliente'
        ParamType = ptInput
        Value = 3128
      end>
  end
  object unstrdprcContador: TUniStoredProc
    StoredProcName = 'GET_NEXT_CONT'
    SQL.Strings = (
      
        'CALL GET_NEXT_CONT(:pTipoDoc, @pcont); SELECT CAST(@pcont AS SIG' +
        'NED) AS '#39'@pcont'#39)
    Connection = dmConn.conUni
    Left = 384
    Top = 124
    ParamData = <
      item
        DataType = ftString
        Name = 'pTipoDoc'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pcont'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'GET_NEXT_CONT'
  end
end
