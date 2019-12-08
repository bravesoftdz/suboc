object dmUsuarios: TdmUsuarios
  OldCreateOrder = False
  Left = 358
  Top = 263
  Height = 382
  Width = 508
  object zqryUsuarios: TZQuery
    Connection = dmConn.ZconnGlent
    Active = True
    SQL.Strings = (
      'SELECT * FROM glt_user')
    Params = <>
    Left = 32
    Top = 16
  end
  object zqryGrupos: TZQuery
    Connection = dmConn.ZconnGlent
    Active = True
    SQL.Strings = (
      'SELECT * FROM glt_user_group')
    Params = <>
    Left = 104
    Top = 16
  end
  object dsGrupos: TDataSource
    DataSet = zqryGrupos
    Left = 104
    Top = 72
  end
  object zqryUsuariosPermisos: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'Posicion'
    Active = True
    SQL.Strings = (
      'select F.Posicion, '
      '       p.Entidad, '
      '       p.Menu, '
      '       f.Formulario, '
      '       f.descripcion, '
      '       f.DescripcionMenu, '
      '       IFNULL(p.PermisoAcceso, 1) AS PermisoAcceso, '
      '       IFNULL(p.PermisoListado, 1) as PermisoListado, '
      '       IFNULL(p.PermisoEscritura, 1) as PermisoEscritura'
      'from glt_user_permisos p'
      'INNER JOIN glt_user_permisos_form f'
      'ON p.menu = f.menu '
      'Where Entidad = :NomUser'
      'ORDER BY F.Posicion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'NomUser'
        ParamType = ptUnknown
      end>
    DataSource = frmMtoUsuarios.dsTablaG
    MasterFields = 'NomUser'
    MasterSource = frmMtoUsuarios.dsTablaG
    IndexFieldNames = 'Posicion Asc'
    Left = 192
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NomUser'
        ParamType = ptUnknown
      end>
  end
  object dsUsuariosPermisos: TDataSource
    DataSet = zqryUsuariosPermisos
    Left = 192
    Top = 72
  end
end
