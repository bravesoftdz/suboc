unit UniDataPedFab;

interface

uses
  SysUtils, Classes, ZSqlUpdate, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, inMtoPrincipal;

type
  TdmPedFab = class(TDataModule)
    zqryFabCab: TZQuery;
    zpdtsqlFabCab: TZUpdateSQL;
    zqryFabXml: TZQuery;
    zpdtsqlFabXml: TZUpdateSQL;
    dsFabXml: TDataSource;
    zqryFoto: TZQuery;
    dsFoto: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    //dmConn:TdmConn;
  public
    constructor Create(AOwner: TComponent);
  end;

var
  dmPedFab: TdmPedFab;

implementation

uses
  inMtoPedFab;

{$R *.dfm}

{ TdmPedFab }

constructor TdmPedFab.Create(AOwner: TComponent);
begin
  //dmConn := TdmConn.Create(dmConn);
  //dmConn.ZconnGlent.Connect;
  inherited;
end;

procedure TdmPedFab.DataModuleCreate(Sender: TObject);
begin
  with frmopenapp do
  begin
  zqryFabCab.Connection := FdmConn.ZconnGlent;
  zqryFabXml.Connection := FdmConn.ZconnGlent;
  zqryFoto.Connection := FdmConn.ZconnGlent;
  end;
  zqryFoto.Active := False;
  zqryFabCab.Active := False;
  zqryFabXml.Active := False;
  zqryFoto.Open;
  zqryFabCab.Open;
  zqryFabXml.Open;
end;

procedure TdmPedFab.DataModuleDestroy(Sender: TObject);
begin
  zqryFabCab.Close;
  zqryFabXml.Close;
  //dmConn.ZconnGlent.Disconnect;
  //dmConn.Free;
end;

end.
