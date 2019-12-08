unit UniDataPedWeb;

interface

uses
  SysUtils, Classes, ZSqlUpdate, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, inmtoPrincipal, DBClient, Provider, frxClass, frxDBSet,
  ZStoredProcedure;

type
  TdmPedWeb = class(TDataModule)
    dsClientes: TDataSource;
    dsPedidosWebLineas: TDataSource;
    zqryPedidosWeb: TZQuery;
    zqryPedidosWebLineas: TZQuery;
    dsPedidosWebLineasPer: TDataSource;
    zqryPedidosWebLineasPer: TZQuery;
    zsqlPedidosWeb: TZUpdateSQL;
    zsqlPedidosWebLineas: TZUpdateSQL;
    zsqlPedidosWebLineasPer: TZUpdateSQL;
    zqryClientes: TZQuery;
    zsqlClientes: TZUpdateSQL;
    dsFabCab: TDataSource;
    dsFabXml: TDataSource;
    zqryFabCab: TZQuery;
    zsqlFabCab: TZUpdateSQL;
    zqryFabXml: TZQuery;
    zsqlFabXml: TZUpdateSQL;
    dsFacturas: TDataSource;
    dsLinFac: TDataSource;
    zqryFacturas: TZQuery;
    zsqlFacturas: TZUpdateSQL;
    zqryLinFac: TZQuery;
    zsqlLinFac: TZUpdateSQL;
    zqryTallas: TZQuery;
    zqryHayPedidoFab: TZQuery;
    dtstprvdr1: TDataSetProvider;
    cdsPedidoWeb: TClientDataSet;
    cdsPedidoWebVNombre: TStringField;
    cdsPedidoWebVApellidos: TStringField;
    cdsPedidoWebVEmail: TStringField;
    mfldds1NomHorma: TMemoField;
    mfldds1Left_size: TMemoField;
    mfldds1Right_size: TMemoField;
    mfldds1Left_width: TMemoField;
    mfldds1Left_instep: TMemoField;
    mfldds1Right_instep: TMemoField;
    cdsPedidoWebSuplemento: TStringField;
    cdsPedidoWebNroDoc: TStringField;
    cdsPedidoWebOrigen: TStringField;
    cdsPedidoWebFecha: TStringField;
    cdsPedidoWebWPidpedidoweb: TStringField;
    cdsPedidoWebWpemail: TStringField;
    cdsPedidoWebWpNombre: TStringField;
    cdsPedidoWebwpFacturacionNombreFiscal: TStringField;
    cdsPedidoWebwpFacturacionCif: TStringField;
    cdsPedidoWebwpFacturacionDireccion1: TStringField;
    cdsPedidoWebwpFacturacionDireccion2: TStringField;
    cdsPedidoWebwpFacturacionCiudad: TStringField;
    cdsPedidoWebwpFacturacionPais: TStringField;
    cdsPedidoWebwpEnvioNombre: TStringField;
    cdsPedidoWebwpEnvioApellidos: TStringField;
    cdsPedidoWebwpEnvioDireccion1: TStringField;
    cdsPedidoWebwpEnvioDireccion2: TStringField;
    cdsPedidoWebwpEnvioCiudad: TStringField;
    cdsPedidoWebwpEnvioCodigoPostal: TStringField;
    cdsPedidoWebwpEnvioProvincia: TStringField;
    cdsPedidoWebwpEnvioPais: TStringField;
    cdsPedidoWebwpMetododePago: TStringField;
    cdsPedidoWebwpMetododeEnvio: TStringField;
    cdsPedidoWebwpIdMagento: TStringField;
    intgrfldds1wplpNumLinea: TIntegerField;
    cdsPedidoWebwplpDescripcion: TStringField;
    cdsPedidoWebcNombre: TStringField;
    cdsPedidoWebcApellidos: TStringField;
    cdsPedidoWebcDni: TStringField;
    cdsPedidoWebcMovil: TStringField;
    cdsPedidoWebcDireccion: TStringField;
    cdsPedidoWebcPoblacion: TStringField;
    cdsPedidoWebcProvincia: TStringField;
    cdsPedidoWebcCP: TStringField;
    cdsPedidoWebcPais: TStringField;
    cdsPedidoWebcModalidad: TStringField;
    mfldds1cNombreEnvio: TMemoField;
    cdsPedidoWebcDireccionEnvio: TStringField;
    cdsPedidoWebcCPEnvio: TStringField;
    cdsPedidoWebcPoblacionEnvio: TStringField;
    cdsPedidoWebcProvinciaEnvio: TStringField;
    cdsPedidoWebcCodigoCliente: TStringField;
    mfldds1Right_width: TMemoField;
    dsPedidoWeb: TDataSource;
    fxdstPedidoW: TfrxDBDataset;
    fxdstPedidoWLinea: TfrxDBDataset;
    fxdstPedidoWLineaPer: TfrxDBDataset;
    zqryPrintPedidoW: TZQuery;
    zqryPrintPedidoWLineas: TZQuery;
    zqryPrintPedidoWLineasPer: TZQuery;
    dsPrintPedidoWLineas: TDataSource;
    dsPrintPedidoWLineasPer: TDataSource;
    dsPrintPedidoW: TDataSource;
    zqryFotoLinea: TZQuery;
    zspCrearFactPed: TZStoredProc;
    zqryCrearFactura: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
        //dmConn:TdmConn;
  public
       constructor Create(AOwner: TComponent);
  end;

var
  dmPedWeb: TdmPedWeb;

implementation

uses
  inMtoPedWeb;

{$R *.dfm}

constructor TdmPedWeb.Create(AOwner: TComponent);
begin
  //dmConn := TdmConn.Create(dmConn);
  //dmConn.ZconnGlent.Connect;

  inherited;
end;

procedure TdmPedWeb.DataModuleCreate(Sender: TObject);
begin
  with frmopenapp do
  begin
    zqryPedidosWeb.Connection := FdmConn.ZconnGlent;
    zqryPedidosWebLineas.Connection := FdmConn.ZconnGlent;
    zqryPedidosWebLineasPer.Connection := FdmConn.ZconnGlent;
    zqryClientes.Connection := FDmConn.ZconnGlent;
    zqryFacturas.Connection := FdmConn.ZconnGlent;
    zqryLinFac.Connection := FdmConn.ZconnGlent;
    zqryFabCab.Connection := FdmConn.ZconnGlent;
    zqryFabXml.Connection := FdmConn.ZconnGlent;
    zqryTallas.Connection := FdmConn.ZconnGlent;
    zqryHayPedidoFab.Connection := FdmConn.ZconnGlent;
    zspCrearFactPed.Connection := FdmConn.ZconnGlent;
    zqryCrearFactura.Connection := FdmConn.ZconnGlent;
  end;
  zqryPedidosWeb.Open;
  zqryPedidosWebLineas.Open;
  zqryPedidosWebLineasPer.Open;
end;

procedure TdmPedWeb.DataModuleDestroy(Sender: TObject);
begin

  zqryPedidosWebLineas.Close;
  zqryPedidosWebLineasPer.Close;
  zqryPedidosWeb.Close;
  //dmConn.ZconnGlent.Disconnect;
  //dmConn.Free;
end;

end.
