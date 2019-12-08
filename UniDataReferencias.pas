unit UniDataReferencias;

interface

uses
  SysUtils, Classes, DB, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, inMtoPrincipal ;

type
  TdmReferencias = class(TDataModule)
    zqryReferenciaPadre: TZQuery;
    zpdtsqlReferencias: TZUpdateSQL;
    dsReferenciaHijos: TDataSource;
    zqryReferenciaHijos: TZQuery;
    zqryReferencias: TZQuery;
    dsReferencias: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure zqryReferenciaPadreAfterPost(DataSet: TDataSet);
  private
        //dmConn:TdmConn;
  public
       constructor Create(AOwner: TComponent);
  end;

var
  dmReferencias: TdmReferencias;

implementation

uses
  inMtoReferencias;

{$R *.dfm}

{ TdmReferencias }

constructor TdmReferencias.Create(AOwner: TComponent);
begin
  //dmConn := TdmConn.Create(dmConn);
  //dmConn.ZconnGlent.Connect;

  inherited;

end;

procedure TdmReferencias.DataModuleCreate(Sender: TObject);
begin
  with frmopenapp do
  begin
    zqryReferenciaPadre.Connection := FDmConn.ZconnGlent;
    zqryReferenciaHijos.Connection := FDmConn.ZconnGlent;
    zqryReferencias.Connection := FDmConn.ZconnGlent;
  end;
  zqryReferenciaPadre.Open;
  zqryReferenciaHijos.Open;
  zqryReferencias.Open;
end;

procedure TdmReferencias.DataModuleDestroy(Sender: TObject);
begin
  zqryReferenciaPadre.Close;
  zqryReferenciaHijos.Close;
  zqryReferencias.Close;
  //dmConn.ZconnGlent.Disconnect;
  //dmConn.Free;
end;

procedure TdmReferencias.zqryReferenciaPadreAfterPost(DataSet: TDataSet);
begin
  dsReferencias.DataSet.Refresh;
end;

end.
