unit UniDataModelos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, inMtoPrincipal;

type
  TdmModelos = class(TDataModule)
    zqryModelos: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmModelos: TdmModelos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
