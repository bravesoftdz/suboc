unit inMtoReferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer, RzStatus,
  RzPanel, cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxDBEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, UniDataReferencias, cxLocalization;

type
  TfrmMtoReferencias = class(TfrmMtoGen)
    tvcGrdDBTabPrinReferenceId: TcxGridDBColumn;
    tvcGrdDBTabPrinReferenceDes: TcxGridDBColumn;
    tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn;
    tvGrdPrincipalDBTableView1: TcxGridDBTableView;
    tvGrdPrincipalDBTableView2: TcxGridDBTableView;
    tvcGrdPrincipalDBTableView2ReferenceId: TcxGridDBColumn;
    tvcGrdPrincipalDBTableView2ReferenceDes: TcxGridDBColumn;
    tvcGrdPrincipalDBTableView2InstanteModif: TcxGridDBColumn;
    tvcGrdPrincipalDBTableView2ReferenceFrom: TcxGridDBColumn;
    pnl1: TPanel;
    DBE2: TcxDBTextEdit;
    cxlbl2: TcxLabel;
    DBE1: TcxDBTextEdit;
    cxlbl1: TcxLabel;
    pnl2: TPanel;
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
    tvctv1ReferenceId: TcxGridDBColumn;
    tvctv1ReferenceDes: TcxGridDBColumn;
    tvctv1InstanteModif: TcxGridDBColumn;
    tvctv1ReferenceFrom: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    dmReferencias : TdmReferencias;
  public



    { Public declarations }
  end;
  procedure ShowMtoReferencias(Owner       : TComponent); overload;
  procedure ShowMtoReferencias(Owner       : TComponent; sReferencia: String); overload;
var
  frmMtoReferencias: TfrmMtoReferencias;

implementation

uses
   inLibWin;

{$R *.dfm}

procedure ShowMtoReferencias(Owner       : TComponent); overload;
var
  frmMtoReferencias : TfrmMtoReferencias;
begin
  if not(IsOpenMDI('Referencias', Owner)) then
  begin
    Application.CreateForm(TfrmMtoReferencias, frmMtoReferencias);
  end;
end;

procedure ShowMtoReferencias(Owner       : TComponent; sReferencia: String); overload;
var
  frmMtoReferencias : TfrmMtoReferencias;
begin
  if not(IsOpenMDI('Referencias', Owner)) then
  begin
    Application.CreateForm(TfrmMtoReferencias, frmMtoReferencias);
  end;
  dmReferencias.zqryReferenciaPadre.Locate('ReferenceId', sReferencia, []);
end;

procedure TfrmMtoReferencias.FormCreate(Sender: TObject);
begin
  dmReferencias := TDmReferencias.Create(dmReferencias);
  inherited;
end;

procedure TfrmMtoReferencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dmReferencias);
end;

end.
