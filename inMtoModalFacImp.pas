unit inMtoModalFacImp;

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
  cxCalendar, frxDesgn, cxGroupBox, cxRadioGroup, frxExportBaseDialog;

type
  TfrmPrintFac = class(TForm)
    frxrprt1: TfrxReport;
    frxpdfPedWeb: TfrxPDFExport;
    pnl1: TPanel;
    btn4: TcxButton;
    btn2: TcxButton;
    btn1: TcxButton;
    btn3: TcxButton;
    edtNroFac: TcxTextEdit;
    cxlbl1: TcxLabel;
    edtSerie: TcxTextEdit;
    cxRadioGroup1: TcxRadioGroup;
    rbActual: TcxRadioButton;
    rbRangoFechas: TcxRadioButton;
    dedDesde: TcxDateEdit;
    dedHasta: TcxDateEdit;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure rbRangoFechasClick(Sender: TObject);
    procedure rbActualClick(Sender: TObject);

  private
    procedure Preparar_consulta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrintFac: TfrmPrintFac;

implementation

uses
  inMtoFac;

{$R *.dfm}


procedure TfrmPrintFac.btn2Click(Sender: TObject);
begin
  Preparar_consulta;
  frxrprt1.Print;
end;

procedure TfrmPrintFac.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrintFac.btn4Click(Sender: TObject);
begin
  Preparar_consulta;
  frxrprt1.PrepareReport(True);
  frxrprt1.Export(frxpdfPedWeb);
end;

procedure TfrmPrintFac.Preparar_consulta;
begin

  if rbActual.Checked = true then
  begin
    with dmmFac.unqryFacPrint do
    begin
                Params.Clear;
                 SQL.Text := 'SELECT *  ' +
                             '       FROM SUBOC_FACTURAS f' +
                             '        WHERE NRO_FACTURA = :numfac' +
                             '          AND SERIE_FACTURA = :serie';
                 //Params.AddParam('numfac');
                 Params.ParamByName('numfac').DataType := ftString;
                 Params.ParamByName('numfac').Value := edtNroFac.text;
                 //Params.AddParam('serie');
                 Params.ParamByName('serie').DataType := ftString;
                 Params.ParamByName('serie').Value := edtSerie.text;
    end;
    dmmFac.unqryFacPrint.Open;
    with dmmFac.unqryLinFacPrint do
    begin
                Params.Clear;
               //Params.Create;
                 SQL.Text := '       SELECT * ' +
                             '         FROM SUBOC_FACTURAS_LINEAS V  ' +
                             '        WHERE V.NRO_FACTURA_LINEA = :numfac' +
                             '          AND V.SERIE_FACTURA_LINEA = :serie ' +
                             '     order by V.LINEA_LINEA';
                 //Params.AddParam('numfac');
                 Params.ParamByName('numfac').DataType := ftString;
                 Params.ParamByName('numfac').Value := edtNroFac.text;
                 //Params.AddParam('serie');
                 Params.ParamByName('serie').DataType := ftString;
                 Params.ParamByName('serie').Value := edtSerie.text;
      end;
    dmmFac.unqryLinFacPrint.MasterSource := dmmFac.dsFacPrint;
    dmmFac.unqryLinFacPrint.Open;
  end;

  if rbRangoFechas.Checked = true then
  begin
    with dmmFac.unqryFacPrint do
    begin
               Params.Clear;
               //Params.Create;
               SQL.Text := 'SELECT *  ' +
                           '       FROM SUBOC_FACTURAS f' +
                           '        WHERE FECHA_FACTURA >= :fecha_ini ' +
                           '         AND  FECHA_FACTURA <= :fecha_fin order by NRO_FACTURA';

               //Params.AddParam('fecha_ini');
               Params.ParamByName('fecha_ini').DataType := ftDate;
               Params.ParamByName('fecha_ini').Value := dedDesde.Date;
               //Params.AddParam('fecha_fin');
               Params.ParamByName('fecha_fin').DataType := ftDate;
               Params.ParamByName('fecha_fin').Value := dedHasta.Date;
    end;
    dmmFac.unqryFacPrint.Open;
    with dmmFac.unqryLinFacPrint do
    begin
                 Params.Clear;
                 //Params.Create;
                 SQL.Text := 'SELECT *  ' +
                             '       FROM SUBOC_FACTURAS_LINEAS L ' +
                             '     INNER JOIN SUBOC_FACTURAS F ' +
                             '     ON F.NRO_FACTURA = L.NRO_FACTURA_LINEA ' +
                             '     AND F.SERIE_FACTURA = L.SERIE_FACTURA_LINEA ' +
                             '        WHERE F.fecha_FACTURA >= :fecha_ini ' +
                             '          AND  F.fecha_FACTURA <= :fecha_fin ' +
                             ' order by L.NRO_FACTURA_LINEA, L.SERIE_FACTURA_LINEA, L.linea_LINEA';
                 //Params.AddParam('fecha_ini');
                 Params.ParamByName('fecha_ini').DataType := ftDate;
                 Params.ParamByName('fecha_ini').Value := dedDesde.date;
                 //Params.AddParam('fecha_fin');
                 Params.ParamByName('fecha_fin').DataType := ftDate;
                 Params.ParamByName('fecha_fin').Value := dedHasta.date;
      end;
    dmmFac.unqryLinFacPrint.Open;
  end;

//  dmCitas.zqryPrintCitasPer.Open;
end;

procedure TfrmPrintFac.btn5Click(Sender: TObject);
begin
  Preparar_consulta;
  frxrprt1.DesignReport();
end;

procedure TfrmPrintFac.btn1Click(Sender: TObject);
begin
  Preparar_consulta;
  frxrprt1.ShowReport;
end;

procedure TfrmPrintFac.rbRangoFechasClick(Sender: TObject);
begin
  dedDesde.Enabled := true;
  dedHasta.Enabled := true;
end;

procedure TfrmPrintFac.rbActualClick(Sender: TObject);
begin
  dedDesde.Enabled := false;
  dedHasta.Enabled := false;
end;

end.
