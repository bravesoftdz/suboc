unit inMtoLogon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons,
  //dxCntner, dxEditor,
  ZConnection, //dxEdLib,
  UniDataConn, UniDataApi, inMtoPrincipal, inLibUser, RzButton,
  ImgList, Buttons, RzSpnEdt, RzShellDialogs, cxControls, cxContainer,
  cxEdit, cxCheckBox, ADODB, Menus, cxGraphics, cxLookAndFeels,
  dxSkinsCore, dxSkinBlue, cxTextEdit, dxSkinBlack, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  EInvalidUser = Class(Exception);
  
  TfrmLogon = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btAceptar: TcxButton;
    btSalir: TcxButton;
    mMensaje: TMemo;
    rfbAbrirCarpeta: TRzRapidFireButton;
    fdFolder: TRzSelectFolderDialog;
    edtUser: TcxTextEdit;
    edtPass: TcxTextEdit;
    edtGrupo: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure edtUserExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure rfbAbrirCarpetaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    function ExisteUser(sNom:String; f:TdmApi):Boolean;
    function LoginCorrecto(sNom, sPass:String; f:TdmApi):Boolean;
    procedure GetUserData(f:TdmApi; sUser:String);
    procedure OpenData(f:TdmApi);
    procedure CloseData(f:TdmApi);
    function GetGrupo(sUser: String; conn:TZConnection): String;
  public
    { Public declarations }
  end;
  procedure ShowMtoLogon(Owner       : TComponent);
var
  frmLogon: TfrmLogon;


implementation

uses  inLibWin, md5, inLibDate, inLibDir;

{$R *.dfm}

procedure ShowMtoLogon(Owner       : TComponent);
var
  FfrmLog : TfrmLogon;
begin
    Application.CreateForm(TfrmLogon, FfrmLog);
end;

procedure TfrmLogon.FormCreate(Sender: TObject);
var
 sFolder, sUser:String;
begin

  edtUser.Text := '';
  {
  if fileexists(oFolderAppPerfil) then
  begin
     OpenData;
  end
  else
  begin
    //cargar fichero local de última entrada de users.txt
    GetDefaultuser(sUser, sFolder);
    if sUser <> '' then
    begin
      edtUser.Text := sUser;
    end;
    if ( (sFolder <> PathFichPerfil) and (fileexists(sFolder)) ) then
    begin
      oFolderAppPerfil := sFolder;
      OpenData;
    end
    else
    begin
      mMensaje.Lines.Add('No hay BBDD de Perfiles disponible.');
      mMensaje.Lines.Add('Defina una BBDD pulsando sobre el botón con forma de carpeta');
      btAceptar.Enabled := false;
    end;
  end;
  }
end;

procedure TfrmLogon.btSalirClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

function TfrmLogon.GetGrupo(sUser: String; conn:TZConnection): String;
var
  zqryGrupo:TZQuery;
  sResult : String;
begin
  zqryGrupo := TzQuery.Create(nil);
  zqryGrupo.SQL.Text := 'SELECT GRUPO FROM GLT_USER WHERE NOMUSER = ' + QuotedStr(sUser);
  zqryGrupo.Connection := conn;
  zqryGrupo.Open;
  sResult := zqryGrupo.Fields[0].AsString;
  zqryGrupo.Close;
  FreeAndNil(zqryGrupo);
  Result := sResult;
end;

procedure TfrmLogon.btAceptarClick(Sender: TObject);
var
   FDmDatos:TdmApi;
begin
  FdmDatos := TdmApi.Create(FDmDatos);

  OpenData(FdmDatos);
  if not ExisteUser(edtUser.Text, FdmDatos) then
  begin
    edtuser.SetFocus;
    Raise EInvalidUser.Create('El nombre de usuario no existe');
  end
  else
    if not LoginCorrecto(edtuser.text, edtPass.Text, FdmDatos) then
    begin

      edtPass.SetFocus;
      edtPass.SelectAll;
      Raise EInvalidUser.Create('La contraseña no es correcta');
      ModalResult := mrCancel;
    end
    else
    begin
//      if oFolderAppPerfil <> PathFichPerfil then
//        if ( oFolderAppPerfil <> GetDirUser(edtUser.Text) )  then
//          SetDirUser(oFolderAppPerfil, edtUser.Text);
      with FdmDatos do
      begin
         FdmDatos.ztblUser.Locate('NomUser', edtUser.Text, []);
         FdmDatos.ztblUser.Edit;
         FdmDatos.ztblUser.FindField('LastTimeLogon').AsDateTime := Now;
         FdmDatos.ztblUser.Post;
         edtGrupo.Text := GetGrupo(edtUser.Text, FdmDatos.FdmConn.ZconnGlent);
         //frmOpenApp.Visible := True;
         //frmOpenApp.Show;
         ModalResult := mrOk;
      end;
    end;
