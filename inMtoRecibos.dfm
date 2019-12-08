inherited frmMtoRecibos: TfrmMtoRecibos
  Top = 0
  Caption = 'Recibos'
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
          OptionsView.ColumnAutoWidth = True
          object tvcGrdDBTabPrinid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 31
          end
          object tvcGrdDBTabPrinNumfac: TcxGridDBColumn
            DataBinding.FieldName = 'Numfac'
            Width = 73
          end
          object tvcGrdDBTabPrinTipo_Pago: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo_Pago'
            Width = 74
          end
          object tvcGrdDBTabPrinForma_Pago: TcxGridDBColumn
            DataBinding.FieldName = 'Forma_Pago'
            Width = 92
          end
          object tvcGrdDBTabPrinTipo_Tarjeta: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo_Tarjeta'
            Width = 126
          end
          object tvcGrdDBTabPrinCierre_Caja: TcxGridDBColumn
            DataBinding.FieldName = 'Cierre_Caja'
            Width = 88
          end
          object tvcGrdDBTabPrinFecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 99
          end
          object tvcGrdDBTabPrinimporte: TcxGridDBColumn
            DataBinding.FieldName = 'importe'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 93
          end
          object tvcGrdDBTabPrinPago_Num: TcxGridDBColumn
            DataBinding.FieldName = 'Pago_Num'
            Width = 66
          end
          object tvcGrdDBTabPrinvendedor: TcxGridDBColumn
            DataBinding.FieldName = 'vendedor'
            Width = 164
          end
        end
      end
    end
  end
  inherited sbStatus: TRzStatusBar
    Top = 505
    ExplicitTop = 509
  end
  inherited dsTablaG: TDataSource
    DataSet = zqryRecibos
  end
  object zqryRecibos: TZQuery
    Connection = dmConn.ZconnGlent
    SQL.Strings = (
      'select * from recibos order by fecha desc')
    Params = <>
    Left = 592
    Top = 192
  end
end
