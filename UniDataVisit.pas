unit UniDataVisit;

interface

uses
  SysUtils, Classes, inMtoPrincipal, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TdmVisitas = class(TDataModule)
    dsFacturas: TDataSource;
    dsLinFac: TDataSource;
    zqryFacturas: TZQuery;
    zqryLinFac: TZQuery;
    zqryClientes: TZQuery;
    dsClientes: TDataSource;
    zqryVisitas: TZQuery;
    zpdtsqlVisitas: TZUpdateSQL;
    dsVisitas: TDataSource;
    zqryReferenciaPadre: TZQuery;
    dsRefPadre: TDataSource;
    zqryReferenciaHijos: TZQuery;
    dsReferenciaHijos: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);

  private
        //dmConn:TdmConn;
  public
    constructor Create(AOwner:TComponent);
  end;

var
  dmVisitas: TdmVisitas;

implementation

{$R *.dfm}

constructor TdmVisitas.Create(AOwner: TComponent);
begin
  //dmConn := TdmConn.Create(dmConn);
  //dmConn.ZconnGlent.Connect;
  inherited;
end;

procedure TdmVisitas.DataModuleCreate(Sender: TObject);
begin
  with frmopenapp do
  begin
    zqryVisitas.Connection := FDmConn.ZconnGlent;
    zqryReferenciaPadre.Connection := FDmConn.ZconnGlent;
    zqryReferenciaHijos.Connection := FDmConn.ZconnGlent;
    zqryFacturas.Connection := FDmConn.ZconnGlent;
    zqryClientes.Connection := FDmConn.ZconnGlent;
    zqryLinfac.Connection := FdmConn.ZconnGlent;
  end;
  zqryReferenciaPadre.Open;
  zqryReferenciaHijos.Open;
  zqryFacturas.Open;
  zqryLinfac.Open;
  zqryClientes.Open;
  zqryVisitas.Open;
  zqryVisitas.UpdateObject := zpdtsqlVisitas;
end;

procedure TdmVisitas.DataModuleDestroy(Sender: TObject);
begin

  zqryReferenciaHijos.Close;
  zqryReferenciaPadre.Close;
  zqryClientes.Close;
  zqryFacturas.Close;
  zqryLinfac.Close;
  zqryVisitas.Close;
  //dmConn.ZconnGlent.DisConnect;
  //dmConn.Free;
end;



end.
