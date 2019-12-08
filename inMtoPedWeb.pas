unit inMtoPedWeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer, RzStatus,
  RzPanel, cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls, UniDataPedWeb,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, dxBarBuiltInMenu,
  cxLabel, cxPC, cxGroupBox, cxCurrencyEdit, cxSplitter, cxMemo, MidasLib,
  DBClient, dxSkinBlack, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxImage, Menus,
  cxButtons, jpeg, cxLocalization;

type
  TPedidoFab = class (TObject)
			SERIE 			     :String;
			NUMFAB           :String;
			FECHA            :String;
			CODCLI           :String;
			NOMCLI           :String;
			CODMOD           :String;
			NOMMOD           :String;
			CODHOR           :String;
			NOMHOR           :String;
			PARES            :String;
			SUPLEMENTO       :String;
			TALLA_D          :String;
			TALLA_I          :String;
			ANCHO_D          :String;
			ANCHO_I          :String;
			EMP_D            :String;
			EMP_I            :String;
			NUMPED           :String;
			ID_ESTADO        :String;
			ESTADO           :String;
			FECHA_ESTADO     :String;
			OBSERVACIONES    :String;
			FABRICADO        :String;
			PERS_1           :String;
			PERS_2A          :String;
			PERS_2B          :String;
			TIPO_LETRA       :String;
			CODTIR           :String;
			NOMTIR           :String;
			CODSUELA         :String;
			DIRECCION_TIENDA :String;
			IMPORTADO        :String;
			IMAGEN           :String;
			obvs1            :String;
			obvs2            :String;
			obvs3            :String;
			obvs4            :String;
			obvs5            :String;

  end;

  TfrmMtoPedWeb = class(TfrmMtoGen)
    cxgrdbclmnGrdDBTabPrinidpedidoweb: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinemail: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinnombre: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinapellidos: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinfacturacionnombrefiscal: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinfacturacioncif: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinfacturaciondireccion1: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinfacturaciondireccion2: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinfacturacionciudad: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinfacturacioncodigopostal: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinfacturacionprovincia: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinfacturacionpais: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinenvionombre: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinenviodireccion1: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinenviodireccion2: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinenviociudad: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinenviocodigopostal: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinenvioprovincia: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinenviopais: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinmetododepago: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinmetododeenvio: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrininstantemodif: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinenvioapellidos: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNUMPED: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrincosteenvio: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinidmagento: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinivapedido: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrintotalpedido: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinbasepedido: TcxGridDBColumn;
    pnl1: TPanel;
    cxpgcntrl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    pnl2: TPanel;
    cxpgcntrl2: TcxPageControl;
    cxtbsht4: TcxTabSheet;
    cxdbtxtdt20: TcxDBTextEdit;
    cxlbl18: TcxLabel;
    cxlbl19: TcxLabel;
    cxdbdtdt2: TcxDBDateEdit;
    cxtbsht5: TcxTabSheet;
    cxlbl20: TcxLabel;
    cxdbtxtdt21: TcxDBTextEdit;
    cxdbtxtdt22: TcxDBTextEdit;
    cxlbl21: TcxLabel;
    cxdbtxtdt23: TcxDBTextEdit;
    cxdbtxtdt24: TcxDBTextEdit;
    cxlbl22: TcxLabel;
    cxlbl23: TcxLabel;
    cxdbtxtdt25: TcxDBTextEdit;
    cxdbtxtdt26: TcxDBTextEdit;
    cxlbl24: TcxLabel;
    cxdbtxtdt27: TcxDBTextEdit;
    cxlbl25: TcxLabel;
    cxdbtxtdt28: TcxDBTextEdit;
    cxlbl26: TcxLabel;
    cxgrpbx2: TcxGroupBox;
    cxdbtxtdt29: TcxDBTextEdit;
    cxtbsht6: TcxTabSheet;
    cxlbl27: TcxLabel;
    cxdbtxtdt30: TcxDBTextEdit;
    cxdbtxtdt31: TcxDBTextEdit;
    cxlbl28: TcxLabel;
    cxdbtxtdt32: TcxDBTextEdit;
    cxdbtxtdt33: TcxDBTextEdit;
    cxlbl29: TcxLabel;
    cxlbl30: TcxLabel;
    cxdbtxtdt34: TcxDBTextEdit;
    cxdbtxtdt35: TcxDBTextEdit;
    cxlbl31: TcxLabel;
    cxdbtxtdt36: TcxDBTextEdit;
    cxlbl32: TcxLabel;
    cxlbl33: TcxLabel;
    cxdbtxtdt37: TcxDBTextEdit;
    cxdbcrncydt1: TcxDBCurrencyEdit;
    cxdbcrncydt2: TcxDBCurrencyEdit;
    cxdbcrncydt3: TcxDBCurrencyEdit;
    cxlbl1: TcxLabel;
    cxdbcrncydt4: TcxDBCurrencyEdit;
    cxlbl2: TcxLabel;
    pnl3: TPanel;
    cxGrid1: TcxGrid;
    cxgrdlvlPartes: TcxGridLevel;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    tvLineas: TcxGridDBTableView;
    cxgrdlvlLineas: TcxGridLevel;
    cxgrdbclmnGridDBTableView2identificador: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView2numlinea: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView2unidades: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView2precio: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView2instantemodif: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView2NUMFAB: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView2baselinea: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView2porcentajeivalinea: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView2ivalinea: TcxGridDBColumn;
    cxspltr1: TcxSplitter;
    tvcPartescxgrdbclmnGridDBTableView1idpedidoweb: TcxGridDBColumn;
    tvcPartescxgrdbclmnGridDBTableView1numlinea: TcxGridDBColumn;
    tvcPartescxgrdbclmnGridDBTableView1clave: TcxGridDBColumn;
    tvcPartescxgrdbclmnGridDBTableView1valor: TcxGridDBColumn;
    tvcPartescxgrdbclmnGridDBTableView1instantemodif: TcxGridDBColumn;
    tvcPartescxgrdbclmnGridDBTableView1descripcion: TcxGridDBColumn;
    tvcPartescxgrdbclmnGridDBTableView1parte: TcxGridDBColumn;
    cxdbm1: TcxDBMemo;
    cxlbl3: TcxLabel;
    cxdbtxtdt1: TcxDBTextEdit;
    cxlbl4: TcxLabel;
    cxlbl34: TcxLabel;
    cxdbtxtdt38: TcxDBTextEdit;
    cxlbl5: TcxLabel;
    DBE1: TcxDBTextEdit;
    tvPartes: TcxGridDBTableView;
    btnPrint: TSpeedButton;
    tvcLineasdescripcion: TcxGridDBColumn;
    DBimg1: TcxDBImage;
    btnGetImagen: TcxButton;
    btnFotos: TSpeedButton;
    btn1: TcxButton;
    procedure sbGrabarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableView2DataControllerDataChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure btnGetImagenClick(Sender: TObject);
    procedure btnFotosClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    //procedure sbSalirClick(Sender: TObject);
  private
    dmPedWeb : TdmPedWeb;
    procedure CrearPedido(PedFab :TPedidoFab; ds:TClientDataSet);
  public
    { Public declarations }
  end;
  procedure ShowMtoPedWeb(Owner       : TComponent); overload;
  procedure ShowMtoPedWeb(Owner       : TComponent; sidPedido: String); overload;
