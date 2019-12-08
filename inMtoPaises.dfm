inherited frmMtoPaises: TfrmMtoPaises
  Left = 141
  Top = 180
  Caption = 'Pa'#237'ses'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPantalla: TPageControl
    ActivePage = tsFicha
    inherited tsLista: TTabSheet
      inherited cxGrdPrincipal: TcxGrid
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          OptionsView.DataRowHeight = 32
          object cxGrdDBTabPrinPAI_ISO2: TcxGridDBColumn
            Caption = 'Letras ISO 2 Letras'
            DataBinding.FieldName = 'PAI_ISO2'
            Width = 126
          end
          object cxGrdDBTabPrinPAI_NOMBRE: TcxGridDBColumn
            Caption = 'Nombre Pa'#237's'
            DataBinding.FieldName = 'PAI_NOMBRE'
            Width = 207
          end
          object cxGrdDBTabPrinPAI_ENGLISH: TcxGridDBColumn
            Caption = 'Nombre Ingl'#233's'
            DataBinding.FieldName = 'PAI_ENGLISH'
            Width = 205
          end
          object cxGrdDBTabPrinflag: TcxGridDBColumn
            DataBinding.FieldName = 'flag'
            PropertiesClassName = 'TcxImageProperties'
            Properties.GraphicClassName = 'TIcon'
          end
          object cxGrdDBTabPrinPAI_ISONUM: TcxGridDBColumn
            Caption = 'N'#250'mero ISO'
            DataBinding.FieldName = 'PAI_ISONUM'
            Width = 98
          end
          object cxGrdDBTabPrinPAI_ISO3: TcxGridDBColumn
            Caption = 'Letras ISO 3 Letras'
            DataBinding.FieldName = 'PAI_ISO3'
            Width = 122
          end
        end
      end
      inherited pnTopGrid: TPanel
        inherited RzPanel2: TRzPanel
          Visible = False
          inherited chkSoloActivos: TdxCheckEdit
            Visible = False
          end
        end
      end
    end
    inherited tsFicha: TTabSheet
      object pnCab: TPanel
        Left = 0
        Top = 0
        Width = 731
        Height = 145
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 168
          Top = 64
          Width = 79
          Height = 15
          Caption = 'Nombre Ingl'#233's'
        end
        object Label2: TLabel
          Left = 28
          Top = 64
          Width = 122
          Height = 15
          Caption = 'C'#243'digo ISO de 3 Letras'
        end
        object Label3: TLabel
          Left = 168
          Top = 20
          Width = 89
          Height = 15
          Caption = 'Nombre espa'#241'ol'
        end
        object Label4: TLabel
          Left = 28
          Top = 20
          Width = 122
          Height = 15
          Caption = 'C'#243'digo ISO de 2 Letras'
        end
        object DBEISO2: TcxDBTextEdit
          Left = 28
          Top = 36
          DataBinding.DataField = 'PAI_ISO2'
          DataBinding.DataSource = dsTablaG
          TabOrder = 0
          Width = 121
        end
        object DBIFlag: TcxDBImage
          Left = 384
          Top = 12
          DataBinding.DataField = 'flag'
          DataBinding.DataSource = dsTablaG
          Properties.GraphicClassName = 'TIcon'
          TabOrder = 1
          Height = 117
          Width = 140
        end
        object DBEISO3: TcxDBTextEdit
          Left = 28
          Top = 80
          DataBinding.DataField = 'PAI_ISO3'
          DataBinding.DataSource = dsTablaG
          TabOrder = 2
          Width = 121
        end
        object cxViewWiki: TcxButton
          Left = 28
          Top = 112
          Width = 121
          Height = 25
          Caption = 'Ver Entrada Wikipedia'
          TabOrder = 3
          OnClick = cxViewWikiClick
        end
        object DBEPais: TcxDBTextEdit
          Left = 168
          Top = 36
          DataBinding.DataField = 'PAI_NOMBRE'
          DataBinding.DataSource = dsTablaG
          TabOrder = 4
          Width = 209
        end
        object DBEPaisEnglish: TcxDBTextEdit
          Left = 168
          Top = 80
          DataBinding.DataField = 'PAI_ENGLISH'
          DataBinding.DataSource = dsTablaG
          TabOrder = 5
          Width = 209
        end
        object cxViewWikiEn: TcxButton
          Left = 168
          Top = 112
          Width = 209
          Height = 25
          Caption = 'Ver Entrada Wikipedia en Ingl'#233's'
          TabOrder = 6
          OnClick = cxViewWikiEnClick
        end
      end
      object pnDetall: TPanel
        Left = 0
        Top = 145
        Width = 731
        Height = 163
        Align = alClient
        TabOrder = 1
        object wbWiki: TWebBrowser
          Left = 1
          Top = 1
          Width = 729
          Height = 161
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C000000584B0000A41000000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
  end
  inherited pButtonCab: TPanel
    inherited ControlBar2: TControlBar
      inherited DBNControlBD: TDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited dsTablaG: TDataSource
    DataSet = qyPais
  end
  object qyPais: TBetterADODataSet
    Connection = dmConn.ADOConn
    CommandText = 'select * from inPai_pais'
    Parameters = <>
    IndexDefs = <>
    Unique_Table = 'inpai_pais'
    Resync_Command.Strings = (
      'select * from inPai_pais where pai_pk = ?')
    RefreshType = rtRequery
    Left = 552
    Top = 102
    object qyPaisPAI_PK: TIntegerField
      FieldName = 'PAI_PK'
    end
    object qyPaisPAI_ISONUM: TIntegerField
      FieldName = 'PAI_ISONUM'
    end
    object qyPaisPAI_ISO2: TWideStringField
      FieldName = 'PAI_ISO2'
      Size = 2
    end
    object qyPaisPAI_ISO3: TWideStringField
      FieldName = 'PAI_ISO3'
      Size = 3
    end
    object qyPaisPAI_NOMBRE: TWideStringField
      FieldName = 'PAI_NOMBRE'
      Size = 80
    end
    object qyPaisPAI_ENGLISH: TWideStringField
      FieldName = 'PAI_ENGLISH'
      Size = 80
    end
    object qyPaisflag: TBlobField
      FieldName = 'flag'
    end
  end
end
