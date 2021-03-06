unit inMtoPre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer,
  cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, UniDataPre,
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
  cxDBLabel, dxGDIPlusClasses, Vcl.ToolWin;

type
  TfrmMtoPre = class(TfrmMtoGen)
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
    btnNuevoPre: TSpeedButton;
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
    btnImprimirRecibo: TcxButton;
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
    btnCrearFactura: TSpeedButton;
    tsDibujo: TcxTabSheet;
    tlb1: TToolBar;
    btn4: TcxButton;
    btn5: TcxButton;
    btn6: TcxButton;
    img2: TcxImage;
    img3: TcxImage;
    pnl6: TPanel;
    btnGenerarHistoria: TcxButton;
    btn3: TcxButton;

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
    procedure btnNuevoPreClick(Sender: TObject);
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
    procedure btnImprimirReciboClick(Sender: TObject);
    procedure btnGenerarRecibosClick(Sender: TObject);
    procedure btnReciboPagadoClick(Sender: TObject);
    procedure btnReciboEmitidoClick(Sender: TObject);
    procedure btnReciboDevueltoClick(Sender: TObject);
    procedure btnGenerarHistoriaClick(Sender: TObject);
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

  procedure ShowMtoPre(Owner       : TComponent); overload;
  procedure ShowMtoPre(Owner       : TComponent; sidFactura: String); overload;
var
  frmMtoPre: TfrmMtoPre;
  dmmPre : TdmPre;
implementation

uses
  inLibWin, inMtoGenSearch,  inMtoModalPreRec, inMtoModalPreImp, inMtoModalPreRecImp,
  inLibPermission, inMtoPrincipal, inMtoModalHistoriaCli;

{$R *.dfm}

procedure ShowMtoPre(Owner       : TComponent); overload;
var
  frmMtoPre : TfrmMtoPre;
begin
  if not(IsOpenMDI('Presupuestos', Owner)) then
  begin
    Application.CreateForm(TfrmMtoPre, frmMtoPre);
    frmMtoPre.edtBusqGlobal.SetFocus;
  end;
end;
procedure ShowMtoPre(Owner       : TComponent; sidFactura: String); overload;
var
  frmMtoPre : TfrmMtoPre;
begin
  if not(IsOpenMDI('Presupuestos', Owner)) then
  begin
    Application.CreateForm(TfrmMtoPre, frmMtoPre);
  end;
  //dmPedFab.zqryFabCab.Locate('NUMPED', sidPedido, []);
end;

procedure TfrmMtoPre.FormCreate(Sender: TObject);
begin
  dmmPre := TDMPre.Create(nil);
  dsTablaG.DataSet := dmmPre.unqryFac;
  cbbSerieFactura.Properties.ListSource := dmmPre.dsSeries;
  inherited;
//  if not FbPermisoEscritura then
//  begin
//    dmmPre.zqryFac.ReadOnly := True;
//    dmmPre.zqryLinFac.ReadOnly := True;
//    dmmPre.zqryClientes.ReadOnly := True;
//  end;
end;


//procedure TfrmMtoPre.btn1Click(Sender: TObject);
//begin
//  inherited;
//  ChangeListaToFicha;
//end;

procedure TfrmMtoPre.btn1Click(Sender: TObject);
begin
  inherited;
  if dmmPre.unqryFac.FieldByName('CODIGO_CLIENTE_FACTURA').AsString = '0' then
    dmmPre.NuevoCliente;
  dmmPre.CrearCliente;
  ShowMessage('Paciente: ' + dmmPre.unqryFac.FieldByName('CODIGO_CLIENTE_FACTURA').AsString + ' pasado correctamente a la tabla de pacientes');
end;

procedure TfrmMtoPre.btn3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  if ((Key = VK_RETURN) and (Shift = [ssCtrl])) then
//    dmmPre.NuevaFactura;
end;

procedure TfrmMtoPre.btnNuevoPreClick(Sender: TObject);
begin
  inherited;
  if ((dmmPre.unqryFac.State <> dsInsert) and (dmmPre.unqryFac.State <> dsEdit)) then
  begin
    dmmPre.unqryFac.Insert;
    pcPantalla.ActivePage := tsFicha;
    tsFicha.SetFocus;
    cxtbshtCabecera.PageControl.ActivePage := cxtbshtCabecera;
    cxtbshtCabecera.SetFocus;
    btnCODIGO_CLIENTE.SetFocus;
    cxpgcntrlFacturacx.ActivePageIndex := tsLineasFactura.PageIndex;
    tsLineasFactura.SetFocus;
  end;
