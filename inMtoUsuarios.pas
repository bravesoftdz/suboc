unit inMtoUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData,  DBCtrls,
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
  ZAbstractTable, ZDataset, cxLabel, cxDBLabel, cxTimeEdit, cxCalendar,
  ZAbstractConnection, ZConnection, UniDataUsuarios, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLocalization,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmMtoUsuarios = class(TfrmMtoGen)
    tvcGrdDBTabPrinNomUser: TcxGridDBColumn;
    tvcGrdDBTabPrinPassword: TcxGridDBColumn;
    tvcGrdDBTabPrinGrupo: TcxGridDBColumn;
    tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn;
    tvcGrdDBTabPrinLastTimeLogon: TcxGridDBColumn;
    pnl1: TPanel;
    pnl2: TPanel;
    DBE1: TcxDBTextEdit;
    cxlbl1: TcxLabel;
    DBE2: TcxDBTextEdit;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    DBCB1: TcxDBLookupComboBox;
    pnl3: TPanel;
    pnl4: TPanel;
    cxgrd5: TcxGrid;
    tv1: TcxGridDBTableView;
    tv2: TcxGridDBBandedTableView;
    cxgrdbndclmntv2PerId: TcxGridDBBandedColumn;
    cxgrdbndclmntv2AppointmentId: TcxGridDBBandedColumn;
    cxgrdbndclmntv2Linea: TcxGridDBBandedColumn;
    cxgrdbndclmntv2clave: TcxGridDBBandedColumn;
    cxgrdbndclmntv2valor: TcxGridDBBandedColumn;
    cxgrdbndclmntv2instantemodif: TcxGridDBBandedColumn;
    cxgrdbndclmntv2descripcion: TcxGridDBBandedColumn;
    cxgrdbndclmntv2parte: TcxGridDBBandedColumn;
    lv1: TcxGridLevel;
    btn1: TSpeedButton;
    tvctv1Entidad: TcxGridDBColumn;
    tvctv1Menu: TcxGridDBColumn;
    tvctv1Formulario: TcxGridDBColumn;
    tvctv1descripcion: TcxGridDBColumn;
    tvctv1DescripcionMenu: TcxGridDBColumn;
    tvctv1PermisoAcceso: TcxGridDBColumn;
    tvctv1PermisoListado: TcxGridDBColumn;
    tvctv1PermisoEscritura: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    dmUsuarios:TdmUsuarios;
    FException: boolean;
  public
    { Public declarations }
  end;
  procedure ShowMtoUsuarios(Owner       : TComponent);


var
  frmMtoUsuarios: TfrmMtoUsuarios;

implementation

uses inLibWin;

{$R *.dfm}

procedure ShowMtoUsuarios(Owner       : TComponent);
var
  FfrmUbi : TfrmMtoUsuarios;
begin
  if not(IsOpenMDI('Usuarios', Owner)) then
  begin
    Application.CreateForm(TfrmMtoUsuarios, FfrmUbi);
  end;
end;

procedure TfrmMtoUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  if FException then
  begin
     PostMessage( Handle, wm_Close, 0, 0 );
     Exit;
  end;
end;

procedure TfrmMtoUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //zqryUsuarios.Close;
  //FDmConn.ZconnGlent.Disconnect;
  FreeAndNil(dmUsuarios);
  inherited;
end;

procedure TfrmMtoUsuarios.FormCreate(Sender: TObject);
begin
  try
    dmUsuarios := TDmUsuarios.Create(dmUsuarios);
    dsTablaG.DataSet := DmUsuarios.zqryUsuarios;
    //FdmConn := TdmConn.Create(FdmConn);
    //FDmConn.ZconnGlent.Connect;
//    with frmopenapp do
//    (dsTablaG.DataSet as TZQuery).Connection := FDmConn.ZconnGlent;
//    (dsTablaG.DataSet as TZQuery).Open;
    inherited;

  except
     FException := True;
  raise;

  end;
   //pcDetall.ActivePage := tsDatGen;
end;

end.

