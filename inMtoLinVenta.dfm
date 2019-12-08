inherited frmMtoLinVentas: TfrmMtoLinVentas
  Top = 0
  Caption = 'Lineas de Venta'
  ClientHeight = 532
  ClientWidth = 1536
  ExplicitWidth = 1552
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 16
  inherited pButtonPage: TPanel
    Width = 1410
    Height = 532
    ExplicitWidth = 1434
    ExplicitHeight = 505
  end
  inherited pButtonRightBar: TPanel
    Left = 1410
    Height = 532
    ExplicitLeft = 1434
    ExplicitHeight = 505
    inherited pButtonGen: TPanel
      Top = 343
      ExplicitTop = 343
    end
  end
  inherited pcPantalla: TPageControl
    Width = 1410
    Height = 532
    ExplicitWidth = 1434
    ExplicitHeight = 505
    inherited tsLista: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 1426
      ExplicitHeight = 472
      inherited cxGrdPrincipal: TcxGrid
        Width = 1426
        Height = 443
        ExplicitWidth = 1426
        ExplicitHeight = 443
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          OptionsView.ColumnAutoWidth = True
          object tvcGrdDBTabPrinnumfac: TcxGridDBColumn
            DataBinding.FieldName = 'numfac'
            Width = 66
          end
          object cxgrdbclmnGrdDBTabPrinLINEA: TcxGridDBColumn
            DataBinding.FieldName = 'LINEA'
          end
          object tvcGrdDBTabPrinserie: TcxGridDBColumn
            DataBinding.FieldName = 'serie'
            Width = 67
          end
          object tvcGrdDBTabPrinTipo: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Width = 87
          end
          object tvcGrdDBTabPrincodigo: TcxGridDBColumn
            DataBinding.FieldName = 'codigo'
            Width = 126
          end
          object tvcGrdDBTabPrinnombre: TcxGridDBColumn
            DataBinding.FieldName = 'nombre'
            Width = 247
          end
          object tvcGrdDBTabPrincantidad: TcxGridDBColumn
            DataBinding.FieldName = 'cantidad'
            Width = 64
          end
          object tvcGrdDBTabPrinprecio_unitario: TcxGridDBColumn
            DataBinding.FieldName = 'precio_unitario'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 68
          end
          object tvcGrdDBTabPrinimp_iva: TcxGridDBColumn
            DataBinding.FieldName = 'imp_iva'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 65
          end
          object tvcGrdDBTabPrintotal: TcxGridDBColumn
            DataBinding.FieldName = 'total'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 64
          end
          object tvcGrdDBTabPrinfecha: TcxGridDBColumn
            DataBinding.FieldName = 'fecha'
            Width = 63
          end
          object tvcGrdDBTabPrinfamilia: TcxGridDBColumn
            DataBinding.FieldName = 'familia'
            Width = 122
          end
          object tvcGrdDBTabPrinHora: TcxGridDBColumn
            DataBinding.FieldName = 'Hora'
            Width = 61
          end
          object tvcGrdDBTabPrinFormapago_contado: TcxGridDBColumn
            DataBinding.FieldName = 'Formapago_contado'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 97
          end
          object tvcGrdDBTabPrinFormapago_transferencia: TcxGridDBColumn
            DataBinding.FieldName = 'Formapago_transferencia'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 84
          end
          object tvcGrdDBTabPrinFormapago_americanexpress: TcxGridDBColumn
            DataBinding.FieldName = 'Formapago_americanexpress'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 81
          end
          object tvcGrdDBTabPrinFormapago_mastercard: TcxGridDBColumn
            DataBinding.FieldName = 'Formapago_mastercard'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 88
          end
          object tvcGrdDBTabPrinFormapago_visa: TcxGridDBColumn
            DataBinding.FieldName = 'Formapago_visa'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 80
          end
          object tvcGrdDBTabPrinpendiente_Factura: TcxGridDBColumn
            DataBinding.FieldName = 'pendiente_Factura'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 82
          end
          object tvcGrdDBTabPrintotal_Factura: TcxGridDBColumn
            DataBinding.FieldName = 'total_Factura'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 59
          end
        end
      end
      inherited pnTopGrid: TPanel
        Width = 1426
        ExplicitWidth = 1426
      end
    end
    inherited tsFicha: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 1426
      ExplicitHeight = 472
    end
  end
end
