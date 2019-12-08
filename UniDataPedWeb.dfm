object dmPedWeb: TdmPedWeb
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Top = 131
  Height = 497
  Width = 800
  object dsClientes: TDataSource
    DataSet = zqryPedidosWeb
    Left = 528
    Top = 32
  end
  object dsPedidosWebLineas: TDataSource
    DataSet = zqryPedidosWebLineas
    Left = 136
    Top = 32
  end
  object zqryPedidosWeb: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'idpedidoweb; email'
    UpdateObject = zsqlPedidosWeb
    SQL.Strings = (
      'SELECT * from web_pedidos')
    Params = <>
    IndexFieldNames = 'idpedidoweb Asc; email Asc'
    Left = 32
    Top = 80
  end
  object zqryPedidosWebLineas: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'idpedidoweb; numlinea'
    UpdateObject = zsqlPedidosWebLineas
    SQL.Strings = (
      'SELECT * from v_web_pedidos_lineas '
      'where idpedidoweb = :idpedidoweb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end>
    Properties.Strings = (
      'ValidateUpdateCount=-1')
    DataSource = frmMtoPedWeb.dsTablaG
    IndexFieldNames = 'idpedidoweb Asc; numlinea Asc'
    Left = 136
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end>
  end
  object dsPedidosWebLineasPer: TDataSource
    DataSet = zqryPedidosWebLineasPer
    Left = 264
    Top = 32
  end
  object zqryPedidosWebLineasPer: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'idpedidoweb; numlinea; clave'
    UpdateObject = zsqlPedidosWebLineasPer
    SQL.Strings = (
      'SELECT * '
      '   from web_pedidos_lineas_per '
      'where  idpedidoweb = :idpedidoweb'
      'and numlinea = :numlinea')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
    DataSource = dsPedidosWebLineas
    IndexFieldNames = 'idpedidoweb Asc; numlinea Asc; clave Asc'
    Left = 264
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
  end
  object zsqlPedidosWeb: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM web_pedidos where idpedidoweb = :idpedidoweb')
    InsertSQL.Strings = (
      'INSERT INTO  web_pedidos (idpedidoweb'
      '                          email'
      '                          nombre'
      '                          apellidos'
      '                          facturacionnombrefiscal'
      '                          facturacioncif'
      '                          facturaciondireccion1'
      '                          facturaciondireccion2'
      '                          facturacionciudad'
      '                          facturacioncodigopostal'
      '                          facturacionprovincia'
      '                          facturacionpais'
      '                          envionombre'
      '                          enviodireccion1'
      '                          enviodireccion2'
      '                          enviociudad'
      '                          enviocodigopostal       '
      '                          envioprovincia          '
      '                          enviopais               '
      '                          metododepago            '
      '                          metododeenvio                 '
      '                          envioapellidos          '
      '                          NUMPED                  '
      '                          costeenvio              '
      '                          idmagento               '
      '                          basepedido              '
      '                          ivapedido               '
      '                          totalpedido ) '
      'VALUES'#39'  '
      ' (:idpedidoweb'#39','
      ' :email'#39','
      ' :nombre'#39','
      ' :apellidos'#39','
      ' :facturacionnombrefiscal'#39','
      ' :facturacioncif'#39','
      ' :facturaciondireccion1'#39','
      ' :facturaciondireccion2'#39','
      ' :facturacionciudad'#39','
      ' :facturacioncodigopostal'#39','
      ' :facturacionprovincia'#39'    ,'
      ' :facturacionpais'#39','
      ' :envionombre'#39','
      ' :enviodireccion1'#39','
      ' :enviodireccion2'#39','
      ' :enviociudad'#39','
      ' :enviocodigopostal        ,'
      ' :envioprovincia           ,'
      ' :enviopais                ,'
      ' :metododepago             ,'
      ' :metododeenvio            ,'
      ' :envioapellidos           ,'
      ' :NUMPED                   ,'
      ' :costeenvio               ,'
      ' :idmagento                ,'
      ' :basepedido               ,'
      ' :ivapedido                ,'
      ' :totalpedido )')
    ModifySQL.Strings = (
      'UPDATE  web_pedidos'
      'SET '#39'idpedidoweb'#39'= :idpedidoweb'#39','
      'email'#39'= :email'#39','
      'nombre'#39'= :nombre'#39','
      'apellidos'#39'= :apellidos'#39','
      'facturacionnombrefiscal'#39'= :facturacionnombrefiscal'#39','
      'facturacioncif'#39'= :facturacioncif'#39','
      'facturaciondireccion1'#39'= :facturaciondireccion1'#39','
      'facturaciondireccion2'#39'= :facturaciondireccion2'#39','
      'facturacionciudad'#39'= :facturacionciudad'#39','
      'facturacioncodigopostal'#39'= :facturacioncodigopostal'#39','
      'facturacionprovincia'#39'= :facturacionprovincia'#39'    ,'
      'facturacionpais'#39'= :facturacionpais'#39','
      'envionombre'#39'= :envionombre'#39','
      'enviodireccion1'#39'= :enviodireccion1'#39','
      'enviodireccion2'#39'= :enviodireccion2'#39','
      'enviociudad'#39'= :enviociudad'#39','
      'enviocodigopostal       = :enviocodigopostal        ,'
      'envioprovincia          = :envioprovincia           ,'
      'enviopais               = :enviopais                ,'
      'metododepago            = :metododepago             ,'
      'metododeenvio           = :metododeenvio            ,'
      'envioapellidos          = :envioapellidos           ,'
      'NUMPED                  = :NUMPED                   ,'
      'costeenvio              = :costeenvio               ,'
      'idmagento               = :idmagento                ,'
      'basepedido              = :basepedido               ,'
      'ivapedido               = :ivapedido                ,'
      'totalpedido             = :totalpedido'
      'WHERE (idpedidoweb= :old_idpedidoweb);')
    RefreshSQL.Strings = (
      'select * from web_pedidos where idpedidoweb = :idpedidoweb')
    UseSequenceFieldForRefreshSQL = False
    Left = 32
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nombre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'apellidos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'facturacionnombrefiscal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'facturacioncif'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'facturaciondireccion1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'facturaciondireccion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'facturacionciudad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'facturacioncodigopostal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'facturacionprovincia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'facturacionpais'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'envionombre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviodireccion1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviodireccion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviociudad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviocodigopostal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'envioprovincia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviopais'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'metododepago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'metododeenvio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'envioapellidos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'costeenvio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idmagento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'basepedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ivapedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'totalpedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_idpedidoweb'
        ParamType = ptUnknown
      end>
  end
  object zsqlPedidosWebLineas: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM web_pedidos_lineas '
      'WHERE (idpedidoweb= :idpedidoweb)'
      '  AND (numlinea= :numlinea);')
    InsertSQL.Strings = (
      'INSERT INTO web_pedidos_lineas'
      '(idpedidoweb         ,'
      '             identificador       ,'
      '             numlinea            ,'
      '             unidades            ,'
      '             precio              ,'
      '             NUMFAB              ,'
      '             baselinea           ,'
      '             porcentajeivalinea  ,'
      '             ivalinea          ,'
      '             imagen'
      ' (:idpedidoweb        , '
      '  :identificador      ,'
      '  :numlinea           ,'
      '  :unidades           ,'
      '  :precio             ,'
      '  :NUMFAB             ,'
      '              :baselinea          ,'
      '              :porcentajeivalinea ,'
      '              :ivalinea,'
      '              :imagen ) ;'
      ' ')
    ModifySQL.Strings = (
      'UPDATE web_pedidos_lineas'
      'SET idpedidoweb          = :idpedidoweb        , '
      '    identificador        = :identificador      ,'
      '    numlinea             = :numlinea           ,'
      '    unidades             = :unidades           ,'
      '    precio               = :precio             ,'
      '    NUMFAB               = :NUMFAB             ,'
      '    baselinea            = :baselinea          ,'
      '    porcentajeivalinea   = :porcentajeivalinea ,'
      '    ivalinea             = :ivalinea,'
      '   imagen              = :imagen'
      'WHERE (idpedidoweb= :old_idpedidoweb)'
      '  AND (numlinea= :old_numlinea);')
    RefreshSQL.Strings = (
      'SELECT * FROM v_web_pedidos_lineas '
      'WHERE (idpedidoweb= :idpedidoweb)'
      '  AND (numlinea= :numlinea);')
    UseSequenceFieldForRefreshSQL = False
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'identificador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidades'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMFAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'baselinea'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'porcentajeivalinea'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ivalinea'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imagen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_numlinea'
        ParamType = ptUnknown
      end>
  end
  object zsqlPedidosWebLineasPer: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM web_pedidos_lineas_per'
      'WHERE (idpedidoweb=:idpedidoweb)'
      '  AND (numlinea=:numlinea)'
      '  AND (clave=:clave);')
    InsertSQL.Strings = (
      'INSERT INTO web_pedidos_lineas_per'
      '(idpedidoweb,'
      ' numlinea   ,'
      ' clave      ,'
      ' valor      ) '
      ' VALUES'
      ' ('
      '       :idpedidoweb ,'
      '       :numlinea    ,'
      '       :clave       ,'
      '       :valor  '
      ' );')
    ModifySQL.Strings = (
      'UPDATE web_pedidos_lineas_per'
      'SET idpedidoweb = :idpedidoweb ,'
      '    numlinea    = :numlinea    ,'
      '    clave       = :clave       ,'
      '    valor       = :valor ,'
      '    imagen   = :imagen      '
      'WHERE (idpedidoweb=:old_idpedidoweb)'
      '  AND (numlinea=:old_numlinea)'
      '  AND (clave= :old_clave);')
    RefreshSQL.Strings = (
      'select * '
      'from web_pedidos_lineas_per'
      'where idpedidoweb = :idpedido'
      '  AND (numlinea= :numlinea)'
      'AND (clave = :clave);')
    UseSequenceFieldForRefreshSQL = False
    Left = 264
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imagen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_numlinea'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_clave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idpedido'
        ParamType = ptUnknown
      end>
  end
  object zqryClientes: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'CODIGO_CLIENTE'
    SortType = stDescending
    UpdateObject = zsqlClientes
    SQL.Strings = (
      'SELECT * from Clientes')
    Params = <>
    DataSource = dsClientes
    IndexFieldNames = 'CODIGO_CLIENTE Desc'
    Left = 528
    Top = 80
  end
  object zsqlClientes: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM clientes where id = :id;')
    InsertSQL.Strings = (
      'INSERT INTO clientes '
      '(id                 , '
      ' nombre             , '
      ' apellidos          , '
      ' dni                , '
      ' Movil              , '
      ' email              , '
      ' direccion          , '
      ' poblacion          , '
      ' provincia          , '
      ' CP                 , '
      ' Pais               , '
      ' Modalidad          , '
      ' Nombre_Envio_Aux   , '
      ' Direccion_Envio_Aux, '
      ' CP_Envio_Aux       , '
      ' Poblacion_Envio_Aux, '
      ' Provincia_Envio_Aux, '
      ' modificado         , '
      ' CODIGO_CLIENTE     , '
      ' ventas_contado     , '
      ' ventas_tarjeta     , '
      ' Pais_Envio_aux     , '
      ' fecha_nacimiento   , '
      ' observaciones      , '
      ' Referencia         , '
      ' DesReferencia      , '
      ' razonsocial         '
      ' ) VALUES ('
      ':id                  ,'
      ':nombre              ,'
      ':apellidos           ,'
      ':dni                 ,'
      ':Movil               ,'
      ':email               ,'
      ':direccion           ,'
      ':poblacion           ,'
      ':provincia           ,'
      ':CP                  ,'
      ':Pais                ,'
      ':Modalidad           ,'
      ':Nombre_Envio_Aux    ,'
      ':Direccion_Envio_Aux ,'
      ':CP_Envio_Aux        ,'
      ':Poblacion_Envio_Aux ,'
      ':Provincia_Envio_Aux ,'
      ':modificado          ,'
      ':CODIGO_CLIENTE      ,'
      ':ventas_contado      ,'
      ':ventas_tarjeta      ,'
      ':Pais_Envio_aux      ,'
      ':fecha_nacimiento    ,'
      ':observaciones       ,'
      ':Referencia          ,'
      ':DesReferencia       ,'
      ':razonsocial);')
    ModifySQL.Strings = (
      'UPDATE clientes'
      'SET id = :id ,'
      '    nombre                  = :nombre              ,'
      '    apellidos               = :apellidos           ,'
      '    dni                     = :dni                 ,'
      '    Movil                   = :Movil               ,'
      '    email                   = :email               ,'
      '    direccion               = :direccion           ,'
      '    poblacion               = :poblacion           ,'
      '    provincia               = :provincia           ,'
      '    CP                      = :CP                  ,'
      '    Pais                    = :Pais                ,'
      '    Modalidad               = :Modalidad           ,'
      '    Nombre_Envio_Aux        = :Nombre_Envio_Aux    ,'
      '    Direccion_Envio_Aux     = :Direccion_Envio_Aux ,'
      '    CP_Envio_Aux            = :CP_Envio_Aux        ,'
      '    Poblacion_Envio_Aux     = :Poblacion_Envio_Aux ,'
      '    Provincia_Envio_Aux     = :Provincia_Envio_Aux ,'
      '    modificado              = :modificado          ,'
      '    CODIGO_CLIENTE          = :CODIGO_CLIENTE      ,'
      '    ventas_contado          = :ventas_contado      ,'
      '    ventas_tarjeta          = :ventas_tarjeta      ,'
      '    Pais_Envio_aux          = :Pais_Envio_aux      ,'
      '    fecha_nacimiento        = :fecha_nacimiento    ,'
      '    observaciones           = :observaciones       ,'
      '    Referencia              = :Referencia          ,'
      '    DesReferencia           = :DesReferencia       ,'
      '    razonsocial             = :razonsocial'
      'WHERE (id=:old_id);')
    RefreshSQL.Strings = (
      'select * from clientes where id = :id;')
    UseSequenceFieldForRefreshSQL = False
    Left = 528
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nombre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'apellidos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Movil'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'direccion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'poblacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'provincia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Pais'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Modalidad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Nombre_Envio_Aux'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Direccion_Envio_Aux'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CP_Envio_Aux'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Poblacion_Envio_Aux'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Provincia_Envio_Aux'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'modificado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ventas_contado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ventas_tarjeta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Pais_Envio_aux'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_nacimiento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'observaciones'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DesReferencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'razonsocial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_id'
        ParamType = ptUnknown
      end>
  end
  object dsFabCab: TDataSource
    DataSet = zqryFabCab
    Left = 392
    Top = 32
  end
  object dsFabXml: TDataSource
    DataSet = zqryFabXml
    Left = 456
    Top = 32
  end
  object zqryFabCab: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'CODCLI; NUMFAB'
    UpdateObject = zsqlFabCab
    SQL.Strings = (
      'SELECT * from z_fab_cab'
      'where codcli = :codigo_cliente')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo_cliente'
        ParamType = ptUnknown
      end>
    DataSource = frmMtoClientes.dsTablaG
    MasterFields = 'CODIGO_CLIENTE'
    LinkedFields = 'CODCLI'
    IndexFieldNames = 'CODCLI Asc; NUMFAB Asc'
    Left = 392
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo_cliente'
        ParamType = ptUnknown
      end>
  end
  object zsqlFabCab: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM z_fab_cab'
      'WHERE  ( numfab = :numfab ) '
      '       AND ( serie = :serie ); ')
    InsertSQL.Strings = (
      'INSERT INTO z_fab_cab  (    '
      '       serie  '#39','
      '       numfab           ,'
      '       fecha            ,'
      '       codcli           ,'
      '       nomcli           ,'
      '       codmod           ,'
      '       nommod           ,'
      '       codhor           ,'
      '       nomhor           ,'
      '       pares            ,'
      '       suplemento       ,'
      '       talla_d          ,'
      '       talla_i          ,'
      '       ancho_d          ,'
      '       ancho_i          ,'
      '       emp_d            ,'
      '       emp_i            ,'
      '       numped           ,'
      '       id_estado        ,'
      '       estado           ,'
      '       fecha_estado     ,'
      '       observaciones    ,'
      '       fabricado        ,'
      '       pers_1           ,'
      '       pers_2a          ,'
      '       pers_2b          ,'
      '       tipo_letra       ,'
      '       codtir           ,'
      '       nomtir           ,'
      '       codsuela         ,'
      '       direccion_tienda ,'
      '   importado        ,'
      '   imagen           ,'
      '   obvs1            ,'
      '   obvs2            ,'
      '   obvs3            ,'
      '   obvs4            ,'
      '   obvs5            )'
      'VALUES'
      '   ( :serie  '#39','
      '     :numfab           ,'
      '     :fecha            ,'
      ' :codcli           ,'
      '         :nomcli           ,'
      '         :codmod           ,'
      '         :nommod           ,'
      '         :codhor           ,'
      '         :nomhor           ,'
      '         :pares            ,'
      '         :suplemento       ,'
      '         :talla_d          ,'
      '         :talla_i          ,'
      '         :ancho_d          ,'
      '         :ancho_i          ,'
      '         :emp_d            ,'
      '         :emp_i            ,'
      '         :numped           ,'
      '         :id_estado        ,'
      '         :estado           ,'
      '         :fecha_estado     ,'
      '         :observaciones    ,'
      '         :fabricado        ,'
      '         :pers_1           ,'
      '         :pers_2a          ,'
      '         :pers_2b          ,'
      '         :tipo_letra       ,'
      '         :codtir           ,'
      '         :nomtir           ,'
      '         :codsuela         ,'
      '         :direccion_tienda ,'
      '         :importado        ,'
      '         :imagen           ,'
      '         :obvs1            ,'
      '         :obvs2            ,'
      '         :obvs3            ,'
      '         :obvs4            ,'
      '         :obvs5 );')
    ModifySQL.Strings = (
      'UPDATE z_fab_cab '
      'SET    serie  '#39'= :serie  '#39','
      '       numfab           = :numfab           ,'
      '       fecha            = :fecha            ,'
      '       codcli           = :codcli           ,'
      '       nomcli           = :nomcli           ,'
      '       codmod           = :codmod           ,'
      '       nommod           = :nommod           ,'
      '       codhor           = :codhor           ,'
      '       nomhor           = :nomhor           ,'
      '       pares            = :pares            ,'
      '       suplemento       = :suplemento       ,'
      '       talla_d          = :talla_d          ,'
      '       talla_i          = :talla_i          ,'
      '       ancho_d          = :ancho_d          ,'
      '       ancho_i          = :ancho_i          ,'
      '       emp_d            = :emp_d            ,'
      '       emp_i            = :emp_i            ,'
      '       numped           = :numped           ,'
      '       id_estado        = :id_estado        ,'
      '       estado           = :estado           ,'
      '       fecha_estado     = :fecha_estado     ,'
      '       observaciones    = :observaciones    ,'
      '       fabricado        = :fabricado        ,'
      '       pers_1           = :pers_1           ,'
      '       pers_2a          = :pers_2a          ,'
      '       pers_2b          = :pers_2b          ,'
      '       tipo_letra       = :tipo_letra       ,'
      '       codtir           = :codtir           ,'
      '       nomtir           = :nomtir           ,'
      '       codsuela         = :codsuela         ,'
      '       direccion_tienda = :direccion_tienda ,'
      '   importado        = :importado        ,'
      '   imagen           = :imagen           ,'
      '   obvs1            = :obvs1            ,'
      '   obvs2            = :obvs2            ,'
      '   obvs3            = :obvs3            ,'
      '   obvs4            = :obvs4            ,'
      '   obvs5            = :obvs5 '
      'WHERE  ( serie = :old_serie ) '
      '       AND ( numfab = :old_numfab ); ')
    RefreshSQL.Strings = (
      'select * from z_fab_cab'
      'WHERE  ( numfab = :numfab ) '
      '       AND ( serie = :serie ); ')
    UseSequenceFieldForRefreshSQL = False
    Left = 392
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'numfab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codcli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nomcli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codmod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nommod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codhor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nomhor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pares'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suplemento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'talla_d'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'talla_i'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ancho_d'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ancho_i'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp_d'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp_i'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numped'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'observaciones'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fabricado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pers_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pers_2a'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pers_2b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_letra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codtir'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nomtir'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codsuela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'direccion_tienda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imagen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obvs1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obvs2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obvs3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obvs4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obvs5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_numfab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end>
  end
  object zqryFabXml: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'CODCLI, NUMFAB, ID'
    UpdateObject = zsqlFabXml
    SQL.Strings = (
      'SELECT  P.codcli,'
      'L.id '#39','
      'L.serie    ,'
      'L.numfab   ,'
      'L.codgru   ,'
      'L.codvalor ,'
      'L.nomvalor ,'
      'L.modelref ,'
      'L.importado'
      'FROM z_fab_xml L'
      'INNER JOIN z_fab_cab P'
      'on L.numfab = P.numfab '
      'where P.codcli = :codigo_cliente;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo_cliente'
        ParamType = ptUnknown
      end>
    DataSource = frmMtoClientes.dsTablaG
    MasterFields = 'CODIGO_CLIENTE'
    LinkedFields = 'CODCLI'
    IndexFieldNames = 'CODCLI Asc, NUMFAB Asc, ID Asc'
    Left = 456
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo_cliente'
        ParamType = ptUnknown
      end>
  end
  object zsqlFabXml: TZUpdateSQL
    DeleteSQL.Strings = (
      'delete from z_fab_xml'
      'WHERE  ( id = :id );')
    InsertSQL.Strings = (
      'INSERT INTO z_fab_xml ('
      'id '#39'  ,'
      'serie     ,'
      'numfab    ,'
      'codgru    ,'
      'codvalor  ,'
      'nomvalor  ,'
      'modelref  ,'
      'importado )'
      'VALUES (:id        ,'
      '                        :serie     ,'
      '                        :numfab    ,'
      '                        :codgru    ,'
      '                        :codvalor  ,'
      '                        :nomvalor  ,'
      '                        :modelref  ,'
      '                        :importado );')
    ModifySQL.Strings = (
      'UPDATE z_fab_xml '
      'SET    id '#39'= :id        ,'
      '       serie        = :serie     ,'
      '       numfab       = :numfab    ,'
      '       codgru       = :codgru    ,'
      '       codvalor     = :codvalor  ,'
      '       nomvalor     = :nomvalor  ,'
      '   modelref     = :modelref  ,'
      '       importado    = :importado '
      'WHERE  ( id = :old_id );')
    RefreshSQL.Strings = (
      'select * from z_fab_xml'
      'WHERE  ( id = :id );'
      '')
    UseSequenceFieldForRefreshSQL = False
    Left = 456
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numfab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codgru'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codvalor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nomvalor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'modelref'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_id'
        ParamType = ptUnknown
      end>
  end
  object dsFacturas: TDataSource
    DataSet = zqryFacturas
    Left = 32
    Top = 232
  end
  object dsLinFac: TDataSource
    DataSet = zqryLinFac
    Left = 96
    Top = 232
  end
  object zqryFacturas: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'CODCLI; NUMFAC'
    UpdateObject = zsqlFacturas
    SQL.Strings = (
      'SELECT * from Facturas'
      'where codcli = :codigo_cliente')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo_cliente'
        ParamType = ptUnknown
      end>
    DataSource = frmMtoClientes.dsTablaG
    MasterFields = 'CODIGO_CLIENTE'
    LinkedFields = 'CODCLI'
    IndexFieldNames = 'CODCLI Asc; NUMFAC Asc'
    Left = 32
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo_cliente'
        ParamType = ptUnknown
      end>
  end
  object zsqlFacturas: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM facturas '
      'WHERE  ( numfac = :numfac ) '
      '       AND ( serie = :serie ); ')
    InsertSQL.Strings = (
      'INSERT INTO facturas  ('
      '       numfac  '#39','
      '       codcli               ,'
      '       nomcli               ,'
      '       fecha                ,'
      '       sum_base             ,'
      '       base1                ,'
      '       base2                ,'
      '       base3                ,'
      '       sum_iva              ,'
      '       iva1                 ,'
      '       iva2                 ,'
      '       iva3                 ,'
      '       sum_re               ,'
      '       re1                  ,'
      '       re2                  ,'
      '       re3                  ,'
      '       sum_irpf             ,'
      '       total                ,'
      '       bloqueo              ,'
      '       iva0                 ,'
      '       usuario              ,'
      '       impreso              ,'
      '       numalb               ,'
      '       f_pago               ,'
      '       pagado               ,'
      '       importe1             ,'
      '       importe2             ,'
      '       importe3             ,'
      '       venc1                ,'
      '       venc2                ,'
      '       venc3                ,'
      '       comentario           ,'
      '       recibo1              ,'
      '       recibo2              ,'
      '       recibo3              ,'
      '       agente               ,'
      '       pedido               ,'
      '       contaplus            ,'
      '       pendiente            ,'
      '       grupo                ,'
      '       comentario2          ,'
      '       estado               ,'
      '       tipo_dto             ,'
      '       importe_dto          ,'
      '       dto                  ,'
      '       porcentaje_retencion ,'
      '       importe_retencion    ,'
      '       aplicada_retencion   ,'
      '       concepto_retencion   ,'
      '       descontar_retencion  ,'
      '       portes               ,'
      '       dto_esp              ,'
      '       comision             ,'
      '       importe_dto_esp      ,'
      '       comentario3          ,'
      '       codtrans             ,'
      '       liquidada            ,'
      '       importe4             ,'
      '       importe5             ,'
      '       importe6             ,'
      '       venc4                ,'
      '       venc5                ,'
      '       venc6                ,'
      '       recibo4              ,'
      '       recibo5              ,'
      '       recibo6              ,'
      '       base0                ,'
      '       subtotal             ,'
      '       cuenta_ban           ,'
      '       referencia           ,'
      '       destinatario         ,'
      '       pais                 ,'
      '       iva_portes           ,'
      '       idioma               ,'
      '       dtodoc_agrup         ,'
      '       dtoesp_agrup         ,'
      '       coddireccion         ,'
      '       direccion            ,'
      '       comision2            ,'
      '       coste                ,'
      '       serie                ,'
      '       factura_abono        ,'
      '       iban                 ,'
      '       bic                  ,'
      '       importado            ,'
      '       fecha_import         ,'
      '       anticipo             ,'
      '       devolucion_factura   ,'
      '       usuariomodif         )'
      '   VALUES ('
      '   :numfac  '#39','
      '   :codcli               ,'
      '   :nomcli               ,'
      '   :fecha                ,'
      '   :sum_base             ,'
      '   :base1                ,'
      '   :base2                ,'
      '   :base3                ,'
      '   :sum_iva              ,'
      '   :iva1                 ,'
      '   :iva2                 ,'
      '   :iva3                 ,'
      '   :sum_re               ,'
      '   :re1                  ,'
      '   :re2                  ,'
      '   :re3                  ,'
      '   :sum_irpf             ,'
      '   :total                ,'
      '   :bloqueo              ,'
      '   :iva0                 ,'
      '   :usuario              ,'
      '   :impreso              ,'
      '   :numalb               ,'
      '   :f_pago               ,'
      '   :pagado               ,'
      '   :importe1             ,'
      '   :importe2             ,'
      '   :importe3             ,'
      '   :venc1                ,'
      '   :venc2                ,'
      '   :venc3                ,'
      '   :comentario           ,'
      '   :recibo1              ,'
      '   :recibo2              ,'
      '       :recibo3              ,'
      '       :agente               ,'
      '       :pedido               ,'
      '       :contaplus            ,'
      '       :pendiente            ,'
      '       :grupo                ,'
      '       :comentario2          ,'
      '       :estado               ,'
      '       :tipo_dto             ,'
      '       :importe_dto          ,'
      '       :dto                  ,'
      '       :porcentaje_retencion ,'
      '       :importe_retencion    ,'
      '       :aplicada_retencion   ,'
      '       :concepto_retencion   ,'
      '       :descontar_retencion  ,'
      '       :portes               ,'
      '       :dto_esp              ,'
      '       :comision             ,'
      '       :importe_dto_esp      ,'
      '       :comentario3          ,'
      '       :codtrans             ,'
      '       :liquidada            ,'
      '       :importe4             ,'
      '       :importe5             ,'
      '       :importe6             ,'
      '       :venc4                ,'
      '       :venc5                ,'
      '       :venc6                ,'
      '       :recibo4              ,'
      '       :recibo5              ,'
      '       :recibo6              ,'
      '       :base0                ,'
      '       :subtotal             ,'
      '       :cuenta_ban           ,'
      '       :referencia           ,'
      '       :destinatario         ,'
      '       :pais                 ,'
      '       :iva_portes           ,'
      '       :idioma               ,'
      '       :dtodoc_agrup         ,'
      '       :dtoesp_agrup         ,'
      '       :coddireccion         ,'
      '       :direccion            ,'
      '       :comision2            ,'
      '       :coste                ,'
      '       :serie                ,'
      '       :factura_abono        ,'
      '       :iban                 ,'
      '       :bic                  ,'
      '       :importado            ,'
      '       :fecha_import         ,'
      '       :anticipo             ,'
      '       :devolucion_factura   ,'
      '       :usuariomodif );')
    ModifySQL.Strings = (
      'UPDATE facturas '
      'SET    numfac  '#39'= :numfac  '#39','
      '       codcli               = :codcli               ,'
      '       nomcli               = :nomcli               ,'
      '       fecha                = :fecha                ,'
      '       sum_base             = :sum_base             ,'
      '       base1                = :base1                ,'
      '       base2                = :base2                ,'
      '       base3                = :base3                ,'
      '       sum_iva              = :sum_iva              ,'
      '       iva1                 = :iva1                 ,'
      '       iva2                 = :iva2                 ,'
      '       iva3                 = :iva3                 ,'
      '       sum_re               = :sum_re               ,'
      '       re1                  = :re1                  ,'
      '       re2                  = :re2                  ,'
      '       re3                  = :re3                  ,'
      '       sum_irpf             = :sum_irpf             ,'
      '       total                = :total                ,'
      '       bloqueo              = :bloqueo              ,'
      '       iva0                 = :iva0                 ,'
      '       usuario              = :usuario              ,'
      '       impreso              = :impreso              ,'
      '       numalb               = :numalb               ,'
      '       f_pago               = :f_pago               ,'
      '       pagado               = :pagado               ,'
      '       importe1             = :importe1             ,'
      '       importe2             = :importe2             ,'
      '       importe3             = :importe3             ,'
      '       venc1                = :venc1                ,'
      '       venc2                = :venc2                ,'
      '       venc3                = :venc3                ,'
      '       comentario           = :comentario           ,'
      '       recibo1              = :recibo1              ,'
      '       recibo2              = :recibo2              ,'
      '       recibo3              = :recibo3              ,'
      '       agente               = :agente               ,'
      '       pedido               = :pedido               ,'
      '       contaplus            = :contaplus            ,'
      '       pendiente            = :pendiente            ,'
      '       grupo                = :grupo                ,'
      '       comentario2          = :comentario2          ,'
      '       estado               = :estado               ,'
      '       tipo_dto             = :tipo_dto             ,'
      '       importe_dto          = :importe_dto          ,'
      '       dto                  = :dto                  ,'
      '       porcentaje_retencion = :porcentaje_retencion ,'
      '       importe_retencion    = :importe_retencion    ,'
      '       aplicada_retencion   = :aplicada_retencion   ,'
      '       concepto_retencion   = :concepto_retencion   ,'
      '       descontar_retencion  = :descontar_retencion  ,'
      '       portes               = :portes               ,'
      '       dto_esp              = :dto_esp              ,'
      '       comision             = :comision             ,'
      '       importe_dto_esp      = :importe_dto_esp      ,'
      '       comentario3          = :comentario3          ,'
      '       codtrans             = :codtrans             ,'
      '       liquidada            = :liquidada            ,'
      '       importe4             = :importe4             ,'
      '       importe5             = :importe5             ,'
      '       importe6             = :importe6             ,'
      '       venc4                = :venc4                ,'
      '       venc5                = :venc5                ,'
      '       venc6                = :venc6                ,'
      '       recibo4              = :recibo4              ,'
      '       recibo5              = :recibo5              ,'
      '       recibo6              = :recibo6              ,'
      '       base0                = :base0                ,'
      '       subtotal             = :subtotal             ,'
      '       cuenta_ban           = :cuenta_ban           ,'
      '       referencia           = :referencia           ,'
      '       destinatario         = :destinatario         ,'
      '       pais                 = :pais                 ,'
      '       iva_portes           = :iva_portes           ,'
      '       idioma               = :idioma               ,'
      '       dtodoc_agrup         = :dtodoc_agrup         ,'
      '       dtoesp_agrup         = :dtoesp_agrup         ,'
      '       coddireccion         = :coddireccion         ,'
      '       direccion            = :direccion            ,'
      '       comision2            = :comision2            ,'
      '       coste                = :coste                ,'
      '       serie                = :serie                ,'
      '       factura_abono        = :factura_abono        ,'
      '       iban                 = :iban                 ,'
      '       bic                  = :bic                  ,'
      '       importado            = :importado            ,'
      '       fecha_import         = :fecha_import         ,'
      '       anticipo             = :anticipo             ,'
      '       devolucion_factura   = :devolucion_factura   ,'
      '       usuariomodif         = :usuariomodif '
      'WHERE  ( numfac = :old_numfac ) '
      '       AND ( serie = :old_serie ); ')
    RefreshSQL.Strings = (
      'select * from facturas '
      'WHERE  ( numfac = :numfac ) '
      '       AND ( serie = :serie ); ')
    UseSequenceFieldForRefreshSQL = False
    Left = 32
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'numfac'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codcli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nomcli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sum_base'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'base1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'base2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'base3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sum_iva'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iva1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iva2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iva3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sum_re'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 're1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 're2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 're3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sum_irpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bloqueo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iva0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impreso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numalb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f_pago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pagado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importe1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importe2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importe3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venc1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venc2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venc3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comentario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recibo1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recibo2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recibo3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'agente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contaplus'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pendiente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comentario2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_dto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importe_dto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'porcentaje_retencion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importe_retencion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'aplicada_retencion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'concepto_retencion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descontar_retencion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'portes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dto_esp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comision'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importe_dto_esp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comentario3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codtrans'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'liquidada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importe4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importe5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importe6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venc4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venc5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venc6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recibo4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recibo5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recibo6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'base0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'subtotal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cuenta_ban'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'destinatario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Pais'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iva_portes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idioma'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtodoc_agrup'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtoesp_agrup'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coddireccion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'direccion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comision2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coste'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'factura_abono'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iban'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bic'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'importado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_import'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'anticipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'devolucion_factura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuariomodif'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_numfac'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_serie'
        ParamType = ptUnknown
      end>
  end
  object zqryLinFac: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'NUMFAC, NUMERO'
    UpdateObject = zsqlLinFac
    SQL.Strings = (
      'SELECT F.codcli, '
      '             L.numfac         ,'
      '       L.codigo         ,'
      '       L.nombre         ,'
      '       L.precio         ,'
      '       L.linea          ,'
      '       L.cantidad       ,'
      '       L.p_uni          ,'
      '       L.pcoste         ,'
      '       L.numero         ,'
      '       L.iva            ,'
      '       L.imp_iva        ,'
      '       L.dto            ,'
      '       L.prop1          ,'
      '       L.prop2          ,'
      '       L.prop3          ,'
      '       L.piezas         ,'
      '       L.almacen        ,'
      '       L.neto           ,'
      '       L.dto2           ,'
      '       L.presentacion   ,'
      '       L.ubicacion      ,'
      '       L.serie          ,'
      '       L.instantemodif  ,'
      '       L.usuariomodif   '
      'FROM linfac L'
      'INNER JOIN facturas F'
      'ON L.NUMFAC = F.NUMFAC'
      'where F.codcli = :codigo_cliente')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo_cliente'
        ParamType = ptUnknown
      end>
    DataSource = frmMtoClientes.dsTablaG
    MasterFields = 'CODIGO_CLIENTE'
    LinkedFields = 'CODCLI'
    IndexFieldNames = 'NUMFAC Asc, NUMERO Asc'
    Left = 96
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo_cliente'
        ParamType = ptUnknown
      end>
  end
  object zsqlLinFac: TZUpdateSQL
    DeleteSQL.Strings = (
      'delete from linfac '
      'WHERE  ( numero = :numero ); ')
    InsertSQL.Strings = (
      'INSERT INTO linfac  ('
      '       numfac '#39',  '
      '       codigo       ,  '
      '       nombre       ,  '
      '       precio       ,  '
      '       linea        ,  '
      '       cantidad     ,  '
      '       p_uni        ,  '
      '       pcoste       ,  '
      '       numero       ,  '
      '       iva          ,  '
      '       imp_iva      ,  '
      '       dto          ,  '
      '       prop1        ,  '
      '       prop2        ,  '
      '       prop3        ,  '
      '       piezas       ,  '
      '       almacen      ,  '
      '       neto         ,  '
      '       dto2         ,  '
      '       presentacion ,  '
      '       ubicacion    ,  '
      '       serie        ,    '
      '       usuariomodif   )'
      'VALUES ('
      ':numfac       ,'
      ':codigo       ,'
      ':nombre       ,'
      ':precio       ,'
      ':linea        ,'
      ':cantidad     ,'
      ':p_uni        ,'
      ':pcoste       ,'
      ':numero       ,'
      ':iva          ,'
      ':imp_iva      ,'
      ':dto          ,'
      ':prop1        ,'
      ':prop2        ,'
      ':prop3        ,'
      ':piezas       ,'
      ':almacen      ,'
      ':neto         ,'
      ':dto2         ,'
      ':presentacion ,'
      ':ubicacion    ,'
      ':serie        ,'
      ':usuariomodif );')
    ModifySQL.Strings = (
      'UPDATE linfac '
      'SET    numfac '#39'=  :numfac       ,'
      '       codigo           =  :codigo       ,'
      '       nombre           =  :nombre       ,'
      '       precio           =  :precio       ,'
      '       linea            =  :linea        ,'
      '       cantidad         =  :cantidad     ,'
      '       p_uni            =  :p_uni        ,'
      '       pcoste           =  :pcoste       ,'
      '       numero           =  :numero       ,'
      '       iva              =  :iva          ,'
      '       imp_iva          =  :imp_iva      ,'
      '       dto              =  :dto          ,'
      '       prop1            =  :prop1        ,'
      '       prop2            =  :prop2        ,'
      '       prop3            =  :prop3        ,'
      '       piezas           =  :piezas       ,'
      '       almacen          =  :almacen      ,'
      '       neto             =  :neto         ,'
      '       dto2             =  :dto2         ,'
      '       presentacion     =  :presentacion ,'
      '       ubicacion        =  :ubicacion    ,'
      '       serie            =  :serie        ,'
      '       instantemodif    =  :instantemodif,'
      '       usuariomodif     =  :usuariomodif '
      'WHERE  ( numero = :old_numero ); ')
    RefreshSQL.Strings = (
      'select * from linfac '
      'WHERE  ( numero = :numero ); ')
    UseSequenceFieldForRefreshSQL = False
    Left = 96
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'numfac'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nombre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'linea'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cantidad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p_uni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pcoste'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numero'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iva'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imp_iva'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prop1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prop2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prop3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'piezas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'almacen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'neto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'presentacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ubicacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'instantemodif'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuariomodif'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_numero'
        ParamType = ptUnknown
      end>
  end
  object zqryTallas: TZQuery
    Connection = dmConn.ZconnGlent
    SQL.Strings = (
      'select v.nombre as VNombre,'
      '       v.apellidos as VApellidos,'
      '       v.email as VEmail,'
      '       v.nomhorma as NomHorma,'
      '       v.left_size as Left_size,'
      '       v.right_size as Right_size,'
      '       v.left_width as Left_width,'
      '       v.right_width as Right_width,'
      '       v.left_instep as Left_instep,'
      '       v.right_instep as Right_instep,'
      '       v.suplemento as Suplemento,'
      '       v.NroDoc as NroDoc,'
      '       v.Origen as Origen,'
      '       v.Fecha as Fecha,'
      '       wp.idpedidoweb as WPidpedidoweb,'
      '       wp.email as Wpemail,'
      '       CONCAT(wp.nombre,'#39' '#39', wp.apellidos) as WpNombre,'
      '       wp.facturacionnombrefiscal as wpFacturacionNombreFiscal,'
      '       wp.facturacioncif as wpFacturacionCif,'
      '       wp.facturaciondireccion1 as wpFacturacionDireccion1,'
      '       wp.facturaciondireccion2 as wpFacturacionDireccion2,'
      '       wp.facturacionciudad as wpFacturacionCiudad,'
      '       wp.facturacionpais as wpFacturacionPais,'
      '       wp.envionombre as wpEnvioNombre,'
      '       wp.envioapellidos as wpEnvioApellidos,'
      '       wp.enviodireccion1 as wpEnvioDireccion1,'
      '       wp.enviodireccion2 as wpEnvioDireccion2,'
      '       wp.enviociudad as wpEnvioCiudad,'
      '       wp.enviocodigopostal as wpEnvioCodigoPostal,'
      '       wp.envioprovincia as wpEnvioProvincia,'
      '       wp.enviopais as wpEnvioPais,'
      '       wp.metododepago as wpMetododePago,'
      '       wp.metododeenvio as wpMetododeEnvio,'
      '       wp.idmagento as wpIdMagento,'
      '       wplp.numlinea as wplpNumLinea, '
      '       wplp.descripcion as wplpDescripcion,'
      '       c.nombre as cNombre,'
      '       c.apellidos as cApellidos,'
      '       c.dni as cDni,'
      '       c.movil as cMovil,'
      '       c.direccion as cDireccion,'
      '       c.poblacion as cPoblacion,'
      '       c.provincia as cProvincia,'
      '       c.CP as cCP,'
      '       c.Pais as cPais,'
      '       c.Modalidad as cModalidad,'
      '       c.Nombre_Envio_Aux as cNombreEnvio,'
      '       c.Direccion_Envio_Aux as cDireccionEnvio,'
      '       c.CP_Envio_Aux as cCPEnvio,'
      '       c.Poblacion_Envio_Aux as cPoblacionEnvio,'
      '       c.Provincia_Envio_Aux as cProvinciaEnvio,'
      '       c.CODIGO_CLIENTE as cCodigoCliente'
      ' from v_getcustomer v'
      ''
      'inner join web_pedidos wp'
      'on v.email = wp.email'
      'and wp.idpedidoweb = :idpedidoweb'
      ''
      'inner join web_pedidos_lineas_per wplp'
      'on wplp.idpedidoweb = wp.idpedidoweb'
      'and wplp.numlinea = :numlinea'
      'and  wplp.clave = '#39'product'#39
      ''
      'inner join z_mod_cab mc'
      'on v.nomhorma = mc.nomhor'
      'and mc.codmod = wplp.valor'
      ''
      'inner join clientes c'
      'on c.codigo_cliente = (SELECT codigo_cliente '
      '                                         from clientes '
      '                                      where email = v.email'
      '                                          limit 1 )'
      ''
      'order by fecha desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
    DataSource = dsPedidosWebLineas
    Left = 184
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
  end
  object zqryHayPedidoFab: TZQuery
    Connection = dmConn.ZconnGlent
    SQL.Strings = (
      'select '#39'S'#39' '
      'from web_pedidos_lineas wpl'
      'inner join web_pedidos_lineas_per wplp'
      'on wpl.idpedidoweb = wplp.idpedidoweb'
      'and wpl.numlinea = wplp.numlinea'
      'where (wplp.clave = '#39'product'#39'  or wplp.clave = '#39'sku'#39')'
      'and wpl.idpedidoweb = :idpedidoweb'
      'and wpl.numlinea = :numlinea'
      'and wpl.NUMFAB is null')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
    DataSource = dsPedidosWebLineas
    Left = 184
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
  end
  object dtstprvdr1: TDataSetProvider
    DataSet = zqryTallas
    Left = 400
    Top = 305
  end
  object cdsPedidoWeb: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdr1'
    Left = 464
    Top = 304
    object cdsPedidoWebVNombre: TStringField
      FieldName = 'VNombre'
      Size = 200
    end
    object cdsPedidoWebVApellidos: TStringField
      FieldName = 'VApellidos'
      Size = 200
    end
    object cdsPedidoWebVEmail: TStringField
      FieldName = 'VEmail'
      Size = 200
    end
    object mfldds1NomHorma: TMemoField
      FieldName = 'NomHorma'
      BlobType = ftMemo
    end
    object mfldds1Left_size: TMemoField
      FieldName = 'Left_size'
      BlobType = ftMemo
    end
    object mfldds1Right_size: TMemoField
      FieldName = 'Right_size'
      BlobType = ftMemo
    end
    object mfldds1Left_width: TMemoField
      FieldName = 'Left_width'
      BlobType = ftMemo
    end
    object mfldds1Left_instep: TMemoField
      FieldName = 'Left_instep'
      BlobType = ftMemo
    end
    object mfldds1Right_instep: TMemoField
      FieldName = 'Right_instep'
      BlobType = ftMemo
    end
    object cdsPedidoWebSuplemento: TStringField
      FieldName = 'Suplemento'
      Size = 2
    end
    object cdsPedidoWebNroDoc: TStringField
      FieldName = 'NroDoc'
      Size = 11
    end
    object cdsPedidoWebOrigen: TStringField
      FieldName = 'Origen'
      Required = True
      Size = 14
    end
    object cdsPedidoWebFecha: TStringField
      FieldName = 'Fecha'
      Size = 10
    end
    object cdsPedidoWebWPidpedidoweb: TStringField
      FieldName = 'WPidpedidoweb'
      Required = True
      Size = 200
    end
    object cdsPedidoWebWpemail: TStringField
      FieldName = 'Wpemail'
      Size = 200
    end
    object cdsPedidoWebWpNombre: TStringField
      FieldName = 'WpNombre'
      ReadOnly = True
      Size = 401
    end
    object cdsPedidoWebwpFacturacionNombreFiscal: TStringField
      FieldName = 'wpFacturacionNombreFiscal'
      Size = 200
    end
    object cdsPedidoWebwpFacturacionCif: TStringField
      FieldName = 'wpFacturacionCif'
      Size = 50
    end
    object cdsPedidoWebwpFacturacionDireccion1: TStringField
      FieldName = 'wpFacturacionDireccion1'
      Size = 200
    end
    object cdsPedidoWebwpFacturacionDireccion2: TStringField
      FieldName = 'wpFacturacionDireccion2'
      Size = 200
    end
    object cdsPedidoWebwpFacturacionCiudad: TStringField
      FieldName = 'wpFacturacionCiudad'
      Size = 200
    end
    object cdsPedidoWebwpFacturacionPais: TStringField
      FieldName = 'wpFacturacionPais'
      Size = 100
    end
    object cdsPedidoWebwpEnvioNombre: TStringField
      FieldName = 'wpEnvioNombre'
      Size = 200
    end
    object cdsPedidoWebwpEnvioApellidos: TStringField
      FieldName = 'wpEnvioApellidos'
      Size = 200
    end
    object cdsPedidoWebwpEnvioDireccion1: TStringField
      FieldName = 'wpEnvioDireccion1'
      Size = 200
    end
    object cdsPedidoWebwpEnvioDireccion2: TStringField
      FieldName = 'wpEnvioDireccion2'
      Size = 200
    end
    object cdsPedidoWebwpEnvioCiudad: TStringField
      FieldName = 'wpEnvioCiudad'
      Size = 200
    end
    object cdsPedidoWebwpEnvioCodigoPostal: TStringField
      FieldName = 'wpEnvioCodigoPostal'
      Size = 50
    end
    object cdsPedidoWebwpEnvioProvincia: TStringField
      FieldName = 'wpEnvioProvincia'
      Size = 100
    end
    object cdsPedidoWebwpEnvioPais: TStringField
      FieldName = 'wpEnvioPais'
      Size = 100
    end
    object cdsPedidoWebwpMetododePago: TStringField
      FieldName = 'wpMetododePago'
      Size = 100
    end
    object cdsPedidoWebwpMetododeEnvio: TStringField
      FieldName = 'wpMetododeEnvio'
      Size = 100
    end
    object cdsPedidoWebwpIdMagento: TStringField
      FieldName = 'wpIdMagento'
      Size = 200
    end
    object intgrfldds1wplpNumLinea: TIntegerField
      FieldName = 'wplpNumLinea'
      Required = True
    end
    object cdsPedidoWebwplpDescripcion: TStringField
      FieldName = 'wplpDescripcion'
      Size = 200
    end
    object cdsPedidoWebcNombre: TStringField
      FieldName = 'cNombre'
      Size = 200
    end
    object cdsPedidoWebcApellidos: TStringField
      FieldName = 'cApellidos'
      Size = 200
    end
    object cdsPedidoWebcDni: TStringField
      FieldName = 'cDni'
      Size = 50
    end
    object cdsPedidoWebcMovil: TStringField
      FieldName = 'cMovil'
      Size = 40
    end
    object cdsPedidoWebcDireccion: TStringField
      FieldName = 'cDireccion'
      Size = 200
    end
    object cdsPedidoWebcPoblacion: TStringField
      FieldName = 'cPoblacion'
      Size = 200
    end
    object cdsPedidoWebcProvincia: TStringField
      FieldName = 'cProvincia'
      Size = 200
    end
    object cdsPedidoWebcCP: TStringField
      FieldName = 'cCP'
      Size = 15
    end
    object cdsPedidoWebcPais: TStringField
      FieldName = 'cPais'
      Size = 150
    end
    object cdsPedidoWebcModalidad: TStringField
      FieldName = 'cModalidad'
      Size = 200
    end
    object mfldds1cNombreEnvio: TMemoField
      FieldName = 'cNombreEnvio'
      BlobType = ftMemo
    end
    object cdsPedidoWebcDireccionEnvio: TStringField
      FieldName = 'cDireccionEnvio'
      Size = 200
    end
    object cdsPedidoWebcCPEnvio: TStringField
      FieldName = 'cCPEnvio'
      Size = 50
    end
    object cdsPedidoWebcPoblacionEnvio: TStringField
      FieldName = 'cPoblacionEnvio'
      Size = 200
    end
    object cdsPedidoWebcProvinciaEnvio: TStringField
      FieldName = 'cProvinciaEnvio'
      Size = 200
    end
    object cdsPedidoWebcCodigoCliente: TStringField
      FieldName = 'cCodigoCliente'
      Size = 10
    end
    object mfldds1Right_width: TMemoField
      FieldName = 'Right_width'
      BlobType = ftMemo
    end
  end
  object dsPedidoWeb: TDataSource
    DataSet = cdsPedidoWeb
    Left = 536
    Top = 305
  end
  object fxdstPedidoW: TfrxDBDataset
    UserName = 'Pedidos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idpedidoweb=idpedidoweb'
      'email=email'
      'nombre=nombre'
      'apellidos=apellidos'
      'facturacionnombrefiscal=facturacionnombrefiscal'
      'facturacioncif=facturacioncif'
      'facturaciondireccion1=facturaciondireccion1'
      'facturaciondireccion2=facturaciondireccion2'
      'facturacionciudad=facturacionciudad'
      'facturacioncodigopostal=facturacioncodigopostal'
      'facturacionprovincia=facturacionprovincia'
      'facturacionpais=facturacionpais'
      'envionombre=envionombre'
      'enviodireccion1=enviodireccion1'
      'enviodireccion2=enviodireccion2'
      'enviociudad=enviociudad'
      'enviocodigopostal=enviocodigopostal'
      'envioprovincia=envioprovincia'
      'enviopais=enviopais'
      'metododepago=metododepago'
      'metododeenvio=metododeenvio'
      'instantemodif=instantemodif'
      'envioapellidos=envioapellidos'
      'NUMPED=NUMPED'
      'costeenvio=costeenvio'
      'idmagento=idmagento'
      'basepedido=basepedido'
      'ivapedido=ivapedido'
      'totalpedido=totalpedido'
      'observaciones=observaciones'
      'fecha_compra=fecha_compra')
    DataSet = zqryPrintPedidoW
    Left = 648
    Top = 248
  end
  object fxdstPedidoWLinea: TfrxDBDataset
    UserName = 'Lineas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idpedidoweb=idpedidoweb'
      'identificador=identificador'
      'descripcion=descripcion'
      'numlinea=numlinea'
      'unidades=unidades'
      'precio=precio'
      'instantemodif=instantemodif'
      'NUMFAB=NUMFAB'
      'baselinea=baselinea'
      'ivalinea=ivalinea'
      'porcentajeivalinea=porcentajeivalinea')
    DataSet = zqryPrintPedidoWLineas
    Left = 752
    Top = 248
  end
  object fxdstPedidoWLineaPer: TfrxDBDataset
    UserName = 'Zapatos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idpedidoweb=idpedidoweb'
      'numlinea=numlinea'
      'clave=clave'
      'valor=valor'
      'instantemodif=instantemodif'
      'descripcion=descripcion'
      'parte=parte')
    DataSet = zqryPrintPedidoWLineasPer
    Left = 880
    Top = 248
  end
  object zqryPrintPedidoW: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'idpedidoweb; email'
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * from web_pedidos'
      '')
    Params = <>
    IndexFieldNames = 'idpedidoweb Asc; email Asc'
    Left = 648
    Top = 312
  end
  object zqryPrintPedidoWLineas: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'idpedidoweb; numlinea'
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * from v_web_pedidos_lineas '
      'where idpedidoweb = :idpedidoweb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end>
    DataSource = dsPrintPedidoW
    IndexFieldNames = 'idpedidoweb Asc; numlinea Asc'
    Left = 752
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end>
  end
  object zqryPrintPedidoWLineasPer: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'idpedidoweb; numlinea; clave'
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * '
      '   from web_pedidos_lineas_per '
      'where  idpedidoweb = :idpedidoweb'
      'and numlinea = :numlinea ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
    DataSource = dsPrintPedidoWLineas
    IndexFieldNames = 'idpedidoweb Asc; numlinea Asc; clave Asc'
    Left = 880
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
  end
  object dsPrintPedidoWLineas: TDataSource
    DataSet = zqryPrintPedidoWLineas
    Left = 752
    Top = 376
  end
  object dsPrintPedidoWLineasPer: TDataSource
    DataSet = zqryPrintPedidoWLineasPer
    Left = 880
    Top = 376
  end
  object dsPrintPedidoW: TDataSource
    DataSet = zqryPrintPedidoW
    Left = 648
    Top = 376
  end
  object zqryFotoLinea: TZQuery
    Connection = dmConn.ZconnGlent
    SQL.Strings = (
      'select valor'
      'from web_pedidos_lineas_per'
      'where clave = '#39'imagen'#39' '
      'and idpedidoweb = :idpedidoweb'
      'and numlinea = :numlinea')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
    DataSource = dsPedidosWebLineas
    Left = 184
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numlinea'
        ParamType = ptUnknown
      end>
  end
  object zspCrearFactPed: TZStoredProc
    Connection = dmConn.ZconnGlent
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end>
    StoredProcName = '`custom-server`.PRC_CREAR_FACTURA_PEDIDO_WEB'
    Left = 648
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpedidoweb'
        ParamType = ptUnknown
      end>
  end
  object zqryCrearFactura: TZQuery
    Connection = dmConn.ZconnGlent
    Params = <>
    Left = 736
    Top = 32
  end
end
