inherited frmMtoUbi: TfrmMtoUbi
  Left = 228
  Top = 270
  Caption = 'Ubicaciones'
  ClientHeight = 380
  ExplicitHeight = 418
  PixelsPerInch = 96
  TextHeight = 16
  inherited pButtonPage: TPanel
    Height = 380
    ExplicitHeight = 357
  end
  inherited pButtonRightBar: TPanel
    Height = 380
    ExplicitHeight = 357
    inherited pButtonGen: TPanel
      Top = 195
      ExplicitTop = 195
    end
  end
  inherited pcPantalla: TPageControl
    Height = 380
    ActivePage = tsFicha
    ExplicitHeight = 357
    inherited tsLista: TTabSheet
      inherited cxGrdPrincipal: TcxGrid
        Height = 295
        ExplicitHeight = 295
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object cxgrdbclmnGrdDBTabPrinid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object cxgrdbclmnGrdDBTabPrinNOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 110
          end
          object cxgrdbclmnGrdDBTabPrinDIRECCION: TcxGridDBColumn
            DataBinding.FieldName = 'DIRECCION'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 139
          end
          object cxgrdbclmnGrdDBTabPrinPOBLACION: TcxGridDBColumn
            DataBinding.FieldName = 'POBLACION'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 93
          end
          object cxgrdbclmnGrdDBTabPrinprovincia: TcxGridDBColumn
            DataBinding.FieldName = 'provincia'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object cxgrdbclmnGrdDBTabPrinCP: TcxGridDBColumn
            DataBinding.FieldName = 'CP'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object cxgrdbclmnGrdDBTabPrinCIF: TcxGridDBColumn
            DataBinding.FieldName = 'CIF'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object cxgrdbclmnGrdDBTabPrinserie: TcxGridDBColumn
            DataBinding.FieldName = 'serie'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 42
          end
          object cxgrdbclmnGrdDBTabPrincont_clientes: TcxGridDBColumn
            DataBinding.FieldName = 'cont_clientes'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object cxgrdbclmnGrdDBTabPrincont_pedidos: TcxGridDBColumn
            DataBinding.FieldName = 'cont_pedidos'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object cxgrdbclmnGrdDBTabPrincont_fabricacion: TcxGridDBColumn
            DataBinding.FieldName = 'cont_fabricacion'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object cxgrdbclmnGrdDBTabPrinhora_sincroniza: TcxGridDBColumn
            DataBinding.FieldName = 'hora_sincroniza'
            PropertiesClassName = 'TcxTimeEditProperties'
          end
          object cxgrdbclmnGrdDBTabPrinInstanteModif: TcxGridDBColumn
            DataBinding.FieldName = 'InstanteModif'
            PropertiesClassName = 'TcxDateEditProperties'
          end
        end
      end
    end
    inherited tsFicha: TTabSheet
      object Label1: TLabel
        Left = 10
        Top = 44
        Width = 135
        Height = 18
        Caption = 'Nombre ubicaci'#243'n'
      end
      object Label2: TLabel
        Left = 15
        Top = 13
        Width = 130
        Height = 18
        Caption = 'C'#243'digo ubicaci'#243'n'
      end
      object Label3: TLabel
        Left = 48
        Top = 75
        Width = 83
        Height = 18
        Caption = 'Direcci'#243'n 1'
      end
      object Label5: TLabel
        Left = 35
        Top = 106
        Width = 104
        Height = 18
        Caption = 'C'#243'digo Postal'
      end
      object Label6: TLabel
        Left = 57
        Top = 137
        Width = 72
        Height = 18
        Caption = 'Poblaci'#243'n'
      end
      object Label7: TLabel
        Left = 60
        Top = 169
        Width = 66
        Height = 18
        Caption = 'Provincia'
      end
      object lbl1: TLabel
        Left = 415
        Top = 17
        Width = 135
        Height = 18
        Caption = 'Contador Facturas'
      end
      object lbl2: TLabel
        Left = 399
        Top = 45
        Width = 158
        Height = 18
        Caption = 'Contador Fabricaci'#243'n'
      end
      object lbl3: TLabel
        Left = 92
        Top = 201
        Width = 23
        Height = 18
        Caption = 'CIF'
      end
      object lbl4: TLabel
        Left = 489
        Top = 103
        Width = 36
        Height = 18
        Caption = 'Serie'
      end
      object lbl5: TLabel
        Left = 408
        Top = 133
        Width = 108
        Height = 15
        Caption = 'Hora sincronizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Sans Unicode'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 418
        Top = 77
        Width = 134
        Height = 18
        Caption = 'Contador Clientes'
      end
      object lbl7: TLabel
        Left = 408
        Top = 165
        Width = 108
        Height = 15
        Caption = #218'ltima modificaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Sans Unicode'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object DBENomUbi: TcxDBTextEdit
        Left = 120
        Top = 40
        DataBinding.DataField = 'nombre'
        DataBinding.DataSource = dsTablaG
        TabOrder = 3
        Width = 253
      end
      object DBEUbicacion: TcxDBTextEdit
        Left = 120
        Top = 9
        DataBinding.DataField = 'id'
        DataBinding.DataSource = dsTablaG
        Properties.Alignment.Horz = taRightJustify
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        Width = 33
      end
      object DBEDireccion1: TcxDBTextEdit
        Left = 120
        Top = 71
        DataBinding.DataField = 'direccion'
        DataBinding.DataSource = dsTablaG
        TabOrder = 5
        Width = 253
      end
      object DBECodPostal: TcxDBTextEdit
        Left = 120
        Top = 102
        DataBinding.DataField = 'cp'
        DataBinding.DataSource = dsTablaG
        TabOrder = 7
        Width = 85
      end
      object DBEPoblacion: TcxDBTextEdit
        Left = 120
        Top = 133
        DataBinding.DataField = 'Poblacion'
        DataBinding.DataSource = dsTablaG
        TabOrder = 9
        Width = 253
      end
      object DBEProvincia: TcxDBTextEdit
        Left = 120
        Top = 165
        DataBinding.DataField = 'Provincia'
        DataBinding.DataSource = dsTablaG
        TabOrder = 11
        Width = 253
      end
      object cxdbtxtdt1: TcxDBTextEdit
        Left = 528
        Top = 9
        DataBinding.DataField = 'cont_pedidos'
        DataBinding.DataSource = dsTablaG
        Properties.Alignment.Horz = taRightJustify
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 49
      end
      object cxdbtxtdt2: TcxDBTextEdit
        Left = 528
        Top = 37
        DataBinding.DataField = 'cont_fabricacion'
        DataBinding.DataSource = dsTablaG
        Properties.Alignment.Horz = taRightJustify
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 49
      end
      object cxdbtxtdt3: TcxDBTextEdit
        Left = 120
        Top = 197
        DataBinding.DataField = 'cif'
        DataBinding.DataSource = dsTablaG
        TabOrder = 12
        Width = 253
      end
      object cxdbtxtdt4: TcxDBTextEdit
        Left = 528
        Top = 97
        DataBinding.DataField = 'serie'
        DataBinding.DataSource = dsTablaG
        Properties.Alignment.Horz = taRightJustify
        Properties.CharCase = ecUpperCase
        TabOrder = 6
        Width = 49
      end
      object cxdbtxtdt5: TcxDBTextEdit
        Left = 527
        Top = 125
        DataBinding.DataField = 'hora_sincroniza'
        DataBinding.DataSource = dsTablaG
        Enabled = False
        ParentFont = False
        ParentShowHint = False
        Properties.ReadOnly = False
        ShowHint = True
        Style.Color = clLime
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -12
        Style.Font.Name = 'Lucida Sans Unicode'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Width = 146
      end
      object cxdbtxtdt6: TcxDBTextEdit
        Left = 528
        Top = 69
        DataBinding.DataField = 'cont_clientes'
        DataBinding.DataSource = dsTablaG
        Properties.Alignment.Horz = taRightJustify
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 49
      end
      object cxdbtxtdt7: TcxDBTextEdit
        Left = 527
        Top = 157
        DataBinding.DataField = 'InstanteModif'
        DataBinding.DataSource = dsTablaG
        Enabled = False
        ParentFont = False
        ParentShowHint = False
        Properties.ReadOnly = False
        ShowHint = True
        Style.Color = clLime
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -12
        Style.Font.Name = 'Lucida Sans Unicode'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 10
        Width = 146
      end
    end
  end
  inherited dsTablaG: TDataSource
    DataSet = qyUbicaciones
  end
  object qyUbicaciones: TZTable
    TableName = 'tienda'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 784
    Top = 192
  end
end
