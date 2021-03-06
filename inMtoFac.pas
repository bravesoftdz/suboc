unit inMtoFac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer,
  cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, UniDataFac,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  cxSplitter, cxImage, cxDBEdit, dxBarBuiltInMenu, cxPC, cxLabel,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, cxDBLookupComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLocalization,
  cxGroupBox, DBCtrls, cxCurrencyEdit, Menus, cxButtons, cxButtonEdit, inlibDevExp,
  cxLookupEdit, cxDBLookupEdit,
   dxSkinBlack, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxSpinEdit, cxCalc,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBevel,
  cxDBNavigator, dxNumericWheelPicker, dxDateRanges, cxDataUtils, cxVariants,
  cxDBLabel, dxGDIPlusClasses;

type
  TfrmMtoFac = class(TfrmMtoGen)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    cxspl1: TcxSplitter;
    cxpgcntrl1: TcxPageControl;
    cxpgcntrlFacturacx: TcxPageControl;
    tsLineasFactura: TcxTabSheet;
    ts5: TcxTabSheet;
    cxlbl17: TcxLabel;
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
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    ts8: TcxTabSheet;
    btnRectificar: TSpeedButton;
    btnImprimir: TSpeedButton;
    cxlbl12: TcxLabel;
    cxgrdbclmnGrdDBTabPrinNRO_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinSERIE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCODIGO_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNIF_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinMOVIL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinEMAIL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION1_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION2_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPOBLACION_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPROVINCIA_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCPOSTAL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPAIS_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFECHA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_LIQUIDO_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFORMA_PAGO_FACTURA: TcxGridDBColumn;
    cxtbshtCabecera: TcxTabSheet;
    cxlbl1: TcxLabel;
    cxlbl3: TcxLabel;
    cxdbdtdtFECHA_FACTURA: TcxDBDateEdit;
    cxlbl8: TcxLabel;
    cbbSerieFactura: TcxDBLookupComboBox;
    cxtbshtDatosCliente: TcxTabSheet;
    cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA2: TcxDBTextEdit;
    cxgrpbx1: TcxGroupBox;
    cxdbtxtdtDIRECCION1_CLIENTE_FACTURA1: TcxDBTextEdit;
    cxdbtxtdtCPOSTAL_CLIENTE_FACTURA: TcxDBTextEdit;
    cxdbtxtdtPOBLACION_CLIENTE_FACTURA: TcxDBTextEdit;
    cxdbtxtdtPROVINCIA_CLIENTE_FACTURA: TcxDBTextEdit;
    cxdbtxtdtPAIS_CLIENTE_FACTURA: TcxDBTextEdit;
    cxdbtxtdtDIRECCION1_CLIENTE_FACTURA: TcxDBTextEdit;
    cxlbl6: TcxLabel;
    cxlbl13: TcxLabel;
    cxdbtxtdtNIF_CLIENTE_FACTURA1: TcxDBTextEdit;
    cxlbl9: TcxLabel;
    cxlbl10: TcxLabel;
    cxdbtxtdtMOVIL_CLIENTE_FACTURA: TcxDBTextEdit;
    cxlbl11: TcxLabel;
    cxdbtxtdtEMAIL_CLIENTE_FACTURA: TcxDBTextEdit;
    cxlbl14: TcxLabel;
    cxtbsht1: TcxTabSheet;
    btnNroFactura: TcxDBButtonEdit;
    cxdbm1: TcxDBMemo;
    btn4: TSpeedButton;
    cxgrdbclmntv1LINEA_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1CODIGO_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1DESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1ZONA: TcxGridDBColumn;
    cxgrdbclmntv1PRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1CANTIDAD_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1ODONTOLOGO: TcxGridDBColumn;
    cxgrdbclmntv1SUM_TOTAL_LINEA: TcxGridDBColumn;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdbndtblvw1: TcxGridDBBandedTableView;
    cxgrdbndclmn1: TcxGridDBBandedColumn;
    cxgrdbndclmn2: TcxGridDBBandedColumn;
    cxgrdbndclmn3: TcxGridDBBandedColumn;
    cxgrdbndclmn4: TcxGridDBBandedColumn;
    cxgrdbndclmn5: TcxGridDBBandedColumn;
    cxgrdbndclmn6: TcxGridDBBandedColumn;
    cxgrdbndclmn7: TcxGridDBBandedColumn;
    cxgrdbndclmn8: TcxGridDBBandedColumn;
    cxgrdlvl1: TcxGridLevel;
    cxgrdbclmncxgrdbtblvw1CODIGO_ARTICULO: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DESCRIPCION_ARTICULO: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1PRECIOVENTA_ARTICULO: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1FECHA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ZONA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DESCRIPCION_HISTORIA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ODONTOLOGO: TcxGridDBColumn;
    cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA: TcxDBTextEdit;
    cxlbl7: TcxLabel;
    cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA1: TcxDBTextEdit;
    btn1: TcxButton;
    cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA3: TcxDBTextEdit;
    cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA4: TcxDBTextEdit;
    cxlbl15: TcxLabel;
    cxlbl16: TcxLabel;
    cxgrdbclmnGrdDBTabPrinNOMBRE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinAPELLIDOS: TcxGridDBColumn;
    btnCODIGO_CLIENTE: TcxDBButtonEdit;
    cxlbl4: TcxLabel;
    cxlbl2: TcxLabel;
    cxdblbl1: TcxDBLabel;
    cxdblblRAZONSOCIAL_CLIENTE_FACTURA: TcxDBLabel;
    cxlbl5: TcxLabel;
    cxdblblCODIGO_CLIENTE: TcxDBLabel;
    cbbFORMAPAGO: TcxDBLookupComboBox;
    cxtbsht2: TcxTabSheet;
    btnGenerarRecibos: TcxButton;
    pnl4: TPanel;
    cxgrd2: TcxGrid;
    cxgrdbtblvw2: TcxGridDBTableView;
    cxgrdbclmncxgrdbtblvw2NRO_PLAZO_RECIBO: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2ESTADO_RECIBO: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2FORMA_PAGO_DESCRIPCION_ORIGEN: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2FECHA_PAGO: TcxGridDBColumn;
    cxgrdbndtblvw2: TcxGridDBBandedTableView;
    cxgrdbndclmn9: TcxGridDBBandedColumn;
    cxgrdbndclmn10: TcxGridDBBandedColumn;
    cxgrdbndclmn11: TcxGridDBBandedColumn;
    cxgrdbndclmn12: TcxGridDBBandedColumn;
    cxgrdbndclmn13: TcxGridDBBandedColumn;
    cxgrdbndclmn14: TcxGridDBBandedColumn;
    cxgrdbndclmn15: TcxGridDBBandedColumn;
    cxgrdbndclmn16: TcxGridDBBandedColumn;
    cxgrdlvl2: TcxGridLevel;
    pnl5: TPanel;
    btnReciboPagado: TcxButton;
    btn5: TcxButton;
    btnReciboDevuelto: TcxButton;
    cxgrdbclmncxgrdbtblvw2EUROS_RECIBO: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2FECHA_EXPEDICION: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2FECHA_VENCIMIENTO: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2IBAN: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2LOCALIDAD_EXPEDICION: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2CODIGO_CLIENTE: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2RAZONSOCIAL_CLIENTE: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2DIRECCION1_CLIENTE: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2POBLACION_CLIENTE: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2PROVINCIA_CLIENTE: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw2CPOSTAL_CLIENTE: TcxGridDBColumn;
    img1: TcxImage;
    cxgrdbclmncxgrdbtblvw2IMPORTE_LETRA: TcxGridDBColumn;
    btnReciboEmitido: TcxButton;

    procedure FormCreate(Sender: TObject);
    //procedure btnBuscar_Clientes_ActivosClick(Sender: TObject);
    //procedure tvctv1codigoPropertiesButtonClick(Sender: TObject;
    //  AButtonIndex: Integer);
    procedure btnRectificarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure sbGrabarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure btnGenerarNroFacturaClick(Sender: TObject);
    procedure cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cbb1PropertiesChange(Sender: TObject);
