inherited frmMtoPedWeb: TfrmMtoPedWeb
  Left = 5
  Top = 4
  Caption = 'Pedidos Web'
  ClientHeight = 530
  ClientWidth = 782
  ExplicitWidth = 798
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtonPage: TPanel
    Width = 680
    Height = 503
    ExplicitWidth = 688
    ExplicitHeight = 507
  end
  inherited pButtonRightBar: TPanel
    Left = 680
    Height = 503
    ExplicitLeft = 680
    ExplicitHeight = 503
    object btnPrint: TSpeedButton [0]
      Left = 3
      Top = 248
      Width = 96
      Height = 27
      Cursor = crHandPoint
      Caption = 'Imprimir Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Sans Unicode'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = btnPrintClick
    end
    object btnFotos: TSpeedButton [1]
      Left = 3
      Top = 280
      Width = 96
      Height = 27
      Cursor = crHandPoint
      Caption = 'Todas Fotos Web'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Sans Unicode'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = btnFotosClick
    end
    inherited pButtonGen: TPanel
      Top = 341
      TabOrder = 2
      ExplicitTop = 345
    end
    object btn1: TcxButton
      Left = 8
      Top = 176
      Width = 89
      Height = 65
      Caption = 'Crear Factura y Pedido a F'#225'brica'
      Kind = cxbkCommandLink
      LookAndFeel.Kind = lfFlat
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  inherited pcPantalla: TPageControl
    Width = 680
    Height = 503
    ActivePage = tsFicha
    ExplicitWidth = 688
    ExplicitHeight = 507
    inherited tsLista: TTabSheet
      inherited cxGrdPrincipal: TcxGrid
        Width = 680
        Height = 445
        ExplicitWidth = 680
        ExplicitHeight = 445
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object cxgrdbclmnGrdDBTabPrinidpedidoweb: TcxGridDBColumn
            DataBinding.FieldName = 'idpedidoweb'
            Width = 74
          end
          object cxgrdbclmnGrdDBTabPrinbasepedido: TcxGridDBColumn
            DataBinding.FieldName = 'basepedido'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 69
          end
          object cxgrdbclmnGrdDBTabPrinivapedido: TcxGridDBColumn
            DataBinding.FieldName = 'ivapedido'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 58
          end
          object cxgrdbclmnGrdDBTabPrintotalpedido: TcxGridDBColumn
            DataBinding.FieldName = 'totalpedido'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 69
          end
          object cxgrdbclmnGrdDBTabPrincosteenvio: TcxGridDBColumn
            DataBinding.FieldName = 'costeenvio'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 64
          end
          object cxgrdbclmnGrdDBTabPrinnombre: TcxGridDBColumn
            DataBinding.FieldName = 'nombre'
            Width = 49
          end
          object cxgrdbclmnGrdDBTabPrinapellidos: TcxGridDBColumn
            DataBinding.FieldName = 'apellidos'
            Width = 92
          end
          object cxgrdbclmnGrdDBTabPrinfacturacionnombrefiscal: TcxGridDBColumn
            DataBinding.FieldName = 'facturacionnombrefiscal'
            Width = 142
          end
          object cxgrdbclmnGrdDBTabPrinemail: TcxGridDBColumn
            DataBinding.FieldName = 'email'
            Width = 151
          end
          object cxgrdbclmnGrdDBTabPrinfacturacioncif: TcxGridDBColumn
            DataBinding.FieldName = 'facturacioncif'
            Width = 80
          end
          object cxgrdbclmnGrdDBTabPrinfacturaciondireccion1: TcxGridDBColumn
            DataBinding.FieldName = 'facturaciondireccion1'
            Width = 136
          end
          object cxgrdbclmnGrdDBTabPrinfacturaciondireccion2: TcxGridDBColumn
            DataBinding.FieldName = 'facturaciondireccion2'
            Width = 124
          end
          object cxgrdbclmnGrdDBTabPrinfacturacionciudad: TcxGridDBColumn
            DataBinding.FieldName = 'facturacionciudad'
            Width = 103
          end
          object cxgrdbclmnGrdDBTabPrinfacturacioncodigopostal: TcxGridDBColumn
            DataBinding.FieldName = 'facturacioncodigopostal'
            Width = 137
          end
          object cxgrdbclmnGrdDBTabPrinfacturacionprovincia: TcxGridDBColumn
            DataBinding.FieldName = 'facturacionprovincia'
            Width = 117
          end
          object cxgrdbclmnGrdDBTabPrinfacturacionpais: TcxGridDBColumn
            DataBinding.FieldName = 'facturacionpais'
            Width = 101
          end
          object cxgrdbclmnGrdDBTabPrinenvionombre: TcxGridDBColumn
            DataBinding.FieldName = 'envionombre'
            Width = 78
          end
          object cxgrdbclmnGrdDBTabPrinenvioapellidos: TcxGridDBColumn
            DataBinding.FieldName = 'envioapellidos'
            Width = 92
          end
          object cxgrdbclmnGrdDBTabPrinenviodireccion1: TcxGridDBColumn
            DataBinding.FieldName = 'enviodireccion1'
            Width = 92
          end
          object cxgrdbclmnGrdDBTabPrinenviodireccion2: TcxGridDBColumn
            DataBinding.FieldName = 'enviodireccion2'
            Width = 92
          end
          object cxgrdbclmnGrdDBTabPrinenviociudad: TcxGridDBColumn
            DataBinding.FieldName = 'enviociudad'
            Width = 71
          end
          object cxgrdbclmnGrdDBTabPrinenviocodigopostal: TcxGridDBColumn
            DataBinding.FieldName = 'enviocodigopostal'
            Width = 105
          end
          object cxgrdbclmnGrdDBTabPrinenvioprovincia: TcxGridDBColumn
            DataBinding.FieldName = 'envioprovincia'
            Width = 85
          end
          object cxgrdbclmnGrdDBTabPrinenviopais: TcxGridDBColumn
            DataBinding.FieldName = 'enviopais'
            Width = 57
          end
          object cxgrdbclmnGrdDBTabPrinmetododepago: TcxGridDBColumn
            DataBinding.FieldName = 'metododepago'
            Width = 130
          end
          object cxgrdbclmnGrdDBTabPrinmetododeenvio: TcxGridDBColumn
            DataBinding.FieldName = 'metododeenvio'
            Width = 203
          end
          object cxgrdbclmnGrdDBTabPrinNUMPED: TcxGridDBColumn
            DataBinding.FieldName = 'NUMPED'
            Width = 51
          end
          object cxgrdbclmnGrdDBTabPrinidmagento: TcxGridDBColumn
            DataBinding.FieldName = 'idmagento'
            Width = 64
          end
          object cxgrdbclmnGrdDBTabPrininstantemodif: TcxGridDBColumn
            DataBinding.FieldName = 'instantemodif'
          end
        end
      end
      inherited pnTopGrid: TPanel
        Width = 680
        ExplicitWidth = 680
      end
    end
    inherited tsFicha: TTabSheet
      object pnl1: TPanel
        Left = 0
        Top = 257
        Width = 672
        Height = 213
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 680
        ExplicitHeight = 217
        object cxpgcntrl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 670
          Height = 211
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxtbsht1
          Properties.CustomButtons.Buttons = <>
          ExplicitWidth = 678
          ExplicitHeight = 215
          ClientRectBottom = 207
          ClientRectLeft = 4
          ClientRectRight = 666
          ClientRectTop = 26
          object cxtbsht1: TcxTabSheet
            Caption = 'Lineas de Productos'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnl3: TPanel
              Left = 330
              Top = 0
              Width = 342
              Height = 187
              Align = alRight
              TabOrder = 1
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 340
                Height = 185
                Align = alClient
                TabOrder = 0
                object tvPartes: TcxGridDBTableView
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
                  DataController.DataSource = dmPedWeb.dsPedidosWebLineasPer
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
                  object tvcPartescxgrdbclmnGridDBTableView1clave: TcxGridDBColumn
                    DataBinding.FieldName = 'clave'
                    Width = 145
                  end
                  object tvcPartescxgrdbclmnGridDBTableView1valor: TcxGridDBColumn
                    DataBinding.FieldName = 'valor'
                    Width = 879
                  end
                  object tvcPartescxgrdbclmnGridDBTableView1descripcion: TcxGridDBColumn
                    DataBinding.FieldName = 'descripcion'
                    Width = 165
                  end
                  object tvcPartescxgrdbclmnGridDBTableView1parte: TcxGridDBColumn
                    DataBinding.FieldName = 'parte'
                    Width = 188
                  end
                  object tvcPartescxgrdbclmnGridDBTableView1idpedidoweb: TcxGridDBColumn
                    DataBinding.FieldName = 'idpedidoweb'
                    Width = 74
                  end
                  object tvcPartescxgrdbclmnGridDBTableView1numlinea: TcxGridDBColumn
                    DataBinding.FieldName = 'numlinea'
                  end
                  object tvcPartescxgrdbclmnGridDBTableView1instantemodif: TcxGridDBColumn
                    DataBinding.FieldName = 'instantemodif'
                  end
                end
                object cxgrdlvlPartes: TcxGridLevel
                  GridView = tvPartes
                end
              end
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 330
              Height = 187
              Align = alClient
              TabOrder = 0
              object cxGrid2: TcxGrid
                Left = 1
                Top = 1
                Width = 320
                Height = 185
                Align = alClient
                TabOrder = 0
                object tvLineas: TcxGridDBTableView
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
                  DataController.DataSource = dmPedWeb.dsPedidosWebLineas
                  DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  DataController.OnDataChanged = cxGridDBTableView2DataControllerDataChanged
                  OptionsBehavior.AlwaysShowEditor = True
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsBehavior.IncSearch = True
                  OptionsCustomize.ColumnHiding = True
                  OptionsData.Appending = True
                  OptionsData.Editing = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxgrdbclmnGridDBTableView2numlinea: TcxGridDBColumn
                    DataBinding.FieldName = 'numlinea'
                    Width = 57
                  end
                  object cxgrdbclmnGridDBTableView2identificador: TcxGridDBColumn
                    DataBinding.FieldName = 'identificador'
                    Width = 103
                  end
                  object tvcLineasdescripcion: TcxGridDBColumn
                    DataBinding.FieldName = 'descripcion'
                    Width = 251
                  end
                  object cxgrdbclmnGridDBTableView2unidades: TcxGridDBColumn
                    DataBinding.FieldName = 'unidades'
                    Width = 53
                  end
                  object cxgrdbclmnGridDBTableView2baselinea: TcxGridDBColumn
                    DataBinding.FieldName = 'baselinea'
                  end
                  object cxgrdbclmnGridDBTableView2ivalinea: TcxGridDBColumn
                    DataBinding.FieldName = 'ivalinea'
                  end
                  object cxgrdbclmnGridDBTableView2porcentajeivalinea: TcxGridDBColumn
                    DataBinding.FieldName = 'porcentajeivalinea'
                  end
                  object cxgrdbclmnGridDBTableView2precio: TcxGridDBColumn
                    DataBinding.FieldName = 'precio'
                  end
                  object cxgrdbclmnGridDBTableView2NUMFAB: TcxGridDBColumn
                    DataBinding.FieldName = 'NUMFAB'
                    Width = 86
                  end
                  object cxgrdbclmnGridDBTableView2instantemodif: TcxGridDBColumn
                    DataBinding.FieldName = 'instantemodif'
                  end
                end
                object cxgrdlvlLineas: TcxGridLevel
                  GridView = tvLineas
                end
              end
              object cxspltr1: TcxSplitter
                Left = 322
                Top = 1
                Width = 8
                Height = 185
                HotZoneClassName = 'TcxSimpleStyle'
                AlignSplitter = salRight
                Control = pnl3
              end
            end
          end
          object cxtbsht2: TcxTabSheet
            Caption = 'Totales'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitWidth = 670
            ExplicitHeight = 185
            object cxlbl6: TcxLabel
              Left = 13
              Top = 20
              Caption = 'Base Imponible'
            end
            object cxlbl7: TcxLabel
              Left = 40
              Top = 52
              Caption = 'Iva Pedido'
            end
            object cxdbcrncydt1: TcxDBCurrencyEdit
              Left = 112
              Top = 16
              DataBinding.DataField = 'basepedido'
              DataBinding.DataSource = dsTablaG
              TabOrder = 0
              Width = 97
            end
            object cxdbcrncydt2: TcxDBCurrencyEdit
              Left = 112
              Top = 48
              DataBinding.DataField = 'ivapedido'
              DataBinding.DataSource = dsTablaG
              TabOrder = 4
              Width = 97
            end
            object cxdbcrncydt3: TcxDBCurrencyEdit
              Left = 112
              Top = 112
              DataBinding.DataField = 'totalpedido'
              DataBinding.DataSource = dsTablaG
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Lucida Sans Unicode'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 8
              Width = 97
            end
            object cxlbl1: TcxLabel
              Left = 28
              Top = 116
              Caption = 'Total Pedido'
            end
            object cxdbcrncydt4: TcxDBCurrencyEdit
              Left = 112
              Top = 80
              DataBinding.DataField = 'costeenvio'
              DataBinding.DataSource = dsTablaG
              TabOrder = 5
              Width = 97
            end
            object cxlbl2: TcxLabel
              Left = 31
              Top = 84
              Caption = 'Coste Env'#237'o'
            end
            object cxlbl5: TcxLabel
              Left = 234
              Top = 20
              Caption = 'Forma de Pago'
            end
            object DBE1: TcxDBTextEdit
              Left = 328
              Top = 16
              DataBinding.DataField = 'metododepago'
              DataBinding.DataSource = dsTablaG
              Enabled = False
              TabOrder = 1
              Width = 153
            end
          end
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 672
        Height = 257
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 680
        object cxpgcntrl2: TcxPageControl
          Left = 1
          Top = 1
          Width = 670
          Height = 255
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxtbsht4
          Properties.CustomButtons.Buttons = <>
          ExplicitWidth = 678
          ClientRectBottom = 251
          ClientRectLeft = 4
          ClientRectRight = 666
          ClientRectTop = 26
          object cxtbsht4: TcxTabSheet
            Caption = 'Datos Pedido'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxdbtxtdt20: TcxDBTextEdit
              Left = 120
              Top = 20
              DataBinding.DataField = 'idpedidoweb'
              DataBinding.DataSource = dsTablaG
              Enabled = False
              TabOrder = 1
              Width = 121
            end
            object cxlbl18: TcxLabel
              Left = 18
              Top = 24
              Caption = 'Nro Pedido Web'
            end
            object cxlbl19: TcxLabel
              Left = 32
              Top = 60
              Caption = 'Fecha Pedido'
            end
            object cxdbdtdt2: TcxDBDateEdit
              Left = 120
              Top = 56
              DataBinding.DataField = 'instantemodif'
              DataBinding.DataSource = dsTablaG
              Enabled = False
              TabOrder = 5
              Width = 145
            end
            object cxdbm1: TcxDBMemo
              Left = 376
              Top = 24
              DataBinding.DataField = 'observaciones'
              DataBinding.DataSource = dsTablaG
              TabOrder = 4
              Height = 129
              Width = 161
            end
            object cxlbl3: TcxLabel
              Left = 282
              Top = 24
              Caption = 'Observaciones'
            end
            object cxdbtxtdt1: TcxDBTextEdit
              Left = 120
              Top = 92
              DataBinding.DataField = 'NUMPED'
              DataBinding.DataSource = dsTablaG
              Enabled = False
              TabOrder = 7
              Width = 121
            end
            object cxlbl4: TcxLabel
              Left = 34
              Top = 96
              Caption = 'Factura GSIT'
            end
            object cxlbl34: TcxLabel
              Left = 11
              Top = 132
              Caption = 'idClienteMagento'
            end
            object cxdbtxtdt38: TcxDBTextEdit
              Left = 120
              Top = 128
              DataBinding.DataField = 'facturacioncif'
              DataBinding.DataSource = dsTablaG
              TabOrder = 9
              Width = 177
            end
            object cxlbl8: TcxLabel
              Left = 10
              Top = 160
              Caption = 
                '* Es necesario crear un pedido a f'#225'brica por cada zapato del ped' +
                'ido. Estar'#225' creado cuando tenga su NUMFAB.'
            end
            object DBimg1: TcxDBImage
              Left = 600
              Top = 16
              DataBinding.DataField = 'imagen'
              DataBinding.DataSource = dmPedWeb.dsPedidosWebLineas
              Properties.GraphicClassName = 'TdxSmartImage'
              TabOrder = 0
              Transparent = True
              Height = 185
              Width = 273
            end
            object btnGetImagen: TcxButton
              Left = 800
              Top = 152
              Width = 27
              Height = 25
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000505051517171763272727A7343434DC3B3B3BFB343434DC2727
                27A7171717630505051500000000000000000000000000000000000000000000
                000010101043292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
                3CFF3C3C3CFF292929B010101043000000000000000000000000000000001010
                10432F2F2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
                3CFF3C3C3CFF3C3C3CFF2F2F2FC9101010430000000000000000050505152929
                29B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C
                3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929B00505051500000000171717633C3C
                3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000001E1E1E7E3C3C
                3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1717176300000000272727A73C3C
                3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000001E1E
                1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF272727A700000000343434DC3C3C
                3CFF3C3C3CFF3C3C3CFF1E1E1E81000000002D2D2DC1000000002D2D2DBF0000
                00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF343434DC000000003B3B3BFB3C3C
                3CFF3C3C3CFF3C3C3CFF000000002D2D2DC13C3C3CFF000000003C3C3CFF2D2D
                2DBF000000003C3C3CFF3C3C3CFF3C3C3CFF3B3B3BFB00000000343434DC3C3C
                3CFF3C3C3CFF3C3C3CFF2D2D2DC13C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
                3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF343434DC00000000272727A73C3C
                3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
                3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF272727A700000000171717633C3C
                3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
                3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1717176300000000050505152929
                29B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
                3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929B00505051500000000000000001010
                10432F2F2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
                3CFF3C3C3CFF3C3C3CFF2F2F2FC9101010430000000000000000000000000000
                000010101043292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
                3CFF3C3C3CFF292929B010101043000000000000000000000000000000000000
                0000000000000505051517171763272727A7343434DC3B3B3BFB343434DC2727
                27A7171717630505051500000000000000000000000000000000}
              PaintStyle = bpsGlyph
              SpeedButtonOptions.Flat = True
              TabOrder = 11
              OnClick = btnGetImagenClick
            end
          end
          object cxtbsht5: TcxTabSheet
            Caption = 'Datos Env'#237'o'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitWidth = 670
            ExplicitHeight = 229
            object cxlbl20: TcxLabel
              Left = 19
              Top = 84
              Caption = 'Direcci'#243'n'
            end
            object cxdbtxtdt21: TcxDBTextEdit
              Left = 88
              Top = 80
              DataBinding.DataField = 'enviodireccion1'
              DataBinding.DataSource = dsTablaG
              TabOrder = 9
              Width = 241
            end
            object cxdbtxtdt22: TcxDBTextEdit
              Left = 384
              Top = 16
              DataBinding.DataField = 'enviocodigopostal'
              DataBinding.DataSource = dsTablaG
              TabOrder = 1
              Width = 57
            end
            object cxlbl21: TcxLabel
              Left = 315
              Top = 20
              Caption = 'Poblaci'#243'n'
            end
            object cxdbtxtdt23: TcxDBTextEdit
              Left = 464
              Top = 16
              DataBinding.DataField = 'enviociudad'
              DataBinding.DataSource = dsTablaG
              TabOrder = 2
              Width = 161
            end
            object cxdbtxtdt24: TcxDBTextEdit
              Left = 384
              Top = 48
              DataBinding.DataField = 'envioprovincia'
              DataBinding.DataSource = dsTablaG
              TabOrder = 5
              Width = 241
            end
            object cxlbl22: TcxLabel
              Left = 318
              Top = 52
              Caption = 'Provincia'
            end
            object cxlbl23: TcxLabel
              Left = 346
              Top = 84
              Caption = 'Pa'#237's'
            end
            object cxdbtxtdt25: TcxDBTextEdit
              Left = 384
              Top = 80
              DataBinding.DataField = 'enviopais'
              DataBinding.DataSource = dsTablaG
              TabOrder = 10
              Width = 241
            end
            object cxdbtxtdt26: TcxDBTextEdit
              Left = 88
              Top = 112
              DataBinding.DataField = 'enviodireccion2'
              DataBinding.DataSource = dsTablaG
              TabOrder = 13
              Width = 241
            end
            object cxlbl24: TcxLabel
              Left = 12
              Top = 116
              Caption = 'Direcci'#243'n2'
            end
            object cxdbtxtdt27: TcxDBTextEdit
              Left = 88
              Top = 16
              DataBinding.DataField = 'envionombre'
              DataBinding.DataSource = dsTablaG
              TabOrder = 0
              Width = 193
            end
            object cxlbl25: TcxLabel
              Left = 27
              Top = 20
              Caption = 'Nombre'
            end
            object cxdbtxtdt28: TcxDBTextEdit
              Left = 88
              Top = 48
              DataBinding.DataField = 'envioapellidos'
              DataBinding.DataSource = dsTablaG
              TabOrder = 4
              Width = 193
            end
            object cxlbl26: TcxLabel
              Left = 20
              Top = 52
              Caption = 'Apellidos'
            end
            object cxgrpbx2: TcxGroupBox
              Left = 352
              Top = 112
              Caption = 'Forma Env'#237'o'
              TabOrder = 14
              Height = 49
              Width = 289
              object cxdbtxtdt29: TcxDBTextEdit
                Left = 16
                Top = 19
                DataBinding.DataField = 'metododeenvio'
                DataBinding.DataSource = dsTablaG
                TabOrder = 0
                Width = 241
              end
            end
          end
          object cxtbsht6: TcxTabSheet
            Caption = 'Datos Fiscales'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitWidth = 670
            ExplicitHeight = 229
            object cxlbl27: TcxLabel
              Left = 243
              Top = 28
              Caption = 'Direcci'#243'n'
            end
            object cxdbtxtdt30: TcxDBTextEdit
              Left = 312
              Top = 24
              DataBinding.DataField = 'facturaciondireccion1'
              DataBinding.DataSource = dsTablaG
              TabOrder = 1
              Width = 241
            end
            object cxdbtxtdt31: TcxDBTextEdit
              Left = 312
              Top = 88
              DataBinding.DataField = 'facturacioncodigopostal'
              DataBinding.DataSource = dsTablaG
              TabOrder = 6
              Width = 57
            end
            object cxlbl28: TcxLabel
              Left = 243
              Top = 92
              Caption = 'Poblaci'#243'n'
            end
            object cxdbtxtdt32: TcxDBTextEdit
              Left = 384
              Top = 88
              DataBinding.DataField = 'facturacionciudad'
              DataBinding.DataSource = dsTablaG
              TabOrder = 7
              Width = 169
            end
            object cxdbtxtdt33: TcxDBTextEdit
              Left = 312
              Top = 120
              DataBinding.DataField = 'facturacionprovincia'
              DataBinding.DataSource = dsTablaG
              TabOrder = 10
              Width = 241
            end
            object cxlbl29: TcxLabel
              Left = 246
              Top = 124
              Caption = 'Provincia'
            end
            object cxlbl30: TcxLabel
              Left = 274
              Top = 156
              Caption = 'Pa'#237's'
            end
            object cxdbtxtdt34: TcxDBTextEdit
              Left = 312
              Top = 152
              DataBinding.DataField = 'facturacionpais'
              DataBinding.DataSource = dsTablaG
              TabOrder = 13
              Width = 241
            end
            object cxdbtxtdt35: TcxDBTextEdit
              Left = 312
              Top = 56
              DataBinding.DataField = 'facturaciondireccion2'
              DataBinding.DataSource = dsTablaG
              TabOrder = 3
              Width = 241
            end
            object cxlbl31: TcxLabel
              Left = 236
              Top = 60
              Caption = 'Direcci'#243'n2'
            end
            object cxdbtxtdt36: TcxDBTextEdit
              Left = 11
              Top = 40
              DataBinding.DataField = 'nombre'
              DataBinding.DataSource = dsTablaG
              TabOrder = 2
              Width = 198
            end
            object cxlbl32: TcxLabel
              Left = 11
              Top = 20
              Caption = 'Raz'#243'n Social'
            end
            object cxlbl33: TcxLabel
              Left = 11
              Top = 68
              Caption = 'CIF'
            end
            object cxdbtxtdt37: TcxDBTextEdit
              Left = 11
              Top = 88
              DataBinding.DataField = 'facturacioncif'
              DataBinding.DataSource = dsTablaG
              TabOrder = 4
              Width = 177
            end
          end
        end
      end
    end
  end
  inherited sbStatus: TRzStatusBar
    Top = 503
    Width = 782
    ExplicitTop = 507
    ExplicitWidth = 790
    inherited spRecord: TRzStatusPane
      Left = 653
      ExplicitLeft = 653
    end
  end
end
