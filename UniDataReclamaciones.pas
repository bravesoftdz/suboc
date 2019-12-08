unit UniDataReclamaciones;

interface

uses
  SysUtils, Classes, ZSqlUpdate, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TdmReclamaciones = class(TDataModule)
    zqry1: TZQuery;
    ds1: TDataSource;
    zpdtsql1: TZUpdateSQL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmReclamaciones: TdmReclamaciones;

implementation

{$R *.dfm}

end.
