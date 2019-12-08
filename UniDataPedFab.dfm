object dmPedFab: TdmPedFab
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 14
  Top = 137
  Height = 366
  Width = 636
  object zqryFabCab: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'FECHA'
    SortType = stDescending
    UpdateObject = zpdtsqlFabCab
    SQL.Strings = (
      'SELECT * '
      'from V_FABCAB;')
    Params = <>
    IndexFieldNames = 'FECHA Desc'
    Left = 40
    Top = 72
  end
  object zpdtsqlFabCab: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM z_fab_cab'
      'WHERE  ( numfab = :numfab ) '
      '       AND ( serie = :serie ); ')
    InsertSQL.Strings = (
      'INSERT INTO z_fab_cab  (    '
      '       serie  ,'
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
      '   ( :serie  ,'
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
      'SET    serie            = :serie,'
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
      'SELECT * '
      'from V_FABCAB'
      'WHERE  ( numfab = :numfab ) '
      '       AND ( serie = :serie ); ')
    UseSequenceFieldForRefreshSQL = False
    Left = 40
    Top = 128
    ParamData = <
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
      end>
  end
  object zqryFabXml: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'NUMFAB, ID'
    UpdateObject = zpdtsqlFabXml
    SQL.Strings = (
      'SELECT '
      'L.id,'
      'L.serie    ,'
      'L.numfab   ,'
      'L.codgru   ,'
      'L.codvalor ,'
      'L.nomvalor ,'
      'L.modelref ,'
      'L.importado'
      'FROM z_fab_xml L'
      'WHERE L.numfab = :numfab ;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'numfab'
        ParamType = ptUnknown
      end>
    DataSource = frmMtoPedFab.dsTablaG
    MasterFields = 'NUMFAB'
    MasterSource = frmMtoPedFab.dsTablaG
    IndexFieldNames = 'NUMFAB Asc, ID Asc'
    Left = 120
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'numfab'
        ParamType = ptUnknown
      end>
  end
  object zpdtsqlFabXml: TZUpdateSQL
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
    Left = 120
    Top = 128
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
  object dsFabXml: TDataSource
    DataSet = zqryFabXml
    Left = 120
    Top = 24
  end
  object zqryFoto: TZQuery
    Connection = dmConn.ZconnGlent
    SQL.Strings = (
      'SELECT '
      'IMAGEN'
      'from z_mod_cab'
      'WHERE CODMOD = :CODMOD ;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODMOD'
        ParamType = ptUnknown
      end>
    DataSource = frmMtoPedFab.dsTablaG
    MasterFields = 'CODMOD'
    Left = 200
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODMOD'
        ParamType = ptUnknown
      end>
  end
  object dsFoto: TDataSource
    DataSet = zqryFoto
    Left = 200
    Top = 32
  end
end
