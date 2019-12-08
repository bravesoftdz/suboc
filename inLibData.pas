unit inLibData;

interface

uses  SysUtils, Classes, DB;

//procedure PrepararConsulta(sModule:String; qryConsulds: TDataSet);

implementation

//procedure PrepararConsulta(sModule: String; qryConsulds: TDataSet);
//var
//  sName:String;
//  slFich, slrsFich: TStringList;
//  qryConsul : TZQuery;
//begin
// qryConsul := TZQuery(qryConsulds);
//
//  slFich := TStringList.Create;
//  slrsFich := TStringList.Create;
//
//  sName :=  ExtractFilePath(ParamStr(0))+ 'sql\' + sModule +'_' + qryConsul.Name + '.sql';
//  if FileExists(sName) then
//  begin
//    slFich.LoadFromFile(sName);
//    qryConsul.SQL.Text := slFich.Text;
//  end;
//
////  sName :=  ExtractFilePath(ParamStr(0))+ 'sql\' + sModule +'_rs' + qryConsul.Name + '.sql';
////  if FileExists(sName) then
////  begin
////    slrsFich.LoadFromFile(sName);
////    qryconsul.Resync_Command.Text := slrsFich.Text;
////  end;
//
//  slFich.Free;
//  slrsFich.Free;
//end;
end.
 