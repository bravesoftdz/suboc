unit inMtoModalPrintCitas;

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
  ExtCtrls, ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TfrmPrintCitas = class(TForm)
    frxrprt1: TfrxReport;
    frxpdfPedWeb: TfrxPDFExport;
    pnl1: TPanel;
    btn4: TcxButton;
    btn2: TcxButton;
    btn1: TcxButton;
    btn3: TcxButton;
    dedStart: TcxDateEdit;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    dedEnd: TcxDateEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);

  private
    procedure Preparar_consulta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrintCitas: TfrmPrintCitas;

implementation

uses
  UniDataCitas;

{$R *.dfm}


procedure TfrmPrintCitas.btn1Click(Sender: TObject);
begin
  Preparar_consulta;
  frxrprt1.ShowReport;
end;

procedure TfrmPrintCitas.btn2Click(Sender: TObject);
begin
  Preparar_consulta;
  frxrprt1.Print;
end;

procedure TfrmPrintCitas.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrintCitas.btn4Click(Sender: TObject);
begin
  Preparar_consulta;
  frxrprt1.PrepareReport(True);
  frxrprt1.Export(frxpdfPedWeb);
end;

procedure TfrmPrintCitas.Preparar_consulta;
begin
  //
  with dmCitas.zqryPrintCitas do
  begin
               SQL.Text := 'SELECT *  ' +
                           '       FROM web_citas ' +
                           '  LEFT JOIN web_clientes ' +
                           '          ON web_citas.IdClienteWeb = web_clientes.email '  +
                           '        WHERE web_citas.StartTime >= :starttime'   +
                           '          AND web_citas.EndTime <= :endtime' ;

               Params.ParamByName('starttime').DataType := ftDate;
               Params.ParamByName('starttime').Value := DateTimeToStr(dedstart.Date);
               Params.ParamByName('endtime').DataType := ftDate;
               Params.ParamByName('endtime').Value := DateTimeToStr(dedend.Date);
    end;
  dmCitas.zqryPrintCitas.Open;
  dmCitas.zqryPrintCitasPer.Open;
end;

end.
