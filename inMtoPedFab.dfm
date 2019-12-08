inherited frmMtoPedFab: TfrmMtoPedFab
  Top = 124
  Caption = 'Pedidos a F'#225'brica'
  ClientHeight = 410
  ExplicitWidth = 800
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtonPage: TPanel
    Height = 383
    ExplicitHeight = 383
  end
  inherited pButtonRightBar: TPanel
    Height = 383
    ExplicitHeight = 383
    inherited pButtonGen: TPanel
      Top = 221
      ExplicitTop = 221
    end
  end
  inherited pcPantalla: TPageControl
    Height = 383
    ExplicitHeight = 383
    inherited tsLista: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 674
      ExplicitHeight = 350
      inherited cxGrdPrincipal: TcxGrid
        Height = 321
        ExplicitHeight = 321
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object tvcGrdDBTabPrinSERIE: TcxGridDBColumn
            DataBinding.FieldName = 'SERIE'
          end
          object tvcGrdDBTabPrinNUMFAB: TcxGridDBColumn
            DataBinding.FieldName = 'NUMFAB'
          end
          object tvcGrdDBTabPrinNUMPED: TcxGridDBColumn
            DataBinding.FieldName = 'NUMPED'
          end
          object tvcGrdDBTabPrinFECHA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object tvcGrdDBTabPrinCODCLI: TcxGridDBColumn
            DataBinding.FieldName = 'CODCLI'
          end
          object tvcGrdDBTabPrinnombre: TcxGridDBColumn
            DataBinding.FieldName = 'nombre'
            Width = 81
          end
          object tvcGrdDBTabPrinAPELLIDOS: TcxGridDBColumn
            DataBinding.FieldName = 'APELLIDOS'
            Width = 133
          end
          object tvcGrdDBTabPrinCODMOD: TcxGridDBColumn
            DataBinding.FieldName = 'CODMOD'
            Width = 112
          end
          object tvcGrdDBTabPrinNOMMOD: TcxGridDBColumn
            DataBinding.FieldName = 'NOMMOD'
            Width = 76
          end
          object tvcGrdDBTabPrinNOMHOR: TcxGridDBColumn
            DataBinding.FieldName = 'NOMHOR'
            Width = 56
          end
          object tvcGrdDBTabPrinTIPO_CORDONERA: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_CORDONERA'
            Width = 107
          end
          object tvcGrdDBTabPrinTIPO_TACON: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_TACON'
            Width = 82
          end
          object tvcGrdDBTabPrinTIPO_TALONETA: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_TALONETA'
            Width = 100
          end
          object tvcGrdDBTabPrinPARES: TcxGridDBColumn
            DataBinding.FieldName = 'PARES'
            Width = 50
          end
          object tvcGrdDBTabPrinSUPLEMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'SUPLEMENTO'
            Width = 78
          end
          object tvcGrdDBTabPrinTALLA_D: TcxGridDBColumn
            DataBinding.FieldName = 'TALLA_D'
            Width = 66
          end
          object tvcGrdDBTabPrinTALLA_I: TcxGridDBColumn
            DataBinding.FieldName = 'TALLA_I'
            Width = 59
          end
          object tvcGrdDBTabPrinANCHO_D: TcxGridDBColumn
            DataBinding.FieldName = 'ANCHO_D'
            Width = 72
          end
          object tvcGrdDBTabPrinANCHO_I: TcxGridDBColumn
            DataBinding.FieldName = 'ANCHO_I'
            Width = 68
          end
          object tvcGrdDBTabPrinEMP_D: TcxGridDBColumn
            DataBinding.FieldName = 'EMP_D'
            Width = 53
          end
          object tvcGrdDBTabPrinEMP_I: TcxGridDBColumn
            DataBinding.FieldName = 'EMP_I'
            Width = 53
          end
          object tvcGrdDBTabPrinPERS_2A: TcxGridDBColumn
            DataBinding.FieldName = 'PERS_2A'
            Width = 113
          end
          object tvcGrdDBTabPrinPERS_2B: TcxGridDBColumn
            DataBinding.FieldName = 'PERS_2B'
            Width = 142
          end
          object tvcGrdDBTabPrinOBSERVACIONES: TcxGridDBColumn
            DataBinding.FieldName = 'OBSERVACIONES'
            Width = 119
          end
          object tvcGrdDBTabPrinOBVS1: TcxGridDBColumn
            DataBinding.FieldName = 'OBVS1'
            Width = 206
          end
          object tvcGrdDBTabPrinOBVS2: TcxGridDBColumn
            DataBinding.FieldName = 'OBVS2'
            Width = 82
          end
          object tvcGrdDBTabPrinOBVS3: TcxGridDBColumn
            DataBinding.FieldName = 'OBVS3'
            Width = 136
          end
          object tvcGrdDBTabPrinOBVS4: TcxGridDBColumn
            DataBinding.FieldName = 'OBVS4'
            Width = 130
          end
          object tvcGrdDBTabPrinOBVS5: TcxGridDBColumn
            DataBinding.FieldName = 'OBVS5'
            Width = 223
          end
        end
      end
      inherited pnTopGrid: TPanel
        inherited RzPanel1: TRzPanel
          inherited edtBusqGlobal: TcxTextEdit
            ExplicitHeight = 23
          end
        end
        inherited RzPanel3: TRzPanel
          inherited chkCaseM: TcxCheckBox
            ExplicitHeight = 23
          end
        end
        inherited RzPanel2: TRzPanel
          inherited chkSoloActivos: TcxCheckBox
            ExplicitHeight = 23
          end
        end
        inherited RzPanel4: TRzPanel
          inherited chkEditInList: TcxCheckBox
            ExplicitHeight = 23
          end
        end
      end
    end
    inherited tsFicha: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 674
      ExplicitHeight = 350
      object pnl1: TPanel
        Left = 0
        Top = 208
        Width = 674
        Height = 142
        Align = alClient
        TabOrder = 1
        object cxspl1: TcxSplitter
          Left = 1
          Top = 1
          Width = 672
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salTop
          Control = pnl2
        end
        object cxpgcntrl2: TcxPageControl
          Left = 1
          Top = 9
          Width = 672
          Height = 132
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = ts3
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 128
          ClientRectLeft = 4
          ClientRectRight = 668
          ClientRectTop = 26
          object ts3: TcxTabSheet
            Caption = 'Tallaje y Caracter'#237'sticas'
            ImageIndex = 0
            object cxlbl7: TcxLabel
              Left = 28
              Top = 24
              Caption = 'Talla Derecho'
            end
            object DBE6: TcxDBTextEdit
              Left = 111
              Top = 20
              DataBinding.DataField = 'TALLA_D'
              DataBinding.DataSource = dsTablaG
              TabOrder = 0
              Width = 66
            end
            object DBE7: TcxDBTextEdit
              Left = 111
              Top = 52
              DataBinding.DataField = 'TALLA_I'
              DataBinding.DataSource = dsTablaG
              TabOrder = 4
              Width = 66
            end
            object cxlbl8: TcxLabel
              Left = 22
              Top = 56
              Caption = 'Talla Izquierdo'
            end
            object DBE8: TcxDBTextEdit
              Left = 111
              Top = 116
              DataBinding.DataField = 'ANCHO_I'
              DataBinding.DataSource = dsTablaG
              TabOrder = 12
              Width = 66
            end
            object cxlbl9: TcxLabel
              Left = 12
              Top = 120
              Caption = 'Ancho Izquierdo'
            end
            object cxlbl10: TcxLabel
              Left = 18
              Top = 88
              Caption = 'Ancho Derecho'
            end
            object DBE9: TcxDBTextEdit
              Left = 111
              Top = 84
              DataBinding.DataField = 'ANCHO_D'
              DataBinding.DataSource = dsTablaG
              TabOrder = 6
              Width = 66
            end
            object DBE10: TcxDBTextEdit
              Left = 352
              Top = 20
              DataBinding.DataField = 'EMP_D'
              DataBinding.DataSource = dsTablaG
              TabOrder = 1
              Width = 49
            end
            object cxlbl11: TcxLabel
              Left = 242
              Top = 24
              Caption = 'Empeine Derecho'
            end
            object cxlbl12: TcxLabel
              Left = 236
              Top = 56
              Caption = 'Empeine Izquierdo'
            end
            object DBE11: TcxDBTextEdit
              Left = 352
              Top = 52
              DataBinding.DataField = 'EMP_D'
              DataBinding.DataSource = dsTablaG
              TabOrder = 5
              Width = 49
            end
            object cxlbl13: TcxLabel
              Left = 228
              Top = 88
              Caption = 'Suplemento Plantilla'
            end
            object DBE12: TcxDBTextEdit
              Left = 352
              Top = 84
              DataBinding.DataField = 'SUPLEMENTO'
              DataBinding.DataSource = dsTablaG
              TabOrder = 7
              Width = 49
            end
          end
          object ts4: TcxTabSheet
            Caption = 'Composici'#243'n'
            ImageIndex = 1
            object cxgrd5: TcxGrid
              Left = 0
              Top = 0
              Width = 664
              Height = 102
              Align = alClient
              TabOrder = 0
              object tv1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DataSource = dmPedFab.dsFabXml
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnGrouping = False
                OptionsView.GroupByBox = False
                object tvctv1codgru: TcxGridDBColumn
                  DataBinding.FieldName = 'codgru'
                end
                object tvctv1codvalor: TcxGridDBColumn
                  DataBinding.FieldName = 'codvalor'
                  Width = 154
                end
                object tvctv1nomvalor: TcxGridDBColumn
                  DataBinding.FieldName = 'nomvalor'
                  Width = 302
                end
              end
              object tv2: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DataSource = DMClientes.dsWebCitasPer
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
            Caption = 'Observaciones'
            ImageIndex = 2
            object cxlbl14: TcxLabel
              Left = 28
              Top = 24
              Caption = 'Observaciones Generales'
            end
            object cxdbm1: TcxDBMemo
              Left = 32
              Top = 48
              DataBinding.DataField = 'OBSERVACIONES'
              DataBinding.DataSource = dsTablaG
              TabOrder = 5
              Height = 81
              Width = 257
            end
            object DBE13: TcxDBTextEdit
              Left = 407
              Top = 12
              DataBinding.DataField = 'OBVS1'
              DataBinding.DataSource = dsTablaG
              TabOrder = 0
              Width = 231
            end
            object cxlbl15: TcxLabel
              Left = 308
              Top = 16
              Caption = 'Observaciones 1'
            end
            object DBE14: TcxDBTextEdit
              Left = 407
              Top = 41
              DataBinding.DataField = 'OBVS2'
              DataBinding.DataSource = dsTablaG
              TabOrder = 2
              Width = 231
            end
            object cxlbl16: TcxLabel
              Left = 308
              Top = 45
              Caption = 'Observaciones 2'
            end
            object DBE15: TcxDBTextEdit
              Left = 407
              Top = 69
              DataBinding.DataField = 'OBVS3'
              DataBinding.DataSource = dsTablaG
              TabOrder = 6
              Width = 231
            end
            object cxlbl17: TcxLabel
              Left = 308
              Top = 73
              Caption = 'Observaciones 3'
            end
            object DBE16: TcxDBTextEdit
              Left = 407
              Top = 97
              DataBinding.DataField = 'OBVS4'
              DataBinding.DataSource = dsTablaG
              TabOrder = 8
              Width = 231
            end
            object cxlbl18: TcxLabel
              Left = 308
              Top = 101
              Caption = 'Observaciones 4'
            end
            object cxlbl19: TcxLabel
              Left = 308
              Top = 130
              Caption = 'Observaciones 5'
            end
            object DBE17: TcxDBTextEdit
              Left = 407
              Top = 126
              DataBinding.DataField = 'OBVS5'
              DataBinding.DataSource = dsTablaG
              TabOrder = 10
              Width = 231
            end
          end
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 674
        Height = 208
        Align = alTop
        TabOrder = 0
        object pnl3: TPanel
          Left = 1
          Top = 1
          Width = 624
          Height = 206
          Align = alLeft
          TabOrder = 0
          object cxpgcntrl1: TcxPageControl
            Left = 1
            Top = 1
            Width = 622
            Height = 204
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = ts1
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 200
            ClientRectLeft = 4
            ClientRectRight = 618
            ClientRectTop = 26
            object ts1: TcxTabSheet
              Caption = 'Datos Pedido'
              ImageIndex = 0
              object cxlbl1: TcxLabel
                Left = 17
                Top = 16
                Caption = 'Nro Pedido'
              end
              object cxlbl2: TcxLabel
                Left = 13
                Top = 48
                Caption = 'Nro Factura'
              end
              object DBE1: TcxDBTextEdit
                Left = 87
                Top = 12
                DataBinding.DataField = 'NUMFAB'
                DataBinding.DataSource = dsTablaG
                TabOrder = 0
                Width = 121
              end
              object DBE2: TcxDBTextEdit
                Left = 87
                Top = 44
                DataBinding.DataField = 'NUMPED'
                DataBinding.DataSource = dsTablaG
                TabOrder = 4
                Width = 121
              end
              object cxlbl3: TcxLabel
                Left = 45
                Top = 82
                Caption = 'Fecha'
              end
              object cxdbdtdt1: TcxDBDateEdit
                Left = 88
                Top = 78
                DataBinding.DataField = 'FECHA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 8
                Width = 121
              end
              object cxlbl20: TcxLabel
                Left = 229
                Top = 16
                Caption = 'Modelo'
              end
              object DBE18: TcxDBTextEdit
                Left = 279
                Top = 12
                DataBinding.DataField = 'NOMMOD'
                DataBinding.DataSource = dsTablaG
                TabOrder = 1
                Width = 121
              end
              object DBE19: TcxDBTextEdit
                Left = 279
                Top = 44
                DataBinding.DataField = 'NOMHOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 5
                Width = 121
              end
              object cxlbl21: TcxLabel
                Left = 229
                Top = 48
                Caption = 'Horma'
              end
            end
            object ts2: TcxTabSheet
              Caption = 'Datos Cliente'
              ImageIndex = 1
              object DBE3: TcxDBTextEdit
                Left = 103
                Top = 12
                DataBinding.DataField = 'CODCLI'
                DataBinding.DataSource = dsTablaG
                TabOrder = 0
                Width = 121
              end
              object cxlbl4: TcxLabel
                Left = 16
                Top = 16
                Caption = 'C'#243'digo Cliente'
              end
              object DBE4: TcxDBTextEdit
                Left = 103
                Top = 44
                DataBinding.DataField = 'nombre'
                DataBinding.DataSource = dsTablaG
                TabOrder = 2
                Width = 121
              end
              object cxlbl5: TcxLabel
                Left = 51
                Top = 48
                Caption = 'Nombre'
              end
              object DBE5: TcxDBTextEdit
                Left = 103
                Top = 76
                DataBinding.DataField = 'APELLIDOS'
                DataBinding.DataSource = dsTablaG
                TabOrder = 4
                Width = 194
              end
              object cxlbl6: TcxLabel
                Left = 43
                Top = 80
                Caption = 'Apellidos'
              end
            end
          end
        end
        object pnl4: TPanel
          Left = 625
          Top = 1
          Width = 48
          Height = 206
          Align = alClient
          TabOrder = 1
          object DBimg1: TcxDBImage
            Left = 1
            Top = 1
            Align = alClient
            DataBinding.DataField = 'IMAGEN'
            DataBinding.DataSource = dmPedFab.dsFoto
            Properties.GraphicClassName = 'TJPEGImage'
            TabOrder = 0
            Height = 204
            Width = 46
          end
        end
      end
    end
  end
  inherited sbStatus: TRzStatusBar
    Top = 383
    ExplicitTop = 383
    inherited DBNControlDB1: TcxNavigator
      Width = 360
      ExplicitWidth = 360
    end
  end
end
