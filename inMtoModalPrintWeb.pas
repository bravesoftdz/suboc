unit inMtoModalPrintWeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlue, frxClass, frxDBSet, StdCtrls, cxButtons, DB,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel,
  dxSkinBlack, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, frxExportPDF,
  ExtCtrls;

type
  TfrmPrintPedWeb = class(TForm)
    frxrprt1: TfrxReport;
    cxlbl1: TcxLabel;
    edtNroPed: TcxTextEdit;
    frxpdfPedWeb: TfrxPDFExport;
    pnl1: TPanel;
    btn4: TcxButton;
    btn2: TcxButton;
    btn1: TcxButton;
    btn3: TcxButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrintPedWeb: TfrmPrintPedWeb;

implementation

uses
  UniDataPedWeb;

{$R *.dfm}


procedure TfrmPrintPedWeb.btn1Click(Sender: TObject);
begin
  frxrprt1.ShowReport;
end;

procedure TfrmPrintPedWeb.btn2Click(Sender: TObject);
begin
  frxrprt1.Print;
end;

procedure TfrmPrintPedWeb.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrintPedWeb.btn4Click(Sender: TObject);
begin
  frxrprt1.PrepareReport(True);
  frxrprt1.Export(frxpdfPedWeb);
end;

end.
