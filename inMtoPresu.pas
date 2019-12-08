unit inMtoPresu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer,
   cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  cxSplitter, cxImage, cxDBEdit, dxBarBuiltInMenu, cxPC, cxLabel,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, cxDBLookupComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLocalization,
  cxGroupBox, DBCtrls, cxCurrencyEdit, Menus, cxButtons, cxButtonEdit, inlibDevExp,
  cxLookupEdit, cxDBLookupEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  dxBevel, cxDBNavigator;

type
  TfrmMtoPresu = class(TfrmMtoGen)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    cxspl1: TcxSplitter;
    cxpgcntrl1: TcxPageControl;
    ts2: TcxTabSheet;
    cxpgcntrl2: TcxPageControl;
    ts4: TcxTabSheet;
    DBE3: TcxDBTextEdit;
    cxlbl4: TcxLabel;
    ts5: TcxTabSheet;
    cxlbl15: TcxLabel;
    cxlbl16: TcxLabel;
    cxlbl17: TcxLabel;
    DBE16: TcxDBTextEdit;
    cxlbl18: TcxLabel;
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
    DBEdireccionCliente5: TcxDBTextEdit;
    cxgrpbx1: TcxGroupBox;
    DBEdireccionCliente4: TcxDBTextEdit;
    DBEpoblacionCliente: TcxDBTextEdit;
    DBEdireccionCliente: TcxDBTextEdit;
    DBEdireccionCliente1: TcxDBTextEdit;
    DBEdireccionCliente6: TcxDBTextEdit;
    DBEemail1: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    ts8: TcxTabSheet;
    cxdbtxtdtDIRECCION1_CLIENTE_FACTURA: TcxDBTextEdit;
    cxlbl9: TcxLabel;
    cxlbl10: TcxLabel;
    cxdbtxtdtNIF_CLIENTE_FACTURA: TcxDBTextEdit;
    cxlbl11: TcxLabel;
    cxdbtxtdtMOVIL_CLIENTE_FACTURA: TcxDBTextEdit;
    cxgrdbclmntv1LINEA_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1CODIGO_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1DESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1FAMILIA_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1PRECIOCOSTE_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1PRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1CANTIDAD_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1SUM_BASE_LINEA: TcxGridDBColumn;
    cxdbcrncydtSUM_IVA: TcxDBCurrencyEdit;
    cxlbl7: TcxLabel;
    cxdbcrncydtIVA1_FACTURA: TcxDBCurrencyEdit;
    cxdbcrncydtSUM_IVA_FACTURA: TcxDBCurrencyEdit;
    cxgrdbclmntv1IVA1_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1SUM_IVA1_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1SUM_TOTAL_LINEA: TcxGridDBColumn;
    cxtbshtts1: TcxTabSheet;
    cxlbl1: TcxLabel;
    cxlbl3: TcxLabel;
    cxdbdtdt1: TcxDBDateEdit;
    cxlbl2: TcxLabel;
    cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA1: TcxDBTextEdit;
    cxlbl5: TcxLabel;
    cxlbl8: TcxLabel;
    btn1: TcxButton;
    cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA: TcxDBTextEdit;
    cxdbtxtdtSERIE_FACTURA: TcxDBTextEdit;
    btn3: TcxButton;
    cxlbl6: TcxLabel;
    cxlbl13: TcxLabel;
    cxlbl14: TcxLabel;
    cxgrdbclmnGrdDBTabPrinNRO_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinSERIE_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNRO_FACTURA_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCODIGO_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNIF_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinMOVIL_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinEMAIL_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION1_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION2_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPOBLACION_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPROVINCIA_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCPOSTAL_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPAIS_PROVEEDOR_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFECHA_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinIVA1_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinBASE1_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinSUM_BASE_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinSUM_IVA_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_LIQUIDO_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFORMA_PAGO_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCENTAJE_RETENCION_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinIMPORTE_RETENCION_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDOCUMENTO_FACTURA_COM: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrininstantemodif: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinusuariomodif: TcxGridDBColumn;
    cxdbtxtdtNRO_FACTURA_COM: TcxDBTextEdit;
    cxlbl12: TcxLabel;
    cxdbtxtdtRAZONSOCIAL_PROVEEDOR_FACTURA_COM: TcxDBTextEdit;

    procedure FormCreate(Sender: TObject);
    //procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure btn3Click(Sender: TObject);
   private

     //procedure prcfrmMtoSearchFormClose(Sender: TObject;
     //                                     var Action: TCloseAction);
  public
    { Public declarations }
  end;

  procedure ShowMtoPresu(Owner       : TComponent); overload;
 // procedure ShowMtoFacCom(Owner       : TComponent; sidFactura: String); overload;
var
  frmMtoPresu: TfrmMtoPresu;
  //dmmFacCom : TdmFacCom;
implementation

uses
  inLibWin,
  inLibPermission;

{$R *.dfm}

procedure ShowMtoPresu(Owner       : TComponent); overload;
var
  frmMtoPresu : TfrmMtoPresu;
begin
  if not(IsOpenMDI('Presupuestos Clientes', Owner)) then
  begin
    Application.CreateForm(TfrmMtoPresu, frmMtoPresu);
  end;
end;

//  procedure ShowMtoFacCom(Owner       : TComponent; sidFactura: String); overload;
//var
//  frmMtoFacCom : TfrmMtoFacCom;
//begin
//  if not(IsOpenMDI('Facturas Compra', Owner)) then
//  begin
//    Application.CreateForm(TfrmMtoFacCom, frmMtoFacCom);
//  end;
//  //dmPedFab.zqryFabCab.Locate('NUMPED', sidPedido, []);
//end;

procedure TfrmMtoPresu.FormCreate(Sender: TObject);
begin
  //dmmFacCom := TDMFacCom.Create(nil);
  //dsTablaG.DataSet := dmmFacCom.zqryFac;
  inherited;
//  if not FbPermisoEscritura then
//  begin
//    dmmFac.zqryFac.ReadOnly := True;
//    dmmFac.zqryLinFac.ReadOnly := True;
//    dmmFac.zqryClientes.ReadOnly := True;
//  end;
end;



//procedure TfrmMtoFac.prcfrmMtoSearchFormClose(Sender: TObject;
//  var Action: TCloseAction);
////var
//  //i:Integer;
//begin
//   {for i:= 0 to tvFacturas.Controller.SelectedRowCount - 1 do
//   begin
//     frmAltaVisitas.lstFacturas.Items.Add(tvFacturas.Controller.SelectedRows[i].Values[cxgrdbclmnGrid1DBTableView1NUMFAC.Index]);
//   end;}
//   frmMtoFac.DBE19.text :=
//     frmMtoSearch.tvGrdDBTabPrin.Controller.FocusedRow.Values[frmMtoSearch.tvctv1Col1Clave.Index];
//  Action := caFree;
//end;

procedure TfrmMtoPresu.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  inherited;
  //FreeAndNil(dmmFacCom);
end;

end.
