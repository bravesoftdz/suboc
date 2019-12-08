unit inMtoPermisos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData,  RzStatus, RzPanel, DBCtrls,
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
  cxLookAndFeelPainters, cxCheckBox, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, cxLabel, cxDBLabel, cxTimeEdit, cxCalendar, inMtoPrincipal,
  ZAbstractConnection, ZConnection, cxLocalization;

type
  TfrmMtoPermisos = class(TfrmMtoGen)
    zqryPermisos: TZQuery;
    tvcGrdDBTabPrinid: TcxGridDBColumn;
    tvcGrdDBTabPrinMenu: TcxGridDBColumn;
    tvcGrdDBTabPrinFormulario: TcxGridDBColumn;
    tvcGrdDBTabPrinDescripcion: TcxGridDBColumn;
    tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn;
    tvcGrdDBTabPrinDescripcionMenu: TcxGridDBColumn;
    tvcGrdDBTabPrinPosicion: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    //FDmConn:TdmConn;
    FException: boolean;
  public
    { Public declarations }
  end;
  procedure ShowMtoPermisos(Owner       : TComponent);


var
  frmMtoPermisos: TfrmMtoPermisos;

implementation

uses inLibWin;

{$R *.dfm}

procedure ShowMtoPermisos(Owner       : TComponent);
var
  FfrmUbi : TfrmMtoPermisos;
begin
  if not(IsOpenMDI('Permisos', Owner)) then
  begin
    Application.CreateForm(TfrmMtoPermisos, FfrmUbi);
  end;
end;

procedure TfrmMtoPermisos.FormShow(Sender: TObject);
begin
  inherited;
  if FException then
  begin
     PostMessage( Handle, wm_Close, 0, 0 );
     Exit;
  end;
end;

procedure TfrmMtoPermisos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  zqryPermisos.Close;
  //FDmConn.ZconnGlent.Disconnect;
  //FreeAndNil(Fdmconn);
  inherited;
end;

procedure TfrmMtoPermisos.FormCreate(Sender: TObject);
begin
  try

    //FdmConn := TdmConn.Create(FdmConn);
    //FDmConn.ZconnGlent.Connect;
    with frmopenapp do
    (dsTablaG.DataSet as TZQuery).Connection := FDmConn.ZconnGlent;
    (dsTablaG.DataSet as TZQuery).Open;
    inherited;

  except
     FException := True;
  raise;

  end;
   //pcDetall.ActivePage := tsDatGen;
end;

end.