var
  frmMtoPedWeb: TfrmMtoPedWeb;

implementation

uses
  inLibWin, inMtoModalTallas, inMtoModalPrintWeb, UniDataConn;

{$R *.dfm}

procedure ShowMtoPedWeb(Owner       : TComponent); overload;
var
  frmMtoPedWeb : TfrmMtoPedWeb;
begin
  if not(IsOpenMDI('Pedidos Web', Owner)) then
  begin
    Application.CreateForm(TfrmMtoPedWeb, frmMtoPedWeb);
  end;
end;

  procedure ShowMtoPedWeb(Owner       : TComponent; sidPedido: String); overload;
var
  frmMtoPedWeb : TfrmMtoPedWeb;
begin
  if not(IsOpenMDI('Pedidos Web', Owner)) then
  begin
    Application.CreateForm(TfrmMtoPedWeb, frmMtoPedWeb);
  end;
  dmPedWeb.zqryPedidosWeb.Locate('idPedidoWeb', sidPedido, []);
end;

procedure TfrmMtoPedWeb.sbGrabarClick(Sender: TObject);
var
  form:TfrmTallas;
  PedFab : TPedidoFab;
begin
  inherited;
  dmPedWeb.zqryTallas.Open;
  if dmPedWeb.zqryTallas.RecordCount < 1 then
    ShowMessage('No hay medidas para horma de este cliente')
  else
  begin
      form := TfrmTallas.Create(Application);
      dmPedWeb.cdsPedidoWeb.FieldDefs.Clear;
      dmPedWeb.dtstprvdr1.DataSet := dmPedWeb.zqryTallas;
      dmPedWeb.cdsPedidoWeb.Open;
      dmPedWeb.zqryTallas.Close;
      dmPedWeb.cdsPedidoWeb.First;
      try
        if form.ShowModal = mrOK then
        begin
          PedFab := TpedidoFab.Create;
          CrearPedido(PedFab, dmPedWeb.cdsPedidoWeb);
          //Cliente y observaciones
          PedFab.Free;
        end;
      finally
        dmPedWeb.cdsPedidoWeb.EmptyDataSet;
        form.Free;
      end;
    end;
