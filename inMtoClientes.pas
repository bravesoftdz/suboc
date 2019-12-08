unit inMtoClientes;

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
  dxBarBuiltInMenu, cxPC, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLabel, UniDataClientes,
  cxGridBandedTableView, cxGridDBBandedTableView, dxSkinBlack,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxLocalization, cxCalendar,
  cxButtonEdit, cxCurrencyEdit, inMtoPrincipal,
  cxMemo, cxRichEdit, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBevel, cxDBNavigator, System.UITypes, dxDateRanges, dxGDIPlusClasses,
  cxImage;

type
  TfrmMtoClientes = class(TfrmMtoGen)
    pnl1: TPanel;
    cxdbtxtdtCODIGO_CLIENTE: TcxDBTextEdit;
    cxlbl2: TcxLabel;
    cxdbtxtdtRAZON_SOCIAL: TcxDBTextEdit;
    cxlbl3: TcxLabel;
    cxdbtxtdtTELEFONO2: TcxDBTextEdit;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    cxdbtxtdtEMAIL: TcxDBTextEdit;
    pnl2: TPanel;
    cxpgcntrl2: TcxPageControl;
    cxtbsht3: TcxTabSheet;
    cxdbtxtdt7: TcxDBTextEdit;
    cxlbl7: TcxLabel;
    cxlbl8: TcxLabel;
    cxdbtxtdt8: TcxDBTextEdit;
    cxlbl9: TcxLabel;
    cxdbtxtdt9: TcxDBTextEdit;
    cxdbtxtdt10: TcxDBTextEdit;
    cxlbl10: TcxLabel;
    cxdbtxtdt16: TcxDBTextEdit;
    cxlbl16: TcxLabel;
    cxgrdbclmnGrdDBTabPrinCODIGO_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNIF_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinMOVIL_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinEMAIL_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION_CLIENTE1: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION_CLIENTE2: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPOBLACION_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPROVINCIA_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCPOSTAL_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPAIS_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinOBSERVACIONES_CLIENTE: TcxGridDBColumn;
    cxdbtxtdtDireccion: TcxDBTextEdit;
    cxlbl1: TcxLabel;
    cxlbl4: TcxLabel;
    cxdbtxtdtNIF: TcxDBTextEdit;
    cxtbsht1: TcxTabSheet;
    cxedtRAZONSOCIAL_CLIENTE: TcxDBTextEdit;
    cxlbl11: TcxLabel;
    cxedtPROFESION_CLIENTE: TcxDBTextEdit;
    cxlbl12: TcxLabel;
    cxgrdbclmnGrdDBTabPrinREFERENCIA_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTELEFONO_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPROFESION_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFECHA_NACIMIENTO: TcxGridDBColumn;
    cxlbl13: TcxLabel;
    cxedtPROFESION_CLIENTE1: TcxDBTextEdit;
    cxlbl14: TcxLabel;
    cxdbdtdt1: TcxDBDateEdit;
    cxdbtxtdtMOVIL_CLIENTE: TcxDBTextEdit;
    cxtbsht2: TcxTabSheet;
    cxgrd5: TcxGrid;
    cxgrdtvtv1: TcxGridDBTableView;
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
    cxgrdbclmncxgrdtvtv1CODIGO_ARTICULO: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1DESCRIPCION_ARTICULO: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1PRECIOVENTA_ARTICULO: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1FECHA: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1ZONA: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1DESCRIPCION_HISTORIA: TcxGridDBColumn;
    cxtbsht4: TcxTabSheet;
    cxgrdbclmnGrdDBTabPrinNOMBRE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinAPELLIDOS: TcxGridDBColumn;
    cxdbtxtdtNOMBRE: TcxDBTextEdit;
    cxlbl15: TcxLabel;
    cxlbl17: TcxLabel;
    cxdbtxtdtAPELLIDOS: TcxDBTextEdit;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdbclmncxgrdbtblvw1NRO_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1SERIE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1CODIGO_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1RAZONSOCIAL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1NIF_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1MOVIL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1EMAIL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DIRECCION1_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DIRECCION2_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1POBLACION_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1PROVINCIA_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1CPOSTAL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1PAIS_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1FECHA_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1TOTAL_LIQUIDO_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1FORMA_PAGO_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1COMENTARIOS_FACTURA: TcxGridDBColumn;
    cxgrdlvlcxgrd1Level1: TcxGridLevel;
    cxgrdlvlcxgrd1Level2: TcxGridLevel;
    cxgrdbtblvwcxgrd1DBTableView1: TcxGridDBTableView;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1LINEA_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1CODIGO_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1DESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1ZONA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1PRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1CANTIDAD_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1SUM_TOTAL_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1ODONTOLOGO: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1NRO_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1SERIE_FACTURA: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1NOMBRE_ODONTOLOGO: TcxGridDBColumn;
    btn1: TSpeedButton;
    cxgrdbclmncxgrdtvtv1ID: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1LINEA_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdtvtv1ODONTOLOGO: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinIBAN: TcxGridDBColumn;
    cxlbl18: TcxLabel;
    cxdbtxtdtPAIS_CLIENTE: TcxDBTextEdit;
    img1: TcxImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxgrdbclmncxgrdtvtv1DESCRIPCION_HISTORIAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure MostrarBlocdeNotas;
    procedure cxdbtxtdtRAZON_SOCIALEnter(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;
  procedure ShowMtoClientes(Owner       : TComponent); overload;
  procedure ShowMtoClientes(Owner       : TComponent; sEmail: String); overload;
var
  dmmClientes: TDMClientes;
  frmMtoClientes: TfrmMtoClientes;

implementation

uses
  inLibWin, inMtoModalHistoriaCli;

{$R *.dfm}

procedure ShowMtoClientes(Owner       : TComponent); overload;
var
  frmMtoClientes : TfrmMtoClientes;
begin
  if not(IsOpenMDI('Pacientes', Owner)) then
  begin
    Application.CreateForm(TfrmMtoClientes, frmMtoClientes);
    frmMtoClientes.edtBusqGlobal.SetFocus;
  end;
end;

procedure ShowMtoClientes(Owner       : TComponent; sEmail: String); overload;
var
  frmMtoClientes : TfrmMtoClientes;
begin
  if not(IsOpenMDI('Pacientes', Owner)) then
  begin
    Application.CreateForm(TfrmMtoClientes, frmMtoClientes);
  end;
  frmMtoClientes.Show;
  dmmClientes.unqryClientes.Locate('CODIGO_CLIENTE', sEmail, []);
end;

procedure TfrmMtoClientes.FormCreate(Sender: TObject);
begin
  dmmClientes := TDMClientes.Create(nil);
  dsTablaG.DataSet := dmmClientes.unqryClientes;
  inherited;
end;

procedure TfrmMtoClientes.MostrarBlocdeNotas;
  var
    form:TfrmModalHistoriaCli;
begin
  inherited;
   form := TfrmModalHistoriaCli.Create(Application);
   try
          form.ShowModal;
   finally
          form.Free;
   end;
end;

procedure TfrmMtoClientes.btn1Click(Sender: TObject);
begin
  inherited;
  dsTablaG.DataSet.Insert;
  pcPantalla.ActivePage := tsFicha;
  tsFicha.SetFocus;
  cxdbtxtdtNOMBRE.SetFocus;
end;

procedure TfrmMtoClientes.cxdbtxtdtRAZON_SOCIALEnter(Sender: TObject);
var
  buttonSelected : Integer;
begin
  if ((dmmClientes.unqryClientes.State = dsEdit) or (dmmClientes.unqryClientes.State = dsInsert)) then
  begin
    inherited;
    with dmmClientes do
    begin
      begin
        buttonSelected := messagedlg('¿Desea copiar los datos de nombre y apellidos?',mtConfirmation, mbYesNo, 0);
        if buttonSelected = mrYes     then
        begin
            unqryClientes.FieldByName('RAZONSOCIAL_CLIENTE').AsString := unqryClientes.FieldByName('NOMBRE').AsString + ' ' +
                                                                         unqryClientes.FieldByName('APELLIDOS').AsString;
        end;
      end;
    end;
  end;
end;

procedure TfrmMtoClientes.cxgrdbclmncxgrdtvtv1DESCRIPCION_HISTORIAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  MostrarBlocdeNotas;
end;

procedure TfrmMtoClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dmmClientes);
end;

end.
