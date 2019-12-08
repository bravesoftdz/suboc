inherited frmMtoVisitas: TfrmMtoVisitas
  Top = 0
  Caption = 'Visitas'
  ClientHeight = 532
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtonPage: TPanel
    Height = 505
    ExplicitHeight = 509
  end
  inherited pButtonRightBar: TPanel
    Height = 505
    ExplicitHeight = 509
    inherited pButtonGen: TPanel
      Top = 347
      ExplicitTop = 347
    end
  end
  inherited pcPantalla: TPageControl
    Height = 505
    ExplicitHeight = 509
    inherited tsLista: TTabSheet
      inherited cxGrdPrincipal: TcxGrid
        Height = 447
        ExplicitHeight = 447
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object tvcGrdDBTabPrinidVisita: TcxGridDBColumn
            DataBinding.FieldName = 'idVisita'
            Width = 49
          end
          object tvcGrdDBTabPrinFecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
          end
          object tvcGrdDBTabPrinHora: TcxGridDBColumn
            DataBinding.FieldName = 'Hora'
            Width = 66
          end
          object tvcGrdDBTabPrinSexo: TcxGridDBColumn
            DataBinding.FieldName = 'Sexo'
            Width = 80
          end
          object tvcGrdDBTabPrinEdad: TcxGridDBColumn
            DataBinding.FieldName = 'Edad'
            Width = 63
          end
          object tvcGrdDBTabPrinFacturas: TcxGridDBColumn
            DataBinding.FieldName = 'Facturas'
            Width = 95
          end
          object tvcGrdDBTabPrinRecogidas: TcxGridDBColumn
            DataBinding.FieldName = 'Recogidas'
            Width = 101
          end
          object tvcGrdDBTabPrinNacionalidad: TcxGridDBColumn
            DataBinding.FieldName = 'Nacionalidad'
            Width = 78
          end
          object tvcGrdDBTabPrinDesReferencia: TcxGridDBColumn
            DataBinding.FieldName = 'DesReferencia'
            Width = 335
          end
          object tvcGrdDBTabPrinReferencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
          end
          object tvcGrdDBTabPrinDesReferenciaL1: TcxGridDBColumn
            DataBinding.FieldName = 'DesReferenciaL1'
            Width = 127
          end
          object tvcGrdDBTabPrinReferenciaL2: TcxGridDBColumn
            DataBinding.FieldName = 'ReferenciaL2'
          end
          object tvcGrdDBTabPrinDesReferenciaL2: TcxGridDBColumn
            DataBinding.FieldName = 'DesReferenciaL2'
            Width = 109
          end
          object tvcGrdDBTabPrinOrigenRecomendacion: TcxGridDBColumn
            DataBinding.FieldName = 'OrigenRecomendacion'
            Width = 124
          end
          object tvcGrdDBTabPrinNombreRecomendacion: TcxGridDBColumn
            DataBinding.FieldName = 'NombreRecomendacion'
            Width = 178
          end
          object tvcGrdDBTabPrinTieneCita: TcxGridDBColumn
            DataBinding.FieldName = 'TieneCita'
            Width = 61
          end
          object tvcGrdDBTabPrinRecogeCalzado: TcxGridDBColumn
            DataBinding.FieldName = 'RecogeCalzado'
            Width = 99
          end
          object tvcGrdDBTabPrinHaComprado: TcxGridDBColumn
            DataBinding.FieldName = 'HaComprado'
            Width = 132
          end
          object tvcGrdDBTabPrinRepiteVisita: TcxGridDBColumn
            DataBinding.FieldName = 'RepiteVisita'
            Width = 68
          end
          object tvcGrdDBTabPrinUsuarioModif: TcxGridDBColumn
            DataBinding.FieldName = 'UsuarioModif'
          end
          object tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn
            DataBinding.FieldName = 'InstanteModif'
          end
        end
      end
      inherited pnTopGrid: TPanel
        inherited RzPanel2: TRzPanel
          inherited chkSoloActivos: TcxCheckBox
            Left = -11
            Top = -37
            ExplicitLeft = -11
            ExplicitTop = -37
          end
        end
      end
    end
    inherited tsFicha: TTabSheet
      object cxpgcntrl1: TcxPageControl
        Left = 0
        Top = 201
        Width = 674
        Height = 271
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = ts2
        Properties.CustomButtons.Buttons = <>
        ExplicitWidth = 682
        ExplicitHeight = 275
        ClientRectBottom = 267
        ClientRectLeft = 4
        ClientRectRight = 670
        ClientRectTop = 26
        object ts1: TcxTabSheet
          Caption = 'Cliente'
          ImageIndex = 0
          ExplicitLeft = 2
          ExplicitTop = 24
          ExplicitWidth = 676
          ExplicitHeight = 247
          object DBEcxdbtxtdt1: TcxDBTextEdit
            Left = 104
            Top = 17
            DataBinding.DataField = 'CODIGO_CLIENTE'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 0
            Width = 121
          end
          object cxlbl12: TcxLabel
            Left = 49
            Top = 21
            Caption = 'C'#243'digo'
          end
          object cxlbl13: TcxLabel
            Left = 46
            Top = 49
            Caption = 'Nombre'
          end
          object DBEcxdbtxtdt2: TcxDBTextEdit
            Left = 104
            Top = 45
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 2
            Width = 241
          end
          object DBEcxdbtxtdt3: TcxDBTextEdit
            Left = 104
            Top = 73
            DataBinding.DataField = 'Apellidos'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 6
            Width = 241
          end
          object cxlbl14: TcxLabel
            Left = 38
            Top = 77
            Caption = 'Apellidos'
          end
          object cxlbl15: TcxLabel
            Left = 382
            Top = 49
            Caption = 'M'#243'vil'
          end
          object DBEcxdbtxtdt5: TcxDBTextEdit
            Left = 424
            Top = 45
            DataBinding.DataField = 'Movil'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 3
            Width = 241
          end
          object DBEcxdbtxtdt6: TcxDBTextEdit
            Left = 426
            Top = 73
            DataBinding.DataField = 'Email'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 7
            Width = 241
          end
          object cxlbl16: TcxLabel
            Left = 381
            Top = 77
            Caption = 'Email'
          end
          object cxlbl17: TcxLabel
            Left = 38
            Top = 108
            Caption = 'Direcci'#243'n'
          end
          object DBEcxdbtxtdt7: TcxDBTextEdit
            Left = 104
            Top = 104
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 10
            Width = 241
          end
          object DBEcxdbtxtdt8: TcxDBTextEdit
            Left = 104
            Top = 136
            DataBinding.DataField = 'CP'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 14
            Width = 57
          end
          object cxlbl18: TcxLabel
            Left = 17
            Top = 140
            Caption = 'C'#243'digo Postal'
          end
          object cxlbl19: TcxLabel
            Left = 358
            Top = 108
            Caption = 'Poblaci'#243'n'
          end
          object DBEcxdbtxtdt9: TcxDBTextEdit
            Left = 424
            Top = 104
            DataBinding.DataField = 'Poblacion'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 11
            Width = 241
          end
          object DBEcxdbtxtdt10: TcxDBTextEdit
            Left = 424
            Top = 136
            DataBinding.DataField = 'Poblacion'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 15
            Width = 241
          end
          object cxlbl20: TcxLabel
            Left = 361
            Top = 140
            Caption = 'Provincia'
          end
          object DBEcxdbtxtdt16: TcxDBTextEdit
            Left = 272
            Top = 168
            DataBinding.DataField = 'Pais'
            DataBinding.DataSource = dmVisitas.dsClientes
            TabOrder = 18
            Width = 241
          end
          object cxlbl21: TcxLabel
            Left = 238
            Top = 172
            Caption = 'Pa'#237's'
          end
        end
        object ts2: TcxTabSheet
          Caption = 'Factura'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 962
            Height = 247
            Align = alClient
            TabOrder = 0
            object tvFacturas: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Visible = True
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = dmVisitas.dsFacturas
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnGrouping = False
              OptionsView.GroupByBox = False
              object cxgrdbclmnGridDBTableView1NUMFAC: TcxGridDBColumn
                DataBinding.FieldName = 'NUMFAC'
              end
              object cxgrdbclmnGridDBTableView1CODCLI: TcxGridDBColumn
                DataBinding.FieldName = 'CODCLI'
              end
              object cxgrdbclmnGridDBTableView1NOMCLI: TcxGridDBColumn
                DataBinding.FieldName = 'NOMCLI'
                Width = 80
              end
              object cxgrdbclmnGridDBTableView1FECHA: TcxGridDBColumn
                DataBinding.FieldName = 'FECHA'
              end
              object cxgrdbclmnGridDBTableView1SUM_BASE: TcxGridDBColumn
                DataBinding.FieldName = 'SUM_BASE'
              end
              object cxgrdbclmnGridDBTableView1SUM_IVA: TcxGridDBColumn
                DataBinding.FieldName = 'SUM_IVA'
              end
              object cxgrdbclmnGridDBTableView1SUBTOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'SUBTOTAL'
              end
              object cxgrdbclmnGridDBTableView1TOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL'
              end
              object cxgrdbclmnGridDBTableView1F_PAGO: TcxGridDBColumn
                DataBinding.FieldName = 'F_PAGO'
                Width = 68
              end
              object cxgrdbclmnGridDBTableView1PAGADO: TcxGridDBColumn
                DataBinding.FieldName = 'PAGADO'
                Width = 80
              end
              object cxgrdbclmnGridDBTableView1VENC1: TcxGridDBColumn
                DataBinding.FieldName = 'VENC1'
              end
              object cxgrdbclmnGridDBTableView1COMENTARIO: TcxGridDBColumn
                DataBinding.FieldName = 'COMENTARIO'
                Width = 105
              end
              object cxgrdbclmnGridDBTableView1AGENTE: TcxGridDBColumn
                DataBinding.FieldName = 'AGENTE'
                Width = 59
              end
              object cxgrdbclmnGridDBTableView1PEDIDO: TcxGridDBColumn
                DataBinding.FieldName = 'PEDIDO'
                Width = 81
              end
              object cxgrdbclmnGridDBTableView1ANTICIPO: TcxGridDBColumn
                DataBinding.FieldName = 'ANTICIPO'
              end
              object cxgrdbclmnGridDBTableView1DEVOLUCION_FACTURA: TcxGridDBColumn
                DataBinding.FieldName = 'DEVOLUCION_FACTURA'
                Width = 144
              end
              object cxgrdbclmnFacturasSERIE: TcxGridDBColumn
                DataBinding.FieldName = 'SERIE'
              end
            end
            object tvLinFac: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Visible = True
              DataController.DataSource = dmVisitas.dsLinFac
              DataController.DetailKeyFieldNames = 'numfac'
              DataController.KeyFieldNames = 'numfac'
              DataController.MasterKeyFieldNames = 'NUMFAC'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              object cxgrdbclmnGrid1DBTableView2LINEA: TcxGridDBColumn
                DataBinding.FieldName = 'LINEA'
                Width = 49
              end
              object cxgrdbclmnGrid1DBTableView2CODIGO: TcxGridDBColumn
                DataBinding.FieldName = 'CODIGO'
                Width = 144
              end
              object cxgrdbclmnGrid1DBTableView2NOMBRE: TcxGridDBColumn
                DataBinding.FieldName = 'NOMBRE'
                Width = 264
              end
              object cxgrdbclmnGrid1DBTableView2CANTIDAD: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD'
                Width = 74
              end
              object cxgrdbclmnGrid1DBTableView2PRECIO: TcxGridDBColumn
                DataBinding.FieldName = 'PRECIO'
                Width = 88
              end
              object cxgrdbclmnGrid1DBTableView2IMP_IVA: TcxGridDBColumn
                DataBinding.FieldName = 'IMP_IVA'
                Width = 74
              end
              object cxgrdbclmnGrid1DBTableView2NETO: TcxGridDBColumn
                DataBinding.FieldName = 'NETO'
                Width = 74
              end
              object cxgrdbclmnGrid1DBTableView2P_UNI: TcxGridDBColumn
                DataBinding.FieldName = 'P_UNI'
                Visible = False
                Width = 88
              end
              object cxgrdbclmnGrid1DBTableView2PCOSTE: TcxGridDBColumn
                DataBinding.FieldName = 'PCOSTE'
                Visible = False
                Width = 88
              end
              object cxgrdbclmnGrid1DBTableView2NUMERO: TcxGridDBColumn
                DataBinding.FieldName = 'NUMERO'
                Visible = False
                Width = 109
              end
              object cxgrdbclmnGrid1DBTableView2IVA: TcxGridDBColumn
                DataBinding.FieldName = 'IVA'
                Visible = False
                Width = 25
              end
              object cxgrdbclmnGrid1DBTableView2DTO: TcxGridDBColumn
                DataBinding.FieldName = 'DTO'
                Visible = False
                Width = 39
              end
              object cxgrdbclmnGrid1DBTableView2PROP1: TcxGridDBColumn
                DataBinding.FieldName = 'PROP1'
                Visible = False
                Width = 109
              end
              object cxgrdbclmnGrid1DBTableView2PROP2: TcxGridDBColumn
                DataBinding.FieldName = 'PROP2'
                Visible = False
                Width = 109
              end
              object cxgrdbclmnGrid1DBTableView2PROP3: TcxGridDBColumn
                DataBinding.FieldName = 'PROP3'
                Visible = False
                Width = 109
              end
              object cxgrdbclmnGrid1DBTableView2PIEZAS: TcxGridDBColumn
                DataBinding.FieldName = 'PIEZAS'
                Visible = False
                Width = 214
              end
              object cxgrdbclmnGrid1DBTableView2ALMACEN: TcxGridDBColumn
                DataBinding.FieldName = 'ALMACEN'
                Visible = False
                Width = 46
              end
              object cxgrdbclmnGrid1DBTableView2DTO2: TcxGridDBColumn
                DataBinding.FieldName = 'DTO2'
                Visible = False
                Width = 39
              end
              object cxgrdbclmnGrid1DBTableView2PRESENTACION: TcxGridDBColumn
                DataBinding.FieldName = 'PRESENTACION'
                Visible = False
                Width = 354
              end
              object cxgrdbclmnGrid1DBTableView2UBICACION: TcxGridDBColumn
                DataBinding.FieldName = 'UBICACION'
                Visible = False
                Width = 704
              end
              object cxgrdbclmnGrid1DBTableView2SERIE: TcxGridDBColumn
                DataBinding.FieldName = 'SERIE'
                Width = 20
              end
            end
            object lvFacturas: TcxGridLevel
              GridView = tvFacturas
              object lvLinFac: TcxGridLevel
                GridView = tvLinFac
              end
            end
          end
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 674
        Height = 201
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 682
        object cxlbl2: TcxLabel
          Left = 16
          Top = 16
          Caption = 'Id Visita'
        end
        object DBE2: TcxDBTextEdit
          Left = 80
          Top = 16
          DataBinding.DataField = 'idVisita'
          DataBinding.DataSource = dsTablaG
          TabOrder = 1
          Width = 89
        end
        object DBE1: TcxDBTextEdit
          Left = 80
          Top = 48
          DataBinding.DataField = 'UsuarioModif'
          DataBinding.DataSource = dsTablaG
          TabOrder = 6
          Width = 89
        end
        object cxlbl1: TcxLabel
          Left = 16
          Top = 48
          Caption = 'Empleado'
        end
        object cxlbl3: TcxLabel
          Left = 16
          Top = 80
          Caption = 'Fecha y Hora'
        end
        object DBE3: TcxDBTextEdit
          Left = 96
          Top = 80
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = dsTablaG
          TabOrder = 10
          Width = 89
        end
        object DBE4: TcxDBTextEdit
          Left = 192
          Top = 80
          DataBinding.DataField = 'Hora'
          DataBinding.DataSource = dsTablaG
          TabOrder = 12
          Width = 73
        end
        object DBE5: TcxDBTextEdit
          Left = 80
          Top = 112
          DataBinding.DataField = 'Sexo'
          DataBinding.DataSource = dsTablaG
          TabOrder = 18
          Width = 89
        end
        object cxlbl4: TcxLabel
          Left = 16
          Top = 112
          Caption = 'Sexo'
        end
        object DBE6: TcxDBTextEdit
          Left = 80
          Top = 144
          DataBinding.DataField = 'Edad'
          DataBinding.DataSource = dsTablaG
          TabOrder = 23
          Width = 89
        end
        object cxlbl5: TcxLabel
          Left = 16
          Top = 144
          Caption = 'Edad'
        end
        object DBE7: TcxDBTextEdit
          Left = 368
          Top = 16
          DataBinding.DataField = 'Nacionalidad'
          DataBinding.DataSource = dsTablaG
          TabOrder = 2
          Width = 137
        end
        object cxlbl6: TcxLabel
          Left = 288
          Top = 16
          Caption = 'Nacionalidad'
        end
        object cxlbl7: TcxLabel
          Left = 288
          Top = 48
          Caption = 'Referencia Padre'
        end
        object DBCB1: TcxDBLookupComboBox
          Left = 392
          Top = 48
          DataBinding.DataField = 'Referencia'
          DataBinding.DataSource = dsTablaG
          Properties.KeyFieldNames = 'ReferenceId'
          Properties.ListColumns = <
            item
              FieldName = 'ReferenceDes'
            end>
          Properties.ListSource = dmVisitas.dsRefPadre
          TabOrder = 7
          Width = 145
        end
        object cxlbl8: TcxLabel
          Left = 288
          Top = 80
          Caption = 'Referencia Hijo'
        end
        object DBCB2: TcxDBLookupComboBox
          Left = 392
          Top = 80
          DataBinding.DataField = 'ReferenciaL2'
          DataBinding.DataSource = dsTablaG
          Properties.KeyFieldNames = 'ReferenceId'
          Properties.ListColumns = <
            item
              FieldName = 'ReferenceDes'
            end>
          Properties.ListSource = dmVisitas.dsReferenciaHijos
          TabOrder = 14
          Width = 145
        end
        object cxlbl9: TcxLabel
          Left = 584
          Top = 16
          Caption = 'Viene Recomendado'
        end
        object DBCB3: TcxDBComboBox
          Left = 704
          Top = 16
          DataBinding.DataField = 'OrigenRecomendacion'
          DataBinding.DataSource = dsTablaG
          Properties.Items.Strings = (
            'Conocido'
            'Socio')
          TabOrder = 4
          Width = 121
        end
        object cxdbm1: TcxDBMemo
          Left = 376
          Top = 112
          DataBinding.DataField = 'DesReferencia'
          DataBinding.DataSource = dsTablaG
          Properties.ScrollBars = ssVertical
          TabOrder = 20
          Height = 73
          Width = 233
        end
        object cxlbl10: TcxLabel
          Left = 288
          Top = 112
          Caption = 'Referencia'
        end
        object cxdbchckbx1: TcxDBCheckBox
          Left = 664
          Top = 104
          Caption = 'Tiene Cita'
          DataBinding.DataField = 'TieneCita'
          DataBinding.DataSource = dsTablaG
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 15
          Width = 121
        end
        object cxdbchckbx2: TcxDBCheckBox
          Left = 664
          Top = 128
          Caption = 'Recoge Calzado'
          DataBinding.DataField = 'RecogeCalzado'
          DataBinding.DataSource = dsTablaG
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 21
          Width = 121
        end
        object cxdbchckbx3: TcxDBCheckBox
          Left = 664
          Top = 152
          Caption = 'Ha Comprado'
          DataBinding.DataField = 'HaComprado'
          DataBinding.DataSource = dsTablaG
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 25
          Width = 121
        end
        object cxdbm2: TcxDBMemo
          Left = 664
          Top = 48
          DataBinding.DataField = 'NombreRecomendacion'
          DataBinding.DataSource = dsTablaG
          TabOrder = 8
          Height = 57
          Width = 249
        end
        object cxlbl11: TcxLabel
          Left = 584
          Top = 48
          Caption = 'Descripci'#243'n'
        end
        object DBE8: TcxDBTextEdit
          Left = 776
          Top = 152
          DataBinding.DataField = 'NroFactura'
          DataBinding.DataSource = dsTablaG
          TabOrder = 26
          Width = 89
        end
      end
    end
  end
  inherited sbStatus: TRzStatusBar
    Top = 505
    ExplicitTop = 509
  end
  inherited dsTablaG: TDataSource
    Left = 860
    Top = 135
  end
end