//         if qyParam.Locate('Clave', 'LastUser'+ComputerName, []) then
//         begin
//           if edtUser.Text <> qyParamValor.AsString then
//           begin
//             qyParam.Edit;
//             qyParamValor.AsString := edtUser.Text;
//             qyParam.Post;
//           end;
//         end
//         else
//         begin
//           qyParam.Insert;
//           qyParamNomUser.AsString := '-';
//           qyParamClave.AsString := 'LastUser' + ComputerName;
//           qyParamValor.Asstring := edtUser.Text;
//           qyParam.Post;
//         end;
//         if FdmDatos.qyParam.Locate('NomUser;Clave', VarArrayOf([edtUser.Text, 'DirBBDD']), [])  then
//         begin
//           if ( oFolderAppBBDD <> FdmDatos.qyParamValor.AsString ) then
//             oFolderAppBBDD := FdmDatos.qyParamValor.AsString;
//         end
//         else
//           begin
//             FdmDatos.qyParam.Insert;
//             qyParamNomUser.AsString := edtUser.Text;
//             qyParamClave.AsString   := 'DirBBDD';
//             qyParamValor.AsString   := oFolderAppBBDD;
//           end;

//      end;
      //FdmPrinc := TfrmOpenApp.Create(FdmPrinc);
//      if fileexists(oFolderAppBBDD) then
//        frmLogon.ModalResult := mrOk
//      else
//        raise Exception.Create('No existe el Fichero de Base de Datos: ' + oFolderAppBBDD);
//  end;
  CloseData(FdmDatos);
  //Close;
end;

function TfrmLogon.ExisteUser(sNom: String; f:TdmApi): Boolean;
begin
  f.ztblUser.First;
  Result := f.ztblUser.Locate('NomUser', sNom, []);
end;

function TfrmLogon.LoginCorrecto(sNom, sPass: String; f:TdmApi): Boolean;
var
  sPassEn:String;
begin
  if sPass = '' then
    //sPassEn := GetMd5(@sPass[1], Sizeof(sPass))
    sPassEn := '';
  f.ztblUser.Locate('NomUser', sNom, []);
  Result := ( sPass = f.ztblUser.FindField('Password').AsString);
end;

procedure TfrmLogon.edtUserExit(Sender: TObject);
var
  sFolder:String;
begin
 {
  if ((FdmConn.ADOConnP.Connected = false) and (edtUser.Text <> '')) then
  begin
    sFolder := GetDirUser(edtUser.Text);
    if sFolder <> '' then
    begin
      if fileexists(sFolder) then
      begin
        oFolderAppPerfil := sFolder;
        OpenData;
      end;
    end;
  end;
  }
end;

procedure TfrmLogon.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ( ((ORD(key) = VK_F12) or (ord(key) = VK_RETURN)) and (btAceptar.Enabled = true) ) then
    btAceptar.Click
  else
    if ORD(key) = VK_ESCAPE then
      btSalir.click;
end;

procedure TfrmLogon.FormShow(Sender: TObject);
begin
//  if edtUser.Text <> '' then
//        edtPass.SetFocus;
end;

procedure TfrmLogon.rfbAbrirCarpetaClick(Sender: TObject);
var
  sSelFolder:String;
begin
{
  if fdFolder.Execute then
  begin
    sSelFolder:= fdFolder.SelectedPathName + '\BBDDPerfil.mdb';
    if (     (fileexists(sSelFolder))
         and (oFolderAppPerfil <> sSelFolder)
       ) then
    begin
      oFolderAppPerfil := sSelFolder;
      if Fdmconn.AdoConnP.Connected = true then
        CloseData;
      OpenData;
      btAceptar.Enabled := true;
    end
    else
      if not ( fileexists(sSelFolder) ) then
      raise Exception.Create('No se encontró el fichero BBDDPerfil.mdb en esa ubicación');
  end;
  }
end;

procedure TfrmLogon.GetUserData(f:TdmApi; sUser:String);
var
    fdFecha:TFechaDiff;
begin
//  with f do
//  begin
//    if ztblParam.Locate('Clave', 'LastUser', []) then
//    begin
//      sUser := f.ztblParam.FindField('Valor').AsWideString;
//    end;
//    if f.ztblUser.Locate('NomUser', sUser, []) then
//    begin
//      //fdFecha := TFechaDiff.Create(Now, FdmDatos.qyUserLastTimeLogon.AsDateTime);
//      mMensaje.Clear;
//      mMensaje.Lines.Add('---' + f.ztblUser.FindField('NomUser').AsWideString +'---');
//      //mMensaje.Lines.Add(' Se conectó hace '+ fdFecha.GetLetras);
//
//      fdFecha.Free;
//    end;
//   // mMensaje.Lines.add('BBDD Perfil: '+ oFolderAppPerfil);
//  end;
end;

procedure TfrmLogon.OpenData(f:TdmApi);
begin
  f.ztblUser.Open;
  f.ztblParam.Open;
end;

procedure TfrmLogon.CloseData(f:TdmApi);
begin
  with f do
  begin
    ztblUser.Close;
    ztblParam.Close;
    Free;
  end;
end;

procedure TfrmLogon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

