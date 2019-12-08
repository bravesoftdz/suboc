unit inMtoRecibos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RzStatus,
  RzPanel, cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  cxCalendar, cxCalc, cxTimeEdit,
   inMtoPrincipal, cxLocalization;

type
  TfrmMtoRecibos = class(TfrmMtoGen)
    zqryRecibos: TZQuery;
    tvcGrdDBTabPrinid: TcxGridDBColumn;
    tvcGrdDBTabPrinNumfac: TcxGridDBColumn;
    tvcGrdDBTabPrinTipo_Pago: TcxGridDBColumn;
    tvcGrdDBTabPrinForma_Pago: TcxGridDBColumn;
    tvcGrdDBTabPrinCierre_Caja: TcxGridDBColumn;
    tvcGrdDBTabPrinFecha: TcxGridDBColumn;
    tvcGrdDBTabPrinimporte: TcxGridDBColumn;
    tvcGrdDBTabPrinTipo_Tarjeta: TcxGridDBColumn;
    tvcGrdDBTabPrinPago_Num: TcxGridDBColumn;
    tvcGrdDBTabPrinvendedor: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    
  public
    { Public declarations }
  end;
  procedure ShowMtoRecibos(Owner       : TComponent); overload;
var
  frmMtoRecibos: TfrmMtoRecibos;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoRecibos(Owner       : TComponent); overload;
var
  frmMtoRecibos : TfrmMtoRecibos;
begin
  if not(IsOpenMDI('Recibos', Owner)) then
  begin
    Application.CreateForm(TfrmMtoRecibos, frmMtoRecibos);
  end;
end;

procedure TfrmMtoRecibos.FormCreate(Sender: TObject);
begin
  zqryRecibos.Connection := frmOpenApp.FDmConn.ZconnGlent;
  inherited;
  zqryRecibos.Open;
  //cxGrdDBTabPrin.DataController.CreateAllItems();
end;

procedure TfrmMtoRecibos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  zqryRecibos.Close;
end;

end.
