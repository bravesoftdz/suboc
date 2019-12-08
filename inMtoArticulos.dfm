inherited frmMtoArticulos: TfrmMtoArticulos
  Left = 5
  Top = 4
  Caption = 'Tratamientos'
  ClientHeight = 412
  ClientWidth = 805
  ExplicitWidth = 821
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 15
  inherited pButtonPage: TPanel
    Width = 679
    Height = 412
    ExplicitWidth = 679
    ExplicitHeight = 412
  end
  inherited pButtonRightBar: TPanel
    Left = 679
    Height = 412
    ExplicitLeft = 679
    ExplicitHeight = 412
    inherited pButtonGen: TPanel
      Top = 213
      ExplicitTop = 213
      object btnNuevo: TSpeedButton
        Left = 0
        Top = 3
        Width = 124
        Height = 34
        Cursor = crHandPoint
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '&Nuevo Tratamiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        OnClick = btnNuevoClick
      end
    end
  end
  inherited pcPantalla: TPageControl
    Width = 679
    Height = 412
    ActivePage = tsFicha
    ExplicitWidth = 679
    ExplicitHeight = 412
    inherited tsLista: TTabSheet
      ExplicitWidth = 671
      ExplicitHeight = 379
      inherited cxGrdPrincipal: TcxGrid
        Width = 671
        Height = 343
        ExplicitWidth = 671
        ExplicitHeight = 343
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          OptionsData.Editing = True
          object cxgrdbclmnGrdDBTabPrinCODIGO_ARTICULO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO_ARTICULO'
          end
          object cxgrdbclmnGrdDBTabPrinDESCRIPCION_ARTICULO: TcxGridDBColumn
            Caption = 'Tratamiento'
            DataBinding.FieldName = 'DESCRIPCION_ARTICULO'
            Width = 297
          end
          object cxgrdbclmnGrdDBTabPrinFAMILIA_ARTICULO: TcxGridDBColumn
            Caption = 'Familia'
            DataBinding.FieldName = 'FAMILIA_ARTICULO'
            Width = 58
          end
          object cxgrdbclmnGrdDBTabPrinPRECIOVENTA_ARTICULO: TcxGridDBColumn
            Caption = 'Precio de Venta Sin Iva'
            DataBinding.FieldName = 'PRECIOVENTA_ARTICULO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 129
          end
        end
      end
      inherited pnTopGrid: TPanel
        Width = 671
        ExplicitWidth = 671
      end
    end
    inherited tsFicha: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 671
      ExplicitHeight = 379
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 671
        Height = 145
        Align = alTop
        TabOrder = 0
        object cxdbtxtdt1: TcxDBTextEdit
          Left = 104
          Top = 33
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsTablaG
          Enabled = False
          TabOrder = 1
          Width = 121
        end
        object cxlbl2: TcxLabel
          Left = 49
          Top = 37
          Caption = 'C'#243'digo'
        end
        object cxlbl1: TcxLabel
          Left = 46
          Top = 65
          Caption = 'Nombre'
        end
        object cxdbtxtdt2: TcxDBTextEdit
          Left = 104
          Top = 61
          DataBinding.DataField = 'DESCRIPCION'
          DataBinding.DataSource = dsTablaG
          TabOrder = 3
          Width = 241
        end
        object cxlbl18: TcxLabel
          Left = 791
          Top = 93
          Caption = 'Modificado'
        end
        object cxdbtxtdt15: TcxDBTextEdit
          Left = 856
          Top = 89
          DataBinding.DataField = 'modificado'
          DataBinding.DataSource = dsTablaG
          TabOrder = 5
          Width = 57
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 669
          Height = 145
          Align = alTop
          TabOrder = 0
          object cxdbtxtdtCODIGO_ARTICULO: TcxDBTextEdit
            Left = 104
            Top = 33
            DataBinding.DataField = 'CODIGO_ARTICULO'
            DataBinding.DataSource = dsTablaG
            Properties.ReadOnly = False
            TabOrder = 1
            Width = 121
          end
          object cxLabel1: TcxLabel
            Left = 49
            Top = 37
            Caption = 'C'#243'digo'
          end
          object cxLabel2: TcxLabel
            Left = 46
            Top = 65
            Caption = 'Nombre'
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 104
            Top = 61
            DataBinding.DataField = 'DESCRIPCION_ARTICULO'
            DataBinding.DataSource = dsTablaG
            TabOrder = 3
            Width = 253
          end
          object img1: TcxImage
            Left = 388
            Top = 14
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000097
              000000A0080600000001E0FE6C000000017352474200AECE1CE9000000046741
              4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
              000EA149444154785EED9D09B47DE51887FFA6900A61451452C6C82C59449916
              45A62843612143682119569909194B92A1CC73032DB132261942518688C85428
              52A688DF73F7FE5AAFD7B7F719F6FEF6D9F7DCF759EB59E7DC7BCFD9FB9C7BDE
              F30DEF37EC7541100441100441100441100441100441100441100441B0482E57
              DFAE462E2FB791F7AC3D5DBE48CECB8DE53EF2CE92E35E454ECB9FE435ABBBC5
              B892E47DDE5B6E263795D7AF6F2F91BF91BFAE6F7F263F23BF25FF238309104C
              B79304C031F202C93F2E4970CDCB5EF222698F378B04570908F0DDE587E59F65
              EEDC6D126C6F97F795ABB920E91D82E9B6F2D992603A5FE6FE81C94BE575E4AC
              EC2C73C79BC5BE838BF7FE38F90B993BDF3C7E53DE4BAE496C301D2D270553CE
              87CB59D848528DE48E358B7D06D77DE4A932779E3EA4BABCB52CCE188A4A4A8E
              27CA7BC859DB2D9456A7C92F192F94D3F22049A968799B7CA7A4DA9D165EC72F
              ABBB73C397EB55F2F92B3FE5F9873C419E28F952FCB6BEA53D763D49FB8BF618
              017A57C93173FC533E451EB1F2D312C31BCC7DC372F2217E57BE513E58766D44
              BF5CDAE37F552E820DE5A7A47D2DD6E3E4AE92C74DCB26F2493235EA731E24AF
              209796B6E02298A822DE2477911BCB3EF990B4E77B811C9A1B483A23F67524BF
              2EEF2EBB40EDF4487996CC9D836AF2AA7229F1C145F5F266F910D9773079E885
              D973EF2787647D49496C5F035E2C69D0F70955E74B245F587F3EBE644B890FAE
              D7C8A158647051A27C4CDAF3235FAEDBCB2608920748DA668748AAD3A3E4C1F5
              EF686BB5B5A5A901FE22FD7987FE620DC25A0DAE03A43D377E47D256CAC1EFC9
              59FD51FAE77969E8136C245973D05BFC9DB4CFF9B77CA05C2AD662705132F9EA
              8980680A06B8B224296A9F33C9BF4AFE9F54BF9EED24BD4FFBF8DF4BD233BDD0
              D4550DCAF25A69AB2E3E64DA98044F133CE6F5D5DDA9A1A14E5549EA828E83E5
              6B929109CBB5E5BED5DDE5609125D7BBA43D375DF3D2DC5FDA73E233E5345C4D
              52BA90A7A29747B0ED2DF797C7CAB6843025E3D6D2F36E691F4767827CD952B0
              C8E07A86B4E73E4FF6562D64A0B422E96BCF79A6BCA29C963BCAB65E34552B89
              E05CAF90016D4A270BC95702CA3EEE70D999B65EC550105C7B54775738459E54
              DDCD72B624EFD5077C5024192DF4A43E2973433A3F953494E7859E1CD5918521
              AB4F54777B85D913944A64EC2D8C62EC2009A204C9E417577757F8BB240809BA
              558D2FB9264962B14FF86073E7C9C907D3054A657B3C7A8725A114FEB2B4E7C4
              DDA485CCBF9F75F130D98968D0AF5BF754495B650818B2B27CA4BE4DD0D6B943
              75B717186725194B696C79A55CAFBABB027F3FBEBA7B197430563D8B2EB9E05A
              F2A332773E6B9792EBA6D21F8FDF59187EE2F77CD00CE4F705638CFEDC8F9296
              474BFB7706EE49D8CECD18DA5CB4B7688B34711349FB21F10DB96D75B7776E29
              D34C54BAF13793CCFE4C105CF3CE897ABCA40D94F881BC5575F732BE2F6D8F8E
              0E0759F83EF8BCA4AD9520C767AB472601D0A1B19D0BF2710C4F2D2D7CC3EC37
              AA44C9D5C49ED29EBB4BC9C5146C7BACF74A4BAE64F3C1D705D21DF6D8B4B17C
              C944CFD53EA653C63EDA5CC3E1B3EFBE9D4729696116C319D5DD5EA0176EA1B1
              EF13ABFE35B58D184C24826B387C6292A4A665F3FA36414EAA4F98BAC4F8A1E5
              BAF56DC2BFA64EC9D408AEE1F01F2403C7165F8AF80FBA2B8C3352ED59FC20B9
              7F4DFE35CF4404D770FCADBE4DF859A53E5D70C3FAB64FFC72393F25DCBFA64E
              49D408AEE1604CD0C2B08BE557F56D829E5A9F9F0F9901DF86F2E7F4AFE9DCFA
              762EC61C5C0CD2D21527E16761ED225DFA922B58F806B30A893957165220EF90
              A42C66C507976FCFB08CCCC26BF079B02EDC49DAC429F8E0F2AFA953708D1512
              88D34C8A63F25CDF5F10726A7EC1AD974161A662CF92277CA1B4C7F89CB4305F
              CBCF102537D6176F90F6D83EA5C3FFD1BF6F9B175B0A58EE45FBC4BEC9361942
              E99449363088EC27D0B5F93E39ED8C06165AD8E73238BC81B4F869CF0CD2FB76
              D0BCEC289910908EFD2C6961F2A03D375B04F8D7B7AA61049F5E8D7D93493F2D
              C46A47F4E7650BD914586DE77EAE9C06AA247F9C47480B5F2CFB773C54F6C9F6
              92E125DFBEF283EA4326AB078192C0BE4164EC714B4915740DC970915F8D4D75
              D2A9DB2C728B2598D744D001C3232CDE652A8E7D0C55096393D3F059699FFB01
              E961EDA47D0C5530A54E69188EB2E71D725E5D71C8F3F8096E07CA1CB790BEEA
              644ED2BC10BCF658F852998371475FC24DBBBB8E1F40E63DF8E4299D06929DF6
              710CD510D8A560A3127B3EA403B034EC24ED9B23A14723B789574BFBF84FCB79
              A1AD658F758E6C6BC7B1E2DB3EFEE3721A180CFF83B4CF3D527A7CE33FC9CAEB
              4E59F30CD4087EED64DB64CD55092B6FEC1B644E781BEC87601F4FE3775E582C
              6A8FC5F49B36FCCE383F92D3F20A699F4B294569E8A1A3621F97A41A66112B6D
              3D666C304648D06E2559F2CFE4C7A6123FC763A53FC7AC1BBA8C1E5F1A906668
              E3E6D23EDE67C0678146B33DD6A469D4ECC6631FCF073E2D34A47DCA814165BF
              A49E9293FF817D5CCEDC5C793A45D36C274507CAAF5FFCB1EC65FF88312551BB
              CE2DEBF2FC21CFCD98A1DF9382D9A7745CEC714805B0F40BDB866172E72650D9
              24AF0D92D4D40E767C91E0A25DE807B8E762CC19FA65860980BE5D4395E64704
              E0304987839181593E74669636E5E0F8DC994F46096CA1A4FC4A75B73B115C8B
              8112E209925EA085E0A279E0AB25AA2EF6D3A267C99C7F521A6904234149C710
              129D8B874A868EFE253D246529B1788CE527B26D6FB0550DED9C54EFE3AC6D2E
              32DEF3E2DB36B3B6B9E6DD59908426AFDB1E0B59F07A75390912B3B49BA8DAA6
              A99AC9D9E5B66B6292201B0EF74A945C8B85655F6CA84BA3DCC2AA6C26F751B5
              B5050D2BAF499B30C04C9034C1549BE7C96F4B3F759AD293F3FD7CE5A71E89E0
              5A3C2CC0659D806FB4DF48BE5F92832207384F0F8EA022F94A95C7FE148C7058
              D89B8294CEF7567EEA9908AE71C0D01303C7B9A9CDE4C0D8838B76177B5B1068
              4D5526A51C55E463246D2F12B6ECEFEA67B902C34CB915E74BC95A6C7379D803
              E283D21EBB494A3AB617A07777B224893CCD8C0E1EC3B8615F33491A89926B5C
              30204F1BEC6ED2AFD6F1B0E7166B3A99CAC37824D3A2FD64400FBD44DA5C8C86
              D0BB2C4A04D73861B31216E7B25F03E389B994C2B450C231DB8409986C274069
              3708115CE3852A8CC63E6D2CDA4C6F91B3C2DE5D4C4562BF8813F9C5904C931B
              190ADA39767624F38BDAFE21F47CD8023B415B62968B4159687391A44C308599
              39F44DD0E6B2CBDCE9CEFB9E58DF902E20FF95A0A7F71CC96C515219BC7F3F3F
              8C714CBF5C6C4DE21BF4B3BA0C0DFA36FC8E847E26065F2CFB77EC3A81B21351
              2D06C588E00A8A31E6E0623B21DA3E4DFA5D6282A09148A2B6136DAE20484470
              05C5187370312B808B203539C45ABE31C0E621BC5FBFB527F92DFBFF60D18887
              AA94BF2DD5CAE979883C571EBF6DE73CD23E1D9CA8168362447005C5187370B1
              0081EBE43439CB42D45961CD1F555F937E73DC21614D62EEFF61A52A0C0C63CA
              73CDEA906DAE69769FE17F619F136DAE60B988E00A8A31E6E062CA2E73A49AEC
              6BC7BD1C2CD9628E569317C945C12AA0DCFFC31A3822CF9527F25C41E089E00A
              8A11C1151463CCC1F51EC926B74DB2F4AA14EC24433BAAC9C157D21858CF98FB
              7F5859ACB170C61C5CF4D8721F6CD25F2BA74FE8A9B264BEC945CE32608FAEDC
              FFC33A0AA25A0C8A11C1151463CC8B6219B8F6173EB2B08DB8CDDFF4B92896CD
              405E57DDCDC2C035D7884E90582D95BC24CFC5EECD0906AED912A98DDB48FBD9
              B26F7FC981FED11349D43C91440D024F0457508C31B7B9D8B1B86D4E170B170E
              AEEEAED0679B8B1DFE5894DB04E908AE5E9128D9E6E27D721D1E2E62BA3FBFA8
              6123122E769A6033377FE50FAED748957D825CE460FBC2F16DAEB6C082B53259
              30118B62832011C1151463CC6D2EDA3C5FA8EE66610C8D1DF3127DB6B9D8C4F6
              A8EA6E16DA41F60AB125DB5C09BFF91B1780B22906DEBBBFB8566CFE561379AE
              76A2CD15048908AEA018B1E16E856F73D1D6E3AA164DB0BBB2BDAE75B4B9464E
              E4B9DA893657102422B882624470E5E18AAB8C6D36C9E55382094470E5395AD2
              C669F2E93298400457508C08AEA018115C7918B724D5D1249B01071388E0CAC3
              80F80F5B6C1BD40E6A22B88262447005C5185370315CD185AECFB7B0649EB1CA
              26D96A2098C09882EBDCFA36B1697DDBC466F56DC23FBF0B2CFC60ACAEC9BBC8
              6002630AAED3EBDB04BBD8B0AABA891DEADB847F7EB060C6145CA74A5BB56D22
              5F56DDFD3F589EEEAF416DAF391D8C80310517FB42F80B80EF2B8F905B4AE69E
              31676A0F7992A47A4AB026EF90EA6E3016C6145CF042E927BC114C6CBC41005D
              200936929C9603654C8A1B19630BAE73241B6FE426FEAD5FDF7A58654C700523
              636CC105C7CAFBC9F3577E6AE730B99BBC64E5A760548C31B88075839BCBBD25
              FB3658C831B15F2A7B50ED252F95C108196B70C1C5927C935D0801F40A9F20DB
              360A0946C098832B58E5447005C588E00A8A11C1151423822B28460457508C08
              AEA018115C413122B88262ACC6E062E716E672B5C975A0836022F35C9EC4CEF5
              9A86D8B6B200512D06C588E00A8AB11A828BE9CFC7B478BC0C8222D0AEF06D8D
              687355AEF936171B7B7091A6E4167268FC84C3491B11FBBFC784C50C6308AEFD
              E4178D4F964373667D9B60B5511B7C212CFEF98188067DC529F56D623BB97175
              37CB2EF56DC23FBF045473165F7AE64A5BFF9C4189E0AA60EA34FB4324581FC9
              E28FF5567EFA5F7697BB56772F6388E0F26B09B692B609C1A216CB85F2BCEAEE
              DA857588B6117AA86473B569E54297F6F9386B831EDE2AFD714E937BCA6DE44E
              F248E91FC387BE812C0D25130163CF7DB2DC59F21ACFAA7F976CBB28D79AC107
              571FCE135CAC8B64F16DEE784DD290DF5E0EC5E132F73A723E49AE79C6125CB0
              AD64BD64EE985E02EB0039241B49B631CFBD1E2B971D9ED4E35D138C29B880EB
              E5B0303777DCE4D97247B908B69669D3969CC749367109C4D8822B411BEB20C9
              025D2E1C7586E4B53E4D6E281709174BDF471248EC4B46B073212C3A1B411004
              411004411004411004411004411004411004411004411004411004411004418E
              75EBFE0BED2EF8EAC4A111760000000049454E44AE426082}
            Properties.FitMode = ifmProportionalStretch
            Properties.ReadOnly = True
            Style.BorderStyle = ebsNone
            Style.Edges = []
            TabOrder = 0
            Transparent = True
            Height = 97
            Width = 105
          end
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 145
        Width = 671
        Height = 234
        Align = alClient
        TabOrder = 1
        object cxpgcntrl2: TcxPageControl
          Left = 1
          Top = 1
          Width = 669
          Height = 232
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxtbsht3
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 228
          ClientRectLeft = 4
          ClientRectRight = 665
          ClientRectTop = 26
          object cxtbsht3: TcxTabSheet
            Caption = 'Datos Tratamiento'
            ImageIndex = 0
            object cxdbtxtdtDESCRIPCION_ARTICULO: TcxDBTextEdit
              Left = 87
              Top = 26
              DataBinding.DataField = 'FAMILIA_ARTICULO'
              DataBinding.DataSource = dsTablaG
              TabOrder = 0
              Width = 253
            end
            object cxlbl3: TcxLabel
              Left = 28
              Top = 27
              Caption = 'Familia'
            end
            object cxlbl5: TcxLabel
              Left = -5
              Top = 57
              Caption = 'Precio Venta'
            end
            object cxdbcrncydt1: TcxDBCurrencyEdit
              Left = 87
              Top = 55
              DataBinding.DataField = 'PRECIOVENTA_ARTICULO'
              DataBinding.DataSource = dsTablaG
              TabOrder = 2
              Width = 121
            end
          end
        end
      end
    end
  end
  inherited dsTablaG: TDataSource
    DataSet = DMArticulos.unqryArticulos
    Left = 236
    Top = 311
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 160
    Top = 288
  end
end
