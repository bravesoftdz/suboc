object dmReferencias: TdmReferencias
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 343
  Top = 320
  Height = 379
  Width = 377
  object zqryReferenciaPadre: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'ReferenceId'
    AutoCalcFields = False
    UpdateObject = zpdtsqlReferencias
    AfterPost = zqryReferenciaPadreAfterPost
    SQL.Strings = (
      'SELECT *'
      'from glt_referencias'
      'where ReferenceFrom is null')
    Params = <>
    IndexFieldNames = 'ReferenceId Asc'
    WhereMode = wmWhereAll
    Left = 48
    Top = 80
  end
  object zpdtsqlReferencias: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM glt_referencias where ReferenceId = :ReferenceId;')
    InsertSQL.Strings = (
      'INSERT INTO glt_referencias ('
      'ReferenceDes,'
      'ReferenceFrom'
      ')  VALUES'
      '('
      ' :ReferenceDes,  '
      ' :ReferenceFrom);')
    ModifySQL.Strings = (
      'UPDATE glt_referencias '
      'SET  '
      'ReferenceId = :ReferenceId,'
      'ReferenceDes= :ReferenceDes,  '
      'ReferenceFrom= :ReferenceFrom'
      'WHERE (ReferenceId = :old_ReferenceId);')
    RefreshSQL.Strings = (
      'SELECT  ReferenceId,'
      '              ReferenceFrom,'
      '              ReferenceDes,'
      '              InstanteModif'
      ' from glt_referencias '
      'WHERE (ReferenceId = :ReferenceId)'
      'or (ReferenceID = LAST_INSERT_ID());')
    UseSequenceFieldForRefreshSQL = False
    Left = 48
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ReferenceId'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ReferenceDes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ReferenceFrom'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_ReferenceId'
        ParamType = ptUnknown
      end>
  end
  object dsReferenciaHijos: TDataSource
    DataSet = zqryReferenciaHijos
    Left = 152
    Top = 24
  end
  object zqryReferenciaHijos: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'ReferenceId'
    UpdateObject = zpdtsqlReferencias
    SQL.Strings = (
      'SELECT *'
      'from glt_referencias'
      'where ReferenceFrom is not null')
    Params = <>
    DataSource = frmMtoReferencias.dsTablaG
    MasterFields = 'ReferenceId'
    MasterSource = frmMtoReferencias.dsTablaG
    LinkedFields = 'ReferenceFrom'
    IndexFieldNames = 'ReferenceId Asc'
    WhereMode = wmWhereAll
    Left = 152
    Top = 80
  end
  object zqryReferencias: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'ReferenceDes'
    AutoCalcFields = False
    UpdateObject = zpdtsqlReferencias
    SQL.Strings = (
      'SELECT *'
      'from glt_referencias'
      'where ReferenceFrom is null')
    Params = <>
    IndexFieldNames = 'ReferenceDes Asc'
    WhereMode = wmWhereAll
    Left = 264
    Top = 88
  end
  object dsReferencias: TDataSource
    DataSet = zqryReferencias
    Left = 264
    Top = 24
  end
end