end;

procedure TfrmMtoPre.btnImprimirReciboClick(Sender: TObject);
  var
    form:TfrmPrintPreRec;
begin
  inherited;
   form := TfrmPrintPreRec.Create(Application);
   try
     form.edtNroFac.Text := dmmPre.unqryRecibos.findField('NRO_FACTURA').AsString;
     form.edtSerie.Text := dmmPre.unqryRecibos.findField('SERIE_FACTURA').AsString;
     form.edtRecibo.Text := dmmPre.unqryRecibos.findField('NRO_PLAZO_RECIBO').AsString;
     form.ShowModal;
   finally
     form.Free;
   end;
end;

procedure TfrmMtoPre.btnCODIGO_CLIENTEKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  if ((Key = VK_RETURN) and (Shift = [ssCtrl])) then
//    btnBuscar_Clientes_ActivosClick(nil);
end;

procedure TfrmMtoPre.btnCODIGO_CLIENTEPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  formulario : TfrmMtoSearch;
begin
    formulario := TfrmMtoSearch.Create(Application);
    try
      formulario.dsData.DataSet := dmmPre.unqryCliDataFac;
      formulario.dsData.DataSet.Open;
      formulario.tvGrdDBTabPrin.DataController.CreateAllItems();
      PonerAnchosTitulos(formulario.tvGrdDBTabPrin, 'Clientes');
      formulario.Caption := 'B�squeda de Pacientes en Presupuestos';
      formulario.ShowModal;
    finally
        inherited;
        if formulario.sFicha = 'S' then
          dmmPre.CopiarClienteaFactura;
        formulario.dsData.DataSet.Close;
        FreeAndNil(formulario);
    end;
end;

procedure TfrmMtoPre.btnCODIGO_CLIENTEPropertiesEditValueChanged(
  Sender: TObject);
  var
    e: TcxCustomEdit;
    sCodigo:String;
begin
  inherited;
  if (dmmPre <> nil) then
   if ((dmmPre.unqryFac.State = dsInsert) and not(dmmPre.bEsNuevoCliente)) then
    begin
      e := Sender as TcxCustomEdit;
      sCodigo := VarToStr(e.EditingValue);
      if ((sCodigo <> '') and (sCodigo <> '0')) then
        with dmmPre.unstrdprcGetDataCliente do
        begin

          ParamByName('pCODIGO_CLIENTE').AsString :=  sCodigo;
          ExecProc;
          dmmPre.unqryFac.FindField('CODIGO_CLIENTE_FACTURA').AsString := VarToStr(e.EditingValue);
          dmmPre.unqryFac.FindField('RAZONSOCIAL_CLIENTE_FACTURA').AsString := ParamByName('pRAZONSOCIAL_CLIENTE').AsString;
          dmmPre.unqryFac.FindField('NOMBRE').AsString := ParamByName('pNOMBRE').AsString;
          dmmPre.unqryFac.FindField('APELLIDOS').AsString := ParamByName('pAPELLIDOS').AsString;
          dmmPre.unqryFac.FindField('NIF_CLIENTE_FACTURA').AsString := ParamByName('pNIF_CLIENTE').AsString;
          dmmPre.unqryFac.FindField('MOVIL_CLIENTE_FACTURA').AsString := ParamByName('pMOVIL_CLIENTE').AsString;
          dmmPre.unqryFac.FindField('EMAIL_CLIENTE_FACTURA').AsString := ParamByName('pEMAIL_CLIENTE').AsString;
          dmmPre.unqryFac.FindField('DIRECCION1_CLIENTE_FACTURA').AsString := ParamByName('pDIRECCION1_CLIENTE').AsString;
          dmmPre.unqryFac.FindField('DIRECCION2_CLIENTE_FACTURA').AsString := ParamByName('pDIRECCION2_CLIENTE').AsString;
          dmmPre.unqryFac.FindField('POBLACION_CLIENTE_FACTURA').AsString := ParamByName('pPOBLACION_CLIENTE').AsString;
          dmmPre.unqryFac.FindField('PROVINCIA_CLIENTE_FACTURA').AsString := ParamByName('pPROVINCIA_CLIENTE').AsString;
          dmmPre.unqryFac.FindField('CPOSTAL_CLIENTE_FACTURA').AsString := ParamByName('pCPOSTAL_CLIENTE').AsString;
          dmmPre.unqryFac.FindField('PAIS_CLIENTE_FACTURA').AsString := ParamByName('pPAIS_CLIENTE').AsString;
        end;
    end;
