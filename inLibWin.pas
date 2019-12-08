unit inLibWin;

interface

uses
   inMtoPrincipal, Classes, Windows, Forms, sysutils, jpeg, idhttp, Vcl.Dialogs,   ShellAPI;

  function IsOpenMDI(sCaptionName: String; Owner : TComponent):boolean;
  function EncontrarObjeto(oControl:TComponent; sBusquedaTipo:String):TObject; overload;
  function EncontrarObjeto(oControl:TComponent; sBusquedaTipo:String; sNameObject:String):TObject; overload;

  function GetVolumeID(DriveChar: Char): String;
  function FindFormOwner(oSender: TObject):TComponent;
  procedure SetDateTime(Year, Month, Day, Hour, Minu, Sec, MSec: Word);
  procedure GetImageURL(sUrl: String; var memStream: TMemoryStream);
  procedure ExecuteAndWait(const aCommando: string);
implementation

procedure ExecuteAndWait(const aCommando: string);
var
  tmpStartupInfo: TStartupInfo;
  tmpProcessInformation: TProcessInformation;
  tmpProgram: String;
begin
  tmpProgram := trim(aCommando);
  FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), 0);
  with tmpStartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    wShowWindow := SW_HIDE;
  end;

  if CreateProcess(nil, pchar(tmpProgram), nil, nil, true, CREATE_NO_WINDOW,
    nil, nil, tmpStartupInfo, tmpProcessInformation) then
  begin
    // loop every 10 ms
    while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
    begin
      Application.ProcessMessages;
    end;
    CloseHandle(tmpProcessInformation.hProcess);
    CloseHandle(tmpProcessInformation.hThread);
  end
  else
  begin
    RaiseLastOSError;
  end;
end;

procedure SetDateTime(Year, Month, Day, Hour, Minu, Sec, MSec: Word);
var
  NewDateTime: TSystemTime;
begin
  FillChar(NewDateTime, SizeOf(NewDateTime), #0);

  NewDateTime.wYear := Year;
  NewDateTime.wMonth := Month;
  NewDateTime.wDay := Day;
  NewDateTime.wHour := Hour;
  NewDateTime.wMinute := Minu;
  NewDateTime.wSecond := Sec;
  NewDateTime.wMilliseconds := MSec;
  SetLocalTime(NewDateTime);
end;

function GetVolumeID(DriveChar: Char): String;
var
   MaxFileNameLength, VolFlags, SerNum: DWord;
begin
   if GetVolumeInformation(PChar(DriveChar + ':\'), nil, 0,
      @SerNum, MaxFileNameLength, VolFlags, nil, 0)
   then
   begin
     Result := IntToHex(SerNum,8);
     Insert('-', Result, 5);
   end
   else
       Result := '';
end;

function FindFormOwner(oSender: TObject):TComponent;
begin
  while not oSender.InheritsFrom(TForm) do
    oSender := TObject((oSender as TComponent).Owner);
  if Assigned(oSender) then
    Result := (oSender as Tcomponent);

end;

function IsOpenMDI(sCaptionName: String; Owner : TComponent):boolean;
var
  i       : Integer;
  bfound  : boolean;
begin
  bfound := false;
    for i:= 0 to frmOpenApp.MDIChildCount - 1 do
      if frmOpenApp.MDIChildren[i].Caption = sCaptionName then
      begin
        bFound := true;
        frmOpenApp.MDIChildren[i].BringToFront  ;
      end;
  Result := bFound;
end;

function EncontrarObjeto(oControl:TComponent; sBusquedaTipo:String):TObject; overload;
var
  i:Integer;
begin
    for i := 0 to oControl.ComponentCount - 1 do
      if oControl.Components[i].ClassName = sBusquedaTipo then
        Result := oControl.Components[i];
end;

function EncontrarObjeto(oControl:TComponent; sBusquedaTipo:String; sNameObject:STring):TObject; overload;
var
  i:Integer;

begin
    for i := 0 to oControl.ComponentCount - 1 do
      if oControl.Components[i].ClassName = sBusquedaTipo then
        if oControl.Components[i].Name = sNameObject then
          Result := oControl.Components[i];
end;

procedure GetImageURL(sUrl: String; var memStream: TMemoryStream);
var
  strStream: String;

  //jpegimg: TJPEGImage;
  idhttp1 : Tidhttp;
begin
  idhttp1 := Tidhttp.Create(nil);
  try
   strStream :=  idhttp1.Get(sUrl);

  except
    Raise Exception.Create('La imagen no existe');
    Exit;
  end;
  memStream := TMemoryStream.Create;
  //jpegimg   := TJPEGImage.Create;
  try
    //memStream.CopyFrom(strStream, );
    memStream.Write(strStream[1], Length(strStream));
    memStream.Position := 0;
    //.Picture.Assign(jpegimg);
  finally
    //memStream.Free;
    //jpegimg.Free;
    idhttp1.Free;
  end;
end;


end.

