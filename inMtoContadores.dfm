inherited frmMtoContadores: TfrmMtoContadores
  Top = 274
  Caption = 'Contadores'
  ClientHeight = 468
  ClientWidth = 1059
  ExplicitWidth = 1075
  ExplicitHeight = 507
  PixelsPerInch = 120
  TextHeight = 15
  inherited pButtonPage: TPanel
    Width = 933
    Height = 468
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 933
    ExplicitHeight = 468
  end
  inherited pButtonRightBar: TPanel
    Left = 933
    Height = 468
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitLeft = 933
    ExplicitHeight = 468
    inherited pButtonGen: TPanel
      Top = 269
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Constraints.MinHeight = 100
      Constraints.MinWidth = 124
      ExplicitTop = 269
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
          ExplicitWidth = 124
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
    Width = 933
    Height = 468
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 933
    ExplicitHeight = 468
    inherited tsLista: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 925
      ExplicitHeight = 435
      inherited cxGrdPrincipal: TcxGrid
        Width = 925
        Height = 399
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = -5
        ExplicitWidth = 925
        ExplicitHeight = 399
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          OptionsData.Editing = True
          object cxgrdbclmnGrdDBTabPrinTIPODOC_CONTADOR: TcxGridDBColumn
            Caption = 'TipoDoc'
            DataBinding.FieldName = 'TIPODOC_CONTADOR'
            Width = 154
          end
          object cxgrdbclmnGrdDBTabPrinEJERCICIO_CONTADOR: TcxGridDBColumn
            Caption = 'Ejercicio'
            DataBinding.FieldName = 'EJERCICIO_CONTADOR'
            Width = 102
          end
          object cxgrdbclmnGrdDBTabPrinSERIE_CONTADOR: TcxGridDBColumn
            Caption = 'Serie'
            DataBinding.FieldName = 'SERIE_CONTADOR'
            Width = 53
          end
          object cxgrdbclmnGrdDBTabPrinCONTADOR_CONTADOR: TcxGridDBColumn
            Caption = 'Contador'
            DataBinding.FieldName = 'CONTADOR_CONTADOR'
          end
          object cxgrdbclmnGrdDBTabPrinDEFAULT_CONTADOR: TcxGridDBColumn
            Caption = 'Contador por Defecto S/N'
            DataBinding.FieldName = 'DEFAULT_CONTADOR'
            Width = 146
          end
          object cxgrdbclmnGrdDBTabPrinInstanteModif: TcxGridDBColumn
            DataBinding.FieldName = 'InstanteModif'
          end
        end
      end
      inherited pnTopGrid: TPanel
        Width = 925
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 925
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
      ExplicitWidth = 925
      ExplicitHeight = 435
    end
  end
  inherited dsTablaG: TDataSource
    DataSet = unqryContadores
  end
  object unqryContadores: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO suboc_contadores'
      
        '  (TIPODOC_CONTADOR, EJERCICIO_CONTADOR, SERIE_CONTADOR, CONTADO' +
        'R_CONTADOR, DEFAULT_CONTADOR)'
      'VALUES'
      
        '  (:TIPODOC_CONTADOR, :EJERCICIO_CONTADOR, :SERIE_CONTADOR, :CON' +
        'TADOR_CONTADOR, :DEFAULT_CONTADOR)')
    SQLDelete.Strings = (
      'DELETE FROM suboc_contadores'
      'WHERE'
      
        '  TIPODOC_CONTADOR = :Old_TIPODOC_CONTADOR AND EJERCICIO_CONTADO' +
        'R = :Old_EJERCICIO_CONTADOR AND SERIE_CONTADOR = :Old_SERIE_CONT' +
        'ADOR')
    SQLUpdate.Strings = (
      'UPDATE suboc_contadores'
      'SET'
      
        '  TIPODOC_CONTADOR = :TIPODOC_CONTADOR, EJERCICIO_CONTADOR = :EJ' +
        'ERCICIO_CONTADOR, SERIE_CONTADOR = :SERIE_CONTADOR, CONTADOR_CON' +
        'TADOR = :CONTADOR_CONTADOR, DEFAULT_CONTADOR = :DEFAULT_CONTADOR'
      'WHERE'
      
        '  TIPODOC_CONTADOR = :Old_TIPODOC_CONTADOR AND EJERCICIO_CONTADO' +
        'R = :Old_EJERCICIO_CONTADOR AND SERIE_CONTADOR = :Old_SERIE_CONT' +
        'ADOR')
    SQLLock.Strings = (
      'SELECT * FROM suboc_contadores'
      'WHERE'
      
        '  TIPODOC_CONTADOR = :Old_TIPODOC_CONTADOR AND EJERCICIO_CONTADO' +
        'R = :Old_EJERCICIO_CONTADOR AND SERIE_CONTADOR = :Old_SERIE_CONT' +
        'ADOR'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT TIPODOC_CONTADOR, EJERCICIO_CONTADOR, SERIE_CONTADOR, CON' +
        'TADOR_CONTADOR, DEFAULT_CONTADOR FROM suboc_contadores'
      'WHERE'
      
        '  TIPODOC_CONTADOR = :TIPODOC_CONTADOR AND EJERCICIO_CONTADOR = ' +
        ':EJERCICIO_CONTADOR AND SERIE_CONTADOR = :SERIE_CONTADOR')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM suboc_contadores')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT * FROM suboc_contadores')
    Left = 520
    Top = 240
  end
end