//    procedure cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesEditValueChanged(
//      Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxgrdbclmntv1ODONTOLOGOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn4Click(Sender: TObject);
    procedure cxgrdbclmncxgrdbtblvw1DESCRIPCION_HISTORIAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA2Enter(Sender: TObject);
    procedure cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnCODIGO_CLIENTEPropertiesEditValueChanged(Sender: TObject);
    procedure cxgrd5Enter(Sender: TObject);
    procedure tv1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCODIGO_CLIENTEKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbSerieFacturaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxdbdtdtFECHA_FACTURAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCODIGO_CLIENTEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnNroFacturaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn5Click(Sender: TObject);
    procedure btnGenerarRecibosClick(Sender: TObject);
    procedure btnReciboPagadoClick(Sender: TObject);
    procedure btnReciboEmitidoClick(Sender: TObject);
    procedure btnReciboDevueltoClick(Sender: TObject);
  //  procedure btnAceptarBuscarCliClick(Sender: TObject);
//    procedure btn1Click(Sender: TObject);
  private

     //procedure prcfrmMtoSearchFormClose(Sender: TObject;
     //                                     var Action: TCloseAction);
  public
    procedure CambiarEstadoRecibo(sEstado:string);
    { Public declarations }
    //procedure PonerAnchosTitulos(cxgrdtvVista:TcxGridDBTableView; sDes:string);
  end;

  procedure ShowMtoFac(Owner       : TComponent); overload;
  procedure ShowMtoFac(Owner       : TComponent; sidFactura: String); overload;
