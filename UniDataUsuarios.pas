unit UniDataUsuarios;

interface

uses
  SysUtils, Classes, inMtoPrincipal, DB, ZAbstractRODataset, UniDataConn,
  ZAbstractDataset, ZDataset;

type
  TdmUsuarios = class(TDataModule)
    zqryUsuarios: TZQuery;
    zqryGrupos: TZQuery;
    dsGrupos: TDataSource;
    zqryUsuariosPermisos: TZQuery;
    dsUsuariosPermisos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUsuarios: TdmUsuarios;

implementation

uses
  inMtoUsuarios;

{$R *.dfm}

end.