end;

procedure TfrmMtoPedWeb.FormCreate(Sender: TObject);
begin
  dmPedWeb := TDMPedWeb.Create(dmPedWeb);
  dsTablaG.DataSet := dmPedWeb.zqryPedidosWeb;
  inherited;
  //
end;

procedure TfrmMtoPedWeb.cxGridDBTableView2DataControllerDataChanged(
  Sender: TObject);
begin
  inherited;
  //
//  if (dmPedWeb <> nil) then
//  begin
//    dmPedWeb.zqryHayPedidoFab.Open;
//    if (dmPedWeb.zqryHayPedidoFab.RecordCount > 0) then
//    begin
//      btnCrearPedFab.Enabled := True;
//    end
//    else
//    begin
//      btnCrearPedFab.Enabled := False;
//    end;
//    dmPedWeb.zqryHayPedidoFab.Close;
//  end;
end;

procedure TfrmMtoPedWeb.CrearPedido(PedFab: TPedidoFab; ds: TClientDataSet);
begin
  PedFab.SERIE := 'A';
  PedFab.FECHA := formatdatetime('dd/mm/yy', Now);
  Pedfab.CODCLI := ds.FindField('cCodigoCliente').AsString;
end;

procedure TfrmMtoPedWeb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndnil(dmPedWeb);
end;

procedure TfrmMtoPedWeb.btnPrintClick(Sender: TObject);
var
    form:TfrmPrintPedWeb;
begin
  inherited;
   form := TfrmPrintPedWeb.Create(Application);
   try
          form.edtNroPed.Text := dsTablaG.DataSet.findField('idpedidoweb').AsString;
          dmPedWeb.zqryPrintPedidoW.SQL.Text := 'SELECT * from web_pedidos ' +
                                                ' WHERE idpedidoweb = ' + QuotedStr(form.edtNroPed.Text);
          dmPedWeb.zqryPrintPedidoW.Open;
          dmPedWeb.zqryPrintPedidoWLineas.Open;
          dmPedWeb.zqryPrintPedidoWLineasPer.Open;
          form.ShowModal;
   finally
          dmPedWeb.zqryPrintPedidoW.Close;
          dmPedWeb.zqryPrintPedidoWLineas.Close;
          dmPedWeb.zqryPrintPedidoWLineasPer.Close;
          form.Free;
   end;
end;

