unit inMtoPaises;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, BetterADODataSet, cxintl,
  DBCtrls, cxNavigator, ExtCtrls, dxCntner, dxExEdtr, dxEdLib, cxContainer,
  cxTextEdit, RzPanel, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, cxImage,
  cxLookAndFeelPainters, cxButtons, OleCtrls, 
  cxDBEdit, RzStatus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, Menus, SHDocVw;

type
  TfrmMtoPaises = class(TfrmMtoGen)
    qyPais: TBetterADODataSet;
    qyPaisPAI_PK: TIntegerField;
    qyPaisPAI_ISONUM: TIntegerField;
    qyPaisPAI_ISO2: TWideStringField;
    qyPaisPAI_ISO3: TWideStringField;
    qyPaisPAI_NOMBRE: TWideStringField;
    cxGrdDBTabPrinPAI_ISONUM: TcxGridDBColumn;
    cxGrdDBTabPrinPAI_ISO2: TcxGridDBColumn;
    cxGrdDBTabPrinPAI_ISO3: TcxGridDBColumn;
    cxGrdDBTabPrinPAI_NOMBRE: TcxGridDBColumn;
    qyPaisPAI_ENGLISH: TWideStringField;
    qyPaisflag: TBlobField;
    cxGrdDBTabPrinPAI_ENGLISH: TcxGridDBColumn;
    cxGrdDBTabPrinflag: TcxGridDBColumn;
    pnCab: TPanel;
    DBEISO2: TcxDBTextEdit;
    DBIFlag: TcxDBImage;
    Label1: TLabel;
    Label2: TLabel;
    DBEISO3: TcxDBTextEdit;
    pnDetall: TPanel;
    cxViewWiki: TcxButton;
    DBEPais: TcxDBTextEdit;
    Label3: TLabel;
    DBEPaisEnglish: TcxDBTextEdit;
    Label4: TLabel;
    cxViewWikiEn: TcxButton;
    wbWiki: TWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxViewWikiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxViewWikiEnClick(Sender: TObject);
  private
    FException: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure ShowMtoPaises(Owner       : TComponent);

var
  frmMtoPaises: TfrmMtoPaises;

implementation

uses UniDataConn, inLibWin;

{$R *.dfm}

procedure ShowMtoPaises(Owner       : TComponent);
var
  FfrmPais : TfrmMtoPaises;
begin
  if not(IsOpenMDI('Países')) then
    Application.CreateForm(TfrmMtoPaises, FfrmPais);
end;


procedure TfrmMtoPaises.FormCreate(Sender: TObject);
begin
  try
    qyPais.Open;
  except
     FException := True;
  raise;
  end;
   //pcDetall.ActivePage := tsDatGen;


  inherited;

end;

procedure TfrmMtoPaises.FormShow(Sender: TObject);
begin
  inherited;
  if FException then
  begin
     PostMessage( Handle, wm_Close, 0, 0 );
     Exit;
  end;
end;

procedure TfrmMtoPaises.cxViewWikiClick(Sender: TObject);
begin
  inherited;
  wbWiki.Navigate('http://es.wikipedia.org/wiki/' + AnsiLowerCase(DBEPais.Text));
end;

procedure TfrmMtoPaises.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qyPais.Close;

  inherited;
end;

procedure TfrmMtoPaises.cxViewWikiEnClick(Sender: TObject);
begin
  inherited;
  wbWiki.Navigate('http://en.wikipedia.org/wiki/' +  AnsiLowerCase(DBEPaisEnglish.Text));
end;

end.

