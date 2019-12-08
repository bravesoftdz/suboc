unit inMtoReclamaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData,  RzStatus, RzPanel, DBCtrls,
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
  cxintl;

type
  TfrmMtoReclamaciones = class(TfrmMtoGen)
    cxdbtxtdt1: TcxDBTextEdit;
    lbl1: TLabel;
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
  frmMtoReclamaciones: TfrmMtoReclamaciones;

implementation

uses inLibWin;

{$R *.dfm}

procedure ShowMtoReclamaciones(Owner       : TComponent);
var
  FfrmRecl : TfrmMtoReclamaciones;
begin
  if not(IsOpenMDI('Reclamaciones', Owner)) then
  begin
    Application.CreateForm(TfrmMtoReclamaciones, FfrmRecl);
  end;
end;

procedure TfrmMtoReclamaciones.FormShow(Sender: TObject);
begin
  inherited;
  if FException then
  begin
     PostMessage( Handle, wm_Close, 0, 0 );
     Exit;
  end;
end;

procedure TfrmMtoReclamaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //qyUbicaciones.Close;
  //FDmConn.ZconnGlent.Disconnect;
  //FreeAndNil(Fdmconn);
  inherited;
end;

procedure TfrmMtoReclamaciones.FormCreate(Sender: TObject);
begin
  try

    //FdmConn := TdmConn.Create(FdmConn);
    //FDmConn.ZconnGlent.Connect;
    //with frmopenapp do
    //(dsTablaG.DataSet as TZTable).Connection := FDmConn.ZconnGlent;
    //(dsTablaG.DataSet as TZTable).Open;
    inherited;

  except
     FException := True;
  raise;

  end;
   //pcDetall.ActivePage := tsDatGen;
end;

end.

