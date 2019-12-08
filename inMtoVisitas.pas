unit inMtoVisitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer, RzStatus,
  RzPanel, cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls, UniDataVisit,
  cxDBEdit, cxLabel, dxBarBuiltInMenu, cxPC, cxSplitter, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  cxLocalization;

type
  TfrmMtoVisitas = class(TfrmMtoGen)
    tvcGrdDBTabPrinSexo: TcxGridDBColumn;
    tvcGrdDBTabPrinEdad: TcxGridDBColumn;
    tvcGrdDBTabPrinNacionalidad: TcxGridDBColumn;
    tvcGrdDBTabPrinReferencia: TcxGridDBColumn;
    tvcGrdDBTabPrinReferenciaL2: TcxGridDBColumn;
    tvcGrdDBTabPrinFecha: TcxGridDBColumn;
    tvcGrdDBTabPrinHora: TcxGridDBColumn;
    tvcGrdDBTabPrinOrigenRecomendacion: TcxGridDBColumn;
    tvcGrdDBTabPrinNombreRecomendacion: TcxGridDBColumn;
    tvcGrdDBTabPrinHaComprado: TcxGridDBColumn;
    tvcGrdDBTabPrinRepiteVisita: TcxGridDBColumn;
    tvcGrdDBTabPrinUsuarioModif: TcxGridDBColumn;
    tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn;
    tvcGrdDBTabPrinidVisita: TcxGridDBColumn;
    tvcGrdDBTabPrinTieneCita: TcxGridDBColumn;
    tvcGrdDBTabPrinRecogeCalzado: TcxGridDBColumn;
    cxpgcntrl1: TcxPageControl;
    ts1: TcxTabSheet;
    ts2: TcxTabSheet;
    pnl1: TPanel;
    cxlbl2: TcxLabel;
    DBE2: TcxDBTextEdit;
    DBE1: TcxDBTextEdit;
    cxlbl1: TcxLabel;
    cxlbl3: TcxLabel;
    DBE3: TcxDBTextEdit;
    DBE4: TcxDBTextEdit;
    DBE5: TcxDBTextEdit;
    cxlbl4: TcxLabel;
    DBE6: TcxDBTextEdit;
    cxlbl5: TcxLabel;
    DBE7: TcxDBTextEdit;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    DBCB1: TcxDBLookupComboBox;
    cxlbl8: TcxLabel;
    DBCB2: TcxDBLookupComboBox;
    cxlbl9: TcxLabel;
    DBCB3: TcxDBComboBox;
    cxdbm1: TcxDBMemo;
    cxlbl10: TcxLabel;
    cxdbchckbx1: TcxDBCheckBox;
    cxdbchckbx2: TcxDBCheckBox;
    cxdbchckbx3: TcxDBCheckBox;
    cxdbm2: TcxDBMemo;
    cxlbl11: TcxLabel;
    DBE8: TcxDBTextEdit;
    DBEcxdbtxtdt1: TcxDBTextEdit;
    cxlbl12: TcxLabel;
    cxlbl13: TcxLabel;
    DBEcxdbtxtdt2: TcxDBTextEdit;
    DBEcxdbtxtdt3: TcxDBTextEdit;
    cxlbl14: TcxLabel;
    cxlbl15: TcxLabel;
    DBEcxdbtxtdt5: TcxDBTextEdit;
    DBEcxdbtxtdt6: TcxDBTextEdit;
    cxlbl16: TcxLabel;
    cxlbl17: TcxLabel;
    DBEcxdbtxtdt7: TcxDBTextEdit;
    DBEcxdbtxtdt8: TcxDBTextEdit;
    cxlbl18: TcxLabel;
    cxlbl19: TcxLabel;
    DBEcxdbtxtdt9: TcxDBTextEdit;
    DBEcxdbtxtdt10: TcxDBTextEdit;
    cxlbl20: TcxLabel;
    DBEcxdbtxtdt16: TcxDBTextEdit;
    cxlbl21: TcxLabel;
    cxGrid1: TcxGrid;
    tvFacturas: TcxGridDBTableView;
    cxgrdbclmnGridDBTableView1NUMFAC: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1CODCLI: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1NOMCLI: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1FECHA: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1SUM_BASE: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1SUM_IVA: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1SUBTOTAL: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1TOTAL: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1F_PAGO: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1PAGADO: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1VENC1: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1COMENTARIO: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1AGENTE: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1PEDIDO: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1ANTICIPO: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1DEVOLUCION_FACTURA: TcxGridDBColumn;
    cxgrdbclmnFacturasSERIE: TcxGridDBColumn;
    tvLinFac: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView2LINEA: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CODIGO: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2NOMBRE: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CANTIDAD: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2PRECIO: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2IMP_IVA: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2NETO: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2P_UNI: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2PCOSTE: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2NUMERO: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2IVA: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2DTO: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2PROP1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2PROP2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2PROP3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2PIEZAS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2ALMACEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2DTO2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2PRESENTACION: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2UBICACION: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2SERIE: TcxGridDBColumn;
    lvFacturas: TcxGridLevel;
    lvLinFac: TcxGridLevel;
    tvcGrdDBTabPrinDesReferenciaL1: TcxGridDBColumn;
    tvcGrdDBTabPrinDesReferenciaL2: TcxGridDBColumn;
    tvcGrdDBTabPrinDesReferencia: TcxGridDBColumn;
    tvcGrdDBTabPrinFacturas: TcxGridDBColumn;
    tvcGrdDBTabPrinRecogidas: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    dmVisitas : TdmVisitas;
  public
    { Public declarations }
  end;
  procedure ShowMtoVisitas(Owner       : TComponent); overload;
  procedure ShowMtoVisitas(Owner       : TComponent; sVisita: String); overload;
var
  frmMtoVisitas: TfrmMtoVisitas;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoVisitas(Owner       : TComponent); overload;
var
  frmMtoVisitas : TfrmMtoVisitas;
begin
  if not(IsOpenMDI('Visitas', Owner)) then
  begin
    Application.CreateForm(TfrmMtoVisitas, frmMtoVisitas);
  end;
end;

procedure ShowMtoVisitas(Owner       : TComponent; sVisita: String); overload;
var
  frmMtoVisitas : TfrmMtoVisitas;
begin
  if not(IsOpenMDI('Visitas', Owner)) then
  begin
    Application.CreateForm(TfrmMtoVisitas, frmMtoVisitas);
  end;
  dmVisitas.zqryVisitas.Locate('idvisita', sVisita, []);
end;

procedure TfrmMtoVisitas.FormCreate(Sender: TObject);
begin
  dmVisitas := TDmVisitas.Create(dmVisitas);
  dsTablaG.DataSet := DMVisitas.zqryVisitas;
  inherited;
end;

procedure TfrmMtoVisitas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dmVisitas);
end;

end.