var
  frmMtoFac: TfrmMtoFac;
  dmmFac : TdmFac;
implementation

uses
  inLibWin, inMtoGenSearch,  inMtoModalFacRec, inMtoModalFacImp, inMtoModalFacRecImp,
  inLibPermission, inMtoPrincipal, inMtoModalHistoriaCli;

{$R *.dfm}

procedure ShowMtoFac(Owner       : TComponent); overload;
var
  frmMtoFac : TfrmMtoFac;
begin
  if not(IsOpenMDI('Facturas', Owner)) then
  begin
    Application.CreateForm(TfrmMtoFac, frmMtoFac);
    frmMtoFac.edtBusqGlobal.SetFocus;
  end;
end;
procedure ShowMtoFac(Owner       : TComponent; sidFactura: String); overload;
var
  frmMtoFac : TfrmMtoFac;
begin
  if not(IsOpenMDI('Facturas', Owner)) then
  begin
    Application.CreateForm(TfrmMtoFac, frmMtoFac);
  end;
  //dmPedFab.zqryFabCab.Locate('NUMPED', sidPedido, []);
end;

procedure TfrmMtoFac.FormCreate(Sender: TObject);
begin
  dmmFac := TDMFac.Create(nil);
  dsTablaG.DataSet := dmmFac.unqryFac;
  cbbSerieFactura.Properties.ListSource := dmmFac.dsSeries;
  inherited;
//  if not FbPermisoEscritura then
//  begin
//    dmmFac.zqryFac.ReadOnly := True;
//    dmmFac.zqryLinFac.ReadOnly := True;
//    dmmFac.zqryClientes.ReadOnly := True;
//  end;
end;


//procedure TfrmMtoFac.btn1Click(Sender: TObject);
//begin
//  inherited;
//  ChangeListaToFicha;
//end;

procedure TfrmMtoFac.btn1Click(Sender: TObject);
begin
  inherited;
  if dmmFac.unqryFac.FieldByName('CODIGO_CLIENTE_FACTURA').AsString = '0' then
    dmmFac.NuevoCliente;
  dmmFac.CrearCliente;
  ShowMessage('Paciente: ' + dmmFac.unqryFac.FieldByName('CODIGO_CLIENTE_FACTURA').AsString + ' pasado correctamente a la tabla de pacientes');
end;

procedure TfrmMtoFac.btn3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  if ((Key = VK_RETURN) and (Shift = [ssCtrl])) then
//    dmmFac.NuevaFactura;
end;

procedure TfrmMtoFac.btn4Click(Sender: TObject);
begin
  inherited;
  if ((dmmFac.unqryFac.State <> dsInsert) and (dmmFac.unqryFac.State <> dsEdit)) then
  begin
    dmmFac.unqryFac.Insert;
    pcPantalla.ActivePage := tsFicha;
    tsFicha.SetFocus;
    cxtbshtCabecera.PageControl.ActivePage := cxtbshtCabecera;
    cxtbshtCabecera.SetFocus;
    btnCODIGO_CLIENTE.SetFocus;
    cxpgcntrlFacturacx.ActivePageIndex := tsLineasFactura.PageIndex;
    tsLineasFactura.SetFocus;
  end;
end;

procedure TfrmMtoFac.btn5Click(Sender: TObject);
  var
    form:TfrmPrintFacRec;
