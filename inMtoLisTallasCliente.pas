unit inMtoLisTallasCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer, RzStatus,
  RzPanel, cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls, UniDataConn,
  cxCalc, cxCurrencyEdit, cxCalendar, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxLocalization;

type
  TfrmMtoLisTallasCliente = class(TfrmMtoGen)
    zqryTallasCliente: TZQuery;
    tvcGrdDBTabPrinnombre: TcxGridDBColumn;
    tvcGrdDBTabPrinapellidos: TcxGridDBColumn;
    tvcGrdDBTabPrinemail: TcxGridDBColumn;
    tvcGrdDBTabPrinnomhorma: TcxGridDBColumn;
    tvcGrdDBTabPrinleft_size: TcxGridDBColumn;
    tvcGrdDBTabPrinright_size: TcxGridDBColumn;
    tvcGrdDBTabPrinleft_width: TcxGridDBColumn;
    tvcGrdDBTabPrinright_width: TcxGridDBColumn;
    tvcGrdDBTabPrinleft_instep: TcxGridDBColumn;
    tvcGrdDBTabPrinright_instep: TcxGridDBColumn;
    tvcGrdDBTabPrinsuplemento: TcxGridDBColumn;
    tvcGrdDBTabPrinNroDoc: TcxGridDBColumn;
    tvcGrdDBTabPrinOrigen: TcxGridDBColumn;
    tvcGrdDBTabPrinFecha: TcxGridDBColumn;
    tvcGrdDBTabPrinpais: TcxGridDBColumn;
    tvcGrdDBTabPrinpoblacion: TcxGridDBColumn;
    tvcGrdDBTabPrinFechaUltimaCompra: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public
    { Public declarations }
  end;
   procedure ShowMtoLisTallasCliente(Owner       : TComponent); overload;
var
  frmMtoLisTallasCliente: TfrmMtoLisTallasCliente;

implementation

uses
  inLibWin, inMtoPrincipal;

{$R *.dfm}

procedure ShowMtoLisTallasCliente(Owner       : TComponent); overload;
var
  frmMtoLisTallasClientes : TfrmMtoLisTallasCliente;
begin
  if not(IsOpenMDI('Tallas por Cliente', Owner)) then
  begin
    Application.CreateForm(TfrmMtoLisTallasCliente, frmMtoLisTallasClientes);
  end;
end;

procedure TfrmMtoLisTallasCliente.FormCreate(Sender: TObject);
begin
  //dmLinVentasClientes := TdmLinVentasClientes.Create(dmLinVentasClientes);
  with frmopenapp do
  zqryTallasCliente.Connection := FdmConn.ZconnGlent;
  zqryTallasCliente.Open;
  dsTablaG.DataSet := zqryTallasCliente;
  inherited;
//  cxGrdDBTabPrin.DataController.CreateAllItems();
end;

procedure TfrmMtoLisTallasCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  zqryTallasCliente.Close;
end;

end.
