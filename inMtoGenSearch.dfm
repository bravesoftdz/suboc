object frmMtoSearch: TfrmMtoSearch
  Left = 526
  Top = 162
  Caption = 'B'#250'squeda'
  ClientHeight = 442
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = prcfrmMtoSearchFormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxpgcntrl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 503
    Height = 442
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = ts1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 438
    ClientRectLeft = 4
    ClientRectRight = 499
    ClientRectTop = 25
    object ts1: TcxTabSheet
      Caption = 'B'#250'squeda'
      ImageIndex = 0
      object pnlCliTopPrin: TPanel
        Left = 0
        Top = 0
        Width = 495
        Height = 41
        Align = alTop
        Caption = 'pnlCliTopPrin'
        TabOrder = 0
        object lbl1: TLabel
          Left = 36
          Top = 15
          Width = 91
          Height = 14
          Caption = 'B'#250'squeda Global'
        end
        object edtBusqGlobal: TcxTextEdit
          Left = 140
          Top = 11
          Hint = 'Pulse intro para ejecutar la b'#250'squeda'
          TabOrder = 0
          OnKeyPress = edtBusqGlobalKeyPress
          Width = 213
        end
      end
      object pnlCliPrin: TPanel
        Left = 0
        Top = 41
        Width = 495
        Height = 372
        Align = alClient
        Caption = 'pnlCliPrin'
        TabOrder = 1
        object pnl3: TPanel
          Left = 1
          Top = 330
          Width = 493
          Height = 41
          Align = alBottom
          Alignment = taLeftJustify
          TabOrder = 1
          object btn3: TcxButton
            Left = 312
            Top = 8
            Width = 177
            Height = 25
            Caption = '&Aceptar'
            TabOrder = 1
          end
          object pnl5: TPanel
            Left = 1
            Top = -1
            Width = 491
            Height = 41
            Align = alBottom
            Alignment = taLeftJustify
            TabOrder = 0
            object btnAceptar: TcxButton
              Left = 311
              Top = 7
              Width = 177
              Height = 25
              Caption = '&Aceptar'
              TabOrder = 0
              OnClick = btnAceptarClick
            end
            object btnCancelar: TcxButton
              Left = 32
              Top = 8
              Width = 177
              Height = 25
              Caption = '&Cancelar'
              TabOrder = 1
              OnClick = btnCancelarClick
            end
          end
        end
        object pnl4: TPanel
          Left = 1
          Top = 1
          Width = 493
          Height = 329
          Align = alClient
          Alignment = taLeftJustify
          TabOrder = 0
          object cxgrdGrdPrincipal: TcxGrid
            Left = 1
            Top = 1
            Width = 491
            Height = 327
            Align = alClient
            TabOrder = 0
            ExplicitTop = 2
            object tvGrdDBTabPrin: TcxGridDBTableView
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
              OnCellDblClick = tvGrdDBTabPrinCellDblClick
              DataController.DataSource = dsData
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
            object lvGrdLvPrin: TcxGridLevel
              GridView = tvGrdDBTabPrin
            end
          end
        end
      end
    end
    object ts2: TcxTabSheet
      Caption = 'Consulta SQL'
      ImageIndex = 1
      object pnl1: TPanel
        Left = 0
        Top = 372
        Width = 495
        Height = 41
        Align = alBottom
        TabOrder = 1
        object btn1: TcxButton
          Left = 384
          Top = 8
          Width = 107
          Height = 25
          Caption = '&Ejecutar Consulta'
          TabOrder = 1
        end
        object btn2: TcxButton
          Left = 8
          Top = 8
          Width = 177
          Height = 25
          Caption = '&ReCargar consulta por defecto'
          TabOrder = 0
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 495
        Height = 372
        Align = alClient
        TabOrder = 0
        object cxRichEdit1: TcxRichEdit
          Left = 1
          Top = 1
          Align = alClient
          Properties.PlainText = True
          Properties.WantTabs = True
          Lines.Strings = (
            '')
          TabOrder = 0
          Height = 370
          Width = 493
        end
      end
    end
  end
  object dsData: TDataSource
    Left = 136
    Top = 136
  end
  object cxlclzr1: TcxLocalizer
    StorageType = lstResource
    Left = 384
    Top = 240
  end
end
