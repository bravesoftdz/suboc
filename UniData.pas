unit UniData;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmTablas = class(TDataModule)
    tbInmu: TADOTable;
    tbFac: TADOTable;
    tbProp: TADOTable;
    tbPrec: TADOTable;
    tbPrecTem: TADOTable;
    tbRec: TADOTable;
    tbFacD: TADOTable;
    dsInmu: TDataSource;
    dsFac: TDataSource;
    dsProp: TDataSource;
    dsPrec: TDataSource;
    dsPrecTem: TDataSource;
    dsRec: TDataSource;
    dsFacD: TDataSource;
    dsSerAct: TDataSource;
    dsTador: TDataSource;
    dsTipDoc: TDataSource;
    dsRecD: TDataSource;
    tbSerAct: TADOTable;
    tbTador: TADOTable;
    tbTipDoc: TADOTable;
    tbRecD: TADOTable;
    tbInmuCodigo: TWideStringField;
    tbInmuDireccion1: TWideStringField;
    tbInmuDireccion2: TWideStringField;
    tbInmuPoblacion: TWideStringField;
    tbInmuCodPostal: TWideStringField;
    tbInmuProvincia: TWideStringField;
    tbInmuRefCatastral: TWideStringField;
    tbFacEjercicio: TIntegerField;
    tbFacSerie: TWideStringField;
    tbFacNumDoc: TSmallintField;
    tbFacidDoc: TSmallintField;
    tbFacPropietario: TWideStringField;
    tbFacInquilino: TWideStringField;
    tbFacFechaDoc: TDateTimeField;
    tbFacRazonSocialP: TWideStringField;
    tbFacDireccion1P: TWideStringField;
    tbFacDireccion2P: TWideStringField;
    tbFacCodPostalP: TWideStringField;
    tbFacPoblacionP: TWideStringField;
    tbFacProvinciaP: TWideStringField;
    tbFacNIFP: TWideStringField;
    tbFacRazonSocialI: TWideStringField;
    tbFacDireccion1I: TWideStringField;
    tbFacDireccion2I: TWideStringField;
    tbFacCodPostalI: TWideStringField;
    tbFacPoblacionI: TWideStringField;
    tbFacProvinciaI: TWideStringField;
    tbFacNIFI: TWideStringField;
    tbFacTipoIVA: TSmallintField;
    tbFacTipoIRPF: TSmallintField;
    tbFacFormaPago: TWideStringField;
    tbFacTotalIVA: TBCDField;
    tbFacTotalIRPF: TBCDField;
    tbFacTotalAI: TBCDField;
    tbFacImpTotal: TBCDField;
    tbFacInstanteModif: TDateTimeField;
    tbPropCodigo: TWideStringField;
    tbPropNombre: TWideStringField;
    tbPropRazonSocial: TWideStringField;
    tbPropDireccion1: TWideStringField;
    tbPropDireccion2: TWideStringField;
    tbPropCodPostal: TWideStringField;
    tbPropPoblacion: TWideStringField;
    tbPropProvincia: TWideStringField;
    tbPropTelefono: TWideStringField;
    tbPropNIF: TWideStringField;
    tbFacDidDoc: TSmallintField;
    tbFacDidLinea: TSmallintField;
    tbFacDConcepto: TWideStringField;
    tbFacDInmueble: TWideStringField;
    tbFacDDesdeFecha: TDateTimeField;
    tbFacDHastaFecha: TDateTimeField;
    tbFacDImporte: TBCDField;
    tbRecidDoc: TSmallintField;
    tbRecPropietario: TWideStringField;
    tbRecInquilino: TWideStringField;
    tbRecEjercicio: TIntegerField;
    tbRecSerie: TWideStringField;
    tbRecNumDoc: TSmallintField;
    tbRecFechaDoc: TDateTimeField;
    tbRecRazonSocialP: TWideStringField;
    tbRecDireccion1P: TWideStringField;
    tbRecDireccion2P: TWideStringField;
    tbRecCodPostalP: TWideStringField;
    tbRecPoblacionP: TWideStringField;
    tbRecProvinciaP: TWideStringField;
    tbRecNIFP: TWideStringField;
    tbRecRazonSocialI: TWideStringField;
    tbRecDireccion1I: TWideStringField;
    tbRecDireccion2I: TWideStringField;
    tbRecCodPostalI: TWideStringField;
    tbRecPoblacionI: TWideStringField;
    tbRecProvinciaI: TWideStringField;
    tbRecNIFI: TWideStringField;
    tbRecTipoIVA: TSmallintField;
    tbRecTipoIRPF: TSmallintField;
    tbRecFormaPago: TWideStringField;
    tbRecTotalIVA: TBCDField;
    tbRecTotalIRPF: TBCDField;
    tbRecTotalAI: TBCDField;
    tbRecImpTotal: TBCDField;
    tbRecInstanteModif: TDateTimeField;
    tbRecFacturado: TBooleanField;
    tbPrecTemTemporada: TWideStringField;
    tbPrecTemTramoIni: TDateTimeField;
    tbPrecTemTramoFin: TDateTimeField;
    tbPrecTemPorDia: TBCDField;
    tbPrecTemPorMes: TBCDField;
    tbPrecTemPorSemana: TBCDField;
    tbPrecTemPorQuincena: TBCDField;
    tbPrecTemPorAno: TBCDField;
    tbPrecInmueble: TWideStringField;
    tbPrecTemporada: TWideStringField;
    tbPrecPorDia: TBCDField;
    tbPrecPorSemana: TBCDField;
    tbPrecPorQuincena: TBCDField;
    tbPrecPorMes: TBCDField;
    tbPrecPorAno: TBCDField;
    tbSerActPropietario: TWideStringField;
    tbSerActSerie: TWideStringField;
    tbSerActTipoDoc: TWideStringField;
    tbSerActTipoIVA: TSmallintField;
    tbTadorTipoDoc: TWideStringField;
    tbTadorSerie: TWideStringField;
    tbTadorEjercicio: TWideStringField;
    tbTadorContador: TSmallintField;
    dsTipIVA: TDataSource;
    tbTipIVA: TADOTable;
    tbTipIVAidTipoIVA: TWideStringField;
    tbTipIVATipoIVA: TSmallintField;
    tbTipIVATipoRecargo: TSmallintField;
    tbTipIRPF: TADOTable;
    dsTipIRPF: TDataSource;
    tbTipIRPFidTipoIRPF: TWideStringField;
    tbTipIRPFTipoIRPF: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTablas: TdmTablas;

implementation

uses UniDataConn;

{$R *.dfm}


end.
