inherited frmMtoClientes: TfrmMtoClientes
  Left = 5
  Top = 4
  Caption = 'Pacientes'
  ClientHeight = 652
  ClientWidth = 1275
  ExplicitWidth = 1291
  ExplicitHeight = 691
  PixelsPerInch = 120
  TextHeight = 15
  inherited pButtonPage: TPanel
    Width = 1149
    Height = 652
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1149
    ExplicitHeight = 652
  end
  inherited pButtonRightBar: TPanel
    Left = 1149
    Height = 652
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitLeft = 1149
    ExplicitHeight = 652
    object btn1: TSpeedButton [0]
      Left = 4
      Top = 216
      Width = 118
      Height = 33
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = '&Nuevo Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      OnClick = btn1Click
    end
    inherited pButtonGen: TPanel
      Top = 453
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Constraints.MinHeight = 100
      Constraints.MinWidth = 124
      ExplicitTop = 453
      inherited sbGrabar: TSpeedButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
      end
      inherited sbCancelar: TSpeedButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
      end
      inherited sbSalir: TSpeedButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
      end
    end
    inherited pButtonBDStat: TPanel
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Constraints.MinHeight = 46
      Constraints.MinWidth = 124
      inherited pnTableName: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited lblEditMode: TLabel
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
      inherited Panel4: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited lblTablaOrigen: TLabel
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
    end
  end
  inherited pcPantalla: TPageControl
    Width = 1149
    Height = 652
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = tsFicha
    ExplicitWidth = 1149
    ExplicitHeight = 652
    inherited tsLista: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 1141
      ExplicitHeight = 619
      inherited cxGrdPrincipal: TcxGrid
        Width = 1141
        Height = 583
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1141
        ExplicitHeight = 583
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object cxgrdbclmnGrdDBTabPrinCODIGO_CLIENTE: TcxGridDBColumn
            Caption = 'Filiaci'#243'n'
            DataBinding.FieldName = 'CODIGO_CLIENTE'
            Width = 60
          end
          object cxgrdbclmnGrdDBTabPrinAPELLIDOS: TcxGridDBColumn
            DataBinding.FieldName = 'APELLIDOS'
            Width = 157
          end
          object cxgrdbclmnGrdDBTabPrinNOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            Width = 104
          end
          object cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_CLIENTE: TcxGridDBColumn
            Caption = 'Raz'#243'n Social'
            DataBinding.FieldName = 'RAZONSOCIAL_CLIENTE'
            Width = 205
          end
          object cxgrdbclmnGrdDBTabPrinMOVIL_CLIENTE: TcxGridDBColumn
            Caption = 'Tel'#233'fono1'
            DataBinding.FieldName = 'MOVIL_CLIENTE'
            Width = 135
          end
          object cxgrdbclmnGrdDBTabPrinTELEFONO_CLIENTE: TcxGridDBColumn
            Caption = 'Tel'#233'fono2'
            DataBinding.FieldName = 'TELEFONO_CLIENTE'
            Width = 161
          end
          object cxgrdbclmnGrdDBTabPrinNIF_CLIENTE: TcxGridDBColumn
            Caption = 'Nif'
            DataBinding.FieldName = 'NIF_CLIENTE'
            Width = 115
          end
          object cxgrdbclmnGrdDBTabPrinEMAIL_CLIENTE: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'EMAIL_CLIENTE'
            Width = 171
          end
          object cxgrdbclmnGrdDBTabPrinDIRECCION_CLIENTE1: TcxGridDBColumn
            Caption = 'DIRECCION1'
            DataBinding.FieldName = 'DIRECCION1_CLIENTE'
            Width = 264
          end
          object cxgrdbclmnGrdDBTabPrinDIRECCION_CLIENTE2: TcxGridDBColumn
            Caption = 'DIRECCION2'
            DataBinding.FieldName = 'DIRECCION2_CLIENTE'
            Width = 102
          end
          object cxgrdbclmnGrdDBTabPrinPOBLACION_CLIENTE: TcxGridDBColumn
            Caption = 'Poblaci'#243'n'
            DataBinding.FieldName = 'POBLACION_CLIENTE'
            Width = 176
          end
          object cxgrdbclmnGrdDBTabPrinCPOSTAL_CLIENTE: TcxGridDBColumn
            Caption = 'C'#243'digo Postal'
            DataBinding.FieldName = 'CPOSTAL_CLIENTE'
            Width = 95
          end
          object cxgrdbclmnGrdDBTabPrinPROVINCIA_CLIENTE: TcxGridDBColumn
            Caption = 'Provincia'
            DataBinding.FieldName = 'PROVINCIA_CLIENTE'
            Width = 115
          end
          object cxgrdbclmnGrdDBTabPrinREFERENCIA_CLIENTE: TcxGridDBColumn
            Caption = 'Referencia'
            DataBinding.FieldName = 'REFERENCIA_CLIENTE'
            Width = 204
          end
          object cxgrdbclmnGrdDBTabPrinOBSERVACIONES_CLIENTE: TcxGridDBColumn
            Caption = 'Observaciones'
            DataBinding.FieldName = 'OBSERVACIONES_CLIENTE'
            Width = 144
          end
          object cxgrdbclmnGrdDBTabPrinPROFESION_CLIENTE: TcxGridDBColumn
            Caption = 'Profesi'#243'n'
            DataBinding.FieldName = 'PROFESION_CLIENTE'
            Width = 168
          end
          object cxgrdbclmnGrdDBTabPrinFECHA_NACIMIENTO: TcxGridDBColumn
            Caption = 'Fecha de Nacimiento'
            DataBinding.FieldName = 'FECHA_NACIMIENTO'
            Width = 166
          end
          object cxgrdbclmnGrdDBTabPrinPAIS_CLIENTE: TcxGridDBColumn
            Caption = 'Pa'#237's'
            DataBinding.FieldName = 'PAIS_CLIENTE'
            Width = 136
          end
          object cxgrdbclmnGrdDBTabPrinIBAN: TcxGridDBColumn
            DataBinding.FieldName = 'IBAN'
          end
        end
      end
      inherited pnTopGrid: TPanel
        Width = 1141
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1141
        inherited btnRestoreWindow: TSpeedButton
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
        inherited btn2: TSpeedButton
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
        inherited edtBusqGlobal: TcxTextEdit
          ExplicitHeight = 23
        end
      end
    end
    inherited tsFicha: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 1141
      ExplicitHeight = 619
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 1141
        Height = 178
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 0
        ExplicitLeft = -1
        object cxdbtxtdtCODIGO_CLIENTE: TcxDBTextEdit
          Left = 85
          Top = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'CODIGO_CLIENTE'
          DataBinding.DataSource = dsTablaG
          TabOrder = 4
          Width = 149
        end
        object cxlbl2: TcxLabel
          Left = 85
          Top = 12
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'C'#243'digo'
        end
        object cxdbtxtdtRAZON_SOCIAL: TcxDBTextEdit
          Left = 148
          Top = 129
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'RAZONSOCIAL_CLIENTE'
          DataBinding.DataSource = dsTablaG
          TabOrder = 14
          OnEnter = cxdbtxtdtRAZON_SOCIALEnter
          Width = 554
        end
        object cxlbl3: TcxLabel
          Left = 23
          Top = 130
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Raz'#243'n Social Fiscal'
        end
        object cxdbtxtdtTELEFONO2: TcxDBTextEdit
          Left = 571
          Top = 93
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'TELEFONO_CLIENTE'
          DataBinding.DataSource = dsTablaG
          TabOrder = 12
          Width = 131
        end
        object cxlbl5: TcxLabel
          Left = 345
          Top = 94
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Tel'#233'fonos'
        end
        object cxlbl6: TcxLabel
          Left = 372
          Top = 62
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Email'
        end
        object cxdbtxtdtEMAIL: TcxDBTextEdit
          Left = 414
          Top = 62
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'EMAIL_CLIENTE'
          DataBinding.DataSource = dsTablaG
          TabOrder = 8
          Width = 288
        end
        object cxlbl4: TcxLabel
          Left = 57
          Top = 79
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Nif'
        end
        object cxdbtxtdtNIF: TcxDBTextEdit
          Left = 85
          Top = 78
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'NIF_CLIENTE'
          DataBinding.DataSource = dsTablaG
          TabOrder = 9
          Width = 149
        end
        object cxdbtxtdtMOVIL_CLIENTE: TcxDBTextEdit
          Left = 414
          Top = 93
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'MOVIL_CLIENTE'
          DataBinding.DataSource = dsTablaG
          TabOrder = 11
          Width = 131
        end
        object cxdbtxtdtNOMBRE: TcxDBTextEdit
          Left = 324
          Top = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'NOMBRE'
          DataBinding.DataSource = dsTablaG
          TabOrder = 5
          Width = 153
        end
        object cxlbl15: TcxLabel
          Left = 324
          Top = 12
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Nombre'
        end
        object cxlbl17: TcxLabel
          Left = 505
          Top = 12
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Apellidos'
        end
        object cxdbtxtdtAPELLIDOS: TcxDBTextEdit
          Left = 505
          Top = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'APELLIDOS'
          DataBinding.DataSource = dsTablaG
          TabOrder = 6
          Width = 197
        end
        object img1: TcxImage
          Left = 720
          Top = 29
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000000AB
            0000009B08030000002A4C9B86000000017352474200AECE1CE9000000046741
            4D410000B18F0BFC610500000300504C54450000000101010202020303030404
            040505050606060707070808080909090A0A0A0B0B0B0C0C0C0D0D0D0E0E0E0F
            0F0F101010111111121212131313141414151515161616171717181818191919
            1A1A1A1B1B1B1C1C1C1D1D1D1E1E1E1F1F1F2020202121212222222323232424
            242525252626262727272828282929292A2A2A2B2B2B2C2C2C2D2D2D2E2E2E2F
            2F2F303030313131323232333333343434353535363636373737383838393939
            3A3A3A3B3B3B3C3C3C3D3D3D3E3E3E3F3F3F4040404141414242424343434444
            444545454646464747474848484949494A4A4A00000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000982378610000010074524E53FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0053F7
            0725000000097048597300000EC300000EC301C76FA8640000063E4944415478
            5EED9C6977D43614401D02655FCAD2D2524A694B218510A01B297BA04D93FFFF
            7F5C4BBE9ED1D84FD2932C6786737C3F0449EF3DF99E2433B1640D55FDF930BB
            4EC3EC3A0DB3EB34CCAED330BB4E4359D79B558017246553D415291F6748CBA5
            A4EB159CBC90974B49578CFC90974B41D7334667674FE6EE66B91A9BE7B4876C
            94AB9109CCB649AEAF8DCC211D814D72352EA7684B6C82EBF1D3A7E69F473197
            B5BBDA97BEE1A2F9728E51119340339731F5A7CCF51D18968926C419556F0D17
            5C6754C664D0CC655CFD6D2B0937189431193473195DEFC0904C3421CED8FAFA
            BED5B45C6548C424D0CC65B4ABFB12634024165750C0B57E62451BE88BC4E20A
            4AB8D6F51756B5FA4857C2C469E652C6B5DEB7AE0FE9496C8E6B5D5F6A5CDED0
            96D824D7FAF033F97D6D09FE31D830D720B3EB34ACC5F585B96AB5FD81AE9635
            B87E634D2D763DA0C654D0CC25B1DE4A7624EDF998029AB924D5DFB18A0E2F09
            2830E9347349A93FB67E2B105190962D92526FED56D92614C764D3CC25A15EDC
            067C44308A49A6994B42BD751B40304A4AAE077DBD677755FBF232B93473D1D7
            5BB3215B8463985C9AB98C76D54E9090EA6376154848F531BB0A24A4FA08D5EF
            6E6FEFD06C386DCD06FC443886C96D5B8776F7FBF0C8699B2F47814DF116BFEB
            35AB525DA25B1FB4FD3E44A32C72FFAAAA7BB6DBB41F56D55ED78ECFE58D9BB9
            5B18186CB75AAE118C62926DA3BCEB65333730E4E82F2114C724DBBBF31B5575
            C1DEB23DB657B9567F6ADACFEBC7CDD7639BE9C5773133F502C69AEF421F220A
            285040C1104FE41E75C0E836DD05370928A0420105433C11CA16F0D3F9852EBC
            6D475550A28082214AD7EA1F025BF41BCE33A4832205140CF1446E51B7A45B63
            BFE1178107442FCF352F6A0D6D95060A86F822D439BC26E272AE0D3DA31BA2CD
            D440C1105F4478331DDE5513A8AAD30C042053010543BC110A5D7E27D4C1B021
            F424B6854405140CF1463E52E9B2FAB3FE91514B7479409E020A86F823FF51EA
            F2849885B10E467D90A5808221A14B50EBE22EB1195AC0B00793E13FB5A12278
            05ABB0CA03420D8C2C615C269A10277E811EF70949410222B1B88248BD5558E5
            7B42DD9BAB0B1189485843ACDE2AAC728790142322108EAA88D65B85556E13DA
            A1EF4268C8D59338A38784CB578458E6AC4068C8FE499C7D44C2A57B92D5DCE3
            0F2034019AA99170F992D0D7F45D0895473533122E57080DB6E51BBA7BDDD2E8
            BE0B48B8746BF11FE8BBBC235618E54F0C09970B841ED077D9275616ED6F1712
            2EDD1AE657FA2EFDDBC722A85F09CE42ABE32CA13DFA3A2E1E50968CDA555A29
            746FEE7FD0D77299BA44F4AEC3DD81E5DAE5157D3DA1E3263E125CA59DC2EEF9
            9667632E84FED158478AEBF258E6926EA175443F89846D1B43926B77B6C965B1
            D0A29FC86F546B487395EE5947CA864FCDAE90E85A9FE70A2E847265ABEA2E13
            444875ADED09E21E84F265ABADF74C1122D9756517B983D008D9E5DD909F7457
            73873F80D028D9AA729EA44864B8D6D799DA85D048D9B04D8EABF8312D42C26E
            6812C12389FC9B467039F044F863AC874924F25CDDA34F0B0845087E74AE21B0
            5B9EE95A7FC7D42E84A284BFEF2409E4BAF69FD45808C5E93D23598114816CD7
            D5ED5720A4C19CED15212E90EF2A7E7352165A6FA8E941546084ABB84714A6FF
            505C58B1076E6BC7B8D6BBCC9F82B3816BE9DF66322C31CAB57ECE05D2E8AD5F
            9E316CF996418971AEC9ABC28EDE5FFEC55FED9F191019E9CA070B7278CC0C2D
            C7E6A85AB759EA61ACABEFD5AC629739948C76AD3F70E13CF69845C378D7FA5F
            2E9B8BFA495201D76692B1E8B6BC8BB88E9755EDD695712D215B557F32998F42
            AE6564AB8BCC2653CA557CCC9141E84C7531D786BFF7F6EC47A58798FF9540D8
            B291089CD12AE96AE08A3D089EA51B845C8113756D1076EF7AF88F409EB46B5D
            1F093BA32EDD33932127EFDA70E8399FDA42D290B5B8367CF22E66FD4F98D7E5
            DA7020EB2E0F53F459A36BC37BE1E10E2181F5BA36BCEDE9063EC0BE76D78657
            CE733EFFBBC066B836ECA33BE97AAB4F7BC93E04C3ECC6D6081BE41A6576ED43
            7024B36B1F8223995DFB101C499969E277D00B6E51924119573C545092C1EC1A
            82920C66D710946430BB86A0248332AED2F1070FC1BBE930655C4F86D9751A66
            D769985DA761769D86D9751A66D769985DA7E1F371ADEBFF0136D8B4365210F8
            AB0000000049454E44AE426082}
          Properties.FitMode = ifmProportionalStretch
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.Edges = []
          TabOrder = 3
          Transparent = True
          Height = 120
          Width = 137
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 178
        Width = 1141
        Height = 441
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        object cxpgcntrl2: TcxPageControl
          Left = 1
          Top = 1
          Width = 1139
          Height = 439
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxtbsht3
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 435
          ClientRectLeft = 4
          ClientRectRight = 1135
          ClientRectTop = 26
          object cxtbsht3: TcxTabSheet
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Domicilio fiscal'
            ImageIndex = 0
            object cxdbtxtdt7: TcxDBTextEdit
              Left = 132
              Top = 7
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'DIRECCION1_CLIENTE'
              DataBinding.DataSource = dsTablaG
              TabOrder = 0
              Width = 296
            end
            object cxlbl7: TcxLabel
              Left = 47
              Top = 12
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Direcci'#243'n 1'
            end
            object cxlbl8: TcxLabel
              Left = 32
              Top = 84
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'C'#243'digo Postal'
            end
            object cxdbtxtdt8: TcxDBTextEdit
              Left = 132
              Top = 79
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'CPOSTAL_CLIENTE'
              DataBinding.DataSource = dsTablaG
              TabOrder = 4
              Width = 70
            end
            object cxlbl9: TcxLabel
              Left = 57
              Top = 123
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Poblaci'#243'n'
            end
            object cxdbtxtdt9: TcxDBTextEdit
              Left = 132
              Top = 118
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'POBLACION_CLIENTE'
              DataBinding.DataSource = dsTablaG
              TabOrder = 6
              Width = 296
            end
            object cxdbtxtdt10: TcxDBTextEdit
              Left = 132
              Top = 158
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'PROVINCIA_CLIENTE'
              DataBinding.DataSource = dsTablaG
              TabOrder = 8
              Width = 296
            end
            object cxlbl10: TcxLabel
              Left = 62
              Top = 162
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Provincia'
            end
            object cxdbtxtdt16: TcxDBTextEdit
              Left = 132
              Top = 197
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'PAIS_CLIENTE'
              DataBinding.DataSource = dsTablaG
              TabOrder = 10
              Width = 296
            end
            object cxlbl16: TcxLabel
              Left = 92
              Top = 202
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Pa'#237's'
            end
            object cxdbtxtdtDireccion: TcxDBTextEdit
              Left = 132
              Top = 43
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'DIRECCION2_CLIENTE'
              DataBinding.DataSource = dsTablaG
              TabOrder = 2
              Width = 297
            end
            object cxlbl1: TcxLabel
              Left = 47
              Top = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Direcci'#243'n 2'
            end
            object cxlbl18: TcxLabel
              Left = 32
              Top = 242
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'IBAN Bancario'
            end
            object cxdbtxtdtPAIS_CLIENTE: TcxDBTextEdit
              Left = 132
              Top = 237
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'IBAN'
              DataBinding.DataSource = dsTablaG
              TabOrder = 12
              Width = 296
            end
          end
          object cxtbsht1: TcxTabSheet
            Caption = 'M'#225's datos personales'
            ImageIndex = 1
            object cxedtRAZONSOCIAL_CLIENTE: TcxDBTextEdit
              Left = 133
              Top = 33
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'PROFESION_CLIENTE'
              DataBinding.DataSource = dsTablaG
              TabOrder = 0
              Width = 568
            end
            object cxlbl11: TcxLabel
              Left = 31
              Top = 34
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Profesi'#243'n'
            end
            object cxedtPROFESION_CLIENTE: TcxDBTextEdit
              Left = 133
              Top = 126
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'OBSERVACIONES_CLIENTE'
              DataBinding.DataSource = dsTablaG
              TabOrder = 5
              Width = 541
            end
            object cxlbl12: TcxLabel
              Left = 4
              Top = 126
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Observaciones'
            end
            object cxlbl13: TcxLabel
              Left = 31
              Top = 82
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Referencia'
            end
            object cxedtPROFESION_CLIENTE1: TcxDBTextEdit
              Left = 133
              Top = 81
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'REFERENCIA_CLIENTE'
              DataBinding.DataSource = dsTablaG
              TabOrder = 2
              Width = 568
            end
            object cxlbl14: TcxLabel
              Left = 4
              Top = 190
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Fecha de nacimiento'
            end
            object cxdbdtdt1: TcxDBDateEdit
              Left = 184
              Top = 184
              DataBinding.DataField = 'FECHA_NACIMIENTO'
              DataBinding.DataSource = dsTablaG
              TabOrder = 6
              Width = 177
            end
          end
          object cxtbsht2: TcxTabSheet
            Caption = 'Historia dental'
            ImageIndex = 2
            object cxgrd5: TcxGrid
              Left = 0
              Top = 0
              Width = 1131
              Height = 409
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              TabOrder = 0
              object cxgrdtvtv1: TcxGridDBTableView
                Navigator.Buttons.ConfirmDelete = True
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DataSource = DMClientes.dsHistoria
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsCustomize.ColumnGrouping = False
                OptionsSelection.InvertSelect = False
                OptionsView.NoDataToDisplayInfoText = '<No hay datos a mostrar>'
                OptionsView.GroupByBox = False
                object cxgrdbclmncxgrdtvtv1FECHA: TcxGridDBColumn
                  Caption = 'Fecha'
                  DataBinding.FieldName = 'FECHA'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Width = 109
                end
                object cxgrdbclmncxgrdtvtv1CODIGO_ARTICULO: TcxGridDBColumn
                  Caption = 'C'#243'digo Tratamiento'
                  DataBinding.FieldName = 'CODIGO_ARTICULO'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Width = 128
                end
                object cxgrdbclmncxgrdtvtv1DESCRIPCION_ARTICULO: TcxGridDBColumn
                  Caption = 'Descripci'#243'n Tratamiento'
                  DataBinding.FieldName = 'DESCRIPCION_ARTICULO'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Width = 181
                end
                object cxgrdbclmncxgrdtvtv1ZONA: TcxGridDBColumn
                  Caption = 'Nro Pieza dental'
                  DataBinding.FieldName = 'ZONA'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Width = 111
                end
                object cxgrdbclmncxgrdtvtv1PRECIOVENTA_ARTICULO: TcxGridDBColumn
                  Caption = 'Precio'
                  DataBinding.FieldName = 'PRECIOVENTA_ARTICULO'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 70
                end
                object cxgrdbclmncxgrdtvtv1DESCRIPCION_HISTORIA: TcxGridDBColumn
                  Caption = 'Historia detallada'
                  DataBinding.FieldName = 'DESCRIPCION_HISTORIA'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxgrdbclmncxgrdtvtv1DESCRIPCION_HISTORIAPropertiesButtonClick
                  Width = 151
                end
                object cxgrdbclmncxgrdtvtv1ODONTOLOGO: TcxGridDBColumn
                  DataBinding.FieldName = 'ODONTOLOGO'
                end
                object cxgrdbclmncxgrdtvtv1NOMBRE_ODONTOLOGO: TcxGridDBColumn
                  DataBinding.FieldName = 'NOMBRE_ODONTOLOGO'
                  Width = 147
                end
                object cxgrdbclmncxgrdtvtv1NRO_FACTURA: TcxGridDBColumn
                  DataBinding.FieldName = 'NRO_FACTURA'
                end
                object cxgrdbclmncxgrdtvtv1SERIE_FACTURA: TcxGridDBColumn
                  DataBinding.FieldName = 'SERIE_FACTURA'
                end
                object cxgrdbclmncxgrdtvtv1LINEA_LINEA: TcxGridDBColumn
                  DataBinding.FieldName = 'LINEA_LINEA'
                end
                object cxgrdbclmncxgrdtvtv1ID: TcxGridDBColumn
                  DataBinding.FieldName = 'ID'
                end
              end
              object tv2: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DetailKeyFieldNames = 'AppointmentId'
                DataController.KeyFieldNames = 'PerId'
                DataController.MasterKeyFieldNames = 'AppointmentId'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.GroupByBox = False
                Bands = <
                  item
                    Width = 958
                  end>
                object cxgrdbndclmntv2PerId: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'PerId'
                  Width = 37
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxgrdbndclmntv2AppointmentId: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'AppointmentId'
                  Width = 81
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxgrdbndclmntv2Linea: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Linea'
                  Width = 44
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxgrdbndclmntv2clave: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'clave'
                  Width = 126
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxgrdbndclmntv2valor: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'valor'
                  Width = 146
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxgrdbndclmntv2instantemodif: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'instantemodif'
                  Width = 137
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxgrdbndclmntv2descripcion: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'descripcion'
                  Width = 178
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxgrdbndclmntv2parte: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'parte'
                  Width = 209
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
              end
              object lv1: TcxGridLevel
                GridView = cxgrdtvtv1
              end
            end
          end
          object cxtbsht4: TcxTabSheet
            Caption = 'Historia Facturaci'#243'n'
            ImageIndex = 3
            object cxgrd1: TcxGrid
              Left = 0
              Top = 0
              Width = 1131
              Height = 409
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              TabOrder = 0
              object cxgrdbtblvw1: TcxGridDBTableView
                Navigator.Buttons.ConfirmDelete = True
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DataSource = DMClientes.dsFacturas
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsCustomize.ColumnGrouping = False
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.InvertSelect = False
                OptionsView.NoDataToDisplayInfoText = '<No hay datos a mostrar>'
                OptionsView.GroupByBox = False
                object cxgrdbclmncxgrdbtblvw1FECHA_FACTURA: TcxGridDBColumn
                  Caption = 'Fecha'
                  DataBinding.FieldName = 'FECHA_FACTURA'
                end
                object cxgrdbclmncxgrdbtblvw1NRO_FACTURA: TcxGridDBColumn
                  Caption = 'Nro Factura'
                  DataBinding.FieldName = 'NRO_FACTURA'
                  Width = 80
                end
                object cxgrdbclmncxgrdbtblvw1SERIE_FACTURA: TcxGridDBColumn
                  Caption = 'Serie Factura'
                  DataBinding.FieldName = 'SERIE_FACTURA'
                end
                object cxgrdbclmncxgrdbtblvw1CODIGO_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'C'#243'digo Cliente'
                  DataBinding.FieldName = 'CODIGO_CLIENTE_FACTURA'
                end
                object cxgrdbclmncxgrdbtblvw1RAZONSOCIAL_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'Raz'#243'n Social'
                  DataBinding.FieldName = 'RAZONSOCIAL_CLIENTE_FACTURA'
                  Width = 203
                end
                object cxgrdbclmncxgrdbtblvw1NIF_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'Nif'
                  DataBinding.FieldName = 'NIF_CLIENTE_FACTURA'
                  Width = 144
                end
                object cxgrdbclmncxgrdbtblvw1MOVIL_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'Tel'#233'fono1'
                  DataBinding.FieldName = 'MOVIL_CLIENTE_FACTURA'
                  Width = 164
                end
                object cxgrdbclmncxgrdbtblvw1EMAIL_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'Email'
                  DataBinding.FieldName = 'EMAIL_CLIENTE_FACTURA'
                  Width = 179
                end
                object cxgrdbclmncxgrdbtblvw1DIRECCION1_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'Direcci'#243'n1'
                  DataBinding.FieldName = 'DIRECCION1_CLIENTE_FACTURA'
                  Width = 204
                end
                object cxgrdbclmncxgrdbtblvw1DIRECCION2_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'Direcci'#243'n2'
                  DataBinding.FieldName = 'DIRECCION2_CLIENTE_FACTURA'
                  Width = 190
                end
                object cxgrdbclmncxgrdbtblvw1POBLACION_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'Poblaci'#243'n'
                  DataBinding.FieldName = 'POBLACION_CLIENTE_FACTURA'
                  Width = 185
                end
                object cxgrdbclmncxgrdbtblvw1PROVINCIA_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'Provincia'
                  DataBinding.FieldName = 'PROVINCIA_CLIENTE_FACTURA'
                  Width = 183
                end
                object cxgrdbclmncxgrdbtblvw1CPOSTAL_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'C'#243'digo Postal'
                  DataBinding.FieldName = 'CPOSTAL_CLIENTE_FACTURA'
                end
                object cxgrdbclmncxgrdbtblvw1PAIS_CLIENTE_FACTURA: TcxGridDBColumn
                  Caption = 'Pa'#237's'
                  DataBinding.FieldName = 'PAIS_CLIENTE_FACTURA'
                  Width = 144
                end
                object cxgrdbclmncxgrdbtblvw1TOTAL_LIQUIDO_FACTURA: TcxGridDBColumn
                  Caption = 'Total L'#237'quido'
                  DataBinding.FieldName = 'TOTAL_LIQUIDO_FACTURA'
                end
                object cxgrdbclmncxgrdbtblvw1FORMA_PAGO_FACTURA: TcxGridDBColumn
                  Caption = 'Forma de Pago'
                  DataBinding.FieldName = 'FORMA_PAGO_FACTURA'
                  Width = 151
                end
                object cxgrdbclmncxgrdbtblvw1COMENTARIOS_FACTURA: TcxGridDBColumn
                  Caption = 'Comentarios'
                  DataBinding.FieldName = 'COMENTARIOS_FACTURA'
                end
              end
              object cxgrdbtblvwcxgrd1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = DMClientes.dsLinFac
                DataController.DetailKeyFieldNames = 'NRO_FACTURA_LINEA; SERIE_FACTURA_LINEA'
                DataController.KeyFieldNames = 'LINEA_LINEA'
                DataController.MasterKeyFieldNames = 'NRO_FACTURA; SERIE_FACTURA'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.ColumnHeaderHints = False
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnMoving = False
                OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1LINEA_LINEA: TcxGridDBColumn
                  DataBinding.FieldName = 'LINEA_LINEA'
                  Width = 28
                end
                object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1CODIGO_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'C'#243'digo Tratamiento'
                  DataBinding.FieldName = 'CODIGO_ARTICULO_LINEA'
                  Width = 164
                end
                object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1DESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'Descripci'#243'n Tratamiento'
                  DataBinding.FieldName = 'DESCRIPCION_ARTICULO_LINEA'
                  Width = 804
                end
                object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1ZONA: TcxGridDBColumn
                  Caption = 'Nro Pieza'
                  DataBinding.FieldName = 'ZONA'
                  Width = 484
                end
                object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1PRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'Precio'
                  DataBinding.FieldName = 'PRECIOVENTA_ARTICULO_LINEA'
                  Width = 84
                end
                object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1CANTIDAD_LINEA: TcxGridDBColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'CANTIDAD_LINEA'
                  Width = 84
                end
                object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1SUM_TOTAL_LINEA: TcxGridDBColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'SUM_TOTAL_LINEA'
                  Width = 84
                end
                object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1ODONTOLOGO: TcxGridDBColumn
                  Caption = 'Nro Odont'#243'logo'
                  DataBinding.FieldName = 'ODONTOLOGO'
                  Width = 68
                end
              end
              object cxgrdlvlcxgrd1Level1: TcxGridLevel
                GridView = cxgrdbtblvw1
                object cxgrdlvlcxgrd1Level2: TcxGridLevel
                  GridView = cxgrdbtblvwcxgrd1DBTableView1
                end
              end
            end
          end
        end
      end
    end
  end
  inherited dsTablaG: TDataSource
    DataSet = DMClientes.unqryClientes
    Left = 372
    Top = 207
  end
end
