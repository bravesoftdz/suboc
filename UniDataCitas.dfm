object dmCitas: TdmCitas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Top = 252
  Height = 331
  Width = 800
  object zqryCitas: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'AppointmentId'
    UpdateObject = zpdtsqlCitas
    SQL.Strings = (
      'SELECT * from web_Citas')
    Params = <>
    IndexFieldNames = 'AppointmentId Asc'
    Left = 88
    Top = 152
  end
  object zpdtsqlCitas: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM web_citas where appointmentid = :appointmentid;')
    InsertSQL.Strings = (
      'INSERT INTO `web_citas` '
      '(`appointmentid` ,'
      '  `starttime`,'
      '  `endtime`,'#9#9
      ' `tienda` , '#9#9
      ' `podologo` , '#9
      ' `idclienteweb` , '
      ' `observaciones` ,'
      ' `location` , '#9
      ' `subject`  '#9
      ')'#9'VALUES'#9'('
      '     '#9':appointmentid,'
      '                :startime,'
      '                :endtime,'
      '            '#9':tienda, '
      '       '#9':podologo, '
      '       '#9':idclienteweb`, '
      '                :observaciones,  '
      '       '#9':location,'
      '       '#9':subject'
      #9#9');')
    ModifySQL.Strings = (
      'UPDATE `web_citas` '
      'SET    appointmentid = :appointmentid,'
      '       starttime = :starttime,'
      '       endtime = :endtime,'
      '       tienda = :tienda, '
      '       podologo = :podologo, '
      '       idclienteweb = :idclienteweb, '
      '       observaciones = :observaciones,  '
      '       location = :location,'
      '       subject =  :subject'
      'WHERE  ( appointmentid = :old_appointmentid); ')
    RefreshSQL.Strings = (
      'select * from web_citas where appointmentid= :appointmentid'
      'or appointmentid = LAST_INSERT_ID();')
    UseSequenceFieldForRefreshSQL = False
    Left = 88
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'appointmentid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'starttime'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'endtime'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tienda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'podologo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idclienteweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'observaciones'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'location'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'subject'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_appointmentid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'startime'
        ParamType = ptUnknown
      end>
  end
  object zqryWebClientes: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'email'
    UpdateObject = zpdtsqlWebClientes
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * from web_clientes'
      'where email= :IdClienteWeb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdClienteWeb'
        ParamType = ptUnknown
      end>
    DataSource = frmMtoCitas.dsTablaG
    IndexFieldNames = 'email Asc'
    Left = 192
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdClienteWeb'
        ParamType = ptUnknown
      end>
  end
  object zpdtsqlWebClientes: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM web_citas where appointmentid = :appointmentid;')
    InsertSQL.Strings = (
      'INSERT INTO `web_citas` '
      '(`appointmentid` ,'
      '  `starttime`,'
      '  `endtime`,'#9#9
      ' `tienda` , '#9#9
      ' `podologo` , '#9
      ' `idclienteweb` , '
      ' `observaciones` ,'
      ' `location` , '#9
      ' `subject`  '#9
      ')'#9'VALUES'#9'('
      '     '#9':appointmentid,'
      '                :startime,'
      '                :endtime,'
      '            '#9':tienda, '
      '       '#9':podologo, '
      '       '#9':idclienteweb`, '
      '                :observaciones,  '
      '       '#9':location,'
      '       '#9':subject'
      #9#9');')
    ModifySQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'select * from web_citas where appointmentid= :appointmentid'
      'or appointmentid = LAST_INSERT_ID();')
    UseSequenceFieldForRefreshSQL = False
    Left = 192
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'appointmentid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'startime'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'endtime'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tienda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'podologo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idclienteweb'
        ParamType = ptUnknown
      end>
  end
  object dsWebClientes: TDataSource
    DataSet = zqryWebClientes
    Left = 192
    Top = 104
  end
  object fxdstPrintCitasPer: TfrxDBDataset
    UserName = 'Zapatos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PerId=PerId'
      'AppointmentId=AppointmentId'
      'Linea=Linea'
      'clave=clave'
      'valor=valor'
      'instantemodif=instantemodif'
      'descripcion=descripcion'
      'parte=parte')
    DataSet = zqryPrintCitasPer
    Left = 504
    Top = 104
  end
  object zqryPrintCitasPer: TZQuery
    Connection = dmConn.ZconnGlent
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * from web_citas_per'
      'where appointmentid = :appointmentid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'appointmentid'
        ParamType = ptUnknown
      end>
    DataSource = dsPrintCitas
    Left = 504
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'appointmentid'
        ParamType = ptUnknown
      end>
  end
  object dsPrintCitasPer: TDataSource
    DataSet = zqryPrintCitasPer
    Left = 504
    Top = 200
  end
  object zqryCitasPer: TZQuery
    Connection = dmConn.ZconnGlent
    SortedFields = 'appointmentid'
    UpdateObject = zpdtsqlCitasPer
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * from web_citas_per'
      'where appointmentid = :appointmentid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'appointmentid'
        ParamType = ptUnknown
      end>
    DataSource = frmMtoCitas.dsTablaG
    IndexFieldNames = 'appointmentid Asc'
    Left = 272
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'appointmentid'
        ParamType = ptUnknown
      end>
  end
  object zpdtsqlCitasPer: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM web_citas where appointmentid = :appointmentid;')
    InsertSQL.Strings = (
      'INSERT INTO `web_citas` '
      '(`appointmentid` ,'
      '  `starttime`,'
      '  `endtime`,'#9#9
      ' `tienda` , '#9#9
      ' `podologo` , '#9
      ' `idclienteweb` , '
      ' `observaciones` ,'
      ' `location` , '#9
      ' `subject`  '#9
      ')'#9'VALUES'#9'('
      '     '#9':appointmentid,'
      '                :startime,'
      '                :endtime,'
      '            '#9':tienda, '
      '       '#9':podologo, '
      '       '#9':idclienteweb`, '
      '                :observaciones,  '
      '       '#9':location,'
      '       '#9':subject'
      #9#9');')
    ModifySQL.Strings = (
      'UPDATE `web_citas` '
      'SET    appointmentid = :appointmentid,'
      '       starttime = :starttime,'
      '       endtime = :endtime,'
      '       tienda = :tienda, '
      '       podologo = :podologo, '
      '       idclienteweb = :idclienteweb, '
      '       observaciones = :observaciones,  '
      '       location = :location,'
      '       subject =  :subject'
      'WHERE  ( appointmentid = :old_appointmentid); ')
    RefreshSQL.Strings = (
      'select * from web_citas where appointmentid= :appointmentid'
      'or appointmentid = LAST_INSERT_ID();')
    UseSequenceFieldForRefreshSQL = False
    Left = 272
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'appointmentid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'starttime'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'endtime'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tienda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'podologo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idclienteweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'observaciones'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'location'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'subject'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_appointmentid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'startime'
        ParamType = ptUnknown
      end>
  end
  object dsCitasPer: TDataSource
    DataSet = zqryCitasPer
    Left = 272
    Top = 104
  end
  object fxdstPrintCitas: TfrxDBDataset
    UserName = 'Citas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AppointmentId=AppointmentId'
      'Anno=Anno'
      'Mes=Mes'
      'Dia=Dia'
      'HoraInicio=HoraInicio'
      'HoraFin=HoraFin'
      'Tienda=Tienda'
      'Podologo=Podologo'
      'IdClienteWeb=IdClienteWeb'
      'Observaciones=Observaciones'
      'InstanteModif=instantemodif'
      'StartTime=StartTime'
      'EndTime=EndTime'
      'ResourceId=ResourceId'
      'Location=Location'
      'Subject=Subject'
      'Description=Description'
      'Label=Label'
      'AllDay=AllDay'
      'RecurrenceInfo=RecurrenceInfo'
      'ReminderInfo=ReminderInfo'
      'Type=Type'
      'Status=Status'
      'CalendarTypeId=CalendarTypeId'
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
      'instantemodif_1=instantemodif_1'
      'telefonomovil=telefonomovil'
      'envioapellidos=envioapellidos'
      'idmagento=idmagento')
    DataSet = zqryPrintCitas
    Left = 400
    Top = 104
  end
  object zqryPrintCitas: TZQuery
    Connection = dmConn.ZconnGlent
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * from web_citas'
      'LEFT JOIN web_clientes'
      'on web_citas.IdClienteWeb = web_clientes.email'
      '')
    Params = <>
    Left = 400
    Top = 152
  end
  object dsPrintCitas: TDataSource
    DataSet = zqryPrintCitas
    Left = 400
    Top = 200
  end
end
