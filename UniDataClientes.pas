
unit UniDataClientes;

interface

uses
  SysUtils, Vcl.Dialogs, Classes, DB, MemDS, inMtoPrincipal,
  DBAccess, Uni;

type
  TDMClientes = class(TDataModule)
    dsFacturas: TDataSource;
    dsLinFac: TDataSource;
    dsHistoria: TDataSource;
    unqryClientes: TUniQuery;
    unqryFacturas: TUniQuery;
    unqryLinFac: TUniQuery;
    unqryHistoria: TUniQuery;
    unstrdprcContador: TUniStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure unqryClientesAfterInsert(DataSet: TDataSet);
    procedure unqryClientesBeforePost(DataSet: TDataSet);
  private
     procedure NuevoCliente;
  public
    constructor Create(AOwner: TComponent);
  end;
var
  dmClientes: TDMClientes;

implementation

uses
  inMtoClientes;

{$R *.dfm}

constructor TDMClientes.Create(AOwner: TComponent);
begin
  //dmConn := TdmConn.Create(dmConn);
  //dmConn.ZconnGlent.Connect;
  inherited;
end;

procedure TDMClientes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  with frmopenapp do
  begin
//    zqryClientes.Connection := FdmConn.ZconnGlent;
//    zqryHistoria.Connection := FDmConn.ZconnGlent;
//    zqryFacturas.Connection := FDmConn.ZconnGlent;
//    zqryLinFac.Connection := FDmConn.ZconnGlent;
      unqryLinFac.Connection := FDmConn.conUni;
      unqryFacturas.Connection := FDmConn.conUni;
      unqryLinFac.Connection := FDmConn.conUni;
      unqryHistoria.Connection := FDmConn.conUni;
      unstrdprcContador.Connection := FDmConn.conUni;
  end;
  unqryClientes.Open;
  unqryHistoria.Open;
  unqryFacturas.Open;
  unqryLinFac.Open;
end;

procedure TDMClientes.DataModuleDestroy(Sender: TObject);
begin
  unqryHistoria.Close;
  unqryFacturas.Close;
  unqryLinFac.Close;
  unqryClientes.Close;
end;

procedure TDMClientes.NuevoCliente;
begin
  if unqryClientes.FindField('CODIGO_CLIENTE').AsString = '0' then
  begin
    with unstrdprcContador do
    begin
      Params.Clear;
      Params.CreateParam(ftString, 'ptipodoc', ptInput);
      Params.CreateParam(ftInteger, 'pcont', ptOutput);
      ParamByName('ptipodoc').AsString :=  'CL';
      ExecProc;
      unqryClientes.FindField('CODIGO_CLIENTE').AsString := ParamByName('pcont').AsString;
    end;
  end;
end;

procedure TDMClientes.unqryClientesAfterInsert(DataSet: TDataSet);
begin
  unqryClientes.FieldByName('CODIGO_CLIENTE').ASSTRING := '0';
end;

procedure TDMClientes.unqryClientesBeforePost(DataSet: TDataSet);
begin
  NuevoCliente;
end;

end.