procedure TfrmMtoPedWeb.btnGetImagenClick(Sender: TObject);
var
  sRuta:String;
  foto:TMemoryStream;
begin
  inherited;
  dmPedWeb.zqryFotoLinea.Open;
  sRuta := dmPedWeb.zqryFotoLinea.FieldByName('valor').AsString;

  if (dmPedWeb.zqryFotoLinea.RecordCount > 0)  then
  begin
    //http://zeoslib.sourceforge.net/viewtopic.php?t=3774
    dmPedWeb.zqryFotoLinea.Open;
    sRuta := dmPedWeb.zqryFotoLinea.FieldByName('valor').AsString;
    dmPedWeb.zqryFotoLinea.Close;
    GetImageURL(sRuta, foto);
    dmPedWeb.zqryPedidosWebLineas.Edit;
    TBlobField(dmPedWeb.zqryPedidosWebLineas.FieldByName('imagen')).LoadFromStream(foto);
    dmPedWeb.zqryPedidosWebLineas.FieldByName('unidades').AsString := dmPedWeb.zqryPedidosWebLineas.FieldByName('unidades').AsString;
    dmPedWeb.zqryPedidosWebLineas.Post;
  end;
  dmPedWeb.zqryFotoLinea.Close;
end;

procedure TfrmMtoPedWeb.btnFotosClick(Sender: TObject);
begin
  inherited;
  dmPedWeb.zqryPedidosWebLineas.First;
  while not dmPedWeb.zqryPedidosWebLineas.Eof do
  begin
    btnGetImagenClick(nil);
    dmPedWeb.zqryPedidosWebLineas.Next;
  end;
end;

procedure TfrmMtoPedWeb.btn1Click(Sender: TObject);
var
  iButtonPressed:Integer;
  SavedCursor : TCursor;

begin
  inherited;

  // Show a confirmation dialog
  if dsTablaG.DataSet.fieldByName('numped').AsString <> '' then
  begin
    ShowMessage('Este pedido ya tiene factura generada');
    Exit;
  end;
  ibuttonPressed := messagedlg('¿Realmente desea crear los pedidos a fábrica y la factura automáticamente?', mtConfirmation , [mbYes, mbNo], 0);
  // Show the button type selected
  if ibuttonPressed = mrNo then
  begin
    ShowMessage('Se ha cancelado el proceso');
  end
  else
  begin
    SavedCursor := Screen.Cursor;
    try
      Screen.Cursor:=crHourglass;
      with dmPEdWeb do
      begin
      //dmPedWeb.zspCrearFactPed.Connection.StartTransaction;
      //dmPedWeb.zspCrearFactPed.Params.CreateParam(ftString, 'idpedidoweb', ptInput);
      //dmPedWeb.zspCrearFactPed.ParamByName('idpedidoweb').AsString := dsTablaG.DataSet.fieldByName('idpedidoweb').AsString;
      //dmPedWeb.zspCrearFactPed.ExecProc;
      //dmPEdweb.zspCrearFactPed.Connection.Commit;
        zqryCrearFactura.connection.StartTransaction;
        zqryCrearFactura.SQL.Text := 'CALL PRC_CREAR_FACTURA_PEDIDO_WEB(' +
                                     QuotedStr(dsTablaG.DataSet.fieldByName('idpedidoweb').AsString) + ');';
        zqryCrearFactura.ExecSQL;
        zqryCrearFactura.connection.Commit;
        dsTablaG.Dataset.refresh;
        ShowMessage('Se ha creado correctamente la factura ' + dsTablaG.DataSet.fieldByName('numped').AsString );
      end;
    except
      //dmPedWeb.zspCrearFactPed.Connection.Rollback;
      Screen.Cursor := SavedCursor;
      dmpedweb.zqryCrearFactura.connection.RollBack;
      ShowMessage('Se ha producido un error al crear la factura y los pedidos. Se han anulado todas las acciones.');
    end;
    Screen.Cursor := SavedCursor;

  end;

end;

end.