begin
  inherited;
   form := TfrmPrintFacRec.Create(Application);
   try
     form.edtNroFac.Text := dmmFac.unqryRecibos.findField('NRO_FACTURA').AsString;
     form.edtSerie.Text := dmmFac.unqryRecibos.findField('SERIE_FACTURA').AsString;
     form.edtRecibo.Text := dmmFac.unqryRecibos.findField('NRO_PLAZO_RECIBO').AsString;
     form.ShowModal;
   finally
     form.Free;
   end;end;

procedure TfrmMtoFac.btnCODIGO_CLIENTEKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  if ((Key = VK_RETURN) and (Shift = [ssCtrl])) then
//    btnBuscar_Clientes_ActivosClick(nil);
end;

procedure TfrmMtoFac.btnCODIGO_CLIENTEPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  formulario : TfrmMtoSearch;
begin
    formulario := TfrmMtoSearch.Create(Application);
    try
      formulario.dsData.DataSet := dmmFac.unqryCliDataFac;
      formulario.dsData.DataSet.Open;
      formulario.tvGrdDBTabPrin.DataController.CreateAllItems();
      PonerAnchosTitulos(formulario.tvGrdDBTabPrin, 'Clientes');
      formulario.Caption := 'B�squeda de Pacientes en Facturas';
      formulario.ShowModal;
    finally
        inherited;
        if formulario.sFicha = 'S' then
          dmmFac.CopiarClienteaFactura;
        formulario.dsData.DataSet.Close;
        FreeAndNil(formulario);
    end;
end;

procedure TfrmMtoFac.btnCODIGO_CLIENTEPropertiesEditValueChanged(
  Sender: TObject);
  var
    e: TcxCustomEdit;
    sCodigo:String;
begin
  inherited;
  if (dmmFac <> nil) then
   if ((dmmFac.unqryFac.State = dsInsert) and not(dmmFac.bEsNuevoCliente)) then
    begin
      e := Sender as TcxCustomEdit;
      sCodigo := VarToStr(e.EditingValue);
      if ((sCodigo <> '') and (sCodigo <> '0')) then
        with dmmFac.unstrdprcGetDataCliente do
        begin

          ParamByName('pCODIGO_CLIENTE').AsString :=  sCodigo;
          ExecProc;
          dmmFac.unqryFac.FindField('CODIGO_CLIENTE_FACTURA').AsString := VarToStr(e.EditingValue);
          dmmFac.unqryFac.FindField('RAZONSOCIAL_CLIENTE_FACTURA').AsString := ParamByName('pRAZONSOCIAL_CLIENTE').AsString;
          dmmFac.unqryFac.FindField('NOMBRE').AsString := ParamByName('pNOMBRE').AsString;
          dmmFac.unqryFac.FindField('APELLIDOS').AsString := ParamByName('pAPELLIDOS').AsString;
          dmmFac.unqryFac.FindField('NIF_CLIENTE_FACTURA').AsString := ParamByName('pNIF_CLIENTE').AsString;
          dmmFac.unqryFac.FindField('MOVIL_CLIENTE_FACTURA').AsString := ParamByName('pMOVIL_CLIENTE').AsString;
          dmmFac.unqryFac.FindField('EMAIL_CLIENTE_FACTURA').AsString := ParamByName('pEMAIL_CLIENTE').AsString;
          dmmFac.unqryFac.FindField('DIRECCION1_CLIENTE_FACTURA').AsString := ParamByName('pDIRECCION1_CLIENTE').AsString;
          dmmFac.unqryFac.FindField('DIRECCION2_CLIENTE_FACTURA').AsString := ParamByName('pDIRECCION2_CLIENTE').AsString;
          dmmFac.unqryFac.FindField('POBLACION_CLIENTE_FACTURA').AsString := ParamByName('pPOBLACION_CLIENTE').AsString;
          dmmFac.unqryFac.FindField('PROVINCIA_CLIENTE_FACTURA').AsString := ParamByName('pPROVINCIA_CLIENTE').AsString;
          dmmFac.unqryFac.FindField('CPOSTAL_CLIENTE_FACTURA').AsString := ParamByName('pCPOSTAL_CLIENTE').AsString;
          dmmFac.unqryFac.FindField('PAIS_CLIENTE_FACTURA').AsString := ParamByName('pPAIS_CLIENTE').AsString;
        end;
    end;
end;

