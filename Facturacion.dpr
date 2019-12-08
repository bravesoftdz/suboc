// JCL_DEBUG_EXPERT_GENERATEJDBG ON
// JCL_DEBUG_EXPERT_INSERTJDBG ON
// JCL_DEBUG_EXPERT_DELETEMAPFILE ON
program Facturacion;

uses
  Forms,
  Controls,
  inMtoGen in 'inMtoGen.pas' {frmMtoGen},
  inLibtb in 'inLibtb.pas',
  inMtoPrincipal in 'inMtoPrincipal.pas' {frmOpenApp},
  UniDataConn in 'UniDataConn.pas' {dmConn: TDataModule},
  inLibDir in 'inLibDir.pas',
  inLibComp in 'inLibComp.pas',
  inLibWin in 'inLibWin.pas',
  inMtoParam in 'inMtoParam.pas' {frmParam},
  inLibDate in 'inLibDate.pas',
  MD5 in 'MD5.pas',
  inLibUser in 'inLibUser.pas',
  inLibDevExp in 'inLibDevExp.pas',
  inLibData in 'inLibData.pas',
  inMtoClientes in 'inMtoClientes.pas' {frmMtoClientes},
  inMtoGenSearch in 'inMtoGenSearch.pas' {frmMtoSearch},
  inMtoFac in 'inMtoFac.pas' {frmMtoFac},
  UniDataFac in 'UniDataFac.pas' {dmFac: TDataModule},
  inMtoContadores in 'inMtoContadores.pas' {frmMtoContadores},
  Vcl.Themes,
  Vcl.Styles,
  inMtoArticulos in 'inMtoArticulos.pas' {frmMtoArticulos},
  UniDataArticulos in 'UniDataArticulos.pas' {DMArticulos: TDataModule},
  UniDataClientes in 'UniDataClientes.pas' {DMClientes: TDataModule},
  inMtoPresu in 'inMtoPresu.pas' {frmMtoPresu},
  inMtoModalHistoriaCli in 'inMtoModalHistoriaCli.pas' {frmClientesHistoria},
  inMtoHistoriaClientes in 'inMtoHistoriaClientes.pas' {frmMtoHistoriaClientes},
  UniDataHistoriaClientes in 'UniDataHistoriaClientes.pas' {DMHistoriaClientes: TDataModule},
  inMtoFacturasHistoria in 'inMtoFacturasHistoria.pas' {frmFacturasHistoria},
  inMtoOdontologos in 'inMtoOdontologos.pas' {frmMtoOdontologos},
  inMtoFormasdePago in 'inMtoFormasdePago.pas' {frmMtoFormasdePago},
  inMtoModalFacImp in 'inMtoModalFacImp.pas' {frmPrintFac},
  inMtoPre in 'inMtoPre.pas' {frmMtoPre},
  UniDataPre in 'UniDataPre.pas' {dmPre: TDataModule},
  inMtoModalFacRec in 'inMtoModalFacRec.pas' {frmGenFacRec},
  inMtoModalPreImp in 'inMtoModalPreImp.pas' {frmPrintPre},
  inMtoModalPreRecImp in 'inMtoModalPreRecImp.pas' {frmPrintPreRec},
  inMtoModalFacRecImp in 'inMtoModalFacRecImp.pas' {frmPrintFacRec};

//inIni in 'inIni.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Subocasana';
  Application.CreateForm(TfrmOpenApp, frmOpenApp);
  Application.Run;
end.
