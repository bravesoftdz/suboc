
unit UniDataHistoriaClientes;

interface

uses
  SysUtils, Vcl.Dialogs, Classes, DB, inMtoPrincipal, MemDS,
  DBAccess, Uni;

type
  TDMHistoriaClientes = class(TDataModule)
    unqryHistoria: TUniQuery;
    unqryArtDataHis: TUniQuery;
    unqryCliDataHis: TUniQuery;
    unqryDocDataHis: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
//    procedure zqryClientesAfterInsert(DataSet: TDataSet);
//    procedure zqryClientesBeforePost(DataSet: TDataSet);
  private

  public

    procedure CopiarArticulosaHistoria;
    procedure CopiarOdontologoaHistoria;
    procedure CopiarClienteaHistoria;
  end;
var
  dmHistoriaClientes: TDMHistoriaClientes;

implementation

uses
  inMtoHistoriaClientes;

{$R *.dfm}

procedure TDMHistoriaClientes.CopiarArticulosaHistoria;
begin
    with unqryHistoria do
    begin
      if ((State <> dsEdit) or (State <> dsInsert)) then
        Edit;
      FindField('CODIGO_ARTICULO').AsString :=
                           unqryArtDataHis.FindField('CODIGO_ARTICULO').AsString;
      FindField('DESCRIPCION_ARTICULO').AsString :=
                           unqryArtDataHis.FindField('DESCRIPCION_ARTICULO').AsString;
      //MsgBox para elegir precio o no.
      FindField('PRECIOVENTA_ARTICULO').AsString :=
                           unqryArtDataHis.FindField('PRECIOVENTA_ARTICULO').AsString;
    end;
end;

procedure TDMHistoriaClientes.CopiarClienteaHistoria;
begin
      with unqryHistoria do
      begin
        if ((State <> dsEdit) or (State <> dsInsert)) then
          Edit;
        FindField('CODIGO_CLIENTE').AsString :=
              unqryCliDataHis.FindField('CODIGO_CLIENTE').AsString;
      end;
end;

procedure TDMHistoriaClientes.CopiarOdontologoaHistoria;
begin
with unqryHistoria do
    begin
      if ((State <> dsEdit) or (State <> dsInsert)) then
        Edit;
      FindField('ODONTOLOGO').AsString :=
                                    unqryDocDataHis.FindField('ODONTOLOGO').AsString;
    end;
end;

procedure TDMHistoriaClientes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  with frmopenapp do
  begin
    //zqryClientes.Connection := FdmConn.ZconnGlent;
    //zqryHistoria.Connection := FDmConn.ZconnGlent;
    unqryHistoria.Connection := FDmConn.conUni;
    unqryArtDataHis.Connection := FDmConn.conUni;
    unqryCliDataHis.Connection := FDmConn.conUni;
    unqryDocDataHis.Connection := FDmConn.conUni;
    //zspContador.Connection := FDmConn.ZconnGlent;
  end;
  //zqryClientes.Open;
  //zqryHistoria.Open;
  unqryHistoria.Open;
end;

procedure TDMHistoriaClientes.DataModuleDestroy(Sender: TObject);
begin
  //zqryHistoria.Close;
  //zqryClientes.Close;
  unqryHistoria.Close;
end;

//procedure TDMHistoriaClientes.NuevoCliente;
//begin
//  if zqryClientes.FindField('CODIGO_CLIENTE').AsString = '0' then
//  begin
//    with zspContador do
//    begin
//      Params.Clear;
//      Params.CreateParam(ftString, 'ptipodoc', ptInput);
//      Params.CreateParam(ftInteger, 'pcont', ptOutput);
//      ParamByName('ptipodoc').AsString :=  'CL';
//      ExecProc;
//      zqryClientes.FindField('CODIGO_CLIENTE').AsString := ParamByName('pcont').AsString;
//    end;
//  end;
//end;
//
//procedure TDMHistoriaClientes.zqryClientesAfterInsert(DataSet: TDataSet);
//begin
//  zqryClientes.FieldByName('CODIGO_CLIENTE').ASSTRING := '0';
//end;
//
//procedure TDMHistoriaClientes.zqryClientesBeforePost(DataSet: TDataSet);
//begin
//  NuevoCliente;
//end;

end.