procedure TfrmMtoFac.btnGenerarRecibosClick(Sender: TObject);
begin
  inherited;
  if ((DMMfAC.unqryFac.State = dsEdit) or (dmmFac.unqryFac.State = dsInsert)) then
    dmmFac.unqryFac.Post;
  dmmFac.unstrdprcGetRecibos.ParamByName('pNRO_FACTURA').AsInteger := dmmFac.unqryFac.FieldByName('NRO_FACTURA').AsInteger;
  dmmFac.unstrdprcGetRecibos.ParamByName('pSERIE_FACTURA').AsString := dmmFac.unqryFac.FieldByName('SERIE_FACTURA').AsString;
  dmmFac.unstrdprcGetRecibos.ExecProc;
  dmmFac.unqryRecibos.Refresh;
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

procedure TfrmMtoFac.btnReciboDevueltoClick(Sender: TObject);
begin
  inherited;
  CambiarEstadoRecibo('Devuelto');
end;

procedure TfrmMtoFac.btnReciboEmitidoClick(Sender: TObject);
begin
  inherited;
  CambiarEstadoRecibo('Emitido');
                                 
end;

procedure TfrmMtoFac.btnReciboPagadoClick(Sender: TObject);
begin
  inherited;
  CambiarEstadoRecibo('Pagado');
end;

procedure TfrmMtoFac.btnRectificarClick(Sender: TObject);
  var
    form:TfrmGenFacRec;
begin
  inherited;
   form := TfrmGenFacRec.Create(Application);
   try
          form.ShowModal;
   finally
          form.Free;
   end;
end;

procedure TfrmMtoFac.CambiarEstadoRecibo(sEstado: string);
begin
  with dmmFac.unqryRecibos do
  begin
    if not((State = dsEdit) or  (State = dsInsert)) then
      Edit;
    FieldByName('ESTADO_RECIBO').AsString := sEstado;
    if sEstado = 'Pagado' then
       FieldByNAme('FECHA_PAGO').AsDateTime := Trunc(Now)
    else
      if ((sEstado = 'Emitido') or (sEstado='Devuelto')) then
        FieldByNAme('FECHA_PAGO').AsVariant := null;
    Post;
  end;
end;

procedure TfrmMtoFac.cbb1PropertiesChange(Sender: TObject);
begin
  inherited;
//    if ( dsTablaG.DataSet.State = dsInsert ) or
//     ( dsTablaG.DataSet.State = dsEdit ) then
//      dmmFac.zqryFac.FieldByName('APLICAR_IRPF_FACTURAS').AsString :=
//         dmmFac.zqrySeries.FieldByName('APLICAR_IRPF').AsString;
end;

procedure TfrmMtoFac.cbbSerieFacturaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if ((Key = VK_DOWN) and (Shift = [ssShift])) then
      cbbSerieFactura.DroppedDown := True;
end;

procedure TfrmMtoFac.cxdbdtdtFECHA_FACTURAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((Key = VK_DOWN) and (Shift = [ssShift])) then
      cxdbdtdtFECHA_FACTURA.DroppedDown := True;
end;

procedure TfrmMtoFac.cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA2Enter(
  Sender: TObject);
var
  buttonSelected : Integer;
begin
  if ((dmmFac.unqryFac.State = dsEdit) or (dmmFac.unqryFac.State = dsInsert)) then
  begin
    inherited;
    with dmmFac do
    begin
      begin
        buttonSelected := messagedlg('�Desea copiar los datos de nombre y apellidos?',mtConfirmation, mbYesNo, 0);
        if buttonSelected = mrYes     then
        begin
            unqryFac.FieldByName('RAZONSOCIAL_CLIENTE_FACTURA').AsString := unqryFac.FieldByName('NOMBRE').AsString + ' ' +
                                                                         unqryFac.FieldByName('APELLIDOS').AsString;
        end;
      end;
    end;
  end;
end;

procedure TfrmMtoFac.cxgrd5Enter(Sender: TObject);
begin
  inherited;
  //if dmmFac.unqryLinFac.RecordCount = 0 then
  //  dmmFac.dsLinFac.DataSet.Insert;
end;

procedure TfrmMtoFac.cxgrdbclmncxgrdbtblvw1DESCRIPCION_HISTORIAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    form:TfrmModalHistoriaCli;
begin
  inherited;
   form := TfrmModalHistoriaCli.Create(Application);
   form.cxdbmHistoria.DataBinding.DataSource := dmmFac.dsHistoria;
   try
          form.ShowModal;
   finally
          FreeAndNil(form);
   end;
end;

