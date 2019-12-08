unit inLibDir;

interface
uses  Forms, SysUtils, Variants;



function NomApp:String;
function DirApp:String;
function DirBBDD:String;
function PathFichBBDD:String;
function PathFichPerfil:String;
function PathFichFileUser:String;
function PathImagInq:String;
function DirIni:String;
function PathCartaInq:String;
function GetDirUser(sUser:String):String;
procedure SetDirUser(sFolder: String; sUser:String);
procedure GetDefaultUser(var sUser:String; var sDir:String);

implementation

uses inLibtb;



function NomApp:String;
var
  sRegion:String;
  iPos:Integer;
begin
 sRegion   := ExtractFileName( Application.ExeName );
 iPos := Pos( '.', sRegion );
 if iPos > 0 then
   Delete( sRegion, iPos, 255 );
 Result := sRegion;
end;

function DirApp:String;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function DirBBDD:String;
begin
  Result := DirApp + 'BaseDatos';
end;

function DirIni:String;
begin
  Result := DirApp + 'Ini\';
end;

function PathImagInq:String;
begin
  Result := DirApp + 'Imagenes\Inquilinos\';
end;

function PathCartaInq:String;
begin
  Result := DirApp + 'Documentos\Cartas\';
end;

function PathFichBBDD:String;
begin
  Result := DirBBDD + '\BBDDInqui.mdb'  ;
end;

function PathFichPerfil:String;
begin
  Result := DirBBDD + '\BBDDPerfil.mdb';
end;

function PathFichFileUser:String;
begin
  Result := DirApp + 'user.txt';
end;

function GetDirUser(sUser:String):String;
var
  tfUserFile:TextFile;
  buffer, sResul : string;
  slUsuario:TStringArray;
begin
  if fileexists(PAthFichFileUser) then
  begin
     AssignFile(tfUserFile, PathFichFileUser) ;
     Reset(tfUserFile);
     sResul := '';
     while ( (not eof(tfUserFile)) and (sResul = '') ) do
     begin
       ReadLn(tfUserFile, buffer) ;
       slUsuario := AnsiSplit(buffer, ';');
       if slUsuario[0] = sUser then
         sResul := slUsuario[1];
     end;
     CloseFile(tfUserFile);
  end
  else sResul := '';

  Result := sResul;
end;

procedure GetDefaultUser(var sUser:String; var sDir:String);
var
  tfUserFile:TextFile;
  buffer: string;
  slUsuario:TStringArray;
  bDefault:boolean;
begin
  if fileexists(PAthFichFileUser) then
  begin
     bDefault := false;
     AssignFile(tfUserFile, PathFichFileUser) ;
     Reset(tfUserFile);
     while ( (not eof(tfUserFile)) and (bDefault = false) ) do
     begin
       ReadLn(tfUserFile, buffer) ;
       slUsuario := AnsiSplit(buffer, ';');
       if slUsuario[2] = '*' then
       begin
         bDefault := true;
         sUser := slUsuario[0];
         sDir  := slUsuario[1];
       end
     end;
     if bDefault = false then
     begin
       sUser := '';
       sDir := '';
     end;
     CloseFile(tfUserFile);
  end
  else
  begin
   sUser:= '';
   sDir := '';
  end;
end;

procedure SetDirUser(sFolder: String; sUser:String);
var
  tfUserF:TextFile;
  sResul, buffer:String;
  slUsuario:TStringArray;
  sLines:TStringArray;
  i:Integer;
begin
  AssignFile(tfUserF, PathFichFileUser) ;
  if fileexists(PathFichFileUser) then
  begin
     Reset(tfUserF);
     i:=0;
     while ( (not eof(tfUserF)) and (sResul = '') ) do
     begin
       ReadLn(tfUserF, buffer) ;
       slUsuario := AnsiSplit(buffer, ';');
       if slUsuario[0] = sUser then
       begin                        
         sResul := slUsuario[1];
       end
       else
         begin
           sLines[i]:= buffer;
           i:= i + 1;
         end;
     end;
     CloseFile(tfUserF);
  end
  else
    sResul := '';
  if sResul <> '' then
  begin
    DeleteFile(PathFichFileUser);
    if Length(sLines) > 0 then
    begin
       Rewrite(tfUserF);
       for i:= 0 to Length(sLines) do
         writeln(tfUserF, sLines[i]);
       CloseFile(tfUserF);
    end;
  end;
  Rewrite(tfUserF);
  writeln(tfUserF, sUser + ';' + sFolder + ';' + '*');
  CloseFile(tfUserF);
end;

end.
