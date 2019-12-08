inherited frmMtoLinVentaCliente: TfrmMtoLinVentaCliente
  Top = 110
  Caption = 'Lineas de Venta por Cliente'
  ClientHeight = 471
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtonPage: TPanel
    Height = 444
    ExplicitHeight = 444
  end
  inherited pButtonRightBar: TPanel
    Height = 444
    ExplicitHeight = 444
    inherited pButtonGen: TPanel
      Top = 282
      ExplicitTop = 282
    end
  end
  inherited pcPantalla: TPageControl
    Height = 444
    ExplicitHeight = 444
    inherited tsLista: TTabSheet
      inherited cxGrdPrincipal: TcxGrid
        Height = 382
        ExplicitHeight = 382
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object tvcGrdDBTabPrinnumfac: TcxGridDBColumn
            DataBinding.FieldName = 'numfac'
          end
          object tvcGrdDBTabPrincodigo: TcxGridDBColumn
            DataBinding.FieldName = 'codigo'
            Width = 119
          end
          object tvcGrdDBTabPrinnombre: TcxGridDBColumn
            Caption = 'producto'
            DataBinding.FieldName = 'nombre'
            Width = 230
          end
          object tvcGrdDBTabPrincantidad: TcxGridDBColumn
            Caption = 'ctd'
            DataBinding.FieldName = 'cantidad'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 29
          end
          object tvcGrdDBTabPrinprecio_unitario: TcxGridDBColumn
            DataBinding.FieldName = 'precio_unitario'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tvcGrdDBTabPrinfecha: TcxGridDBColumn
            DataBinding.FieldName = 'fecha'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object tvcGrdDBTabPrinf_pago: TcxGridDBColumn
            DataBinding.FieldName = 'f_pago'
            Width = 46
          end
          object tvcGrdDBTabPrinfamilia: TcxGridDBColumn
            DataBinding.FieldName = 'familia'
          end
          object tvcGrdDBTabPrincodcli: TcxGridDBColumn
            DataBinding.FieldName = 'codcli'
          end
          object tvcGrdDBTabPrinnombre_1: TcxGridDBColumn
            Caption = 'NombreCliente'
            DataBinding.FieldName = 'nombre_1'
            Width = 110
          end
          object tvcGrdDBTabPrinapellidos: TcxGridDBColumn
            Caption = 'ApellidosCliente'
            DataBinding.FieldName = 'apellidos'
            Width = 115
          end
          object tvcGrdDBTabPrindireccion: TcxGridDBColumn
            DataBinding.FieldName = 'direccion'
            Width = 159
          end
          object tvcGrdDBTabPrinpoblacion: TcxGridDBColumn
            DataBinding.FieldName = 'poblacion'
            Width = 71
          end
          object tvcGrdDBTabPrinprovincia: TcxGridDBColumn
            DataBinding.FieldName = 'provincia'
            Width = 66
          end
          object tvcGrdDBTabPrinPais: TcxGridDBColumn
            DataBinding.FieldName = 'Pais'
            Width = 58
          end
          object tvcGrdDBTabPrinemail: TcxGridDBColumn
            DataBinding.FieldName = 'email'
            Width = 166
          end
          object tvcGrdDBTabPrinMovil: TcxGridDBColumn
            DataBinding.FieldName = 'Movil'
            Width = 91
          end
          object tvcGrdDBTabPrinidmagento: TcxGridDBColumn
            DataBinding.FieldName = 'idmagento'
            Width = 67
          end
        end
      end
    end
  end
  inherited sbStatus: TRzStatusBar
    Top = 444
    ExplicitTop = 444
    inherited spRecord: TRzStatusPane
      ExplicitLeft = 647
    end
  end
  inherited dsTablaG: TDataSource
    Left = 828
    Top = 63
  end
end