procedure TfrmMtoFac.cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  formulario : TfrmMtoSearch;
begin
    formulario := TfrmMtoSearch.Create(Application);
    try
      formulario.dsData.DataSet := dmmFac.unqryArtDataLinFac;
      formulario.dsData.DataSet.Open;
      formulario.tvGrdDBTabPrin.DataController.CreateAllItems();
      PonerAnchosTitulos(formulario.tvGrdDBTabPrin, 'Productos');
      formulario.Caption := 'B�squeda de Tratamientos en Lineas de Facturas';
      formulario.ShowModal;
    finally
     inherited;
     if formulario.sFicha = 'S' then
          dmmFac.CopiarArticuloaLineaFactura;
        formulario.dsData.DataSet.Close;
        FreeAndNil(formulario);
    end;
end;

procedure TfrmMtoFac.cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesEditValueChanged(
  Sender: TObject);
  var
  E : TcxCustomEdit;
begin
  inherited;
  if ((dmmFac.unqryLinFac.State = dsInsert)) then
  begin
     with dmmFac.unstrdprcGetDataArticulo do
     begin
       e := Sender as TcxCustomEdit;
       ParamByName('pidcodarticulo').AsString :=  VarToStr(e.EditingValue);
       ExecProc;
       dmmFac.unqryLinFac.FindField('CODIGO_ARTICULO_LINEA').AsString := VarToStr(e.EditingValue);
       dmmFac.unqryLinFac.FindField('DESCRIPCION_ARTICULO_LINEA').AsString := ParamByName('pidnomarticulo').AsString;
       dmmFac.unqryLinFac.FindField('PRECIOVENTA_ARTICULO_LINEA').AsFloat := ParamByName('pidprecioventa').AsFloat;
     end;
  end;
end;

procedure TfrmMtoFac.cxgrdbclmntv1ODONTOLOGOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  formulario : TfrmMtoSearch;
begin
    //screen.cursor:=crHourglass;
    formulario := TfrmMtoSearch.Create(Application);
    //formulario.OnClose := TfrmMtoFac.prcfrmMtoSearchFormClose;
    try
      formulario.dsData.DataSet := dmmFac.unqryDocDataFac;
      formulario.dsData.DataSet.Open;
      formulario.tvGrdDBTabPrin.DataController.CreateAllItems();
      formulario.Caption := 'B�squeda de Odont�logos en Lineas de Facturas';
      formulario.ShowModal;
    finally
      inherited;
        if formulario.sFicha = 'S' then
          dmmFac.CopiarOdontologoaLineaFactura;
        formulario.dsData.DataSet.Close;
        FreeAndNil(formulario);
    end;
end;

procedure TfrmMtoFac.btnImprimirClick(Sender: TObject);
  var
    form:TfrmPrintFac;
begin
  inherited;
   form := TfrmPrintFac.Create(Application);
   try
     form.edtNroFac.Text := dsTablaG.DataSet.findField('NRO_FACTURA').AsString;
     form.edtSerie.Text := dsTablaG.DataSet.findField('SERIE_FACTURA').AsString;
     form.ShowModal;
   finally
     form.Free;
   end;
end;

procedure TfrmMtoFac.btnNroFacturaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  dmmFac.NuevaFactura;
end;

procedure TfrmMtoFac.sbGrabarClick(Sender: TObject);
begin
  with dmmFac do
  begin
    if ((unqryFac.State = dsInsert) or (unqryFac.State = dsEdit)) then
      unqryFac.Post;
    if ((dsLinFac.Dataset.State = dsInsert) or (dsLinFac.Dataset.State = dsEdit)) then
      dsLinFac.Dataset.Post;
    if ((unqryHistoria.State = dsInsert) or (unqryHistoria.State = dsEdit)) then
      unqryHistoria.Post;
  end;
end;

procedure TfrmMtoFac.tv1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift <> [ssCtrl]) then
    if ((Key = VK_RETURN) and (dmmFac.dsLinFac.DataSet.RecordCount = 0) and
         ((dsTablaG.DataSet.FieldByName('RAZONSOCIAL_CLIENTE_FACTURA').AsString <> 'PACIENTE NUEVO') OR
           (dsTablaG.DataSet.FieldByName('RAZONSOCIAL_CLIENTE_FACTURA').AsString <> 'PACIENTE NO ENCONTRADO'))) then
      tv1.DataController.Insert;
end;

procedure TfrmMtoFac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dmmFac);
end;

end.
