unit inLibComp;

interface
uses  Forms, SysUtils, Variants, DB, ADODB, Windows, Controls, StdCtrls; //BetterADODataSet;

//procedure UpdateIndexComboBox(cbIndexes: TComboBox; tbTable: TBetterADODataSet; tbOri:TADOTable);
//
//
implementation
//
//procedure UpdateIndexComboBox(cbIndexes: TComboBox; tbTable: TBetterADODataSet; tbOri:TADOTable);
//var
//   i           : Integer;
//begin
//
//  tbOri.Active       := True;
//
//  tbOri.IndexDefs.Update; //Inicializaci�n de �ndices de Tabla Origen
//
//  cbIndexes.Items.Clear; //Inicializaci�n de Combo de �ndices
//
//  for i:= 0 to ( tbOri.IndexDefs.Count - 1 ) do
//    cbIndexes.Items.Add(tbOri.IndexDefs.Items[i].Name);
//
//  tbOri.Active       := False;
//
//  //Si s�lo existe un �ndice, es tonter�a mostrarlo
//  if cbIndexes.Items.Count = 1 then
//  begin
//   //pnOrdenMto.Visible := False;  //Oculte el panel entero
//   cbIndexes.Visible    := False;
//   cbIndexes.Enabled    := False;
//  end
//  else
//  begin
//   cbIndexes.Visible    := True;
//   cbIndexes.Enabled    := True;
//
//   //cbIndexes.Items[0];
//  end;
//end;


end.

