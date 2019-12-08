inherited frmMtoFac: TfrmMtoFac
  Top = 0
  Caption = 'Facturas'
  ClientHeight = 760
  ClientWidth = 1071
  ExplicitWidth = 1087
  ExplicitHeight = 799
  PixelsPerInch = 120
  TextHeight = 15
  inherited pButtonPage: TPanel
    Width = 945
    Height = 760
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 945
    ExplicitHeight = 760
  end
  inherited pButtonRightBar: TPanel
    Left = 945
    Height = 760
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitLeft = 945
    ExplicitHeight = 760
    object btnRectificar: TSpeedButton [0]
      Left = 3
      Top = 312
      Width = 124
      Height = 34
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Dupl. '#243' Abonar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      OnClick = btnRectificarClick
    end
    object btnImprimir: TSpeedButton [1]
      Left = 3
      Top = 437
      Width = 124
      Height = 34
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      OnClick = btnImprimirClick
    end
    object btn4: TSpeedButton [2]
      Left = 3
      Top = 270
      Width = 124
      Height = 34
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Nueva Factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      OnClick = btn4Click
    end
    inherited pButtonGen: TPanel
      Top = 561
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Constraints.MinHeight = 100
      Constraints.MinWidth = 124
      ExplicitTop = 561
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
    Width = 945
    Height = 760
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 945
    ExplicitHeight = 760
    inherited tsLista: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 937
      ExplicitHeight = 727
      inherited cxGrdPrincipal: TcxGrid
        Width = 937
        Height = 691
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 937
        ExplicitHeight = 691
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object cxgrdbclmnGrdDBTabPrinNRO_FACTURA: TcxGridDBColumn
            Caption = 'Nro Factura'
            DataBinding.FieldName = 'NRO_FACTURA'
            Width = 97
          end
          object cxgrdbclmnGrdDBTabPrinSERIE_FACTURA: TcxGridDBColumn
            Caption = 'Serie'
            DataBinding.FieldName = 'SERIE_FACTURA'
            Width = 65
          end
          object cxgrdbclmnGrdDBTabPrinFECHA_FACTURA: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FECHA_FACTURA'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 104
          end
          object cxgrdbclmnGrdDBTabPrinAPELLIDOS: TcxGridDBColumn
            Caption = 'Apellidos'
            DataBinding.FieldName = 'APELLIDOS'
            Width = 130
          end
          object cxgrdbclmnGrdDBTabPrinNOMBRE: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NOMBRE'
            Width = 79
          end
          object cxgrdbclmnGrdDBTabPrinCODIGO_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'C'#243'digo Cliente'
            DataBinding.FieldName = 'CODIGO_CLIENTE_FACTURA'
            Width = 134
          end
          object cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'Raz'#243'n Social'
            DataBinding.FieldName = 'RAZONSOCIAL_CLIENTE_FACTURA'
            Width = 289
          end
          object cxgrdbclmnGrdDBTabPrinTOTAL_LIQUIDO_FACTURA: TcxGridDBColumn
            Caption = 'Total Liquido'
            DataBinding.FieldName = 'TOTAL_LIQUIDO_FACTURA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 90
          end
          object cxgrdbclmnGrdDBTabPrinNIF_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'Nif'
            DataBinding.FieldName = 'NIF_CLIENTE_FACTURA'
            Width = 134
          end
          object cxgrdbclmnGrdDBTabPrinMOVIL_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'M'#243'vil'
            DataBinding.FieldName = 'MOVIL_CLIENTE_FACTURA'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 150
          end
          object cxgrdbclmnGrdDBTabPrinEMAIL_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'EMAIL_CLIENTE_FACTURA'
            Width = 146
          end
          object cxgrdbclmnGrdDBTabPrinDIRECCION1_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'Direcci'#243'n 1'
            DataBinding.FieldName = 'DIRECCION1_CLIENTE_FACTURA'
            Width = 181
          end
          object cxgrdbclmnGrdDBTabPrinDIRECCION2_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'Direcci'#243'n 2'
            DataBinding.FieldName = 'DIRECCION2_CLIENTE_FACTURA'
            Width = 181
          end
          object cxgrdbclmnGrdDBTabPrinPOBLACION_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'Poblaci'#243'n'
            DataBinding.FieldName = 'POBLACION_CLIENTE_FACTURA'
            Width = 177
          end
          object cxgrdbclmnGrdDBTabPrinPROVINCIA_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'Provincia'
            DataBinding.FieldName = 'PROVINCIA_CLIENTE_FACTURA'
            Width = 173
          end
          object cxgrdbclmnGrdDBTabPrinCPOSTAL_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'C'#243'digo Postal'
            DataBinding.FieldName = 'CPOSTAL_CLIENTE_FACTURA'
          end
          object cxgrdbclmnGrdDBTabPrinPAIS_CLIENTE_FACTURA: TcxGridDBColumn
            Caption = 'Pais'
            DataBinding.FieldName = 'PAIS_CLIENTE_FACTURA'
            Width = 137
          end
          object cxgrdbclmnGrdDBTabPrinFORMA_PAGO_FACTURA: TcxGridDBColumn
            Caption = 'Forma Pago'
            DataBinding.FieldName = 'FORMA_PAGO_FACTURA'
          end
        end
      end
      inherited pnTopGrid: TPanel
        Width = 937
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 937
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
          Top = 2
          ExplicitTop = 2
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
      ExplicitWidth = 937
      ExplicitHeight = 727
      object pnl1: TPanel
        Left = 0
        Top = 324
        Width = 937
        Height = 403
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        object cxspl1: TcxSplitter
          Left = 1
          Top = 1
          Width = 935
          Height = 8
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salTop
          Control = pnl2
          ExplicitWidth = 8
        end
        object cxpgcntrlFacturacx: TcxPageControl
          Left = 1
          Top = 9
          Width = 935
          Height = 393
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = tsLineasFactura
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 389
          ClientRectLeft = 4
          ClientRectRight = 931
          ClientRectTop = 26
          object tsLineasFactura: TcxTabSheet
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Lineas de Factura'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxgrd5: TcxGrid
              Left = 0
              Top = 0
              Width = 927
              Height = 363
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              TabOrder = 0
              OnEnter = cxgrd5Enter
              object tv1: TcxGridDBTableView
                OnKeyDown = tv1KeyDown
                Navigator.Buttons.ConfirmDelete = True
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DataSource = dmFac.dsLinFac
                DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded, dcoInsertOnNewItemRowFocusing]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FixedDataRows.SeparatorColor = clBlack
                NewItemRow.Visible = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.DataRowFixing = True
                OptionsData.Appending = True
                OptionsSelection.InvertSelect = False
                OptionsView.NoDataToDisplayInfoText = '<No hay datos a mostrar>'
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                object cxgrdbclmntv1CODIGO_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'C'#243'digo Tratamiento'
                  DataBinding.FieldName = 'CODIGO_ARTICULO_LINEA'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesButtonClick
                  Properties.OnEditValueChanged = cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesEditValueChanged
                  Width = 134
                end
                object cxgrdbclmntv1DESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'Descripci'#243'n'
                  DataBinding.FieldName = 'DESCRIPCION_ARTICULO_LINEA'
                  Width = 140
                end
                object cxgrdbclmntv1ZONA: TcxGridDBColumn
                  Caption = 'Nro Pieza'
                  DataBinding.FieldName = 'ZONA'
                  Width = 77
                end
                object cxgrdbclmntv1ODONTOLOGO: TcxGridDBColumn
                  Caption = 'Odont'#243'logo'
                  DataBinding.FieldName = 'ODONTOLOGO'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxgrdbclmntv1ODONTOLOGOPropertiesButtonClick
                  Width = 84
                end
                object cxgrdbclmntv1PRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'Precio'
                  DataBinding.FieldName = 'PRECIOVENTA_ARTICULO_LINEA'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 72
                end
                object cxgrdbclmntv1CANTIDAD_LINEA: TcxGridDBColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'CANTIDAD_LINEA'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Width = 67
                end
                object cxgrdbclmntv1SUM_TOTAL_LINEA: TcxGridDBColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'SUM_TOTAL_LINEA'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                end
                object cxgrdbclmntv1LINEA_LINEA: TcxGridDBColumn
                  Caption = 'NroLinea'
                  DataBinding.FieldName = 'LINEA_LINEA'
                  Width = 57
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
                GridView = tv1
              end
            end
          end
          object ts5: TcxTabSheet
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Totales'
            ImageIndex = 2
            object cxlbl17: TcxLabel
              Left = 87
              Top = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Total a pagar'
            end
            object cxlbl18: TcxLabel
              Left = 37
              Top = 118
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Forma de Pago'
            end
            object cxDBCurrencyEdit3: TcxDBCurrencyEdit
              Left = 197
              Top = 59
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'TOTAL_LIQUIDO_FACTURA'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = True
              TabOrder = 0
              Width = 100
            end
            object cbbFORMAPAGO: TcxDBLookupComboBox
              Left = 138
              Top = 114
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'FORMA_PAGO_FACTURA'
              DataBinding.DataSource = dsTablaG
              Properties.KeyFieldNames = 'DESCRIPCION_FORMAPAGO'
              Properties.ListColumns = <
                item
                  FieldName = 'DESCRIPCION_FORMAPAGO'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dmFac.dsFormasPago
              TabOrder = 3
              OnKeyUp = cbbSerieFacturaKeyUp
              Width = 263
            end
            object btnGenerarRecibos: TcxButton
              Left = 429
              Top = 112
              Width = 140
              Height = 25
              Caption = 'Generar Recibo/s'
              TabOrder = 2
              OnClick = btnGenerarRecibosClick
            end
          end
          object ts8: TcxTabSheet
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Otros'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxlbl12: TcxLabel
              Left = 16
              Top = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Comentarios'
            end
            object cxdbm1: TcxDBMemo
              Left = 101
              Top = 20
              DataBinding.DataField = 'COMENTARIOS_FACTURA'
              DataBinding.DataSource = dsTablaG
              TabOrder = 1
              Height = 149
              Width = 662
            end
          end
          object cxtbsht1: TcxTabSheet
            Caption = 'Historia Dental'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxgrd1: TcxGrid
              Left = 0
              Top = 0
              Width = 927
              Height = 363
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
                DataController.DataSource = dmFac.dsHistoria
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FixedDataRows.SeparatorColor = clBlack
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsCustomize.ColumnGrouping = False
                OptionsSelection.InvertSelect = False
                OptionsView.NoDataToDisplayInfoText = '<No hay datos a mostrar>'
                OptionsView.GroupByBox = False
                object cxgrdbclmncxgrdbtblvw1FECHA: TcxGridDBColumn
                  Caption = 'Fecha'
                  DataBinding.FieldName = 'FECHA'
                end
                object cxgrdbclmncxgrdbtblvw1CODIGO_ARTICULO: TcxGridDBColumn
                  Caption = 'C'#243'digo Tratamiento'
                  DataBinding.FieldName = 'CODIGO_ARTICULO'
                end
                object cxgrdbclmncxgrdbtblvw1DESCRIPCION_ARTICULO: TcxGridDBColumn
                  Caption = 'Descripci'#243'n Tratamiento'
                  DataBinding.FieldName = 'DESCRIPCION_ARTICULO'
                  Width = 270
                end
                object cxgrdbclmncxgrdbtblvw1ZONA: TcxGridDBColumn
                  Caption = 'Nro Pieza'
                  DataBinding.FieldName = 'ZONA'
                  Width = 84
                end
                object cxgrdbclmncxgrdbtblvw1PRECIOVENTA_ARTICULO: TcxGridDBColumn
                  Caption = 'Precio'
                  DataBinding.FieldName = 'PRECIOVENTA_ARTICULO'
                end
                object cxgrdbclmncxgrdbtblvw1ODONTOLOGO: TcxGridDBColumn
                  Caption = 'Nro Odont'#243'logo'
                  DataBinding.FieldName = 'ODONTOLOGO'
                  Width = 112
                end
                object cxgrdbclmncxgrdbtblvw1DESCRIPCION_HISTORIA: TcxGridDBColumn
                  Caption = 'Descripci'#243'n Historia'
                  DataBinding.FieldName = 'DESCRIPCION_HISTORIA'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxgrdbclmncxgrdbtblvw1DESCRIPCION_HISTORIAPropertiesButtonClick
                  Width = 163
                end
              end
              object cxgrdbndtblvw1: TcxGridDBBandedTableView
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
                object cxgrdbndclmn1: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'PerId'
                  Width = 37
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxgrdbndclmn2: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'AppointmentId'
                  Width = 81
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxgrdbndclmn3: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Linea'
                  Width = 44
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxgrdbndclmn4: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'clave'
                  Width = 126
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxgrdbndclmn5: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'valor'
                  Width = 146
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxgrdbndclmn6: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'instantemodif'
                  Width = 137
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxgrdbndclmn7: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'descripcion'
                  Width = 178
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxgrdbndclmn8: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'parte'
                  Width = 209
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
              end
              object cxgrdlvl1: TcxGridLevel
                GridView = cxgrdbtblvw1
              end
            end
          end
          object cxtbsht2: TcxTabSheet
            Caption = 'Recibos'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnl4: TPanel
              Left = 0
              Top = 0
              Width = 927
              Height = 363
              Align = alClient
              Caption = #180
              TabOrder = 0
              object cxgrd2: TcxGrid
                Left = 1
                Top = 1
                Width = 815
                Height = 361
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                TabOrder = 0
                object cxgrdbtblvw2: TcxGridDBTableView
                  Navigator.Buttons.ConfirmDelete = True
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Visible = True
                  DataController.DataModeController.SmartRefresh = True
                  DataController.DataSource = dmFac.dsRecibos
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  FixedDataRows.SeparatorColor = clBlack
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsCustomize.ColumnGrouping = False
                  OptionsSelection.InvertSelect = False
                  OptionsView.NoDataToDisplayInfoText = '<No hay datos a mostrar>'
                  OptionsView.GroupByBox = False
                  object cxgrdbclmncxgrdbtblvw2NRO_PLAZO_RECIBO: TcxGridDBColumn
                    Caption = 'Nro Plazo'
                    DataBinding.FieldName = 'NRO_PLAZO_RECIBO'
                  end
                  object cxgrdbclmncxgrdbtblvw2FECHA_EXPEDICION: TcxGridDBColumn
                    Caption = 'Fecha Expedici'#243'n'
                    DataBinding.FieldName = 'FECHA_EXPEDICION'
                    Width = 126
                  end
                  object cxgrdbclmncxgrdbtblvw2FECHA_PAGO: TcxGridDBColumn
                    Caption = 'Fecha de Pago'
                    DataBinding.FieldName = 'FECHA_PAGO'
                    Width = 117
                  end
                  object cxgrdbclmncxgrdbtblvw2FECHA_VENCIMIENTO: TcxGridDBColumn
                    Caption = 'Fecha Vencimiento'
                    DataBinding.FieldName = 'FECHA_VENCIMIENTO'
                    Width = 130
                  end
                  object cxgrdbclmncxgrdbtblvw2ESTADO_RECIBO: TcxGridDBColumn
                    Caption = 'Estado del recibo'
                    DataBinding.FieldName = 'ESTADO_RECIBO'
                    Width = 120
                  end
                  object cxgrdbclmncxgrdbtblvw2FORMA_PAGO_DESCRIPCION_ORIGEN: TcxGridDBColumn
                    Caption = 'Descripcion Forma Pago Factura'
                    DataBinding.FieldName = 'FORMA_PAGO_DESCRIPCION_ORIGEN'
                    Width = 214
                  end
                  object cxgrdbclmncxgrdbtblvw2EUROS_RECIBO: TcxGridDBColumn
                    Caption = 'Euros Recibo'
                    DataBinding.FieldName = 'EUROS_RECIBO'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                  end
                  object cxgrdbclmncxgrdbtblvw2IBAN: TcxGridDBColumn
                    DataBinding.FieldName = 'IBAN'
                  end
                  object cxgrdbclmncxgrdbtblvw2LOCALIDAD_EXPEDICION: TcxGridDBColumn
                    Caption = 'Localidad Expedici'#243'n'
                    DataBinding.FieldName = 'LOCALIDAD_EXPEDICION'
                    Width = 142
                  end
                  object cxgrdbclmncxgrdbtblvw2CODIGO_CLIENTE: TcxGridDBColumn
                    Caption = 'C'#243'digo de Cliente'
                    DataBinding.FieldName = 'CODIGO_CLIENTE'
                    Width = 114
                  end
                  object cxgrdbclmncxgrdbtblvw2RAZONSOCIAL_CLIENTE: TcxGridDBColumn
                    Caption = 'Raz'#243'n Social'
                    DataBinding.FieldName = 'RAZONSOCIAL_CLIENTE'
                    Width = 167
                  end
                  object cxgrdbclmncxgrdbtblvw2DIRECCION1_CLIENTE: TcxGridDBColumn
                    Caption = 'Direcci'#243'n'
                    DataBinding.FieldName = 'DIRECCION1_CLIENTE'
                    Width = 171
                  end
                  object cxgrdbclmncxgrdbtblvw2CPOSTAL_CLIENTE: TcxGridDBColumn
                    Caption = 'C'#243'digo Postal'
                    DataBinding.FieldName = 'CPOSTAL_CLIENTE'
                  end
                  object cxgrdbclmncxgrdbtblvw2POBLACION_CLIENTE: TcxGridDBColumn
                    Caption = 'Poblaci'#243'n'
                    DataBinding.FieldName = 'POBLACION_CLIENTE'
                    Width = 63
                  end
                  object cxgrdbclmncxgrdbtblvw2PROVINCIA_CLIENTE: TcxGridDBColumn
                    Caption = 'Provincia'
                    DataBinding.FieldName = 'PROVINCIA_CLIENTE'
                    Width = 70
                  end
                  object cxgrdbclmncxgrdbtblvw2IMPORTE_LETRA: TcxGridDBColumn
                    Caption = 'Debe en letra'
                    DataBinding.FieldName = 'IMPORTE_LETRA'
                    Width = 402
                  end
                end
                object cxgrdbndtblvw2: TcxGridDBBandedTableView
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
                  object cxgrdbndclmn9: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PerId'
                    Width = 37
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmn10: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'AppointmentId'
                    Width = 81
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmn11: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'Linea'
                    Width = 44
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmn12: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'clave'
                    Width = 126
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmn13: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'valor'
                    Width = 146
                    Position.BandIndex = 0
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmn14: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'instantemodif'
                    Width = 137
                    Position.BandIndex = 0
                    Position.ColIndex = 7
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmn15: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'descripcion'
                    Width = 178
                    Position.BandIndex = 0
                    Position.ColIndex = 5
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmn16: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'parte'
                    Width = 209
                    Position.BandIndex = 0
                    Position.ColIndex = 6
                    Position.RowIndex = 0
                  end
                end
                object cxgrdlvl2: TcxGridLevel
                  GridView = cxgrdbtblvw2
                end
              end
              object pnl5: TPanel
                Left = 816
                Top = 1
                Width = 110
                Height = 361
                Align = alRight
                TabOrder = 1
                object btnReciboPagado: TcxButton
                  Left = 7
                  Top = 17
                  Width = 98
                  Height = 25
                  Caption = '&Pagado'
                  TabOrder = 0
                  OnClick = btnReciboPagadoClick
                end
                object btn5: TcxButton
                  Left = 7
                  Top = 176
                  Width = 98
                  Height = 25
                  Caption = 'Imprimir &Recibo'
                  TabOrder = 3
                  OnClick = btn5Click
                end
                object btnReciboDevuelto: TcxButton
                  Left = 7
                  Top = 77
                  Width = 98
                  Height = 25
                  Caption = '&Devuelto'
                  TabOrder = 2
                  OnClick = btnReciboDevueltoClick
                end
                object btnReciboEmitido: TcxButton
                  Left = 7
                  Top = 47
                  Width = 98
                  Height = 25
                  Caption = '&Emitido'
                  TabOrder = 1
                  OnClick = btnReciboEmitidoClick
                end
              end
            end
          end
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 937
        Height = 324
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 0
        object pnl3: TPanel
          Left = 1
          Top = 1
          Width = 768
          Height = 322
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          TabOrder = 0
          object cxpgcntrl1: TcxPageControl
            Left = 1
            Top = 1
            Width = 766
            Height = 320
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = cxtbshtCabecera
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 316
            ClientRectLeft = 4
            ClientRectRight = 762
            ClientRectTop = 26
            object cxtbshtCabecera: TcxTabSheet
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Cabecera Factura'
              ImageIndex = 0
              object cxlbl1: TcxLabel
                Left = 4
                Top = 17
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Nro Factura'
              end
              object cxlbl3: TcxLabel
                Left = 43
                Top = 101
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Fecha'
              end
              object cxdbdtdtFECHA_FACTURA: TcxDBDateEdit
                Left = 90
                Top = 100
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'FECHA_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.DateButtons = [btnClear, btnToday]
                TabOrder = 8
                OnKeyUp = cxdbdtdtFECHA_FACTURAKeyUp
                Width = 143
              end
              object cxlbl8: TcxLabel
                Left = 2
                Top = 56
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Serie Factura'
              end
              object cbbSerieFactura: TcxDBLookupComboBox
                Left = 90
                Top = 55
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'SERIE_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.KeyFieldNames = 'SERIE_CONTADOR'
                Properties.ListColumns = <
                  item
                    FieldName = 'SERIE_CONTADOR'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dmFac.dsSeries
                TabOrder = 4
                OnKeyUp = cbbSerieFacturaKeyUp
                Width = 104
              end
              object btnNroFactura: TcxDBButtonEdit
                Left = 90
                Top = 16
                DataBinding.DataField = 'NRO_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = btnNroFacturaPropertiesButtonClick
                TabOrder = 0
                Width = 104
              end
              object btnCODIGO_CLIENTE: TcxDBButtonEdit
                Left = 428
                Top = 16
                DataBinding.DataField = 'CODIGO_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = btnCODIGO_CLIENTEPropertiesButtonClick
                Properties.OnEditValueChanged = btnCODIGO_CLIENTEPropertiesEditValueChanged
                TabOrder = 1
                OnKeyUp = btnCODIGO_CLIENTEKeyUp
                Width = 104
              end
              object cxlbl4: TcxLabel
                Left = 310
                Top = 17
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'C'#243'digo Paciente'
              end
              object cxlbl2: TcxLabel
                Left = 330
                Top = 56
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Raz'#243'n Social'
              end
              object cxdblbl1: TcxDBLabel
                Left = 428
                Top = 56
                DataBinding.DataField = 'RAZONSOCIAL_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                Height = 21
                Width = 254
              end
              object cxdblblRAZONSOCIAL_CLIENTE_FACTURA: TcxDBLabel
                Left = 428
                Top = 101
                DataBinding.DataField = 'MOVIL_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                Height = 21
                Width = 254
              end
              object cxlbl5: TcxLabel
                Left = 319
                Top = 101
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Tel'#233'fono M'#243'vil'
              end
            end
            object cxtbshtDatosCliente: TcxTabSheet
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Datos Paciente - Cabecera Factura'
              ImageIndex = 1
              object cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA2: TcxDBTextEdit
                Left = 488
                Top = 120
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'RAZONSOCIAL_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 6
                OnEnter = cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA2Enter
                Width = 266
              end
              object cxgrpbx1: TcxGroupBox
                Left = 10
                Top = 59
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Facturaci'#243'n'
                TabOrder = 3
                Height = 198
                Width = 365
                object cxdbtxtdtDIRECCION1_CLIENTE_FACTURA1: TcxDBTextEdit
                  Left = 13
                  Top = 27
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'DIRECCION1_CLIENTE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 0
                  Width = 328
                end
                object cxdbtxtdtCPOSTAL_CLIENTE_FACTURA: TcxDBTextEdit
                  Left = 13
                  Top = 94
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'CPOSTAL_CLIENTE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 3
                  Width = 70
                end
                object cxdbtxtdtPOBLACION_CLIENTE_FACTURA: TcxDBTextEdit
                  Left = 92
                  Top = 93
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'POBLACION_CLIENTE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 2
                  Width = 247
                end
                object cxdbtxtdtPROVINCIA_CLIENTE_FACTURA: TcxDBTextEdit
                  Left = 113
                  Top = 126
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'PROVINCIA_CLIENTE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 4
                  Width = 228
                end
                object cxdbtxtdtPAIS_CLIENTE_FACTURA: TcxDBTextEdit
                  Left = 113
                  Top = 159
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'PAIS_CLIENTE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 6
                  Width = 228
                end
                object cxdbtxtdtDIRECCION1_CLIENTE_FACTURA: TcxDBTextEdit
                  Left = 13
                  Top = 60
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'DIRECCION2_CLIENTE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 1
                  Width = 328
                end
                object cxlbl6: TcxLabel
                  Left = 44
                  Top = 133
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Provincia'
                end
                object cxlbl13: TcxLabel
                  Left = 79
                  Top = 164
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Pa'#237's'
                end
              end
              object cxdbtxtdtNIF_CLIENTE_FACTURA1: TcxDBTextEdit
                Left = 488
                Top = 152
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'NIF_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 9
                Width = 266
              end
              object cxlbl9: TcxLabel
                Left = 413
                Top = 153
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'NIF Cliente'
              end
              object cxlbl10: TcxLabel
                Left = 400
                Top = 186
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'M'#243'vil Cliente'
              end
              object cxdbtxtdtMOVIL_CLIENTE_FACTURA: TcxDBTextEdit
                Left = 488
                Top = 185
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'MOVIL_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 11
                Width = 266
              end
              object cxlbl11: TcxLabel
                Left = 402
                Top = 219
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Email Cliente'
              end
              object cxdbtxtdtEMAIL_CLIENTE_FACTURA: TcxDBTextEdit
                Left = 488
                Top = 218
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'EMAIL_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 16
                Width = 266
              end
              object cxlbl14: TcxLabel
                Left = 400
                Top = 120
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Raz'#243'n Social'
              end
              object cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA: TcxDBTextEdit
                Left = 488
                Top = 21
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'RAZONSOCIAL_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 1
                Visible = False
                Width = 105
              end
              object cxlbl7: TcxLabel
                Left = 361
                Top = 16
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Nombre y apellidos'
                Visible = False
              end
              object cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA1: TcxDBTextEdit
                Left = 616
                Top = 21
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'RAZONSOCIAL_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 2
                Visible = False
                Width = 138
              end
              object btn1: TcxButton
                Left = 344
                Top = 2
                Width = 414
                Height = 47
                Caption = 'Crear o &Actualizar Paciente'
                TabOrder = 0
                WordWrap = True
                OnClick = btn1Click
              end
              object cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA3: TcxDBTextEdit
                Left = 552
                Top = 89
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'APELLIDOS'
                DataBinding.DataSource = dsTablaG
                TabOrder = 5
                Width = 202
              end
              object cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA4: TcxDBTextEdit
                Left = 409
                Top = 89
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'NOMBRE'
                DataBinding.DataSource = dsTablaG
                TabOrder = 4
                Width = 135
              end
              object cxlbl15: TcxLabel
                Left = 402
                Top = 67
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Nombre'
              end
              object cxlbl16: TcxLabel
                Left = 552
                Top = 67
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Apellidos'
              end
              object cxdblblCODIGO_CLIENTE: TcxDBLabel
                Left = 118
                Top = 18
                DataBinding.DataField = 'CODIGO_CLIENTE_FACTURA'
                DataBinding.DataSource = dsTablaG
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clBlack
                Style.Font.Height = -16
                Style.Font.Name = 'Lucida Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Height = 21
                Width = 94
              end
            end
          end
        end
        object img1: TcxImage
          Left = 797
          Top = 96
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000064
            00000064080600000070E2955400000006624B474400FF00FF00FFA0BDA79300
            00071349444154789CED9C7B8815551CC73FBA0FD38D406D174B8544A125CAB4
            D04DFF312310A9E861DA4328CAA4822028D3A428218A240AA28749104425A9BD
            3503238B50E9653E90DC762B72350DB5C8C4C766B6FDF19B5B737F3373EF99B9
            73F7FE56CF070EEEDC99DFEF9C39DF7B5EBF73AEE0F1783C1E4F36FA65B0E9C9
            BD142737A9EAB87FB54AE1C98617C4185E1063D4E7E023CB38743253D118EB5B
            8831BC20C6F08218C30B620C2F8831BC20C6F08218C30B620C2F8831BC20C6F0
            8218C30B620C2F8831BC20C6F08218238FFD1057FAFA5E7CAFECFBF816620C2F
            8831BC20C6E8CD31C4EFBD3BE05B8831BC20C6F08218C30B620C2F8831BC20C6
            F08218A33705B902D88DC4B4FA52DA054CAF427DE4862EB02BBB626CFB4AEA4A
            F19E59EB07C8E71754AE3E4E95686FD6FA01FC18628EDE8C6569F437A7A26F56
            0A5CF3A9498BF62DC4185E106378418CE105318617C4185E106378418C51CB75
            48B9797E6FAD034C45107C0B318617C4185E10639C8AB12CD3F816620C2F8831
            BC20C6A8E518524BEA8036E052E022A015381B381D19CB0E03BF00DF039B80CF
            80AF8013BD5FD4F264DD332E6757D15EB4232381C54865A7DD57DF0D3C098C28
            93476FBC472E19D65290666029D01D934FDAD40D2C018626E4F57A15DF2396BE
            26C86CE0B718FF95A603C08D31F9D501AF55E13D12C94B903CD35AA2E36103F0
            72099B83C01BC01DC004A415350676CDC044602EB02C7836C9CF4B814D987A60
            4DCAFAC98C35413A81C12AAF41FC5F213AB503B7030353947D103007E848F0F9
            61F04C98C1C04F29F2C88C25414E0093553E0DC48B7118B88FCA66960DC03CE0
            488CFFD5445BCAC40AF272C692204FC7E413D74D7500E7A7286B39C6222D53E7
            B324C73C9CC94B90BCFC86B939C6CFB7C89890372DC0E698FC6EA8425E25B12A
            4833D1D95407D511A3400BF083CA733FC953E2AA605590A5CAFE30F97653498C
            058EAABC5FC8EAAC9687ADF30CBF8F44BEA98DA1CFEE079E71B0BD92F233AE8D
            C8EA3E89F94804A0403730BA8C4D6E586C218B956D3B6EB3A901C0F198BC75BA
            B68C9F06A283FC1329DF2133D604A9231A9BBACDD1767C4CBE5904015960866D
            BAC8104DEF8BBF0F790B9819BA9E84742905FE04CE42D60AE5B8057835F8FB3D
            E0A384E7D6023F97F1D504FC8A448C0BB421516267FA62F8FD4B753D555DAFC6
            4D0C9001B9C0326065D64221938835C0ACD067534929486F6E50EDCEC9CF77EA
            FA6275FD690A5F1784FEDE1EFC3B806818C4954FD4F543C03A6011D23D5685AC
            7DFD74F2F99DE179CAEF76753F4DB8624F607314B80ED812F2B307780C11C895
            B632656F076690F3018E4AD70B797380E2F29CE968D71CB2390EFC437C25AEC3
            BD6B6F49F0A1D3466094A3CFB25813446F3A35967EFC3F2E5376DB8047906E66
            9BBA77AFA3CF01B809D283ACE8A738FA2DC9C922C855C0C7417A05382D742FBC
            9FD183ECADBBA005E9066E0296C794B370BF6251AC09A2E35779C5AE2ECFE057
            7759FB43F746036F13ADBFFD54D87D5913A49241BD14E72ABF634B3F0EC025CA
            666BCC330F20FB38E1E736100CF427C3B9AC76757DA1A3DD46E09B20C5ED8D87
            67733DC05E079F3AEFB8AEEE2960A1FA6C3232CBCB84B516B290E2F22C73B40B
            EF656CA138C0580FAC0FDDFFDAD1E70A559605259E7D473DBBC3318F08D60499
            4471790EE2B6B0BB5BD96D0A3EBB13693DE17BD738F86B020E29BB09259E1F05
            1C53CF675A3C5A13A48EE8FF3234C7C1AE3FF001D1F7D1E959C772CC55763B29
            3F24E816B5C831AF22AC090272A2305CA60EA2070EE268001E067E27FA5E7B91
            D6E2B2AA6E047E54F68F3BD8CD5636EB1C6C2258146404D179FEBC14F6F5C80C
            6906B227DE86B43C571E54791F03863BD8E9999C9EA0386151108017292ED711
            8A8387D5623CD12DDCE71C6D0B87BB0BE950960258156428D1B85627B258AB16
            C3887655FB80218EF66728DB83590A61551090F5842EDF66AA23CA308AA3C385
            34B39491A255D9669AFA5A1604E4ACAD2E63276E2B6D57C6116D193DC0F329FD
            E8415DEFA738615D9006E4ACAD2EE711E47488CBEC2B89466400D763460FB08A
            F43BB07ADAFB6896425917046461B89AF87545277220A12985BF26649DB133C1
            E72AD2EF328E213A331C97D207C414C62AF544675E7A46B31C596BB421E34C63
            905A82CFEE0A9ED12B70DD4D65399BF0AEF2935BE8C44A7A93F88A998584B8F3
            CEEF10707D86FA03E93AB5BFDC828B96D272E24519821CEFD4B1A34AD209E09E
            0CF5379F68F87D3D15ECB3D7BAD2CBA535241F761E8E9C28ECCAE0770FF1BB7E
            2B91A3ACE51843B49BEA415AEF390EF689D4BAC25D521712054EA23FB291B500
            99E96C451695DD413A107CB62278664260338DF856D68DFC3C6E2652B9039155
            782B32B55D01FC956037A544393D0E4C03FEA0F22FCD3EBC18B9D10A7C417631
            36506137E5895207DC8A6CD3BA0AB103994D250EE0A7E47F819433FD90F1EA6A
            645C3A17F905EEDFC8C6D95EE073E07D24AE56927F0133AA12BCA2E2AF7C0000
            000049454E44AE426082}
          Properties.FitMode = ifmProportionalStretch
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.Edges = []
          TabOrder = 1
          Transparent = True
          Height = 97
          Width = 105
        end
      end
    end
  end
  inherited dsTablaG: TDataSource
    DataSet = dmFac.unqryFac
    Left = 644
    Top = 87
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 640
    Top = 176
  end
end
