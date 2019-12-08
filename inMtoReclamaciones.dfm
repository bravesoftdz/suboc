inherited frmMtoReclamaciones: TfrmMtoReclamaciones
  Left = 228
  Top = 270
  Height = 418
  Caption = 'Reclamaciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtonPage: TPanel
    Height = 357
  end
  inherited pButtonRightBar: TPanel
    Height = 357
    inherited pButtonGen: TPanel
      Top = 195
    end
  end
  inherited pcPantalla: TPageControl
    Height = 357
    ActivePage = tsFicha
    inherited tsLista: TTabSheet
      inherited cxGrdPrincipal: TcxGrid
        Height = 295
      end
      inherited pnTopGrid: TPanel
        inherited RzPanel2: TRzPanel
          Visible = False
        end
      end
    end
    inherited tsFicha: TTabSheet
      object lbl1: TLabel
        Left = 7
        Top = 9
        Width = 131
        Height = 15
        Caption = 'N'#250'mero de Reclamaci'#243'n'
      end
      object cxdbtxtdt1: TcxDBTextEdit
        Left = 144
        Top = 1
        DataBinding.DataField = 'cont_pedidos'
        DataBinding.DataSource = dsTablaG
        Properties.Alignment.Horz = taRightJustify
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        Width = 105
      end
    end
  end
  inherited sbStatus: TRzStatusBar
    Top = 357
  end
  inherited dsTablaG: TDataSource
    Left = 460
    Top = 255
  end
end
