inherited frmMtoPresu: TfrmMtoPresu
  Top = 0
  Caption = 'Presupuestos Clientes'
  ClientHeight = 746
  ExplicitWidth = 981
  ExplicitHeight = 785
  PixelsPerInch = 120
  TextHeight = 15
  inherited pButtonPage: TPanel
    Height = 746
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitHeight = 746
  end
  inherited pButtonRightBar: TPanel
    Height = 746
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitHeight = 746
    inherited pButtonGen: TPanel
      Top = 547
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Constraints.MinHeight = 100
      Constraints.MinWidth = 124
      ExplicitTop = 547
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
    Height = 746
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = tsFicha
    ExplicitHeight = 746
    inherited tsLista: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitHeight = 713
      inherited cxGrdPrincipal: TcxGrid
        Height = 677
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 640
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object cxgrdbclmnGrdDBTabPrinSERIE_FACTURA_COM: TcxGridDBColumn
            Caption = 'Serie Factura'
            DataBinding.FieldName = 'SERIE_FACTURA_COM'
            Width = 86
          end
          object cxgrdbclmnGrdDBTabPrinNRO_FACTURA_COM: TcxGridDBColumn
            Caption = 'Nro Factura'
            DataBinding.FieldName = 'NRO_FACTURA_COM'
            Width = 84
          end
          object cxgrdbclmnGrdDBTabPrinNRO_FACTURA_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Nro Factura Proveedor'
            DataBinding.FieldName = 'NRO_FACTURA_PROVEEDOR_FACTURA_COM'
            Width = 151
          end
          object cxgrdbclmnGrdDBTabPrinCODIGO_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'C'#243'digo de Proveedor'
            DataBinding.FieldName = 'CODIGO_PROVEEDOR_FACTURA_COM'
            Width = 121
          end
          object cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Raz'#243'n Social Proveeedor'
            DataBinding.FieldName = 'RAZONSOCIAL_PROVEEDOR_FACTURA_COM'
            Width = 137
          end
          object cxgrdbclmnGrdDBTabPrinNIF_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Nif Proveedor'
            DataBinding.FieldName = 'NIF_PROVEEDOR_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinMOVIL_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Tfno M'#243'vil Proveedor'
            DataBinding.FieldName = 'MOVIL_PROVEEDOR_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinEMAIL_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Email Proveedor'
            DataBinding.FieldName = 'EMAIL_PROVEEDOR_FACTURA_COM'
            Width = 105
          end
          object cxgrdbclmnGrdDBTabPrinDIRECCION1_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Direcci'#243'n1 Proveedor'
            DataBinding.FieldName = 'DIRECCION1_PROVEEDOR_FACTURA_COM'
            Width = 122
          end
          object cxgrdbclmnGrdDBTabPrinDIRECCION2_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Direcci'#243'n 2 Proveedor'
            DataBinding.FieldName = 'DIRECCION2_PROVEEDOR_FACTURA_COM'
            Width = 125
          end
          object cxgrdbclmnGrdDBTabPrinPOBLACION_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Poblaci'#243'n de Proveedor'
            DataBinding.FieldName = 'POBLACION_PROVEEDOR_FACTURA_COM'
            Width = 132
          end
          object cxgrdbclmnGrdDBTabPrinPROVINCIA_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Provincia de Proveedor'
            DataBinding.FieldName = 'PROVINCIA_PROVEEDOR_FACTURA_COM'
            Width = 129
          end
          object cxgrdbclmnGrdDBTabPrinCPOSTAL_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'C'#243'digo Postal Proveedor'
            DataBinding.FieldName = 'CPOSTAL_PROVEEDOR_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinPAIS_PROVEEDOR_FACTURA_COM: TcxGridDBColumn
            Caption = 'Pa'#237's de Proveedor'
            DataBinding.FieldName = 'PAIS_PROVEEDOR_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinFECHA_FACTURA_COM: TcxGridDBColumn
            Caption = 'Fecha Emisi'#243'n Factura Proveedor'
            DataBinding.FieldName = 'FECHA_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinIVA1_FACTURA_COM: TcxGridDBColumn
            Caption = '% Iva1'
            DataBinding.FieldName = 'IVA1_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinBASE1_FACTURA_COM: TcxGridDBColumn
            Caption = 'Base Imponible 1'
            DataBinding.FieldName = 'BASE1_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinSUM_BASE_FACTURA_COM: TcxGridDBColumn
            Caption = 'Suma Base Imponible'
            DataBinding.FieldName = 'SUM_BASE_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinSUM_IVA_FACTURA_COM: TcxGridDBColumn
            DataBinding.FieldName = 'SUM_IVA_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinTOTAL_LIQUIDO_FACTURA_COM: TcxGridDBColumn
            Caption = 'Total a Pagar'
            DataBinding.FieldName = 'TOTAL_LIQUIDO_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinFORMA_PAGO_FACTURA_COM: TcxGridDBColumn
            Caption = 'Forma de Pago'
            DataBinding.FieldName = 'FORMA_PAGO_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinPORCENTAJE_RETENCION_FACTURA_COM: TcxGridDBColumn
            Caption = '% Retenci'#243'n Factura'
            DataBinding.FieldName = 'PORCENTAJE_RETENCION_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinIMPORTE_RETENCION_FACTURA_COM: TcxGridDBColumn
            Caption = 'Total Retenci'#243'n'
            DataBinding.FieldName = 'IMPORTE_RETENCION_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrinDOCUMENTO_FACTURA_COM: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'DOCUMENTO_FACTURA_COM'
          end
          object cxgrdbclmnGrdDBTabPrininstantemodif: TcxGridDBColumn
            DataBinding.FieldName = 'instantemodif'
          end
          object cxgrdbclmnGrdDBTabPrinusuariomodif: TcxGridDBColumn
            DataBinding.FieldName = 'usuariomodif'
          end
        end
      end
      inherited pnTopGrid: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
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
      end
    end
    inherited tsFicha: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 831
      ExplicitHeight = 713
      object pnl1: TPanel
        Left = 0
        Top = 316
        Width = 831
        Height = 397
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        object cxspl1: TcxSplitter
          Left = 1
          Top = 1
          Width = 829
          Height = 8
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salTop
          Control = pnl2
        end
        object cxpgcntrl2: TcxPageControl
          Left = 1
          Top = 9
          Width = 829
          Height = 387
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = ts4
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 383
          ClientRectLeft = 4
          ClientRectRight = 825
          ClientRectTop = 26
          object ts4: TcxTabSheet
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Lineas de Factura'
            ImageIndex = 1
            object cxgrd5: TcxGrid
              Left = 0
              Top = 0
              Width = 821
              Height = 357
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              TabOrder = 0
              object tv1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DataModeController.SmartRefresh = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnGrouping = False
                OptionsView.NoDataToDisplayInfoText = '<No hay datos a mostrar>'
                OptionsView.GroupByBox = False
                object cxgrdbclmntv1LINEA_LINEA: TcxGridDBColumn
                  Caption = 'Nro Linea'
                  DataBinding.FieldName = 'LINEA_LINEA'
                  Width = 85
                end
                object cxgrdbclmntv1CODIGO_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'C'#243'digo Art'#237'culo'
                  DataBinding.FieldName = 'CODIGO_ARTICULO_LINEA'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                end
                object cxgrdbclmntv1FAMILIA_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'Familia Art'#237'culo'
                  DataBinding.FieldName = 'FAMILIA_ARTICULO_LINEA'
                end
                object cxgrdbclmntv1DESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'Descripci'#243'n'
                  DataBinding.FieldName = 'DESCRIPCION_ARTICULO_LINEA'
                  Width = 287
                end
                object cxgrdbclmntv1PRECIOCOSTE_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'Precio de Coste'
                  DataBinding.FieldName = 'PRECIOCOSTE_ARTICULO_LINEA'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 89
                end
                object cxgrdbclmntv1PRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn
                  Caption = 'Precio de Venta'
                  DataBinding.FieldName = 'PRECIOVENTA_ARTICULO_LINEA'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 88
                end
                object cxgrdbclmntv1CANTIDAD_LINEA: TcxGridDBColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'CANTIDAD_LINEA'
                end
                object cxgrdbclmntv1IVA1_LINEA: TcxGridDBColumn
                  Caption = '% IVA'
                  DataBinding.FieldName = 'IVA1_LINEA'
                end
                object cxgrdbclmntv1SUM_BASE_LINEA: TcxGridDBColumn
                  Caption = 'Suma Base Imponible'
                  DataBinding.FieldName = 'SUM_BASE_LINEA'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 138
                end
                object cxgrdbclmntv1SUM_IVA1_LINEA: TcxGridDBColumn
                  Caption = 'Total IVA'
                  DataBinding.FieldName = 'SUM_IVA1_LINEA'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                end
                object cxgrdbclmntv1SUM_TOTAL_LINEA: TcxGridDBColumn
                  Caption = 'Total Linea con IVA'
                  DataBinding.FieldName = 'SUM_TOTAL_LINEA'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 131
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
            ExplicitTop = 29
            ExplicitHeight = 351
            object cxlbl15: TcxLabel
              Left = 34
              Top = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Base Imponible'
            end
            object cxlbl16: TcxLabel
              Left = 79
              Top = 55
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'IVA'
            end
            object cxlbl17: TcxLabel
              Left = 73
              Top = 138
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Total a pagar'
            end
            object DBE16: TcxDBTextEdit
              Left = 148
              Top = 188
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'FORMA_PAGO_FACTURA_COM'
              DataBinding.DataSource = dsTablaG
              TabOrder = 10
              Width = 434
            end
            object cxlbl18: TcxLabel
              Left = 37
              Top = 193
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Forma de Pago'
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 148
              Top = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'SUM_BASE_FACTURA_COM'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 0
              Width = 149
            end
            object cxDBCurrencyEdit2: TcxDBCurrencyEdit
              Left = 197
              Top = 50
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'SUM_IVA_FACTURA_COM'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 3
              Width = 100
            end
            object cxDBCurrencyEdit3: TcxDBCurrencyEdit
              Left = 171
              Top = 135
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'TOTAL_LIQUIDO_FACTURA_COM'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 8
              Width = 126
            end
            object cxdbcrncydtSUM_IVA: TcxDBCurrencyEdit
              Left = 113
              Top = 50
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'IVA1_FACTURA_COM'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 2
              Width = 56
            end
            object cxlbl7: TcxLabel
              Left = 79
              Top = 91
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'IRPF'
            end
            object cxdbcrncydtIVA1_FACTURA: TcxDBCurrencyEdit
              Left = 113
              Top = 86
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'PORCENTAJE_RETENCION_FACTURA_COM'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 5
              Width = 56
            end
            object cxdbcrncydtSUM_IVA_FACTURA: TcxDBCurrencyEdit
              Left = 197
              Top = 86
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'IMPORTE_RETENCION_FACTURA_COM'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 6
              Width = 100
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
          end
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 831
        Height = 316
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
          Height = 314
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
            Height = 312
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = ts2
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 308
            ClientRectLeft = 4
            ClientRectRight = 762
            ClientRectTop = 26
            object ts2: TcxTabSheet
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Datos Proveedor - Cabecera Factura'
              ImageIndex = 1
              object DBE3: TcxDBTextEdit
                Left = 150
                Top = 15
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'CODIGO_PROVEEDOR_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                TabOrder = 0
                Width = 149
              end
              object cxlbl4: TcxLabel
                Left = 20
                Top = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'C'#243'digo Proveedor'
              end
              object DBEdireccionCliente5: TcxDBTextEdit
                Left = 410
                Top = 15
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'RAZONSOCIAL_PROVEEDOR_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                TabOrder = 1
                Width = 327
              end
              object cxgrpbx1: TcxGroupBox
                Left = 10
                Top = 59
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Facturaci'#243'n'
                TabOrder = 5
                Height = 198
                Width = 365
                object DBEdireccionCliente4: TcxDBTextEdit
                  Left = 17
                  Top = 27
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'DIRECCION1_PROVEEDOR_FACTURA_COM'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 0
                  Width = 328
                end
                object DBEpoblacionCliente: TcxDBTextEdit
                  Left = 17
                  Top = 97
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'CPOSTAL_PROVEEDOR_FACTURA_COM'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 2
                  Width = 70
                end
                object DBEdireccionCliente: TcxDBTextEdit
                  Left = 96
                  Top = 97
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'POBLACION_PROVEEDOR_FACTURA_COM'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 3
                  Width = 247
                end
                object DBEdireccionCliente1: TcxDBTextEdit
                  Left = 117
                  Top = 130
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'PROVINCIA_PROVEEDOR_FACTURA_COM'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 4
                  Width = 228
                end
                object DBEdireccionCliente6: TcxDBTextEdit
                  Left = 117
                  Top = 164
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'PAIS_PROVEEDOR_FACTURA_COM'
                  DataBinding.DataSource = dsTablaG
                  TabOrder = 7
                  Width = 228
                end
                object cxdbtxtdtDIRECCION1_CLIENTE_FACTURA: TcxDBTextEdit
                  Left = 17
                  Top = 62
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'DIRECCION2_PROVEEDOR_FACTURA_COM'
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
              object DBEemail1: TcxDBTextEdit
                Left = 411
                Top = 81
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'NIF_PROVEEDOR_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                TabOrder = 6
                Width = 327
              end
              object cxlbl9: TcxLabel
                Left = 411
                Top = 50
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'NIF Proveedor'
              end
              object cxlbl10: TcxLabel
                Left = 411
                Top = 117
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'M'#243'vil Proveedor'
              end
              object cxdbtxtdtNIF_CLIENTE_FACTURA: TcxDBTextEdit
                Left = 411
                Top = 148
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'MOVIL_PROVEEDOR_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                TabOrder = 8
                Width = 327
              end
              object cxlbl11: TcxLabel
                Left = 410
                Top = 183
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Email Proveedor'
              end
              object cxdbtxtdtMOVIL_CLIENTE_FACTURA: TcxDBTextEdit
                Left = 410
                Top = 214
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'EMAIL_PROVEEDOR_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                TabOrder = 10
                Width = 327
              end
              object cxlbl14: TcxLabel
                Left = 315
                Top = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Raz'#243'n Social'
              end
            end
            object cxtbshtts1: TcxTabSheet
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Cabecera Factura'
              ImageIndex = 0
              ExplicitTop = 29
              ExplicitHeight = 279
              object cxlbl1: TcxLabel
                Left = 21
                Top = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Nro Factura'
              end
              object cxlbl3: TcxLabel
                Left = 55
                Top = 101
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Fecha'
              end
              object cxdbdtdt1: TcxDBDateEdit
                Left = 108
                Top = 96
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'FECHA_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                TabOrder = 10
                Width = 149
              end
              object cxlbl2: TcxLabel
                Left = 282
                Top = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'C'#243'digo de Proveedor'
              end
              object cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA1: TcxDBTextEdit
                Left = 436
                Top = 54
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'RAZONSOCIAL_PROVEEDOR_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                TabOrder = 7
                Width = 256
              end
              object cxlbl5: TcxLabel
                Left = 270
                Top = 59
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Raz'#243'n Social Proveedor'
              end
              object cxlbl8: TcxLabel
                Left = 11
                Top = 59
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Serie Factura'
              end
              object btn1: TcxButton
                Left = 565
                Top = 16
                Width = 27
                Height = 31
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = '...'
                TabOrder = 1
              end
              object cxdbtxtdtRAZONSOCIAL_CLIENTE_FACTURA: TcxDBTextEdit
                Left = 433
                Top = 18
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'CODIGO_PROVEEDOR_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                TabOrder = 3
                Width = 137
              end
              object cxdbtxtdtSERIE_FACTURA: TcxDBTextEdit
                Left = 111
                Top = 18
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'NRO_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                Properties.ReadOnly = False
                TabOrder = 2
                Width = 77
              end
              object btn3: TcxButton
                Left = 187
                Top = 16
                Width = 31
                Height = 31
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = '...'
                TabOrder = 0
              end
              object cxdbtxtdtNRO_FACTURA_COM: TcxDBTextEdit
                Left = 108
                Top = 54
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'SERIE_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                Properties.ReadOnly = False
                TabOrder = 6
                Width = 78
              end
              object cxlbl12: TcxLabel
                Left = 270
                Top = 101
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Nro Factura Proveedor'
              end
              object cxdbtxtdtRAZONSOCIAL_PROVEEDOR_FACTURA_COM: TcxDBTextEdit
                Left = 436
                Top = 96
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'NRO_FACTURA_PROVEEDOR_FACTURA_COM'
                DataBinding.DataSource = dsTablaG
                TabOrder = 11
                Width = 256
              end
            end
          end
        end
      end
    end
  end
  inherited dsTablaG: TDataSource
    Left = 644
    Top = 87
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 640
    Top = 176
  end
end
