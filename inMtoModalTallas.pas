unit inMtoModalTallas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlue, cxLabel, cxTextEdit, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient, cxDBEdit, Provider,
  cxMaskEdit, cxDropDownEdit, cxCalendar, UniDataPedWeb, dxSkinBlack,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmTallas = class(TForm)
    pnl1: TPanel;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    btnAceptar: TcxButton;
    pnl2: TPanel;
    cxgrd1: TcxGrid;
    tv1: TcxGridDBTableView;
    lv1: TcxGridLevel;
    cxlbl9: TcxLabel;
    cxlbl10: TcxLabel;
    cxlbl11: TcxLabel;
    cxlbl12: TcxLabel;
    cxlbl13: TcxLabel;
    cxlbl14: TcxLabel;
    btnCancelar: TcxButton;
    DBE1: TcxDBTextEdit;
    DBE2: TcxDBTextEdit;
    DBE3: TcxDBTextEdit;
    DBE4: TcxDBTextEdit;
    DBE5: TcxDBTextEdit;
    DBE7: TcxDBTextEdit;
    DBE8: TcxDBTextEdit;
    tvctv1left_size: TcxGridDBColumn;
    tvctv1right_size: TcxGridDBColumn;
    tvctv1left_width: TcxGridDBColumn;
    tvctv1right_width: TcxGridDBColumn;
    tvctv1left_instep: TcxGridDBColumn;
    tvctv1right_instep: TcxGridDBColumn;
    tvctv1suplemento: TcxGridDBColumn;
    tvctv1NroDoc: TcxGridDBColumn;
    tvctv1Origen: TcxGridDBColumn;
    tvctv1Fecha: TcxGridDBColumn;
    DBE6: TcxDBTextEdit;
    DBE9: TcxDBTextEdit;
    DBE10: TcxDBTextEdit;
    DBE12: TcxDBTextEdit;
    DBE13: TcxDBTextEdit;
    cxdbdtdt1: TcxDBDateEdit;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTallas: TfrmTallas;

implementation

{$R *.dfm}

procedure TfrmTallas.btnAceptarClick(Sender: TObject);
begin
  if dmPedWeb.dsPedidoWeb.State = dsEdit then
    dmPedWeb.dsPedidoWeb.DataSet.post;
  ModalResult := mrOk;
end;

procedure TfrmTallas.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
