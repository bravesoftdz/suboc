unit UniDataLinVentas;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, inMtoPrincipal;

type
  TdmLinVentas = class(TDataModule)
    zqryLinVentas: TZQuery;
    dsLinVentas: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  private
    //dmConn:TdmConn;
  public
    constructor Create(AOwner: TComponent);
  end;

var
  dmLinVentas: TdmLinVentas;

implementation

{$R *.dfm}


constructor TDMLinVentas.Create(AOwner: TComponent);
begin
  //dmConn := TdmConn.Create(dmConn);
  //dmConn.ZconnGlent.Connect;

  inherited;
end;

procedure TdmLinVentas.DataModuleCreate(Sender: TObject);
begin
//
  inherited;
  with frmopenapp do
  zqryLinVentas.Connection := FdmConn.ZconnGlent;
  zqryLinVentas.Open;
end;

procedure TdmLinVentas.DataModuleDestroy(Sender: TObject);
begin
  zqryLinVentas.Close;
  //dmConn.ZconnGlent.Disconnect;
  //dmConn.Free;
end;

end.
