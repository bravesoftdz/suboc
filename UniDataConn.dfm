object dmConn: TdmConn
  OldCreateOrder = False
  Height = 239
  Width = 405
  object conUni: TUniConnection
    ProviderName = 'MySQL'
    Database = 'subocasana'
    DefaultTransaction.DefaultCloseAction = taCommit
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    BeforeConnect = connBeforeConnect
    Left = 216
    Top = 120
    EncryptedPassword = 'CEFFB9FFC9FFA8FFC9FF96FFCEFF95FFCEFF'
  end
  object mysqlnprvdr1: TMySQLUniProvider
    Left = 152
    Top = 120
  end
end
