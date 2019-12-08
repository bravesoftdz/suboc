unit UniDataCitas;

interface

uses
  SysUtils, Classes, inMtoPrincipal, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TdmCitas = class(TDataModule)
    zqryCitas: TZQuery;
    zpdtsqlCitas: TZUpdateSQL;
    zqryWebClientes: TZQuery;
    zpdtsqlWebClientes: TZUpdateSQL;
    dsWebClientes: TDataSource;
    fxdstPrintCitasPer: TfrxDBDataset;
    zqryPrintCitasPer: TZQuery;
    dsPrintCitasPer: TDataSource;
    zqryCitasPer: TZQuery;
    zpdtsqlCitasPer: TZUpdateSQL;
    dsCitasPer: TDataSource;
    fxdstPrintCitas: TfrxDBDataset;
    zqryPrintCitas: TZQuery;
    dsPrintCitas: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    //dmConn:TdmConn;
  public
   constructor Create(AOwner: TComponent);
  end;

var
  dmCitas: TdmCitas;

implementation

uses
  inMtoCitas;

{$R *.dfm}

{ TdmCitas }

constructor TdmCitas.Create(AOwner: TComponent);
begin
  //dmConn := TdmConn.Create(dmConn);
  //dmConn.ZconnGlent.Connect;
  inherited;
end;

procedure TdmCitas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  with frmopenapp do
  begin
    zqryCitas.Connection       := FdmConn.ZconnGlent;
    zqryWebClientes.Connection := FdmConn.ZconnGlent;
    zqryCitasPer.Connection    := Fdmconn.ZconnGlent;
  end;
  zqryCitas.Open;
  zqryWebClientes.Open;
  zqryCitasPer.Open;
end;

procedure TdmCitas.DataModuleDestroy(Sender: TObject);
begin
  zqryCitas.Close;
  zqryWebClientes.Close;
  zqryCitasPer.Close;

  //dmConn.ZconnGlent.Disconnect;
  //dmConn.Free;
end;

end.
