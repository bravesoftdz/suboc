object frmPrintCitas: TfrmPrintCitas
  Left = 500
  Top = 274
  HorzScrollBar.Visible = False
  BorderStyle = bsSingle
  Caption = 'Imprimir Citas'
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
  object dedStart: TcxDateEdit
    Left = 88
    Top = 28
    TabOrder = 1
    Width = 121
  end
  object cxlbl1: TcxLabel
    Left = 24
    Top = 32
    Caption = 'Desde'
  end
  object cxlbl2: TcxLabel
    Left = 24
    Top = 88
    Caption = 'Hasta'
  end
  object dedEnd: TcxDateEdit
    Left = 88
    Top = 84
    TabOrder = 3
    Width = 121
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
    ReportOptions.LastChange = 42509.442105821800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.          ')
    Left = 296
    Top = 96
    Datasets = <
      item
        DataSet = dmCitas.fxdstPrintCitas
        DataSetName = 'Citas'
      end
      item
        DataSet = dmCitas.fxdstPrintCitasPer
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
        Height = 153.960730000000000000
        Top = 18.897650000000000000
        Width = 774.803650000000000000
        DataSet = dmCitas.fxdstPrintCitas
        DataSetName = 'Citas'
        KeepChild = True
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxdbdtst1idpedidoweb: TfrxMemoView
          Left = 117.165430000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Citas."AppointmentId"]')
          ParentFont = False
        end
        object frxdbdtst1email: TfrxMemoView
          Left = 472.441250000000000000
          Top = 82.370130000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = dmCitas.fxdstPrintCitas
          DataSetName = 'Citas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Citas."email"]')
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
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'StartTime'
          DataSet = dmCitas.fxdstPrintCitas
          DataSetName = 'Citas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Citas."StartTime"]')
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
            'Fecha Cita')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Cita Web')
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
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Citas."nombre"]')
          ParentFont = False
        end
        object Pedidosapellidos: TfrxMemoView
          Left = 415.748300000000000000
          Top = 60.472480000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          DataSet = dmPedWeb.fxdstPedidoW
          DataSetName = 'Pedidos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Citas."apellidos"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 472.441250000000000000
          Top = 105.826840000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'telefonomovil'
          DataSet = dmCitas.fxdstPrintCitas
          DataSetName = 'Citas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Citas."telefonomovil"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 415.748300000000000000
          Top = 105.826840000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tfno')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 113.385900000000000000
          Top = 71.811070000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'EndTime'
          DataSet = dmCitas.fxdstPrintCitas
          DataSetName = 'Citas'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Citas."EndTime"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 7.559060000000000000
          Top = 71.811070000000000000
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
            'Fin Cita')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 34.015770000000000000
          Top = 117.165430000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 22.677180000000000000
        Top = 196.535560000000000000
        Width = 774.803650000000000000
        DataSet = dmCitas.fxdstPrintCitasPer
        DataSetName = 'Zapatos'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 204.094620000000000000
          Width = 113.385851180000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'frxdbdtst1parteOnBeforePrint'
          DataSet = dmCitas.fxdstPrintCitasPer
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
        object Memo9: TfrxMemoView
          Left = 472.441250000000000000
          Width = 328.819061180000000000
          Height = 18.897650000000000000
          DataField = 'descripcion'
          DataSet = dmCitas.fxdstPrintCitasPer
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
        object Memo10: TfrxMemoView
          Left = 94.488250000000000000
          Width = 105.826644720000000000
          Height = 18.897650000000000000
          DataField = 'clave'
          DataSet = dmCitas.fxdstPrintCitasPer
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
        object Memo11: TfrxMemoView
          Left = 332.598640000000000000
          Width = 128.503897950000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = dmCitas.fxdstPrintCitasPer
          DataSetName = 'Zapatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Zapatos."valor"]')
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
    Left = 240
    Top = 96
  end
end
