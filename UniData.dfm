object dmTablas: TdmTablas
  OldCreateOrder = False
  Left = 313
  Top = 190
  Height = 391
  Width = 399
  object tbInmu: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inInmu'
    Left = 196
    Top = 60
    object tbInmuCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object tbInmuDireccion1: TWideStringField
      FieldName = 'Direccion1'
      Size = 200
    end
    object tbInmuDireccion2: TWideStringField
      FieldName = 'Direccion2'
      Size = 200
    end
    object tbInmuPoblacion: TWideStringField
      FieldName = 'Poblacion'
      Size = 200
    end
    object tbInmuCodPostal: TWideStringField
      FieldName = 'CodPostal'
      Size = 10
    end
    object tbInmuProvincia: TWideStringField
      FieldName = 'Provincia'
      Size = 200
    end
    object tbInmuRefCatastral: TWideStringField
      FieldName = 'RefCatastral'
      Size = 200
    end
  end
  object tbFac: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inFac'
    Left = 232
    Top = 172
    object tbFacEjercicio: TIntegerField
      FieldName = 'Ejercicio'
    end
    object tbFacSerie: TWideStringField
      FieldName = 'Serie'
      Size = 2
    end
    object tbFacNumDoc: TSmallintField
      FieldName = 'NumDoc'
    end
    object tbFacidDoc: TSmallintField
      FieldName = 'idDoc'
    end
    object tbFacPropietario: TWideStringField
      FieldName = 'Propietario'
      Size = 10
    end
    object tbFacInquilino: TWideStringField
      FieldName = 'Inquilino'
      Size = 10
    end
    object tbFacFechaDoc: TDateTimeField
      FieldName = 'FechaDoc'
    end
    object tbFacRazonSocialP: TWideStringField
      FieldName = 'RazonSocialP'
      Size = 150
    end
    object tbFacDireccion1P: TWideStringField
      FieldName = 'Direccion1P'
      Size = 200
    end
    object tbFacDireccion2P: TWideStringField
      FieldName = 'Direccion2P'
      Size = 200
    end
    object tbFacCodPostalP: TWideStringField
      FieldName = 'CodPostalP'
      Size = 10
    end
    object tbFacPoblacionP: TWideStringField
      FieldName = 'PoblacionP'
      Size = 200
    end
    object tbFacProvinciaP: TWideStringField
      FieldName = 'ProvinciaP'
      Size = 200
    end
    object tbFacNIFP: TWideStringField
      FieldName = 'NIFP'
    end
    object tbFacRazonSocialI: TWideStringField
      FieldName = 'RazonSocialI'
      Size = 150
    end
    object tbFacDireccion1I: TWideStringField
      FieldName = 'Direccion1I'
      Size = 200
    end
    object tbFacDireccion2I: TWideStringField
      FieldName = 'Direccion2I'
      Size = 200
    end
    object tbFacCodPostalI: TWideStringField
      FieldName = 'CodPostalI'
      Size = 10
    end
    object tbFacPoblacionI: TWideStringField
      FieldName = 'PoblacionI'
      Size = 200
    end
    object tbFacProvinciaI: TWideStringField
      FieldName = 'ProvinciaI'
      Size = 200
    end
    object tbFacNIFI: TWideStringField
      FieldName = 'NIFI'
    end
    object tbFacTipoIVA: TSmallintField
      FieldName = 'TipoIVA'
    end
    object tbFacTipoIRPF: TSmallintField
      FieldName = 'TipoIRPF'
    end
    object tbFacFormaPago: TWideStringField
      FieldName = 'FormaPago'
      Size = 50
    end
    object tbFacTotalIVA: TBCDField
      FieldName = 'TotalIVA'
      Precision = 19
    end
    object tbFacTotalIRPF: TBCDField
      FieldName = 'TotalIRPF'
      Precision = 19
    end
    object tbFacTotalAI: TBCDField
      FieldName = 'TotalAI'
      Precision = 19
    end
    object tbFacImpTotal: TBCDField
      FieldName = 'ImpTotal'
      Precision = 19
    end
    object tbFacInstanteModif: TDateTimeField
      FieldName = 'InstanteModif'
    end
  end
  object tbProp: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inProp'
    Left = 232
    Top = 60
    object tbPropCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object tbPropNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 150
    end
    object tbPropRazonSocial: TWideStringField
      FieldName = 'RazonSocial'
      Size = 150
    end
    object tbPropDireccion1: TWideStringField
      FieldName = 'Direccion1'
      Size = 200
    end
    object tbPropDireccion2: TWideStringField
      FieldName = 'Direccion2'
      Size = 200
    end
    object tbPropCodPostal: TWideStringField
      FieldName = 'CodPostal'
      Size = 10
    end
    object tbPropPoblacion: TWideStringField
      FieldName = 'Poblacion'
      Size = 200
    end
    object tbPropProvincia: TWideStringField
      FieldName = 'Provincia'
      Size = 200
    end
    object tbPropTelefono: TWideStringField
      FieldName = 'Telefono'
      Size = 200
    end
    object tbPropNIF: TWideStringField
      FieldName = 'NIF'
    end
  end
  object tbPrec: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inPrec'
    Left = 24
    Top = 52
    object tbPrecInmueble: TWideStringField
      FieldName = 'Inmueble'
      Size = 10
    end
    object tbPrecTemporada: TWideStringField
      FieldName = 'Temporada'
      Size = 50
    end
    object tbPrecPorDia: TBCDField
      FieldName = 'PorDia'
      Precision = 19
    end
    object tbPrecPorSemana: TBCDField
      FieldName = 'PorSemana'
      Precision = 19
    end
    object tbPrecPorQuincena: TBCDField
      FieldName = 'PorQuincena'
      Precision = 19
    end
    object tbPrecPorMes: TBCDField
      FieldName = 'PorMes'
      Precision = 19
    end
    object tbPrecPorAno: TBCDField
      FieldName = 'PorAno'
      Precision = 19
    end
  end
  object tbPrecTem: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inPrecTem'
    Left = 68
    Top = 52
    object tbPrecTemTemporada: TWideStringField
      FieldName = 'Temporada'
      Size = 50
    end
    object tbPrecTemTramoIni: TDateTimeField
      FieldName = 'TramoIni'
    end
    object tbPrecTemTramoFin: TDateTimeField
      FieldName = 'TramoFin'
    end
    object tbPrecTemPorDia: TBCDField
      FieldName = 'PorDia'
      Precision = 19
    end
    object tbPrecTemPorMes: TBCDField
      FieldName = 'PorMes'
      Precision = 19
    end
    object tbPrecTemPorSemana: TBCDField
      FieldName = 'PorSemana'
      Precision = 19
    end
    object tbPrecTemPorQuincena: TBCDField
      FieldName = 'PorQuincena'
      Precision = 19
    end
    object tbPrecTemPorAno: TBCDField
      FieldName = 'PorAno'
      Precision = 19
    end
  end
  object tbRec: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inRec'
    Left = 268
    Top = 172
    object tbRecidDoc: TSmallintField
      FieldName = 'idDoc'
    end
    object tbRecPropietario: TWideStringField
      FieldName = 'Propietario'
      Size = 10
    end
    object tbRecInquilino: TWideStringField
      FieldName = 'Inquilino'
      Size = 10
    end
    object tbRecEjercicio: TIntegerField
      FieldName = 'Ejercicio'
    end
    object tbRecSerie: TWideStringField
      FieldName = 'Serie'
      Size = 2
    end
    object tbRecNumDoc: TSmallintField
      FieldName = 'NumDoc'
    end
    object tbRecFechaDoc: TDateTimeField
      FieldName = 'FechaDoc'
    end
    object tbRecRazonSocialP: TWideStringField
      FieldName = 'RazonSocialP'
      Size = 150
    end
    object tbRecDireccion1P: TWideStringField
      FieldName = 'Direccion1P'
      Size = 200
    end
    object tbRecDireccion2P: TWideStringField
      FieldName = 'Direccion2P'
      Size = 200
    end
    object tbRecCodPostalP: TWideStringField
      FieldName = 'CodPostalP'
      Size = 10
    end
    object tbRecPoblacionP: TWideStringField
      FieldName = 'PoblacionP'
      Size = 200
    end
    object tbRecProvinciaP: TWideStringField
      FieldName = 'ProvinciaP'
      Size = 200
    end
    object tbRecNIFP: TWideStringField
      FieldName = 'NIFP'
    end
    object tbRecRazonSocialI: TWideStringField
      FieldName = 'RazonSocialI'
      Size = 150
    end
    object tbRecDireccion1I: TWideStringField
      FieldName = 'Direccion1I'
      Size = 200
    end
    object tbRecDireccion2I: TWideStringField
      FieldName = 'Direccion2I'
      Size = 200
    end
    object tbRecCodPostalI: TWideStringField
      FieldName = 'CodPostalI'
      Size = 10
    end
    object tbRecPoblacionI: TWideStringField
      FieldName = 'PoblacionI'
      Size = 200
    end
    object tbRecProvinciaI: TWideStringField
      FieldName = 'ProvinciaI'
      Size = 200
    end
    object tbRecNIFI: TWideStringField
      FieldName = 'NIFI'
    end
    object tbRecTipoIVA: TSmallintField
      FieldName = 'TipoIVA'
    end
    object tbRecTipoIRPF: TSmallintField
      FieldName = 'TipoIRPF'
    end
    object tbRecFormaPago: TWideStringField
      FieldName = 'FormaPago'
      Size = 50
    end
    object tbRecTotalIVA: TBCDField
      FieldName = 'TotalIVA'
      Precision = 19
    end
    object tbRecTotalIRPF: TBCDField
      FieldName = 'TotalIRPF'
      Precision = 19
    end
    object tbRecTotalAI: TBCDField
      FieldName = 'TotalAI'
      Precision = 19
    end
    object tbRecImpTotal: TBCDField
      FieldName = 'ImpTotal'
      Precision = 19
    end
    object tbRecInstanteModif: TDateTimeField
      FieldName = 'InstanteModif'
    end
    object tbRecFacturado: TBooleanField
      FieldName = 'Facturado'
    end
  end
  object tbFacD: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inFacD'
    Left = 304
    Top = 172
    object tbFacDidDoc: TSmallintField
      FieldName = 'idDoc'
    end
    object tbFacDidLinea: TSmallintField
      FieldName = 'idLinea'
    end
    object tbFacDConcepto: TWideStringField
      FieldName = 'Concepto'
      Size = 200
    end
    object tbFacDInmueble: TWideStringField
      FieldName = 'Inmueble'
      Size = 10
    end
    object tbFacDDesdeFecha: TDateTimeField
      FieldName = 'DesdeFecha'
    end
    object tbFacDHastaFecha: TDateTimeField
      FieldName = 'HastaFecha'
    end
    object tbFacDImporte: TBCDField
      FieldName = 'Importe'
      Precision = 19
    end
  end
  object dsInmu: TDataSource
    DataSet = tbInmu
    Left = 196
    Top = 8
  end
  object dsFac: TDataSource
    DataSet = tbFac
    Left = 232
    Top = 128
  end
  object dsProp: TDataSource
    DataSet = tbProp
    Left = 232
    Top = 8
  end
  object dsPrec: TDataSource
    DataSet = tbPrec
    Left = 24
    Top = 8
  end
  object dsPrecTem: TDataSource
    DataSet = tbPrecTem
    Left = 68
    Top = 8
  end
  object dsRec: TDataSource
    DataSet = tbRec
    Left = 268
    Top = 128
  end
  object dsFacD: TDataSource
    DataSet = tbFacD
    Left = 304
    Top = 128
  end
  object dsSerAct: TDataSource
    DataSet = tbSerAct
    Left = 20
    Top = 128
  end
  object dsTador: TDataSource
    DataSet = tbTador
    Left = 68
    Top = 128
  end
  object dsTipDoc: TDataSource
    DataSet = tbTipDoc
    Left = 112
    Top = 128
  end
  object dsRecD: TDataSource
    DataSet = tbRecD
    Left = 340
    Top = 128
  end
  object tbSerAct: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inSerAct'
    Left = 20
    Top = 176
    object tbSerActPropietario: TWideStringField
      FieldName = 'Propietario'
      Size = 10
    end
    object tbSerActSerie: TWideStringField
      FieldName = 'Serie'
      Size = 2
    end
    object tbSerActTipoDoc: TWideStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object tbSerActTipoIVA: TSmallintField
      FieldName = 'TipoIVA'
    end
  end
  object tbTador: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inTador'
    Left = 68
    Top = 176
    object tbTadorTipoDoc: TWideStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object tbTadorSerie: TWideStringField
      FieldName = 'Serie'
      Size = 2
    end
    object tbTadorEjercicio: TWideStringField
      FieldName = 'Ejercicio'
      Size = 4
    end
    object tbTadorContador: TSmallintField
      FieldName = 'Contador'
    end
  end
  object tbTipDoc: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inTipDoc'
    Left = 112
    Top = 176
  end
  object tbRecD: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inRecD'
    Left = 340
    Top = 172
  end
  object dsTipIVA: TDataSource
    DataSet = tbTipIVA
    Left = 340
    Top = 8
  end
  object tbTipIVA: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inTipIVA'
    Left = 340
    Top = 60
    object tbTipIVAidTipoIVA: TWideStringField
      FieldName = 'idTipoIVA'
      Size = 2
    end
    object tbTipIVATipoIVA: TSmallintField
      FieldName = 'TipoIVA'
    end
    object tbTipIVATipoRecargo: TSmallintField
      FieldName = 'TipoRecargo'
    end
  end
  object tbTipIRPF: TADOTable
    Connection = dmConn.ADOConn
    TableName = 'inTipIRPF'
    Left = 288
    Top = 60
    object tbTipIRPFidTipoIRPF: TWideStringField
      FieldName = 'idTipoIRPF'
      Size = 50
    end
    object tbTipIRPFTipoIRPF: TSmallintField
      FieldName = 'TipoIRPF'
    end
  end
  object dsTipIRPF: TDataSource
    DataSet = tbTipIRPF
    Left = 288
    Top = 8
  end
end
