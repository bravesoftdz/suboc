inherited frmMtoLisTallasCliente: TfrmMtoLisTallasCliente
  Top = 110
  Caption = 'Tallas por Cliente'
  ClientHeight = 471
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtonPage: TPanel
    Height = 444
    ExplicitHeight = 448
  end
  inherited pButtonRightBar: TPanel
    Height = 444
    ExplicitHeight = 448
    inherited pButtonGen: TPanel
      Top = 286
      ExplicitTop = 286
    end
  end
  inherited pcPantalla: TPageControl
    Height = 444
    ExplicitHeight = 448
    inherited tsLista: TTabSheet
      inherited cxGrdPrincipal: TcxGrid
        Height = 386
        ExplicitHeight = 386
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          object tvcGrdDBTabPrinnombre: TcxGridDBColumn
            DataBinding.FieldName = 'nombre'
            Width = 191
          end
          object tvcGrdDBTabPrinapellidos: TcxGridDBColumn
            DataBinding.FieldName = 'apellidos'
            Width = 173
          end
          object tvcGrdDBTabPrinemail: TcxGridDBColumn
            DataBinding.FieldName = 'email'
            Width = 228
          end
          object tvcGrdDBTabPrinnomhorma: TcxGridDBColumn
            DataBinding.FieldName = 'nomhorma'
          end
          object tvcGrdDBTabPrinleft_size: TcxGridDBColumn
            DataBinding.FieldName = 'left_size'
          end
          object tvcGrdDBTabPrinright_size: TcxGridDBColumn
            DataBinding.FieldName = 'right_size'
          end
          object tvcGrdDBTabPrinleft_width: TcxGridDBColumn
            DataBinding.FieldName = 'left_width'
          end
          object tvcGrdDBTabPrinright_width: TcxGridDBColumn
            DataBinding.FieldName = 'right_width'
          end
          object tvcGrdDBTabPrinleft_instep: TcxGridDBColumn
            DataBinding.FieldName = 'left_instep'
          end
          object tvcGrdDBTabPrinright_instep: TcxGridDBColumn
            DataBinding.FieldName = 'right_instep'
          end
          object tvcGrdDBTabPrinsuplemento: TcxGridDBColumn
            DataBinding.FieldName = 'suplemento'
          end
          object tvcGrdDBTabPrinNroDoc: TcxGridDBColumn
            DataBinding.FieldName = 'NroDoc'
          end
          object tvcGrdDBTabPrinOrigen: TcxGridDBColumn
            DataBinding.FieldName = 'Origen'
          end
          object tvcGrdDBTabPrinFecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Width = 85
          end
          object tvcGrdDBTabPrinpais: TcxGridDBColumn
            DataBinding.FieldName = 'pais'
            Width = 89
          end
          object tvcGrdDBTabPrinpoblacion: TcxGridDBColumn
            DataBinding.FieldName = 'poblacion'
            Width = 107
          end
          object tvcGrdDBTabPrinFechaUltimaCompra: TcxGridDBColumn
            DataBinding.FieldName = 'FechaUltimaCompra'
          end
        end
      end
    end
  end
  inherited sbStatus: TRzStatusBar
    Top = 444
    ExplicitTop = 448
  end
  inherited dsTablaG: TDataSource
    DataSet = zqryTallasCliente
    Left = 828
    Top = 63
  end
  object zqryTallasCliente: TZQuery
    Connection = dmConn.ZconnGlent
    SQL.Strings = (
      
        'select   v.*, c.pais, c.poblacion , max(f.fecha) as FechaUltimaC' +
        'ompra from v_getcustomer v'
      'inner join clientes c ON'
      'c.email = v.email'
      'inner join facturas f ON'
      'c.CODIGO_CLIENTE = f.CODCLI'
      ''
      'group by v.email, v.nomhorma'
      ''
      'order by v.email')
    Params = <>
    Left = 448
    Top = 240
  end
end
