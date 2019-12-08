object dmVisitas: TdmVisitas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 206
  Top = 302
  Height = 376
  Width = 714
  object dsFacturas: TDataSource
    DataSet = zqryFacturas
    Left = 160
    Top = 104
  end
  object dsLinFac: TDataSource
    DataSet = zqryLinFac
    Left = 224
    Top = 104
  end
  object zqryFacturas: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'NUMFAC'
    SQL.Strings = (
      'SELECT * from Facturas'
      'where numfac = :NroFactura')
    Params = <
      item
        DataType = ftUnknown
        Name = 'NroFactura'
        ParamType = ptUnknown
      end>
    DataSource = dsVisitas
    MasterFields = 'NroFactura'
    MasterSource = dsVisitas
    IndexFieldNames = 'NUMFAC Asc'
    Left = 160
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NroFactura'
        ParamType = ptUnknown
      end>
  end
  object zqryLinFac: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'NUMFAC, NUMERO'
    SQL.Strings = (
      'SELECT L.numfac         ,'
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
      #9'FROM linfac L'
      #9'Where L.NUMFAC = :NUMFAC;'
      #9)
    Params = <
      item
        DataType = ftUnknown
        Name = 'NUMFAC'
        ParamType = ptUnknown
      end>
    DataSource = dsFacturas
    MasterFields = 'NUMFAC'
    MasterSource = dsFacturas
    LinkedFields = 'numfac'
    IndexFieldNames = 'NUMFAC Asc, NUMERO Asc'
    Left = 224
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NUMFAC'
        ParamType = ptUnknown
      end>
  end
  object zqryClientes: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'CODIGO_CLIENTE'
    SortType = stDescending
    SQL.Strings = (
      'SELECT * from Clientes'
      'where CODIGO_CLIENTE = (SELECT CODCLI '
      '                                                FROM  FACTURAS '
      
        '                                              WHERE  NUMFAC = :N' +
        'roFactura)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'NroFactura'
        ParamType = ptUnknown
      end>
    DataSource = dsVisitas
    MasterFields = 'NroFactura'
    MasterSource = dsVisitas
    IndexFieldNames = 'CODIGO_CLIENTE Desc'
    Left = 88
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NroFactura'
        ParamType = ptUnknown
      end>
  end
  object dsClientes: TDataSource
    DataSet = zqryClientes
    Left = 88
    Top = 104
  end
  object zqryVisitas: TZQuery
    Connection = dmConn.ZconnGlent
    UpdateObject = zpdtsqlVisitas
    SQL.Strings = (
      'select v.idVisita as idVisita,'
      '       v.Fecha as Fecha, '
      '       v.hora as Hora,'
      '       v.sexo as Sexo, '
      '       v.edad as Edad, '
      '       v.nacionalidad as Nacionalidad, '
      '       v.referencia as Referencia,'
      '       r.ReferenceDes as DesReferenciaL1, '
      '       r2.referencedes as DesReferenciaL2,'
      '       v.DesReferencia as DesReferencia, '
      '       v.OrigenRecomendacion as OrigenRecomendacion,'
      '       v.NombreRecomendacion as NombreRecomendacion,'
      '       v.HaComprado as HaComprado,'
      '       v.Nacionalidad as Nacionalidad,'
      '       v.TieneCita as TieneCita,'
      '       v.RecogeCalzado as RecogeCalzado,'
      '       v.RepiteVisita as RepiteVisita,'
      '       v.UsuarioModif as UsuarioModif,'
      '       GROUP_CONCAT(vf.NUMFAC) As Facturas,'
      '       v.InstanteModif as InstanteModif,'
      '      GROUP_CONCAT(LEFT(zf.NUMPED, 6)) As Recogidas,'
      '     v.NroFactura'
      'FROM glt_visitas v '
      'LEFT JOIN glt_visitas_facturas vf'
      'on v.idVisita = vf.IdVisita'
      'LEFT JOIN glt_visitas_recogidas vr '
      'on v.idVisita = vr.idVisita'
      'LEFT JOIN z_fab_cab zf '
      'ON vr.NUMFAB = zf.NUMFAB'
      'inner join glt_referencias r'
      'on v.referencia = r.ReferenceId'
      'inner join glt_referencias r2'
      'on v.ReferenciaL2 = r2.referenceid'
      ''
      'GROUP BY '#9'v.idVisita,'
      #9#9#9'v.Fecha, '
      #9#9#9'v.hora,'
      #9#9#9'v.sexo, '
      #9#9#9'v.edad, '
      #9#9#9'v.nacionalidad,'
      '                                                v.referencia, '
      #9#9#9'r.ReferenceDes, '
      #9#9#9'r2.referencedes,'
      #9#9#9'v.DesReferencia, '
      #9#9#9'v.OrigenRecomendacion,'
      #9#9#9'v.NombreRecomendacion,'
      #9#9#9'v.HaComprado,'
      #9#9#9'v.NroFactura,'
      #9#9#9'v.Nacionalidad,'
      #9#9#9'v.Sexo,'
      #9#9#9'v.TieneCita,'
      #9#9#9'v.RecogeCalzado,'
      #9#9#9'v.RepiteVisita,'
      #9#9#9'v.UsuarioModif,'
      '                                               v.NroFactura'
      'order by v.idvisita desc')
    Params = <>
    Left = 304
    Top = 152
  end
  object zpdtsqlVisitas: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM `glt_visitas`'
      'WHERE'
      '  `glt_visitas`.`idVisita` = :OLD_idVisita')
    InsertSQL.Strings = (
      'INSERT INTO glt_visitas '
      '       (     sexo ,'
      '             edad               ,'
      '             nacionalidad       ,'
      '             referencia         ,'
      '             referencial2       ,'
      '             desreferencia      ,'
      '             fecha              ,'
      '             hora               ,'
      '             origenrecomendacion,'
      '             nombrerecomendacion,'
      '             hacomprado         ,'
      '             repitevisita       ,'
      '             usuariomodif       ,'
      '             idvisita           ,'
      '             tienecita          ,'
      '             recogecalzado      '
      '        )'
      '      VALUES ('
      '       :sexo  ,'
      '       :edad                ,'
      '       :nacionalidad        ,'
      '       :referencia          ,'
      '       :referencial2        ,'
      '       :desreferencia       ,'
      '       :fecha               ,'
      '       :hora                ,'
      '       :origenrecomendacion ,'
      '       :nombrerecomendacion ,'
      '       :hacomprado          ,'
      '       :repitevisita        ,'
      '       :usuariomodif        ,'
      '       :idvisita            ,'
      '       :tienecita           ,'
      '       :recogecalzado       );')
    ModifySQL.Strings = (
      'UPDATE glt_visitas '
      '      SET    sexo  = :sexo ,'
      '             edad                =  :edad                 ,'
      '             nacionalidad        =  :nacionalidad         ,'
      '             referencia          =  :referencia           ,'
      '             referencial2        =  :referencial2         ,'
      '             desreferencia       =  :desreferencia        ,'
      '             fecha               =  :fecha                ,'
      '             hora                =  :hora                 ,'
      '             origenrecomendacion =  :origenrecomendacion  ,'
      '             nombrerecomendacion =  :nombrerecomendacion  ,'
      '             hacomprado          =  :hacomprado           ,'
      '             repitevisita        =  :repitevisita         ,'
      '             usuariomodif        =  :usuariomodif         ,'
      '             instantemodif       =  :instantemodif        ,'
      '             idvisita            =  :idvisita             ,'
      '             tienecita           =  :tienecita            ,'
      '             recogecalzado       =  :recogecalzado  '
      '      WHERE  ( idvisita = :old_idvisita ); ')
    RefreshSQL.Strings = (
      'select v.idVisita as idVisita,'
      '       v.Fecha as Fecha, '
      '       v.hora as Hora,'
      '       v.sexo as Sexo, '
      '       v.edad as Edad, '
      '       v.nacionalidad as Nacionalidad, '
      '       v.referencia as Referencia,'
      '       r.ReferenceDes as DesReferenciaL1, '
      '       r2.referencedes as DesReferenciaL2,'
      '       v.DesReferencia as DesReferencia, '
      '       v.OrigenRecomendacion as OrigenRecomendacion,'
      '       v.NombreRecomendacion as NombreRecomendacion,'
      '       v.HaComprado as HaComprado,'
      '       v.Nacionalidad as Nacionalidad,'
      '       v.TieneCita as TieneCita,'
      '       v.RecogeCalzado as RecogeCalzado,'
      '       v.RepiteVisita as RepiteVisita,'
      '       v.UsuarioModif as UsuarioModif,'
      '       GROUP_CONCAT(vf.NUMFAC) As Facturas,'
      '       v.InstanteModif as InstanteModif,'
      #9'   GROUP_CONCAT(vr.NUMFAB) As Recogidas'
      'FROM glt_visitas v '
      'LEFT JOIN glt_visitas_facturas vf'
      'on v.idVisita = vf.IdVisita'
      'LEFT JOIN glt_visitas_recogidas vr'
      'on v.idVisita = vr.idVisita'
      'inner join glt_referencias r'
      'on v.referencia = r.ReferenceId'
      'inner join glt_referencias r2'
      'on v.ReferenciaL2 = r2.referenceid'
      ''
      'where V.idvisita = :idvisita OR '
      'v.idvisita = LAST_INSERT_ID()'
      ''
      'GROUP BY '#9'v.idVisita,'
      #9#9#9'v.Fecha, '
      #9#9#9'v.hora,'
      #9#9#9'v.sexo, '
      #9#9#9'v.edad, '
      #9#9#9'v.nacionalidad,'
      '                                                v.referencia, '
      #9#9#9'r.ReferenceDes, '
      #9#9#9'r2.referencedes,'
      #9#9#9'v.DesReferencia, '
      #9#9#9'v.OrigenRecomendacion,'
      #9#9#9'v.NombreRecomendacion,'
      #9#9#9'v.HaComprado,'
      #9#9#9'v.NroFactura,'
      #9#9#9'v.Nacionalidad,'
      #9#9#9'v.Sexo,'
      #9#9#9'v.TieneCita,'
      #9#9#9'v.RecogeCalzado,'
      #9#9#9'v.RepiteVisita,'
      #9#9#9'v.UsuarioModif')
    UseSequenceFieldForRefreshSQL = False
    Left = 304
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sexo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'edad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nacionalidad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'referencial2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desreferencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'origenrecomendacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nombrerecomendacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hacomprado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'repitevisita'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuariomodif'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'instantemodif'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idvisita'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tienecita'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recogecalzado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_idvisita'
        ParamType = ptUnknown
      end>
  end
  object dsVisitas: TDataSource
    DataSet = zqryVisitas
    Left = 304
    Top = 104
  end
  object zqryReferenciaPadre: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'ReferenceId'
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT *'
      'from glt_referencias'
      'where ReferenceFrom is null')
    Params = <>
    IndexFieldNames = 'ReferenceId Asc'
    WhereMode = wmWhereAll
    Left = 392
    Top = 152
  end
  object dsRefPadre: TDataSource
    DataSet = zqryReferenciaPadre
    Left = 392
    Top = 104
  end
  object zqryReferenciaHijos: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'ReferenceId'
    SQL.Strings = (
      'SELECT *'
      'from glt_referencias'
      'where ReferenceFrom is not null')
    Params = <>
    DataSource = frmMtoReferencias.dsTablaG
    MasterFields = 'Referencia'
    MasterSource = dsVisitas
    LinkedFields = 'ReferenceFrom'
    IndexFieldNames = 'ReferenceId Asc'
    WhereMode = wmWhereAll
    Left = 504
    Top = 152
  end
  object dsReferenciaHijos: TDataSource
    DataSet = zqryReferenciaHijos
    Left = 504
    Top = 104
  end
end
