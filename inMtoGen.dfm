object frmMtoGen: TfrmMtoGen
  Left = 0
  Top = 119
  Caption = 'fT'
  ClientHeight = 574
  ClientWidth = 965
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Lucida Sans'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 15
  object pButtonPage: TPanel
    Left = 0
    Top = 0
    Width = 839
    Height = 574
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    ParentBackground = False
    TabOrder = 1
  end
  object pButtonRightBar: TPanel
    Left = 839
    Top = 0
    Width = 126
    Height = 574
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alRight
    ParentBackground = False
    TabOrder = 2
    object pButtonGen: TPanel
      Left = 1
      Top = 375
      Width = 124
      Height = 198
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      BevelOuter = bvNone
      Constraints.MinHeight = 81
      Constraints.MinWidth = 123
      ParentBackground = False
      TabOrder = 2
      object sbGrabar: TSpeedButton
        Left = 0
        Top = 104
        Width = 124
        Height = 34
        Cursor = crHandPoint
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '&Grabar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        OnClick = sbGrabarClick
      end
      object sbCancelar: TSpeedButton
        Left = 0
        Top = 134
        Width = 124
        Height = 34
        Cursor = crHandPoint
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '&Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        OnClick = sbCancelarClick
      end
      object sbSalir: TSpeedButton
        Left = 0
        Top = 165
        Width = 124
        Height = 34
        Cursor = crHandPoint
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '&Salir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        OnClick = sbSalirClick
      end
    end
    object pButtonBDStat: TPanel
      Left = 1
      Top = 1
      Width = 124
      Height = 110
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Constraints.MinHeight = 37
      Constraints.MinWidth = 123
      ParentBackground = False
      TabOrder = 0
      object pnTableName: TPanel
        Left = 0
        Top = 21
        Width = 124
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 1
        object lblEditMode: TLabel
          Left = 0
          Top = 0
          Width = 124
          Height = 18
          Hint = 'Es el estado en que est'#225' la tabla'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = 'EditMode'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Lucida Sans'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Visible = False
          ExplicitWidth = 123
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 124
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 0
        object lblTablaOrigen: TLabel
          Left = 0
          Top = 0
          Width = 124
          Height = 18
          Hint = 'Es la tabla en la que vd. est'#225' actuando'
          HelpType = htKeyword
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = 'tbTablaOrigen'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Lucida Sans'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Visible = False
          ExplicitLeft = 7
          ExplicitTop = 2
        end
      end
    end
    object cxdbnvgtr2: TcxDBNavigator
      Left = 11
      Top = 38
      Width = 108
      Height = 23
      Buttons.CustomButtons = <>
      Buttons.Insert.Visible = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Post.Visible = False
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = dsTablaG
      TabOrder = 1
    end
  end
  object pcPantalla: TPageControl
    Left = 0
    Top = 0
    Width = 839
    Height = 574
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = tsLista
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Lucida Sans'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object tsLista: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Lista'
      object cxGrdPrincipal: TcxGrid
        Left = 0
        Top = 36
        Width = 831
        Height = 505
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        object cxGrdDBTabPrin: TcxGridDBTableView
          OnDblClick = cxGrdDBTabPrinDblClick
          Navigator.Buttons.OnButtonClick = cxGrdDBTabPrinNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Hint = 'Va al primer Registro'
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Hint = 'Va a la p'#225'gina anterior'
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Hint = 'Va al Registro Anterior'
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Hint = 'Va al siguiente Registro'
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Hint = 'Va a la p'#225'gina siguiente'
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Hint = 'Va al '#250'ltimo registro'
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Hint = 'Inserta un nuevo Registro'
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Hint = 'Borra el registro Activo'
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Enabled = False
          Navigator.Buttons.Edit.Hint = 'Edita registro Actual'
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Hint = 'Guarda Datos introducidos'
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Enabled = False
          Navigator.Buttons.Cancel.Hint = 'Cancela la edici'#243'n actual'
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Hint = 'Refresca Datos Activos'
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Hint = 'Marca Registro Actual'
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Hint = 'Va al registro Marcado'
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Hint = 'Filtro personalizado'
          Navigator.Visible = True
          DataController.DataSource = dsTablaG
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnHiding = True
          OptionsData.Appending = True
          OptionsData.Editing = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
        end
        object cxGrdLvPrin: TcxGridLevel
          GridView = cxGrdDBTabPrin
        end
      end
      object pnTopGrid: TPanel
        Left = 0
        Top = 0
        Width = 831
        Height = 36
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 0
        object dxbvl1: TdxBevel
          Left = 6
          Top = 2
          Width = 804
          Height = 31
        end
        object btnRestoreWindow: TSpeedButton
          Left = 773
          Top = 5
          Width = 23
          Height = 21
          Hint = 'Resetear columnas a valores por defecto'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Lucida Sans Unicode'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000D2490000D24900000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFDFDFDFAFAFAF7F7F7F5F5F5F1F1F1EFEFEFF0F0F0F4F4F4F8F8
            F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6EBEBEBE1E1E1C2D3D7A0
            CAD3AEC8CEC1C7C9CDCDCDD3D3D3DCDCDCE7E7E7F3F3F3FBFBFBFFFFFFFEFEFE
            F5F5F5E6E6E6D7D7D7BDC6C865BECF3EC2D941BFD45AB9CB7BAFBAABB5B7C5C5
            C5D2D2D2E1E1E1F0F0F0FFFFFFFEFEFEF5F5F5E6E6E6D9D9D990C2CC37C2D821
            C1D926C5DD38C7DD3AC0D84DB6C99CBEC5D2D2D2E2E2E2F0F0F0FFFFFFFFFFFF
            FDFDFDF7F7F7E3E7E965C8DA20C5DD1BC5DF2ECDE427C1DA17BED736CAE04CC1
            D79BD1DCEFF1F1FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFDAF0F544CADF1CCCE526
            D2EC26C9E41AC1DB1BC3DA34C5DC59CCDF93D9E7F4FAFBFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFC3EAF23DD2E730DAF234D8F122CDE716C5DD28C4DB63CFE1BBE7
            F0F8FBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F791B9D848D6ED4EE5F943
            DDF424D3EC21C7DE60CEE0CDECF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFACAED60F16A7325FC35FC0E44EE4F934D5EC63D0E2D5EFF5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F5F961BFD92470C02A38C23B45C93C
            7FC783D3E6E0F4F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            EAF7FA6FC9DD48CBE265C3E54168C55A5EB8EDEEF4FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F6F8649FC3157EB254BCD774D1E4DC
            E8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
            9CC1D92382BC247EB6B1CFE0D5F0F6F9FCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFD1E1EB4591C01E83C262A1C8F3F6F9FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2CEDF
            4389B53D89B9B0CDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFE0EBF276A8C88EB7D0EFF4F8FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = btnRestoreWindowClick
        end
        object btn2: TSpeedButton
          Left = 744
          Top = 4
          Width = 21
          Height = 23
          Hint = 'Exportar Excel'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Lucida Sans Unicode'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00003C3C3CFF000000003C3C3CFF0000000000000000000000003C3C3CFF0000
            0000000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
            1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
            1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00003C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
            1E8000000000000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
            000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
            000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000}
          ParentFont = False
          OnClick = btn2Click
        end
        object edtBusqGlobal: TcxTextEdit
          Left = 110
          Top = 6
          TabOrder = 0
          OnKeyPress = edtBusqGlobalKeyPress
          Width = 265
        end
        object cxlblBusq: TcxLabel
          Left = 12
          Top = 9
          Caption = 'Texto a buscar'
        end
        object cxdbnvgtr1: TcxDBNavigator
          Left = 407
          Top = 6
          Width = 322
          Height = 23
          Buttons.CustomButtons = <>
          Buttons.Filter.Visible = False
          DataSource = dsTablaG
          TabOrder = 1
        end
      end
    end
    object tsFicha: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Ficha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
    end
  end
  object dsTablaG: TDataSource
    Left = 596
    Top = 119
  end
  object cxlclzr1: TcxLocalizer
    Active = True
    FileName = 
      'C:\DISCO DURO\proyectos\subocasana\facturacion\CXLOCALIZATION.in' +
      'i'
    StorageType = lstResource
    Left = 384
    Top = 240
  end
end
