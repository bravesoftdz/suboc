inherited frmMtoCitas: TfrmMtoCitas
  Top = 41
  Caption = 'Citas'
  ClientHeight = 509
  Font.Name = 'Lucida Sans Unicode'
  ExplicitWidth = 800
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 15
  inherited pButtonPage: TPanel
    Height = 482
    ExplicitHeight = 482
  end
  inherited pButtonRightBar: TPanel
    Height = 482
    ExplicitHeight = 482
    object btnPrint: TSpeedButton [0]
      Left = 4
      Top = 239
      Width = 96
      Height = 27
      Cursor = crHandPoint
      Caption = '&Imprimir Citas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Sans Unicode'
      Font.Style = []
      ParentFont = False
      OnClick = sbGrabarClick
    end
    inherited pButtonGen: TPanel
      Top = 320
      ExplicitTop = 320
    end
  end
  inherited pcPantalla: TPageControl
    Height = 482
    ActivePage = tsFicha
    ExplicitHeight = 482
    inherited tsLista: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 674
      ExplicitHeight = 449
      inherited cxGrdPrincipal: TcxGrid
        Height = 420
        ExplicitHeight = 420
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          OptionsBehavior.AlwaysShowEditor = False
          OptionsBehavior.CellHints = True
          OptionsBehavior.ImmediateEditor = False
          object tvcGrdDBTabPrinAppointmentId: TcxGridDBColumn
            DataBinding.FieldName = 'AppointmentId'
            Width = 77
          end
          object tvcGrdDBTabPrinStartTime: TcxGridDBColumn
            Caption = 'Comienzo Cita'
            DataBinding.FieldName = 'StartTime'
            PropertiesClassName = 'TcxMaskEditProperties'
            Width = 134
          end
          object tvcGrdDBTabPrinEndTime: TcxGridDBColumn
            Caption = 'Fin Cita'
            DataBinding.FieldName = 'EndTime'
            Width = 132
          end
          object tvcGrdDBTabPrinTienda: TcxGridDBColumn
            DataBinding.FieldName = 'Tienda'
            Width = 42
          end
          object tvcGrdDBTabPrinPodologo: TcxGridDBColumn
            DataBinding.FieldName = 'Podologo'
            Width = 61
          end
          object tvcGrdDBTabPrinIdClienteWeb: TcxGridDBColumn
            Caption = 'EmailCliente'
            DataBinding.FieldName = 'IdClienteWeb'
            Width = 170
          end
          object tvcGrdDBTabPrinObservaciones: TcxGridDBColumn
            DataBinding.FieldName = 'Observaciones'
            Width = 133
          end
          object tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn
            DataBinding.FieldName = 'InstanteModif'
          end
          object tvcGrdDBTabPrinResourceId: TcxGridDBColumn
            DataBinding.FieldName = 'ResourceId'
            Visible = False
          end
          object tvcGrdDBTabPrinLocation: TcxGridDBColumn
            DataBinding.FieldName = 'Location'
            Width = 112
          end
          object tvcGrdDBTabPrinSubject: TcxGridDBColumn
            DataBinding.FieldName = 'Subject'
            Width = 181
          end
          object tvcGrdDBTabPrinDescription: TcxGridDBColumn
            DataBinding.FieldName = 'Description'
          end
          object tvcGrdDBTabPrinLabel: TcxGridDBColumn
            DataBinding.FieldName = 'Label'
            Visible = False
          end
          object tvcGrdDBTabPrinAllDay: TcxGridDBColumn
            DataBinding.FieldName = 'AllDay'
            Visible = False
          end
          object tvcGrdDBTabPrinRecurrenceInfo: TcxGridDBColumn
            DataBinding.FieldName = 'RecurrenceInfo'
            Visible = False
          end
          object tvcGrdDBTabPrinReminderInfo: TcxGridDBColumn
            DataBinding.FieldName = 'ReminderInfo'
            Visible = False
          end
          object tvcGrdDBTabPrinType: TcxGridDBColumn
            DataBinding.FieldName = 'Type'
            Visible = False
          end
          object tvcGrdDBTabPrinStatus: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            Visible = False
          end
          object tvcGrdDBTabPrinCalendarTypeId: TcxGridDBColumn
            DataBinding.FieldName = 'CalendarTypeId'
            Visible = False
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
      ExplicitHeight = 449
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 674
        Height = 200
        Align = alTop
        TabOrder = 0
        object cxschdlr1: TcxScheduler
          Left = 1
          Top = 1
          Width = 672
          Height = 198
          ViewDay.Active = True
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Lucida Sans Unicode'
          Font.Style = []
          Storage = cxschdlrdbstrg1
          TabOrder = 0
          Splitters = {
            F70100008E0000009F02000093000000F201000001000000F7010000C5000000}
          StoredClientBounds = {01000000010000009F020000C5000000}
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 200
        Width = 674
        Height = 249
        Align = alClient
        TabOrder = 1
        object cxpgcntrl1: TcxPageControl
          Left = 1
          Top = 9
          Width = 672
          Height = 239
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = ts3
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 235
          ClientRectLeft = 4
          ClientRectRight = 668
          ClientRectTop = 26
          object ts1: TcxTabSheet
            Caption = 'Cita'
            ImageIndex = 0
            object DBE1: TcxDBTextEdit
              Left = 80
              Top = 41
              DataBinding.DataField = 'AppointmentId'
              DataBinding.DataSource = dsTablaG
              TabOrder = 2
              Width = 121
            end
            object cxlbl1: TcxLabel
              Left = 16
              Top = 45
              Caption = 'ID Cita'
            end
            object cxlbl2: TcxLabel
              Left = 16
              Top = 77
              Caption = 'Comienzo Cita'
            end
            object cxlbl3: TcxLabel
              Left = 56
              Top = 109
              Caption = 'Fin Cita'
            end
            object cxdbdtdt2: TcxDBDateEdit
              Left = 112
              Top = 104
              DataBinding.DataField = 'EndTime'
              DataBinding.DataSource = dsTablaG
              Properties.DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
              Properties.EditFormat = 'dd/mm/yyyy hh:nn:ss'
              Properties.Kind = ckDateTime
              TabOrder = 12
              Width = 249
            end
            object DBE2: TcxDBTextEdit
              Left = 280
              Top = 41
              DataBinding.DataField = 'Tienda'
              DataBinding.DataSource = dsTablaG
              TabOrder = 3
              Width = 41
            end
            object cxlbl4: TcxLabel
              Left = 232
              Top = 45
              Caption = 'Tienda'
            end
            object cxdbdtdt1: TcxDBDateEdit
              Left = 112
              Top = 72
              DataBinding.DataField = 'StartTime'
              DataBinding.DataSource = dsTablaG
              Properties.DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
              Properties.EditFormat = 'dd/mm/yyyy hh:nn:ss'
              Properties.Kind = ckDateTime
              TabOrder = 8
              Width = 249
            end
            object cxdbchckbx1: TcxDBCheckBox
              Left = 463
              Top = 11
              Caption = 'Solicita pod'#243'logo'
              DataBinding.DataField = 'Podologo'
              DataBinding.DataSource = dsTablaG
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 1
              Width = 121
            end
            object cxdbm1: TcxDBMemo
              Left = 392
              Top = 96
              DataBinding.DataField = 'Observaciones'
              DataBinding.DataSource = dsTablaG
              TabOrder = 9
              Height = 41
              Width = 185
            end
            object cxlbl5: TcxLabel
              Left = 392
              Top = 73
              Caption = 'Observaciones'
            end
            object cxlbl6: TcxLabel
              Left = 360
              Top = 45
              Caption = 'Lugar'
            end
            object DBE3: TcxDBTextEdit
              Left = 408
              Top = 41
              DataBinding.DataField = 'Location'
              DataBinding.DataSource = dsTablaG
              TabOrder = 4
              Width = 169
            end
            object DBE4: TcxDBTextEdit
              Left = 80
              Top = 9
              DataBinding.DataField = 'Subject'
              DataBinding.DataSource = dsTablaG
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Lucida Sans Unicode'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 369
            end
            object cxlbl11: TcxLabel
              Left = 8
              Top = 161
              Caption = 'Descripci'#243'n Cita'
            end
            object cxdbm2: TcxDBMemo
              Left = 112
              Top = 144
              DataBinding.DataField = 'Description'
              DataBinding.DataSource = dsTablaG
              TabOrder = 14
              Height = 57
              Width = 465
            end
          end
          object ts2: TcxTabSheet
            Caption = 'Productos elegidos'
            ImageIndex = 1
            object cxgrd5: TcxGrid
              Left = 0
              Top = 0
              Width = 664
              Height = 209
              Align = alClient
              TabOrder = 0
              object tv1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DataSource = dmCitas.dsCitasPer
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnGrouping = False
                OptionsView.GroupByBox = False
                object tvctv1PerId: TcxGridDBColumn
                  DataBinding.FieldName = 'PerId'
                  Width = 42
                end
                object tvctv1AppointmentId: TcxGridDBColumn
                  DataBinding.FieldName = 'AppointmentId'
                  Width = 71
                end
                object tvctv1Linea: TcxGridDBColumn
                  DataBinding.FieldName = 'Linea'
                end
                object tvctv1clave: TcxGridDBColumn
                  DataBinding.FieldName = 'clave'
                  Width = 120
                end
                object tvctv1valor: TcxGridDBColumn
                  DataBinding.FieldName = 'valor'
                  Width = 188
                end
                object tvctv1parte: TcxGridDBColumn
                  DataBinding.FieldName = 'parte'
                  Width = 120
                end
                object tvctv1descripcion: TcxGridDBColumn
                  DataBinding.FieldName = 'descripcion'
                  Width = 180
                end
                object tvctv1instantemodif: TcxGridDBColumn
                  DataBinding.FieldName = 'instantemodif'
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
          object ts3: TcxTabSheet
            Caption = 'Cliente'
            ImageIndex = 2
            object cxlbl7: TcxLabel
              Left = 46
              Top = 20
              Caption = 'Nombre'
            end
            object DBEcxdbtxtdt7: TcxDBTextEdit
              Left = 112
              Top = 16
              DataBinding.DataField = 'nombre'
              DataBinding.DataSource = dmCitas.dsWebClientes
              TabOrder = 0
              Width = 241
            end
            object DBEcxdbtxtdt8: TcxDBTextEdit
              Left = 112
              Top = 48
              DataBinding.DataField = 'apellidos'
              DataBinding.DataSource = dmCitas.dsWebClientes
              TabOrder = 2
              Width = 241
            end
            object cxlbl8: TcxLabel
              Left = 40
              Top = 52
              Caption = 'Apellidos'
            end
            object cxlbl9: TcxLabel
              Left = 12
              Top = 84
              Caption = 'Tel'#233'fono M'#243'vil'
            end
            object DBEcxdbtxtdt9: TcxDBTextEdit
              Left = 112
              Top = 80
              DataBinding.DataField = 'telefonomovil'
              DataBinding.DataSource = dmCitas.dsWebClientes
              TabOrder = 4
              Width = 241
            end
            object DBEcxdbtxtdt10: TcxDBTextEdit
              Left = 112
              Top = 112
              DataBinding.DataField = 'email'
              DataBinding.DataSource = dmCitas.dsWebClientes
              TabOrder = 6
              Width = 241
            end
            object cxlbl10: TcxLabel
              Left = 61
              Top = 116
              Caption = 'Email'
            end
            object DBEcxdbtxtdt16: TcxDBTextEdit
              Left = 112
              Top = 144
              DataBinding.DataField = 'idmagento'
              DataBinding.DataSource = dmCitas.dsWebClientes
              TabOrder = 8
              Width = 241
            end
            object cxlbl16: TcxLabel
              Left = 31
              Top = 148
              Caption = 'Id Magento'
            end
          end
        end
        object cxspl1: TcxSplitter
          Left = 1
          Top = 1
          Width = 672
          Height = 8
          Cursor = crVSplit
          HotZoneClassName = 'TcxMediaPlayer8Style'
          AlignSplitter = salTop
          Control = pnl1
        end
      end
    end
  end
  inherited sbStatus: TRzStatusBar
    Top = 482
    ExplicitTop = 482
    inherited DBNControlDB1: TcxNavigator
      Width = 360
      ExplicitWidth = 360
    end
  end
  object cxschdlrdbstrg1: TcxSchedulerDBStorage
    GenerateGUIDForID = True
    Resources.Items = <>
    SmartRefresh = True
    CustomFields = <>
    DataSource = dsTablaG
    FieldNames.Caption = 'Subject'
    FieldNames.EventType = 'Type'
    FieldNames.Finish = 'EndTime'
    FieldNames.ID = 'AppointmentId'
    FieldNames.Location = 'Location'
    FieldNames.Message = 'Description'
    FieldNames.Options = 'Status'
    FieldNames.Start = 'StartTime'
    UseIndexedID = True
    Left = 664
    Top = 128
  end
  object con1: TcxSchedulerGridConnection
    GridView = cxGrdDBTabPrin
    Storage = cxschdlrdbstrg1
    Left = 532
    Top = 157
  end
end
