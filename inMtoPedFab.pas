unit inMtoPedFab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer, RzStatus,
  RzPanel, cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, UniDataPedFab,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  cxSplitter, cxImage, cxDBEdit, dxBarBuiltInMenu, cxPC, cxLabel,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, cxDBLookupComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLocalization;

type
  TfrmMtoPedFab = class(TfrmMtoGen)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    cxspl1: TcxSplitter;
    tvcGrdDBTabPrinSERIE: TcxGridDBColumn;
    tvcGrdDBTabPrinNUMFAB: TcxGridDBColumn;
    tvcGrdDBTabPrinFECHA: TcxGridDBColumn;
    tvcGrdDBTabPrinCODCLI: TcxGridDBColumn;
    tvcGrdDBTabPrinnombre: TcxGridDBColumn;
    tvcGrdDBTabPrinAPELLIDOS: TcxGridDBColumn;
    tvcGrdDBTabPrinCODMOD: TcxGridDBColumn;
    tvcGrdDBTabPrinNOMMOD: TcxGridDBColumn;
    tvcGrdDBTabPrinNOMHOR: TcxGridDBColumn;
    tvcGrdDBTabPrinTIPO_CORDONERA: TcxGridDBColumn;
    tvcGrdDBTabPrinTIPO_TACON: TcxGridDBColumn;
    tvcGrdDBTabPrinTIPO_TALONETA: TcxGridDBColumn;
    tvcGrdDBTabPrinPARES: TcxGridDBColumn;
    tvcGrdDBTabPrinSUPLEMENTO: TcxGridDBColumn;
    tvcGrdDBTabPrinTALLA_D: TcxGridDBColumn;
    tvcGrdDBTabPrinTALLA_I: TcxGridDBColumn;
    tvcGrdDBTabPrinANCHO_D: TcxGridDBColumn;
    tvcGrdDBTabPrinANCHO_I: TcxGridDBColumn;
    tvcGrdDBTabPrinEMP_D: TcxGridDBColumn;
    tvcGrdDBTabPrinEMP_I: TcxGridDBColumn;
    tvcGrdDBTabPrinPERS_2A: TcxGridDBColumn;
    tvcGrdDBTabPrinPERS_2B: TcxGridDBColumn;
    tvcGrdDBTabPrinOBSERVACIONES: TcxGridDBColumn;
    tvcGrdDBTabPrinOBVS1: TcxGridDBColumn;
    tvcGrdDBTabPrinOBVS2: TcxGridDBColumn;
    tvcGrdDBTabPrinOBVS3: TcxGridDBColumn;
    tvcGrdDBTabPrinOBVS4: TcxGridDBColumn;
    tvcGrdDBTabPrinOBVS5: TcxGridDBColumn;
    DBimg1: TcxDBImage;
    tvcGrdDBTabPrinNUMPED: TcxGridDBColumn;
    cxpgcntrl1: TcxPageControl;
    ts1: TcxTabSheet;
    ts2: TcxTabSheet;
    cxpgcntrl2: TcxPageControl;
    ts3: TcxTabSheet;
    ts4: TcxTabSheet;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    DBE1: TcxDBTextEdit;
    DBE2: TcxDBTextEdit;
    cxlbl3: TcxLabel;
    cxdbdtdt1: TcxDBDateEdit;
    DBE3: TcxDBTextEdit;
    cxlbl4: TcxLabel;
    DBE4: TcxDBTextEdit;
    cxlbl5: TcxLabel;
    DBE5: TcxDBTextEdit;
    cxlbl6: TcxLabel;
    ts5: TcxTabSheet;
    cxlbl7: TcxLabel;
    DBE6: TcxDBTextEdit;
    DBE7: TcxDBTextEdit;
    cxlbl8: TcxLabel;
    DBE8: TcxDBTextEdit;
    cxlbl9: TcxLabel;
    cxlbl10: TcxLabel;
    DBE9: TcxDBTextEdit;
    DBE10: TcxDBTextEdit;
    cxlbl11: TcxLabel;
    cxlbl12: TcxLabel;
    DBE11: TcxDBTextEdit;
    cxlbl13: TcxLabel;
    DBE12: TcxDBTextEdit;
    cxlbl14: TcxLabel;
    cxdbm1: TcxDBMemo;
    DBE13: TcxDBTextEdit;
    cxlbl15: TcxLabel;
    DBE14: TcxDBTextEdit;
    cxlbl16: TcxLabel;
    DBE15: TcxDBTextEdit;
    cxlbl17: TcxLabel;
    DBE16: TcxDBTextEdit;
    cxlbl18: TcxLabel;
    cxlbl19: TcxLabel;
    DBE17: TcxDBTextEdit;
    cxgrd5: TcxGrid;
    tv1: TcxGridDBTableView;
    tv2: TcxGridDBBandedTableView;
    cxgrdbndclmntv2PerId: TcxGridDBBandedColumn;
    cxgrdbndclmntv2AppointmentId: TcxGridDBBandedColumn;
    cxgrdbndclmntv2Linea: TcxGridDBBandedColumn;
    cxgrdbndclmntv2clave: TcxGridDBBandedColumn;
    cxgrdbndclmntv2valor: TcxGridDBBandedColumn;
    cxgrdbndclmntv2instantemodif: TcxGridDBBandedColumn;
    cxgrdbndclmntv2descripcion: TcxGridDBBandedColumn;
    cxgrdbndclmntv2parte: TcxGridDBBandedColumn;
    lv1: TcxGridLevel;
    tvctv1codgru: TcxGridDBColumn;
    tvctv1codvalor: TcxGridDBColumn;
    tvctv1nomvalor: TcxGridDBColumn;
    cxlbl20: TcxLabel;
    DBE18: TcxDBTextEdit;
    DBE19: TcxDBTextEdit;
    cxlbl21: TcxLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure ShowMtoPedFab(Owner       : TComponent); overload;
  procedure ShowMtoPedFab(Owner       : TComponent; sidPedido: String); overload;
var
  frmMtoPedFab: TfrmMtoPedFab;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoPedFab(Owner       : TComponent); overload;
var
  frmMtoPedFab : TfrmMtoPedFab;
begin
  if not(IsOpenMDI('Pedidos a Fábrica', Owner)) then
  begin
    Application.CreateForm(TfrmMtoPedFab, frmMtoPedFab);
  end;
end;

  procedure ShowMtoPedFab(Owner       : TComponent; sidPedido: String); overload;
var
  frmMtoPedFab : TfrmMtoPedFab;
begin
  if not(IsOpenMDI('Pedidos a Fábrica', Owner)) then
  begin
    Application.CreateForm(TfrmMtoPedFab, frmMtoPedFab);
  end;
  dmPedFab.zqryFabCab.Locate('NUMPED', sidPedido, []);
end;

procedure TfrmMtoPedFab.FormCreate(Sender: TObject);
begin
  dmPedFab := TDMPedFab.Create(dmPedFab);
  dsTablaG.DataSet := dmPedFab.zqryFabCab;
  inherited;

end;

end.
