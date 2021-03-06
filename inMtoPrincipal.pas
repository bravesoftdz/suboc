unit inMtoPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, UniDataConn,
  ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels,MemDS, DBAccess, Uni, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlue, dxStatusBar, DADump, UniDump, Vcl.StdCtrls,
  DASQLMonitor, UniSQLMonitor;

type
  TfrmOpenApp = class(TForm)
    mnMenuPrin: TMainMenu;
    mnuArchivo: TMenuItem;
    mnArchivoSalir: TMenuItem;
    mnuUtilidades: TMenuItem;
    mnuClientes: TMenuItem;
    mnuVentas: TMenuItem;
    mnuContadores: TMenuItem;
    mnuFacturas: TMenuItem;
    mnuArticulos: TMenuItem;
    mnuPresupuestos: TMenuItem;
    dxstsbr1: TdxStatusBar;
    mnuHistoriasDentales: TMenuItem;
    mnuOdontologos: TMenuItem;
    mnuFormaPago: TMenuItem;
    mnuParmetrosdeEntorno: TMenuItem;
    CopiasdeSeguridad1: TMenuItem;
    undmp1: TUniDump;
    mnuEjecutarScript: TMenuItem;
    tmr1: TTimer;
    procedure sbAppCreatePanelClass(Sender: TCustomStatusBar;
      var PanelClass: TStatusPanelClass);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mnuClientesClick(Sender: TObject);
    procedure mnArchivoSalirClick(Sender: TObject);
    //procedure mnuContadoresClick(Sender: TObject);
    procedure mnuFacturasClick(Sender: TObject);
   // procedure mnuTiposdeIVAClick(Sender: TObject);
    procedure mnuArticulosClick(Sender: TObject);
    procedure mnuContadoresClick(Sender: TObject);
    procedure mnuPresupuestosClick(Sender: TObject);
    procedure mnuHistoriasDentalesClick(Sender: TObject);
    procedure mnuOdontologosClick(Sender: TObject);
    procedure mnuFormaPagoClick(Sender: TObject);
    procedure CopiasdeSeguridad1Click(Sender: TObject);
    procedure CopiaSeguridad;
    procedure mnuEjecutarScriptClick(Sender: TObject);
    procedure UniSQLMonitor1SQL(Sender: TObject; Text: string;
      Flag: TDATraceFlag);
    procedure tmr1Timer(Sender: TObject);
  private

    //FDmConn:TdmConn;
    //FDmDatos:TdmApi;
    FException:boolean;
    //procedure SetPermisosMenu(Menu:TMainMenu; sUser:String; sGrupo:String);
    //function GetPermisoMenu(sMenu, sUser, sGrupo:String):boolean;
    //function GetGrupo(sUser:String):String;

  public
    FDmConn:TdmConn;
    { Public declarations }
  end;

//  procedure ShowMtoPrin(Owner       : TComponent);

var

  frmOpenApp: TfrmOpenApp;

implementation

uses inLibUser,
     inLibWin,
     inMtoClientes,
     inMtoFac,
     inMtoPre,
     inMtoContadores,
     inMtoArticulos,
     inMtoHistoriaClientes,
     inMtoOdontologos,
     inMtoFormasdePago;

{$R *.dfm}
{$IFDEF WINDOWSXP}
{$R WindowsXP.res}
{$ENDIF}



procedure TfrmOpenApp.sbAppCreatePanelClass(Sender: TCustomStatusBar;
  var PanelClass: TStatusPanelClass);
begin
  //sbApp := GetAppFolder;
end;

procedure TfrmOpenApp.tmr1Timer(Sender: TObject);
var
  ADateStr:string;
  ATimeStr:string;
begin
   ADateStr := DateToStr(now);
   ATimeStr := TimeToStr(now);
   dxstsbr1.Panels.Items[2].Text := 'Fecha: ' + ADateStr + '  Hora: ' + ATimeStr;
end;

procedure TfrmOpenApp.UniSQLMonitor1SQL(Sender: TObject; Text: string;
  Flag: TDATraceFlag);
begin
  //m1.Lines.Add(Text);
end;

procedure TfrmOpenApp.mnArchivoSalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

//procedure TfrmOpenApp.SetPermisosMenu(Menu: TMainMenu; sUser,
//  sGrupo: String);
//var i, j, k:Integer;
//    AMenu, BMenu: TMenuItem;
//begin
//  for i:= 0 to Menu.Items.Count - 1 do
//  begin
//    Menu.Items[i].Visible := GetPermisoMenu(Menu.Items[i].Name, sUser, sGrupo);
//    AMenu := Menu.Items[i];
//    if AMenu.Count > 0 then
//    for j:= 0 to AMenu.Count - 1 do
//    begin
//      AMenu[j].Visible := GetPermisoMenu(AMenu[j].Name, sUser, sGrupo);
//      BMenu := AMenu[j];
//      if Bmenu.Count > 0 then
//      for k:= 0 to BMenu.Count - 1 do
//      begin
//        BMenu[k].Visible := GetPermisoMenu(BMenu[k].Name, sUser, sGrupo);
//      end;
//    end;
//  end;
//end;

