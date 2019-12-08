unit inMtoContadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData,   DBCtrls,
  cxNavigator, ExtCtrls, //dxCntner, dxExEdtr, dxEdLib,
  cxContainer, unidataconn,
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
  cxLookAndFeelPainters, cxCheckBox, cxLabel, cxDBLabel, cxTimeEdit, cxCalendar, inMtoPrincipal,
   cxLocalization,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, MemDS,
  DBAccess, Uni, dxBevel, cxDBNavigator;

type
  TfrmMtoContadores = class(TfrmMtoGen)
    cxgrdbclmnGrdDBTabPrinTIPODOC_CONTADOR: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinEJERCICIO_CONTADOR: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinSERIE_CONTADOR: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCONTADOR_CONTADOR: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinInstanteModif: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDEFAULT_CONTADOR: TcxGridDBColumn;
    unqryContadores: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    //FDmConn:TdmConn;
    FException: boolean;
  public
    { Public declarations }
  end;
  procedure ShowMtoContadores(Owner       : TComponent);


var
  frmMtoContadores: TfrmMtoContadores;

implementation

uses inLibWin;

{$R *.dfm}

procedure ShowMtoContadores(Owner       : TComponent);
var
  FfrmUbi : TfrmMtoContadores;
begin
  if not(IsOpenMDI('Contadores', Owner)) then
  begin
    Application.CreateForm(TfrmMtoContadores, FfrmUbi);
  end;
end;

procedure TfrmMtoContadores.FormShow(Sender: TObject);
begin
  inherited;
  if FException then
  begin
     PostMessage( Handle, wm_Close, 0, 0 );
     Exit;
  end;
end;

procedure TfrmMtoContadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  unqryContadores.Close;
  inherited;
end;

procedure TfrmMtoContadores.FormCreate(Sender: TObject);
begin
  try
    with frmopenapp do
    unqryContadores.Connection := FDmConn.conUni;
    dsTablaG.DataSet.Open;
    inherited;
  except
     FException := True;
  raise;

  end;
   //pcDetall.ActivePage := tsDatGen;
end;

end.

