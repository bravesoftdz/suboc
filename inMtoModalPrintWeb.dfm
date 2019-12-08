object frmPrintPedWeb: TfrmPrintPedWeb
  Left = 500
  Top = 274
  HorzScrollBar.Visible = False
  BorderStyle = bsSingle
  Caption = 'Imprimir Pedido Web'
  ClientHeight = 173
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Lucida Sans Unicode'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object cxlbl1: TcxLabel
    Left = 32
    Top = 20
    Caption = 'Pedido N'#250'mero'
  end
  object edtNroPed: TcxTextEdit
    Left = 32
    Top = 40
    Enabled = False
    TabOrder = 2
    Width = 177
  end
  object pnl1: TPanel
    Left = 232
    Top = 0
    Width = 119
    Height = 173
    Align = alRight
    TabOrder = 0
    object btn4: TcxButton
      Left = 0
      Top = 0
      Width = 121
      Height = 25
      Caption = 'PDF'
      TabOrder = 0
      OnClick = btn4Click
    end
    object btn2: TcxButton
      Left = -2
      Top = 23
      Width = 123
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn1: TcxButton
      Left = 0
      Top = 46
      Width = 121
      Height = 25
      Caption = 'Vista Preliminar'
      TabOrder = 2
      OnClick = btn1Click
    end
    object btn3: TcxButton
      Left = 0
      Top = 149
      Width = 121
      Height = 25
      Caption = 'Salir'
      TabOrder = 3
      OnClick = btn3Click
    end
  end
  object frxrprt1: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42481.634675740700000000
    ReportOptions.LastChange = 42485.454830902800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Engine.CurY := Engine.CurY + Engine.FreeSpace - Footer1.Height' +
        ' - 10;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 32
    Top = 72
    Datasets = <
      item
        DataSet = dmPedWeb.fxdstPedidoWLinea
        DataSetName = 'Lineas'
      end
      item
        DataSet = dmPedWeb.fxdstPedidoW
        DataSetName = 'Pedidos'
      end
      item
        DataSet = dmPedWeb.fxdstPedidoWLineaPer
        DataSetName = 'Zapatos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      object mdCabecera: TfrxMasterData
        Height = 366.614410000000000000
        Top = 18.897650000000000000
        Width = 774.803650000000000000
        DataSet = dmPedWeb.fxdstPedidoW
        DataSetName = 'Pedidos'
        KeepFooter = True
        RowCount = 0
        StartNewPage = True
        object Memo7: TfrxMemoView
          Left = 422.842610000000000000
          Top = 344.653680000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Left = 10.338590000000000000
          Top = 342.937230000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
        end
        object Memo9: TfrxMemoView
          Left = 14.118120000000000000
          Top = 344.716760000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Num')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 370.393940000000000000
          Top = 162.519790000000000000
          Width = 343.937230000000000000
          Height = 120.944960000000000000
        end
        object Shape8: TfrxShapeView
          Left = 414.567100000000000000
          Top = 342.937230000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Shape5: TfrxShapeView
          Left = 483.378170000000000000
          Top = 342.937230000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
        end
        object Shape9: TfrxShapeView
          Left = 581.968770000000000000
          Top = 342.937230000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Memo8: TfrxMemoView
          Left = 487.228510000000000000
          Top = 344.653680000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Base Imponible')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 48.000000000000000000
          Top = 342.937230000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
        end
        object Shape2: TfrxShapeView
          Left = 7.559060000000000000
          Top = 162.519790000000000000
          Width = 351.496290000000000000
          Height = 120.944960000000000000
          GroupIndex = 1
        end
        object frxdbdtst1idpedidoweb: TfrxMemoView
          Left = 113.385900000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'idpedidoweb'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."idpedidoweb"]')
          ParentFont = False
        end
        object frxdbdtst1email: TfrxMemoView
          Left = 472.441250000000000000
          Top = 82.370130000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."email"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 415.748300000000000000
          Top = 82.370130000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Email Comprador')
          ParentFont = False
        end
        object frxdbdtst1fecha_compra: TfrxMemoView
          Left = 113.385900000000000000
          Top = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'fecha_compra'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."fecha_compra"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Fecha Compra')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Pedido Web')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 529.134200000000000000
          Top = 7.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'GlentShoes, SL')
          ParentFont = False
        end
        object frxdbdtst1nombre: TfrxMemoView
          Left = 415.748300000000000000
          Top = 37.795300000000000000
          Width = 510.236550000000000000
          Height = 18.897650000000000000
          DataField = 'nombre'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."nombre"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 58.897650000000000000
          Top = 344.653680000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Art'#195#173'culo')
          ParentFont = False
        end
        object Pedidosapellidos: TfrxMemoView
          Left = 415.748300000000000000
          Top = 60.472480000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          DataField = 'apellidos'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."apellidos"]')
          ParentFont = False
        end
        object Lineasfacturacionnombrefiscal: TfrxMemoView
          Left = 381.732530000000000000
          Top = 169.181200000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          GroupIndex = 2
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."facturacionnombrefiscal"]')
          ParentFont = False
        end
        object Lineasfacturacioncif: TfrxMemoView
          Left = 612.283860000000000000
          Top = 169.181200000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          GroupIndex = 2
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."facturacioncif"]')
          ParentFont = False
        end
        object Lineasfacturaciondireccion1: TfrxMemoView
          Left = 381.732530000000000000
          Top = 191.858380000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          GroupIndex = 2
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."facturaciondireccion1"]')
          ParentFont = False
        end
        object Lineasfacturaciondireccion2: TfrxMemoView
          Left = 381.732530000000000000
          Top = 214.535560000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          GroupIndex = 2
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."facturaciondireccion2"]')
          ParentFont = False
        end
        object Lineasfacturacioncodigopostal: TfrxMemoView
          Left = 381.732530000000000000
          Top = 237.212740000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          GroupIndex = 2
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."facturacioncodigopostal"]')
          ParentFont = False
        end
        object Lineasfacturacionciudad: TfrxMemoView
          Left = 498.897960000000000000
          Top = 237.212740000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          GroupIndex = 2
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."facturacionciudad"]')
          ParentFont = False
        end
        object Lineasfacturacionprovincia: TfrxMemoView
          Left = 381.732530000000000000
          Top = 259.889920000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          GroupIndex = 2
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."facturacionprovincia"]')
          ParentFont = False
        end
        object Lineasfacturacionpais: TfrxMemoView
          Left = 593.386210000000000000
          Top = 259.889920000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          GroupIndex = 2
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."facturacionpais"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 393.071120000000000000
          Top = 127.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Facturar a:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 18.897650000000000000
          Top = 165.401670000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          DataField = 'envionombre'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."envionombre"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 18.897650000000000000
          Top = 188.078850000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          DataField = 'enviodireccion1'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."enviodireccion1"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 18.897650000000000000
          Top = 210.756030000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          DataField = 'enviodireccion2'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."enviodireccion2"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 18.897650000000000000
          Top = 233.433210000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          DataField = 'enviocodigopostal'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."enviocodigopostal"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 136.063080000000000000
          Top = 233.433210000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          DataField = 'enviociudad'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."enviociudad"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 18.897650000000000000
          Top = 256.110390000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          DataField = 'envioprovincia'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."envioprovincia"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 230.551330000000000000
          Top = 256.110390000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          DataField = 'enviopais'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."enviopais"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 7.559060000000000000
          Top = 127.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Enviar a:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 587.598640000000000000
          Top = 344.653680000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'IVA')
          ParentFont = False
        end
        object Shape10: TfrxShapeView
          Left = 650.213050000000000000
          Top = 343.157700000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
        end
        object Memo24: TfrxMemoView
          Left = 655.842920000000000000
          Top = 344.874150000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Pedidosmetododeenvio: TfrxMemoView
          Left = 113.385900000000000000
          Top = 79.370130000000000000
          Width = 188.976255910000000000
          Height = 18.897650000000000000
          DataField = 'metododeenvio'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."metododeenvio"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 7.559060000000000000
          Top = 79.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Forma Env'#195#173'o')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Left = 150.315090000000000000
          Top = 342.937230000000000000
          Width = 264.567100000000000000
          Height = 22.677180000000000000
        end
        object Memo27: TfrxMemoView
          Left = 155.094620000000000000
          Top = 344.653680000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Descripci'#195#179'n')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 34.015757800000000000
        Top = 408.189240000000000000
        Width = 774.803650000000000000
        DataSet = dmPedWeb.fxdstPedidoWLinea
        DataSetName = 'Lineas'
        RowCount = 0
        object frxdbdtst1identificador: TfrxMemoView
          Left = 51.000000000000000000
          Width = 98.267743390000000000
          Height = 26.456710000000000000
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Lineas."identificador"]')
          ParentFont = False
        end
        object frxdbdtst1unidades: TfrxMemoView
          Left = 415.417440000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Lineas."unidades"]')
          ParentFont = False
        end
        object frxdbdtst1precio: TfrxMemoView
          Left = 487.228510000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n '#8364
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Lineas."baselinea"]')
          ParentFont = False
        end
        object frxdbdtst1numlinea: TfrxMemoView
          Left = 13.118120000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'numlinea'
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            '[Lineas."numlinea"]')
          ParentFont = False
        end
        object Lineasivalinea: TfrxMemoView
          Left = 585.496290000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'ivalinea'
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n '#8364
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Lineas."ivalinea"]')
          ParentFont = False
        end
        object Abs: TfrxMemoView
          Left = 649.213050000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n '#8364
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<Lineas."precio">*<Lineas."unidades">)]')
          ParentFont = False
        end
        object Lineasdescripcion: TfrxMemoView
          Left = 154.094620000000000000
          Width = 257.007869130000000000
          Height = 34.015770000000000000
          DataField = 'descripcion'
          DataSet = dmPedWeb.fxdstPedidoWLinea
          DataSetName = 'Lineas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Lineas."descripcion"]')
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 627.401980000000000000
        Width = 774.803650000000000000
        DataSet = dmPedWeb.fxdstPedidoWLineaPer
        DataSetName = 'Zapatos'
        RowCount = 0
        object frxdbdtst1parte: TfrxMemoView
          Left = 196.535560000000000000
          Top = 2.779530000000000000
          Width = 181.417391180000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'frxdbdtst1parteOnBeforePrint'
          DataSet = dmPedWeb.fxdstPedidoWLineaPer
          DataSetName = 'Zapatos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Zapatos."parte"] ')
          ParentFont = False
        end
        object frxdbdtst1descripcion: TfrxMemoView
          Left = 396.850650000000000000
          Top = 2.779530000000000000
          Width = 328.819061180000000000
          Height = 18.897650000000000000
          DataField = 'descripcion'
          DataSet = dmPedWeb.fxdstPedidoWLineaPer
          DataSetName = 'Zapatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Zapatos."descripcion"]')
          ParentFont = False
        end
        object Zapatosclave: TfrxMemoView
          Left = 18.897650000000000000
          Top = 2.779530000000000000
          Width = 151.181004720000000000
          Height = 18.897650000000000000
          DataField = 'clave'
          DataSet = dmPedWeb.fxdstPedidoWLineaPer
          DataSetName = 'Zapatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Zapatos."clave"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 139.842610000000000000
        Top = 464.882190000000000000
        Width = 774.803650000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        KeepChild = True
        object Shape1: TfrxShapeView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 706.772110000000000000
          Height = 128.504020000000000000
        end
        object Memo18: TfrxMemoView
          Left = 510.236550000000000000
          Top = 17.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Base Imponible')
          ParentFont = False
        end
        object Pedidoscosteenvio: TfrxMemoView
          Left = 634.961040000000000000
          Top = 44.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'costeenvio'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n '#8364
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Pedidos."costeenvio"]')
          ParentFont = False
        end
        object Pedidosbasepedido: TfrxMemoView
          Left = 634.961040000000000000
          Top = 17.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'basepedido'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n '#8364
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Pedidos."basepedido"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 510.236550000000000000
          Top = 40.456710000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Coste Env'#195#173'o')
          ParentFont = False
        end
        object Pedidosivapedido: TfrxMemoView
          Left = 634.961040000000000000
          Top = 66.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ivapedido'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n '#8364
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Pedidos."ivapedido"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 510.236550000000000000
          Top = 66.913420000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'IVA')
          ParentFont = False
        end
        object Pedidostotalpedido: TfrxMemoView
          Left = 634.961040000000000000
          Top = 93.370130000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'totalpedido'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n '#8364
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[Pedidos."totalpedido"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 510.236550000000000000
          Top = 93.370130000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total Pedido')
          ParentFont = False
        end
        object Pedidosobservaciones: TfrxMemoView
          Left = 41.574830000000000000
          Top = 44.236240000000000000
          Width = 408.189240000000000000
          Height = 34.015770000000000000
          DataField = 'observaciones'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Pedidos."observaciones"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 41.574830000000000000
          Top = 17.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Observaciones')
          ParentFont = False
        end
        object Pedidosmetododepago: TfrxMemoView
          Left = 158.740260000000000000
          Top = 94.488250000000000000
          Width = 291.023565910000000000
          Height = 18.897650000000000000
          DataField = 'metododepago'
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Pedidos."metododepago"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 41.574830000000000000
          Top = 94.488250000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Forma de Pago')
          ParentFont = False
        end
      end
    end
  end
  object frxpdfPedWeb: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 72
    Top = 72
  end
end
