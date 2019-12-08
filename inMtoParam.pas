unit inMtoParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxContainer, cxEdit,
  cxTextEdit, cxPC, cxControls, ExtCtrls, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxLookAndFeels,
  dxBarBuiltInMenu;

type
  TfrmParam = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    pcParam: TcxPageControl;
    tsGenerales: TcxTabSheet;
    tsDefaults: TcxTabSheet;
    tsContadores: TcxTabSheet;
    btAceptar: TcxButton;
    cxButton1: TcxButton;
    pcDefaults: TcxPageControl;
    tsDInqui: TcxTabSheet;
    tsDProp: TcxTabSheet;
    tsDContrat: TcxTabSheet;
    tsDFact: TcxTabSheet;
    Label1: TLabel;
    DBcbUbi: TcxDBComboBox;
    Label2: TLabel;
    DBcbUser: TcxDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParam: TfrmParam;

implementation

{$R *.dfm}

end.

