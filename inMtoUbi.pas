unit inMtoUbi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData,   DBCtrls,
  cxNavigator, ExtCtrls, //dxCntner, dxExEdtr, dxEdLib,
  cxContainer,
  cxTextEdit, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ComCtrls, StdCtrls, Buttons, ADODB, //BetterADODataSet,
  cxDBEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxLookAndFeels,
  cxLookAndFeelPainters, cxCheckBox, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, cxLabel, cxDBLabel, cxTimeEdit, cxCalendar, inMtoPrincipal,
  cxLocalization, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmMtoUbi = class(TfrmMtoGen)
    DBENomUbi: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEUbicacion: TcxDBTextEdit;
    Label3: TLabel;
    DBEDireccion1: TcxDBTextEdit;
    DBECodPostal: TcxDBTextEdit;
    DBEPoblacion: TcxDBTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEProvincia: TcxDBTextEdit;
    Label7: TLabel;
    qyUbicaciones: TZTable;
    cxdbtxtdt1: TcxDBTextEdit;
    lbl1: TLabel;
    cxdbtxtdt2: TcxDBTextEdit;
    lbl2: TLabel;
    cxdbtxtdt3: TcxDBTextEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    cxdbtxtdt4: TcxDBTextEdit;
    lbl5: TLabel;
    cxdbtxtdt5: TcxDBTextEdit;
    cxdbtxtdt6: TcxDBTextEdit;
    lbl6: TLabel;
    cxdbtxtdt7: TcxDBTextEdit;
    lbl7: TLabel;
    cxgrdbclmnGrdDBTabPrinid: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNOMBRE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPOBLACION: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinprovincia: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCP: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCIF: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinserie: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrincont_clientes: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrincont_pedidos: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrincont_fabricacion: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinhora_sincroniza: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinInstanteModif: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    //FDmConn:TdmConn;
    FException: boolean;
  public
    { Public declarations }
  end;
  procedure ShowMtoUbi(Owner       : TComponent);


var
  frmMtoUbi: TfrmMtoUbi;

implementation

uses inLibWin;

{$R *.dfm}

procedure ShowMtoUbi(Owner       : TComponent);
var
  FfrmUbi : TfrmMtoUbi;
begin
  if not(IsOpenMDI('Ubicaciones', Owner)) then
  begin
    Application.CreateForm(TfrmMtoUbi, FfrmUbi);
  end;
end;

procedure TfrmMtoUbi.FormShow(Sender: TObject);
begin
  inherited;
  if FException then
  begin
     PostMessage( Handle, wm_Close, 0, 0 );
     Exit;
  end;
end;

procedure TfrmMtoUbi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qyUbicaciones.Close;
  //FDmConn.ZconnGlent.Disconnect;
  //FreeAndNil(Fdmconn);
  inherited;
end;

procedure TfrmMtoUbi.FormCreate(Sender: TObject);
begin
  try

    //FdmConn := TdmConn.Create(FdmConn);
    //FDmConn.ZconnGlent.Connect;
    with frmopenapp do
    (dsTablaG.DataSet as TZTable).Connection := FDmConn.ZconnGlent;
    (dsTablaG.DataSet as TZTable).Open;
    inherited;

  except
     FException := True;
  raise;

  end;
   //pcDetall.ActivePage := tsDatGen;
end;

end.

