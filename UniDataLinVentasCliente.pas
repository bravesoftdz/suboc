unit UniDataLinVentasCliente;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, inMtoPrincipal;

type
  TdmLinVentasClientes = class(TDataModule)
    zqryLinVentasClientes: TZQuery;
    dsLinVentas: TDataSource;

    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
     //dmConn:TdmConn;
  public
    constructor Create(AOwner: TComponent);
  end;

var
  dmLinVentasClientes: TdmLinVentasClientes;

implementation

{$R *.dfm}

{ TdmLinVentasClientes }

constructor TdmLinVentasClientes.Create(AOwner: TComponent);
begin
  //dmConn := TdmConn.Create(dmConn);
  //dmConn.ZconnGlent.Connect;

  inherited;

end;

procedure TdmLinVentasClientes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  with frmopenapp do
  zqryLinVentasClientes.Connection := FdmConn.ZconnGlent;
  zqryLinVentasClientes.Open;

end;

procedure TdmLinVentasClientes.DataModuleDestroy(Sender: TObject);
begin
  zqryLinVentasClientes.Close;
  //dmConn.ZconnGlent.Disconnect;
  //dmConn.Free;
end;

end.
