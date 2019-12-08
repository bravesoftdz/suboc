unit inMtoLinVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, UniDataLinVentas, cxNavigator, DB, cxDBData, cxContainer,
   cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  cxCurrencyEdit, cxCalendar, cxCalc, cxTimeEdit, cxLocalization,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmMtoLinVentas = class(TfrmMtoGen)
    tvcGrdDBTabPrinnumfac: TcxGridDBColumn;
    tvcGrdDBTabPrincodigo: TcxGridDBColumn;
    tvcGrdDBTabPrinnombre: TcxGridDBColumn;
    tvcGrdDBTabPrincantidad: TcxGridDBColumn;
    tvcGrdDBTabPrinprecio_unitario: TcxGridDBColumn;
    tvcGrdDBTabPrinimp_iva: TcxGridDBColumn;
    tvcGrdDBTabPrintotal: TcxGridDBColumn;
    tvcGrdDBTabPrinfecha: TcxGridDBColumn;
    tvcGrdDBTabPrinfamilia: TcxGridDBColumn;
    tvcGrdDBTabPrinHora: TcxGridDBColumn;
    tvcGrdDBTabPrinFormapago_contado: TcxGridDBColumn;
    tvcGrdDBTabPrinFormapago_transferencia: TcxGridDBColumn;
    tvcGrdDBTabPrinFormapago_americanexpress: TcxGridDBColumn;
    tvcGrdDBTabPrinFormapago_mastercard: TcxGridDBColumn;
    tvcGrdDBTabPrinFormapago_visa: TcxGridDBColumn;
    tvcGrdDBTabPrinpendiente_Factura: TcxGridDBColumn;
    tvcGrdDBTabPrintotal_Factura: TcxGridDBColumn;
    tvcGrdDBTabPrinserie: TcxGridDBColumn;
    tvcGrdDBTabPrinTipo: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinLINEA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    dmLinVentas : TdmLinVentas;
  public
    { Public declarations }
  end;
  procedure ShowMtoLinVentas(Owner       : TComponent); overload;
var
  frmMtoLinVentas: TfrmMtoLinVentas;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoLinVentas(Owner       : TComponent); overload;
var
  frmMtoLinVentas : TfrmMtoLinVentas;
begin
  if not(IsOpenMDI('Lineas de Venta', Owner)) then
  begin
    Application.CreateForm(TfrmMtoLinVentas, frmMtoLinVentas);
  end;
end;

procedure TfrmMtoLinVentas.FormCreate(Sender: TObject);
begin
  dmLinVentas := TDMLinVentas.Create(dmLinVentas);
  dsTablaG.DataSet := DMLinVentas.zqryLinVentas;
  inherited;
  //cxGrdDBTabPrin.DataController.CreateAllItems();
end;

procedure TfrmMtoLinVentas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dmLinVentas);
end;

end.
