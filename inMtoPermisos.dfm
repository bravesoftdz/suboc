inherited frmMtoPermisos: TfrmMtoPermisos
  Top = 274
  Caption = 'Permisos'
  ClientHeight = 380
  ExplicitHeight = 418
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtonPage: TPanel
    Height = 353
    ExplicitHeight = 357
  end
  inherited pButtonRightBar: TPanel
    Height = 353
    ExplicitHeight = 357
    inherited pButtonGen: TPanel
      Top = 195
      ExplicitTop = 195
    end
  end
  inherited pcPantalla: TPageControl
    Height = 353
    ExplicitHeight = 357
    inherited tsLista: TTabSheet
      inherited cxGrdPrincipal: TcxGrid
        Height = 295
        ExplicitHeight = 295
        inherited cxGrdDBTabPrin: TcxGridDBTableView
          OptionsData.Editing = True
          object tvcGrdDBTabPrinid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 30
          end
          object tvcGrdDBTabPrinMenu: TcxGridDBColumn
            DataBinding.FieldName = 'Menu'
            Width = 151
          end
          object tvcGrdDBTabPrinFormulario: TcxGridDBColumn
            DataBinding.FieldName = 'Formulario'
            Width = 114
          end
          object tvcGrdDBTabPrinDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 290
          end
          object tvcGrdDBTabPrinDescripcionMenu: TcxGridDBColumn
            DataBinding.FieldName = 'DescripcionMenu'
          end
          object tvcGrdDBTabPrinPosicion: TcxGridDBColumn
            DataBinding.FieldName = 'Posicion'
          end
          object tvcGrdDBTabPrinInstanteModif: TcxGridDBColumn
            DataBinding.FieldName = 'InstanteModif'
          end
        end
      end
      inherited pnTopGrid: TPanel
        inherited RzPanel2: TRzPanel
          Visible = False
          inherited chkSoloActivos: TcxCheckBox
            Visible = False
          end
        end
        inherited RzPanel4: TRzPanel
          inherited chkEditInList: TcxCheckBox
            State = cbsChecked
          end
        end
      end
    end
  end
  inherited sbStatus: TRzStatusBar
    Top = 353
    ExplicitTop = 357
  end
  inherited dsTablaG: TDataSource
    DataSet = zqryPermisos
  end
  object zqryPermisos: TZQuery
    Connection = dmConn.ZconnGlent
    SQL.Strings = (
      'SELECT * FROM glt_user_permisos_form')
    Params = <>
    Left = 376
    Top = 192
  end
end
