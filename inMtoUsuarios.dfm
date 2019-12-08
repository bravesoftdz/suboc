inherited frmMtoUsuarios: TfrmMtoUsuarios
  Top = 232
  Caption = 'Usuarios'
  ClientHeight = 380
  ExplicitHeight = 418
  PixelsPerInch = 96
  TextHeight = 16
  inherited pButtonPage: TPanel
    Height = 380
    ExplicitHeight = 353
  end
  inherited pButtonRightBar: TPanel
    Height = 380
    ExplicitHeight = 353
    inherited pButtonGen: TPanel
      Top = 191
      ExplicitTop = 191
    end
  end
  inherited pcPantalla: TPageControl
    Height = 380
    ActivePage = tsFicha
    ExplicitHeight = 353
    inherited tsLista: TTabSheet
      inherited cxGrdPrincipal: TcxGrid
        Height = 295
        ExplicitHeight = 295
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          OptionsData.Editing = True
          object tvcGrdDBTabPrinNomUser: TcxGridDBColumn
            DataBinding.FieldName = 'NomUser'
            Width = 66
          end
          object tvcGrdDBTabPrinPassword: TcxGridDBColumn
            DataBinding.FieldName = 'Password'
            Width = 57
          end
          object tvcGrdDBTabPrinGrupo: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
            Width = 97
          end
          object tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn
            DataBinding.FieldName = 'InstanteModif'
          end
          object tvcGrdDBTabPrinLastTimeLogon: TcxGridDBColumn
            DataBinding.FieldName = 'LastTimeLogon'
          end
        end
      end
    end
    inherited tsFicha: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 32
      ExplicitWidth = 831
      ExplicitHeight = 344
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 831
        Height = 129
        Align = alTop
        TabOrder = 0
        object DBE1: TcxDBTextEdit
          Left = 144
          Top = 18
          DataBinding.DataField = 'NomUser'
          DataBinding.DataSource = dsTablaG
          TabOrder = 0
          Width = 169
        end
        object cxlbl1: TcxLabel
          Left = 16
          Top = 24
          Caption = 'Nombre de Usuario'
        end
        object DBE2: TcxDBTextEdit
          Left = 144
          Top = 50
          DataBinding.DataField = 'Password'
          DataBinding.DataSource = dsTablaG
          TabOrder = 2
          Width = 169
        end
        object cxlbl2: TcxLabel
          Left = 16
          Top = 56
          Caption = 'Password'
        end
        object cxlbl3: TcxLabel
          Left = 16
          Top = 88
          Caption = 'Grupo'
        end
        object DBCB1: TcxDBLookupComboBox
          Left = 144
          Top = 80
          DataBinding.DataField = 'Grupo'
          DataBinding.DataSource = dsTablaG
          Properties.KeyFieldNames = 'Grupo'
          Properties.ListColumns = <
            item
              FieldName = 'Grupo'
            end>
          Properties.ListSource = dmUsuarios.dsGrupos
          TabOrder = 4
          Width = 145
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 129
        Width = 831
        Height = 215
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 674
        ExplicitHeight = 191
        object pnl3: TPanel
          Left = 544
          Top = 1
          Width = 129
          Height = 189
          Align = alRight
          TabOrder = 1
          object btn1: TSpeedButton
            Left = 16
            Top = 15
            Width = 105
            Height = 27
            Cursor = crHandPoint
            Caption = '&A'#241'adir Permisos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans Unicode'
            Font.Style = []
            ParentFont = False
            OnClick = sbGrabarClick
          end
        end
        object pnl4: TPanel
          Left = 1
          Top = 1
          Width = 543
          Height = 189
          Align = alClient
          TabOrder = 0
          object cxgrd5: TcxGrid
            Left = 1
            Top = 1
            Width = 541
            Height = 187
            Align = alClient
            TabOrder = 0
            object tv1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Visible = True
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = dmUsuarios.dsUsuariosPermisos
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnGrouping = False
              OptionsView.GroupByBox = False
              object tvctv1Entidad: TcxGridDBColumn
                DataBinding.FieldName = 'Entidad'
                Visible = False
                Width = 46
              end
              object tvctv1Menu: TcxGridDBColumn
                DataBinding.FieldName = 'Menu'
                Width = 118
              end
              object tvctv1Formulario: TcxGridDBColumn
                DataBinding.FieldName = 'Formulario'
                Width = 86
              end
              object tvctv1descripcion: TcxGridDBColumn
                DataBinding.FieldName = 'descripcion'
                Width = 141
              end
              object tvctv1DescripcionMenu: TcxGridDBColumn
                DataBinding.FieldName = 'DescripcionMenu'
                Width = 120
              end
              object tvctv1PermisoAcceso: TcxGridDBColumn
                DataBinding.FieldName = 'PermisoAcceso'
                Width = 89
              end
              object tvctv1PermisoListado: TcxGridDBColumn
                DataBinding.FieldName = 'PermisoListado'
                Width = 89
              end
              object tvctv1PermisoEscritura: TcxGridDBColumn
                DataBinding.FieldName = 'PermisoEscritura'
                Width = 110
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
      end
    end
  end
  inherited dsTablaG: TDataSource
    DataSet = dmUsuarios.zqryUsuarios
  end
end
