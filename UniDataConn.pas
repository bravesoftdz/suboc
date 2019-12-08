unit UniDataConn;

interface

uses
  SysUtils, Classes, DB, ADODB, DBAccess, Uni,
  UniProvider, MySQLUniProvider, DASQLMonitor, UniSQLMonitor;

type
  TdmConn = class(TDataModule)
    
    conUni: TUniConnection;
    mysqlnprvdr1: TMySQLUniProvider;
    procedure connBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConn: TdmConn;

implementation

uses inLibDir, inLibtb, inLibUser;

{$R *.dfm}

procedure TdmConn.connBeforeConnect(Sender: TObject);
var
  sCatalog          ,
  sCodePage         ,
  sDatabase         ,
  sHostName         ,
  sPassword         ,
  sPort             ,
  sUser: string;
begin

  sCatalog      := leCadINI('ConnData', 'Catalog','custom-server');
  sDatabase := leCadINI('ConnData', 'Database','subocasana');
  sHostName :=  leCadINI('ConnData', 'HostName','192.168.1.200');
  sPassword :=  leCadINI('ConnData', 'Password','Glenroot2014');
  sPort :=  leCadINI('ConnData', 'Puerto','3306');
  sUser :=  leCadINI('ConnData', 'User', 'glent');
  with Conuni do
  begin
    ConnectString := 'Provider Name=MySQL;User ID=' + sUser + ';Password=' +
                           sPassword + ';Data Source=' + sHostName+
                           ';Database=' + sDataBase+ ';Login Prompt=False';
    Server := sHostName;
    Database := sDatabase;
    Username := sUser;
    Password := sPassword;
  end;
end;

end.