//function TfrmOpenApp.GetPermisoMenu(sMenu, sUser, sGrupo: String): boolean;
//var
//  sPermiso:String;
//begin
//  sPermiso := '1';
//  if zqryPermisoMenu.Locate('Entidad;Menu', VarArrayOf([sUser, sMenu]), [] ) then
//    sPermiso := zqryPermisoMenu.FindField('PermisoAcceso').AsString;
//  if sPermiso <> '0' then
//    if zqryPermisoMenu.Locate('Entidad;Menu', VarArrayOf([sGrupo, sMenu]), [] ) then
//      sPermiso := zqryPermisoMenu.FindField('PermisoAcceso').AsString;
//  if sPermiso = '0' then Result := false
//  else Result := True;
//end;

procedure TfrmOpenApp.FormCreate(Sender: TObject);
begin
  //oUser := rkUser.Caption;

  FdmConn := TdmConn.Create(FdmConn);
  FdmConn.conUni.Connect;
  dxstsbr1.Panels[1].Text := FdmConn.conUni.Server + ':'+ IntToStr(fdmconn.conUni.Port)
                        + ' (' + FdmConn.conUni.Database + ')';

//  zqryPermisoMenu.Connection := FdmConn.ZconnGlent;
//  zqryPermisoMenu.SQL.Text := 'SELECT Entidad, Menu, PermisoAcceso, PermisoListado, PermisoEscritura ' +
//                         '  FROM glt_user_permisos ' +
//                         ' WHERE Entidad = ' + QuotedStr(oUser) +
//                         '    OR Entidad = ' + QuotedStr(oGroup) +
//                         '  ORDER BY Menu, PermisoAcceso';
//  zqryPermisoMenu.Open;
//  SetPermisosMenu(mnMenuPrin, oUser, oGroup);
//  zqryPermisoMenu.Close;
end;

procedure TfrmOpenApp.CopiasdeSeguridad1Click(Sender: TObject);
begin
   CopiaSeguridad;
end;

procedure TfrmOpenApp.CopiaSeguridad;
var
   savedialog : TSaveDialog;
begin
   savedialog := TSaveDialog.Create(nil);
   saveDialog.Title := 'Guardar copia de seguridad';
   saveDialog.InitialDir := GetCurrentDir;
   savedialog.FileName := 'copia_seguridad.sql';
   undmp1.Connection := FDmConn.conUni;
   if saveDialog.Execute
   then
   begin
     undmp1.BackupToFile(savedialog.FileName);
     ShowMessage('La copia se guard� exitosamente');
   end
   else ShowMessage('La copia no fue grabada');
   FreeAndNil(savedialog);
end;

procedure TfrmOpenApp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FdmConn.conUni.Disconnect;
  FreeAndNil(FdmConn);
end;

procedure TfrmOpenApp.mnuArticulosClick(Sender: TObject);
begin
   ShowMtoArticulos(Self);
end;

procedure TfrmOpenApp.FormShow(Sender: TObject);
begin
  //si ocurre una excepci�n durante la carga, se fuerza el cierre de la ventana
  if FException then
  begin
     PostMessage( Handle, wm_Close, 0, 0 );
     Exit;
  end;
end;

procedure TfrmOpenApp.mnuClientesClick(Sender: TObject);
begin
  if mnuClientes.Visible then
    ShowMtoClientes(Self);
end;

procedure TfrmOpenApp.mnuContadoresClick(Sender: TObject);
begin
  if mnuContadores.Visible then
    ShowMtoContadores(Self);
end;

procedure TfrmOpenApp.mnuEjecutarScriptClick(Sender: TObject);
var
    openDialog : topendialog;
begin
   opendialog := TOpenDialog.Create(nil);
   opendialog.Title := 'Cargar script';
   openDialog.InitialDir := GetCurrentDir;
   undmp1.Connection := FDmConn.conUni;
   if openDialog.Execute
   then
   begin
     undmp1.RestoreFromFile(opendialog.FileName);
     ShowMessage('El script se ejecut� exitosamente');
   end
   else ShowMessage('El script no fue ejecutado');
   FreeAndNil(opendialog);
end;

procedure TfrmOpenApp.mnuFacturasClick(Sender: TObject);
begin
  if mnuFacturas.Visible then
  ShowMtoFac(Self);
end;

procedure TfrmOpenApp.mnuFormaPagoClick(Sender: TObject);
begin
  if mnuFormaPago.Visible then
    ShowMtoFormasdePago(Self);
end;

procedure TfrmOpenApp.mnuHistoriasDentalesClick(Sender: TObject);
begin
if mnuHistoriasDentales.Visible then
  ShowMtoHistoriaClientes(Self);

end;

procedure TfrmOpenApp.mnuOdontologosClick(Sender: TObject);
begin
    if mnuOdontologos.Visible then
    ShowMtoOdontologos(Self);
end;

procedure TfrmOpenApp.mnuPresupuestosClick(Sender: TObject);
begin
  if mnuPresupuestos.Visible then
    ShowMtoPre(Self);
end;

end.