end;

procedure TfrmMtoPre.btnGenerarHistoriaClick(Sender: TObject);
begin
  inherited;
  dmmPre.ActualizarHistoria;
end;

procedure TfrmMtoPre.btnGenerarRecibosClick(Sender: TObject);
begin
  inherited;
  if ((dmmPre.unqryFac.State = dsEdit) or (dmmPre.unqryFac.State = dsInsert)) then
    dmmPre.unqryFac.Post;
  dmmPre.unstrdprcGetRecibos.ParamByName('pNRO_FACTURA').AsInteger := dmmPre.unqryFac.FieldByName('NRO_FACTURA').AsInteger;
  dmmPre.unstrdprcGetRecibos.ParamByName('pSERIE_FACTURA').AsString := dmmPre.unqryFac.FieldByName('SERIE_FACTURA').AsString;
  dmmPre.unstrdprcGetRecibos.ExecProc;
  dmmPre.unqryRecibos.Refresh;
end;

//procedure TfrmMtoPre.prcfrmMtoSearchFormClose(Sender: TObject;
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

procedure TfrmMtoPre.btnReciboDevueltoClick(Sender: TObject);
begin
  inherited;
  CambiarEstadoRecibo('Devuelto');
end;

procedure TfrmMtoPre.btnReciboEmitidoClick(Sender: TObject);
begin
  inherited;
  CambiarEstadoRecibo('Emitido');
                                 
end;

procedure TfrmMtoPre.btnReciboPagadoClick(Sender: TObject);
begin
  inherited;
  CambiarEstadoRecibo('Pagado');
end;

procedure TfrmMtoPre.btnRectificarClick(Sender: TObject);
  var
    form:TfrmGenPreRec;
begin
  inherited;
   form := TfrmGenPreRec.Create(Application);
   try
          form.ShowModal;
   finally
          form.Free;
   end;
end;

procedure TfrmMtoPre.CambiarEstadoRecibo(sEstado: string);
begin
  with dmmPre.unqryRecibos do
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

procedure TfrmMtoPre.cbb1PropertiesChange(Sender: TObject);
begin
  inherited;
//    if ( dsTablaG.DataSet.State = dsInsert ) or
//     ( dsTablaG.DataSet.State = dsEdit ) then
//      dmmPre.zqryFac.FieldByName('APLICAR_IRPF_FACTURAS').AsString :=
//         dmmPre.zqrySeries.FieldByName('APLICAR_IRPF').AsString;
end;

procedure TfrmMtoPre.cbbSerieFacturaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if ((Key = VK_DOWN) and (Shift = [ssShift])) then
      cbbSerieFactura.DroppedDown := True;
end;

procedure TfrmMtoPre.cxdbdtdtFECHA_FACTURAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((Key = VK_DOWN) and (Shift = [ssShift])) then
      cxdbdtdtFECHA_FACTURA.DroppedDown := True;
end;

procedure TfrmMtoPre.cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA2Enter(
  Sender: TObject);
var
  buttonSelected : Integer;
begin
  if ((dmmPre.unqryFac.State = dsEdit) or (dmmPre.unqryFac.State = dsInsert)) then
  begin
    inherited;
    with dmmPre do
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

procedure TfrmMtoPre.cxgrd5Enter(Sender: TObject);
begin
  inherited;
  //if dmmPre.unqryLinFac.RecordCount = 0 then
  //  dmmPre.dsLinFac.DataSet.Insert;
end;

procedure TfrmMtoPre.cxgrdbclmncxgrdbtblvw1DESCRIPCION_HISTORIAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    form:TfrmModalHistoriaCli;
begin
  inherited;
   form := TfrmModalHistoriaCli.Create(Application);
   form.cxdbmHistoria.DataBinding.DataSource := dmmPre.dsHistoria;
   try
          form.ShowModal;
   finally
          FreeAndNil(form);
   end;
end;

