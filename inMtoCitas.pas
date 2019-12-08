unit inMtoCitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer, RzStatus,
  RzPanel, cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls, UniDataCitas,
  Menus, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerRecurrence, cxSchedulerTreeListBrowser,
  cxSchedulerRibbonStyleEventEditor, dxSkinscxSchedulerPainter,
  cxSchedulerDBStorage, dxBarBuiltInMenu, cxLabel, cxDBEdit, cxPC, RzDTP,
  RzDBDTP, cxDropDownEdit, cxCalendar, cxMaskEdit, cxSpinEdit, cxTimeEdit,
  cxSplitter, cxMemo, cxGridBandedTableView, cxGridDBBandedTableView,
  cxSchedulercxGridConnection, cxLocalization, inMtoModalPrintCitas;

type
  TfrmMtoCitas = class(TfrmMtoGen)
    tvcGrdDBTabPrinAppointmentId: TcxGridDBColumn;
    tvcGrdDBTabPrinTienda: TcxGridDBColumn;
    tvcGrdDBTabPrinPodologo: TcxGridDBColumn;
    tvcGrdDBTabPrinIdClienteWeb: TcxGridDBColumn;
    tvcGrdDBTabPrinObservaciones: TcxGridDBColumn;
    tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn;
    tvcGrdDBTabPrinStartTime: TcxGridDBColumn;
    tvcGrdDBTabPrinEndTime: TcxGridDBColumn;
    tvcGrdDBTabPrinResourceId: TcxGridDBColumn;
    tvcGrdDBTabPrinLocation: TcxGridDBColumn;
    tvcGrdDBTabPrinSubject: TcxGridDBColumn;
    tvcGrdDBTabPrinDescription: TcxGridDBColumn;
    tvcGrdDBTabPrinLabel: TcxGridDBColumn;
    tvcGrdDBTabPrinAllDay: TcxGridDBColumn;
    tvcGrdDBTabPrinRecurrenceInfo: TcxGridDBColumn;
    tvcGrdDBTabPrinReminderInfo: TcxGridDBColumn;
    tvcGrdDBTabPrinType: TcxGridDBColumn;
    tvcGrdDBTabPrinStatus: TcxGridDBColumn;
    tvcGrdDBTabPrinCalendarTypeId: TcxGridDBColumn;
    pnl1: TPanel;
    cxschdlr1: TcxScheduler;
    cxschdlrdbstrg1: TcxSchedulerDBStorage;
    pnl2: TPanel;
    cxpgcntrl1: TcxPageControl;
    ts1: TcxTabSheet;
    ts2: TcxTabSheet;
    DBE1: TcxDBTextEdit;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxdbdtdt2: TcxDBDateEdit;
    ts3: TcxTabSheet;
    cxspl1: TcxSplitter;
    DBE2: TcxDBTextEdit;
    cxlbl4: TcxLabel;
    cxdbdtdt1: TcxDBDateEdit;
    cxdbchckbx1: TcxDBCheckBox;
    cxdbm1: TcxDBMemo;
    cxlbl5: TcxLabel;
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
    tvctv1PerId: TcxGridDBColumn;
    tvctv1AppointmentId: TcxGridDBColumn;
    tvctv1Linea: TcxGridDBColumn;
    tvctv1clave: TcxGridDBColumn;
    tvctv1valor: TcxGridDBColumn;
    tvctv1instantemodif: TcxGridDBColumn;
    tvctv1descripcion: TcxGridDBColumn;
    tvctv1parte: TcxGridDBColumn;
    cxlbl6: TcxLabel;
    DBE3: TcxDBTextEdit;
    DBE4: TcxDBTextEdit;
    cxlbl7: TcxLabel;
    DBEcxdbtxtdt7: TcxDBTextEdit;
    DBEcxdbtxtdt8: TcxDBTextEdit;
    cxlbl8: TcxLabel;
    cxlbl9: TcxLabel;
    DBEcxdbtxtdt9: TcxDBTextEdit;
    DBEcxdbtxtdt10: TcxDBTextEdit;
    cxlbl10: TcxLabel;
    DBEcxdbtxtdt16: TcxDBTextEdit;
    cxlbl16: TcxLabel;
    cxlbl11: TcxLabel;
    cxdbm2: TcxDBMemo;
    con1: TcxSchedulerGridConnection;
    btnPrint: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure ShowMtoCitas(Owner       : TComponent);
var
  frmMtoCitas: TfrmMtoCitas;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoCitas(Owner       : TComponent); overload;
var
  frmMtoCitas : TfrmMtoCitas;
begin
  if not(IsOpenMDI('Citas', Owner)) then
  begin
    Application.CreateForm(TfrmMtoCitas, frmMtoCitas);
  end;
end;

procedure TfrmMtoCitas.FormCreate(Sender: TObject);
begin
  dmCitas := TDMCitas.Create(dmCitas);
  dsTablaG.DataSet := dmCitas.zqryCitas;
  inherited;
end;

procedure TfrmMtoCitas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dmCitas);
end;

procedure TfrmMtoCitas.sbGrabarClick(Sender: TObject);
var
    form:TfrmPrintCitas;
begin
  inherited;
   form := TfrmPrintCitas.Create(Application);
   try

          form.ShowModal;
   finally
          dmCitas.zqryPrintCitasPer.Close;
          dmCitas.zqryPrintCitas.Close;
          form.Free;
   end;
end;

end.
