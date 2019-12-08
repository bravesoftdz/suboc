unit inMtoLinVentaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer, RzStatus,
  RzPanel, cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls, UniDataLinVentasCliente,
  cxCalc, cxCurrencyEdit, cxCalendar, cxLocalization;

type
  TfrmMtoLinVentaCliente = class(TfrmMtoGen)
    tvcGrdDBTabPrinnumfac: TcxGridDBColumn;
    tvcGrdDBTabPrincodigo: TcxGridDBColumn;
    tvcGrdDBTabPrinnombre: TcxGridDBColumn;
    tvcGrdDBTabPrincantidad: TcxGridDBColumn;
    tvcGrdDBTabPrinprecio_unitario: TcxGridDBColumn;
    tvcGrdDBTabPrinfecha: TcxGridDBColumn;
    tvcGrdDBTabPrinfamilia: TcxGridDBColumn;
    tvcGrdDBTabPrincodcli: TcxGridDBColumn;
    tvcGrdDBTabPrinnombre_1: TcxGridDBColumn;
    tvcGrdDBTabPrinapellidos: TcxGridDBColumn;
    tvcGrdDBTabPrindireccion: TcxGridDBColumn;
    tvcGrdDBTabPrinpoblacion: TcxGridDBColumn;
    tvcGrdDBTabPrinprovincia: TcxGridDBColumn;
    tvcGrdDBTabPrinPais: TcxGridDBColumn;
    tvcGrdDBTabPrinemail: TcxGridDBColumn;
    tvcGrdDBTabPrinMovil: TcxGridDBColumn;
    tvcGrdDBTabPrinidmagento: TcxGridDBColumn;
    tvcGrdDBTabPrinf_pago: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    dmLinVentasClientes : TdmLinVentasClientes;
  public
    { Public declarations }
  end;
   procedure ShowMtoLinVentasCliente(Owner       : TComponent); overload;
var
  frmMtoLinVentaCliente: TfrmMtoLinVentaCliente;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoLinVentasCliente(Owner       : TComponent); overload;
var
  frmMtoLinVentaClientes : TfrmMtoLinVentaCliente;
begin
  if not(IsOpenMDI('Lineas de Venta por Cliente', Owner)) then
  begin
    Application.CreateForm(TfrmMtoLinVentaCliente, frmMtoLinVentaClientes);
  end;
end;

procedure TfrmMtoLinVentaCliente.FormCreate(Sender: TObject);
begin
  dmLinVentasClientes := TdmLinVentasClientes.Create(dmLinVentasClientes);
  dsTablaG.DataSet := DMLinVentasClientes.zqryLinVentasClientes;
  inherited;
//  cxGrdDBTabPrin.DataController.CreateAllItems();
end;

procedure TfrmMtoLinVentaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dmLinVentasClientes);
end;

end.
