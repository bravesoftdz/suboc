unit UniDataProp;

interface

uses
  SysUtils, Classes, DB, ADODB; //BetterADODataSet;

type
  TdmDatosProp = class(TDataModule)
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDatosProp: TdmDatosProp;

implementation

uses UniDataConn;

{$R *.dfm}

end.

