inherited frmMtoReferencias: TfrmMtoReferencias
  Caption = 'Referencias'
  ExplicitWidth = 800
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPantalla: TPageControl
    inherited tsLista: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 674
      ExplicitHeight = 406
      inherited cxGrdPrincipal: TcxGrid
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object tvcGrdDBTabPrinReferenceId: TcxGridDBColumn
            DataBinding.FieldName = 'ReferenceId'
            Width = 124
          end
          object tvcGrdDBTabPrinReferenceDes: TcxGridDBColumn
            DataBinding.FieldName = 'ReferenceDes'
            Width = 158
          end
          object tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn
            DataBinding.FieldName = 'InstanteModif'
            Width = 113
          end
        end
        object tvGrdPrincipalDBTableView1: TcxGridDBTableView [1]
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmReferencias.dsReferenciaHijos
          DataController.DetailKeyFieldNames = 'ReferenceFrom'
          DataController.KeyFieldNames = 'ReferenceFrom'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object tvGrdPrincipalDBTableView2: TcxGridDBTableView [2]
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = dmReferencias.dsReferenciaHijos
          DataController.DetailKeyFieldNames = 'ReferenceFrom'
          DataController.KeyFieldNames = 'ReferenceFrom'
          DataController.MasterKeyFieldNames = 'ReferenceId'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object tvcGrdPrincipalDBTableView2ReferenceId: TcxGridDBColumn
            DataBinding.FieldName = 'ReferenceId'
          end
          object tvcGrdPrincipalDBTableView2ReferenceDes: TcxGridDBColumn
            DataBinding.FieldName = 'ReferenceDes'
            Width = 79
          end
          object tvcGrdPrincipalDBTableView2ReferenceFrom: TcxGridDBColumn
            DataBinding.FieldName = 'ReferenceFrom'
          end
          object tvcGrdPrincipalDBTableView2InstanteModif: TcxGridDBColumn
            DataBinding.FieldName = 'InstanteModif'
          end
        end
      end
      inherited pnTopGrid: TPanel
        inherited RzPanel3: TRzPanel [2]
          inherited chkCaseM: TcxCheckBox
            ExplicitHeight = 23
          end
        end
        inherited RzPanel1: TRzPanel [3]
          inherited edtBusqGlobal: TcxTextEdit
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
      ExplicitHeight = 406
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 674
        Height = 121
        Align = alTop
        TabOrder = 0
        object DBE2: TcxDBTextEdit
          Left = 96
          Top = 44
          DataBinding.DataField = 'ReferenceDes'
          DataBinding.DataSource = dsTablaG
          TabOrder = 2
          Width = 257
        end
        object cxlbl2: TcxLabel
          Left = 32
          Top = 48
          Caption = 'Referencia'
        end
        object DBE1: TcxDBTextEdit
          Left = 96
          Top = 12
          DataBinding.DataField = 'ReferenceId'
          DataBinding.DataSource = dsTablaG
          TabOrder = 0
          Width = 81
        end
        object cxlbl1: TcxLabel
          Left = 78
          Top = 16
          Caption = 'Id'
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 121
        Width = 674
        Height = 285
        Align = alClient
        TabOrder = 1
        object cxgrd5: TcxGrid
          Left = 1
          Top = 1
          Width = 672
          Height = 283
          Align = alClient
          TabOrder = 0
          object tv1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = dmReferencias.dsReferenciaHijos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnGrouping = False
            OptionsView.GroupByBox = False
            object tvctv1ReferenceId: TcxGridDBColumn
              DataBinding.FieldName = 'ReferenceId'
            end
            object tvctv1ReferenceDes: TcxGridDBColumn
              DataBinding.FieldName = 'ReferenceDes'
              Width = 85
            end
            object tvctv1InstanteModif: TcxGridDBColumn
              DataBinding.FieldName = 'InstanteModif'
            end
            object tvctv1ReferenceFrom: TcxGridDBColumn
              DataBinding.FieldName = 'ReferenceFrom'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ReferenceId'
              Properties.ListColumns = <
                item
                  FieldName = 'ReferenceDes'
                end>
              Properties.ListSource = dmReferencias.dsReferencias
              Width = 95
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
    end
  end
  inherited sbStatus: TRzStatusBar
    inherited DBNControlDB1: TcxNavigator
      Width = 360
      ExplicitWidth = 360
    end
  end
  inherited dsTablaG: TDataSource
    DataSet = dmReferencias.zqryReferenciaPadre
  end
end
