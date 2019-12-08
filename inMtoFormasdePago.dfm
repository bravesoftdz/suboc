inherited frmMtoFormasdePago: TfrmMtoFormasdePago
  Left = 5
  Top = 4
  Caption = 'Formas de Pago'
  ClientHeight = 390
  ClientWidth = 581
  ExplicitWidth = 597
  ExplicitHeight = 429
  PixelsPerInch = 96
  TextHeight = 15
  inherited pButtonPage: TPanel
    Width = 455
    Height = 390
    ExplicitWidth = 455
    ExplicitHeight = 390
  end
  inherited pButtonRightBar: TPanel
    Left = 455
    Height = 390
    ExplicitLeft = 455
    ExplicitHeight = 390
    inherited pButtonGen: TPanel
      Top = 191
      ExplicitTop = 191
    end
  end
  inherited pcPantalla: TPageControl
    Width = 455
    Height = 390
    ActivePage = tsFicha
    ExplicitWidth = 455
    ExplicitHeight = 390
    inherited tsLista: TTabSheet
      ExplicitWidth = 447
      ExplicitHeight = 357
      inherited cxGrdPrincipal: TcxGrid
        Width = 447
        Height = 321
        ExplicitWidth = 447
        ExplicitHeight = 321
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          OptionsData.Editing = True
          object cxgrdbclmnGrdDBTabPrinCODIGO_FORMAPAGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO_FORMAPAGO'
          end
          object cxgrdbclmnGrdDBTabPrinDESCRIPCION_FORMAPAGO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPCION_FORMAPAGO'
            Width = 182
          end
          object cxgrdbclmnGrdDBTabPrinN_PLAZOS: TcxGridDBColumn
            DataBinding.FieldName = 'N_PLAZOS'
          end
          object cxgrdbclmnGrdDBTabPrinDIAS_ENTRE_PLAZOS: TcxGridDBColumn
            DataBinding.FieldName = 'DIAS_ENTRE_PLAZOS'
          end
          object cxgrdbclmnGrdDBTabPrinPORCEN_ANTICIPO: TcxGridDBColumn
            DataBinding.FieldName = 'PORCEN_ANTICIPO'
          end
          object cxgrdbclmnGrdDBTabPrinDEFAULT_FACTURA: TcxGridDBColumn
            DataBinding.FieldName = 'DEFAULT_FACTURA'
            Width = 108
          end
        end
      end
      inherited pnTopGrid: TPanel
        Width = 447
        ExplicitWidth = 447
        inherited edtBusqGlobal: TcxTextEdit
          ExplicitHeight = 23
        end
      end
    end
    inherited tsFicha: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 447
      ExplicitHeight = 357
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 447
        Height = 145
        Align = alTop
        TabOrder = 0
        object cxdbtxtdt1: TcxDBTextEdit
          Left = 104
          Top = 33
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsTablaG
          Enabled = False
          TabOrder = 1
          Width = 121
        end
        object cxlbl2: TcxLabel
          Left = 49
          Top = 37
          Caption = 'C'#243'digo'
        end
        object cxlbl1: TcxLabel
          Left = 46
          Top = 65
          Caption = 'Nombre'
        end
        object cxdbtxtdt2: TcxDBTextEdit
          Left = 104
          Top = 61
          DataBinding.DataField = 'DESCRIPCION'
          DataBinding.DataSource = dsTablaG
          TabOrder = 3
          Width = 241
        end
        object cxlbl18: TcxLabel
          Left = 791
          Top = 93
          Caption = 'Modificado'
        end
        object cxdbtxtdt15: TcxDBTextEdit
          Left = 856
          Top = 89
          DataBinding.DataField = 'modificado'
          DataBinding.DataSource = dsTablaG
          TabOrder = 5
          Width = 57
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 445
          Height = 145
          Align = alTop
          TabOrder = 0
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 102
            Top = 32
            DataBinding.DataField = 'CODIGO_FORMAPAGO'
            DataBinding.DataSource = dsTablaG
            Properties.ReadOnly = False
            TabOrder = 0
            Width = 121
          end
          object cxLabel1: TcxLabel
            Left = 49
            Top = 37
            Caption = 'C'#243'digo'
          end
          object cxLabel2: TcxLabel
            Left = 46
            Top = 65
            Caption = 'Nombre'
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 104
            Top = 61
            DataBinding.DataField = 'DESCRIPCION_FORMAPAGO'
            DataBinding.DataSource = dsTablaG
            TabOrder = 2
            Width = 253
          end
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 145
        Width = 447
        Height = 212
        Align = alClient
        TabOrder = 1
        object cxpgcntrl2: TcxPageControl
          Left = 1
          Top = 1
          Width = 445
          Height = 210
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxtbsht3
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 206
          ClientRectLeft = 4
          ClientRectRight = 441
          ClientRectTop = 26
          object cxtbsht3: TcxTabSheet
            Caption = 'M'#225's Datos'
            ImageIndex = 0
          end
        end
      end
    end
  end
  inherited dsTablaG: TDataSource
    DataSet = unqryFormasdePago
    Left = 236
    Top = 311
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 160
    Top = 288
  end
  object unqryFormasdePago: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO suboc_formapago'
      
        '  (CODIGO_FORMAPAGO, DESCRIPCION_FORMAPAGO, N_PLAZOS, DIAS_ENTRE' +
        '_PLAZOS, PORCEN_ANTICIPO, DEFAULT_FACTURA)'
      'VALUES'
      
        '  (:CODIGO_FORMAPAGO, :DESCRIPCION_FORMAPAGO, :N_PLAZOS, :DIAS_E' +
        'NTRE_PLAZOS, :PORCEN_ANTICIPO, :DEFAULT_FACTURA)')
    SQLDelete.Strings = (
      'DELETE FROM suboc_formapago'
      'WHERE'
      '  CODIGO_FORMAPAGO = :Old_CODIGO_FORMAPAGO')
    SQLUpdate.Strings = (
      'UPDATE suboc_formapago'
      'SET'
      
        '  CODIGO_FORMAPAGO = :CODIGO_FORMAPAGO, DESCRIPCION_FORMAPAGO = ' +
        ':DESCRIPCION_FORMAPAGO, N_PLAZOS = :N_PLAZOS, DIAS_ENTRE_PLAZOS ' +
        '= :DIAS_ENTRE_PLAZOS, PORCEN_ANTICIPO = :PORCEN_ANTICIPO, DEFAUL' +
        'T_FACTURA = :DEFAULT_FACTURA'
      'WHERE'
      '  CODIGO_FORMAPAGO = :Old_CODIGO_FORMAPAGO')
    SQLLock.Strings = (
      'SELECT * FROM suboc_formapago'
      'WHERE'
      '  CODIGO_FORMAPAGO = :Old_CODIGO_FORMAPAGO'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO_FORMAPAGO, DESCRIPCION_FORMAPAGO, N_PLAZOS, DIAS_E' +
        'NTRE_PLAZOS, PORCEN_ANTICIPO, DEFAULT_FACTURA FROM suboc_formapa' +
        'go'
      'WHERE'
      '  CODIGO_FORMAPAGO = :CODIGO_FORMAPAGO')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM suboc_formapago')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from suboc_formapago')
    Left = 288
    Top = 272
  end
end