procedure TfrmMtoPre.cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  formulario : TfrmMtoSearch;
begin
    formulario := TfrmMtoSearch.Create(Application);
    try
      formulario.dsData.DataSet := dmmPre.unqryArtDataLinFac;
      formulario.dsData.DataSet.Open;
      formulario.tvGrdDBTabPrin.DataController.CreateAllItems();
      PonerAnchosTitulos(formulario.tvGrdDBTabPrin, 'Productos');
      formulario.Caption := 'B�squeda de Tratamientos en Lineas de Facturas';
      formulario.ShowModal;
    finally
     inherited;
     if formulario.sFicha = 'S' then
          dmmPre.CopiarArticuloaLineaFactura;
        formulario.dsData.DataSet.Close;
        FreeAndNil(formulario);
    end;
end;

procedure TfrmMtoPre.cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesEditValueChanged(
  Sender: TObject);
  var
  E : TcxCustomEdit;
begin
  inherited;
  if ((dmmPre.unqryLinFac.State = dsInsert)) then
  begin
     with dmmPre.unstrdprcGetDataArticulo do
     begin
       e := Sender as TcxCustomEdit;
       ParamByName('pidcodarticulo').AsString :=  VarToStr(e.EditingValue);
       ExecProc;
       dmmPre.unqryLinFac.FindField('CODIGO_ARTICULO_LINEA').AsString := VarToStr(e.EditingValue);
       dmmPre.unqryLinFac.FindField('DESCRIPCION_ARTICULO_LINEA').AsString := ParamByName('pidnomarticulo').AsString;
       dmmPre.unqryLinFac.FindField('PRECIOVENTA_ARTICULO_LINEA').AsFloat := ParamByName('pidprecioventa').AsFloat;
     end;
  end;
end;

procedure TfrmMtoPre.cxgrdbclmntv1ODONTOLOGOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  formulario : TfrmMtoSearch;
begin
    //screen.cursor:=crHourglass;
    formulario := TfrmMtoSearch.Create(Application);
    //formulario.OnClose := TfrmMtoPre.prcfrmMtoSearchFormClose;
    try
      formulario.dsData.DataSet := dmmPre.unqryDocDataFac;
      formulario.dsData.DataSet.Open;
      formulario.tvGrdDBTabPrin.DataController.CreateAllItems();
      formulario.Caption := 'B�squeda de Odont�logos en Lineas de Facturas';
      formulario.ShowModal;
    finally
      inherited;
        if formulario.sFicha = 'S' then
          dmmPre.CopiarOdontologoaLineaFactura;
        formulario.dsData.DataSet.Close;
        FreeAndNil(formulario);
    end;
end;

procedure TfrmMtoPre.btnImprimirClick(Sender: TObject);
  var
    form:TfrmPrintPre;
begin
  inherited;
   form := TfrmPrintPre.Create(Application);
   try
     form.edtNroFac.Text := dsTablaG.DataSet.findField('NRO_FACTURA').AsString;
     form.edtSerie.Text := dsTablaG.DataSet.findField('SERIE_FACTURA').AsString;
     form.ShowModal;
   finally
     form.Free;
   end;
end;

procedure TfrmMtoPre.btnNroFacturaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  dmmPre.NuevaFactura;
end;

procedure TfrmMtoPre.sbGrabarClick(Sender: TObject);
begin
  with dmmPre do
  begin
    if ((unqryFac.State = dsInsert) or (unqryFac.State = dsEdit)) then
      unqryFac.Post;
    if ((dsLinFac.Dataset.State = dsInsert) or (dsLinFac.Dataset.State = dsEdit)) then
      dsLinFac.Dataset.Post;
    if ((unqryHistoria.State = dsInsert) or (unqryHistoria.State = dsEdit)) then
      unqryHistoria.Post;
  end;
end;

procedure TfrmMtoPre.tv1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift <> [ssCtrl]) then
    if ((Key = VK_RETURN) and (dmmPre.dsLinFac.DataSet.RecordCount = 0) and
         ((dsTablaG.DataSet.FieldByName('RAZONSOCIAL_CLIENTE_FACTURA').AsString <> 'PACIENTE NUEVO') OR
           (dsTablaG.DataSet.FieldByName('RAZONSOCIAL_CLIENTE_FACTURA').AsString <> 'PACIENTE NO ENCONTRADO'))) then
      tv1.DataController.Insert;
end;

procedure TfrmMtoPre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dmmPre);
end;

end.
