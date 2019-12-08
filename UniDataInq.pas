unit UniDataInq;

interface

uses
  SysUtils, Classes, DB, ADODB; //BetterADODataSet;

type
  TdmDatosIn = class(TDataModule)

    procedure qyInquilinosNewRecord(DataSet: TDataSet);


    { Public declarations }
  end;

var
  dmDatosIn: TdmDatosIn;

implementation

uses UniDataConn;

{$R *.dfm}




procedure TdmDatosIn.qyInquilinosNewRecord(DataSet: TDataSet);
begin
//DATOS POR DEFECTO AL CREAR INQUILINOS DESDE DATASURCE DSINQ

// qyInquilinosInquilino.AsString  := '0';
// //qyInquilinosTipoIva.AsInteger   :=  1;
// qyInquilinosTipoIRPF.AsInteger  :=  1;
// qyInquilinosEnRepre.AsBoolean   :=  false;
// qyInquilinosActivo.AsBoolean    :=  true;
// qyInquilinosPais.AsString       :=  'España';

 //           );

end;


end.
