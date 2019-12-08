object frmParam: TfrmParam
  Left = 271
  Top = 213
  Caption = 'Par'#225'metros de Entorno'
  ClientHeight = 357
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Lucida Sans'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 326
    Width = 487
    Height = 31
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      487
      31)
    object btAceptar: TcxButton
      Left = 403
      Top = 3
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Aceptar'
      TabOrder = 1
    end
    object cxButton1: TcxButton
      Left = 312
      Top = 3
      Width = 73
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 487
    Height = 326
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object pcParam: TcxPageControl
      Left = 1
      Top = 1
      Width = 485
      Height = 324
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = tsDefaults
      Properties.CustomButtons.Buttons = <>
      Properties.Rotate = True
      Properties.TabPosition = tpLeft
      ClientRectBottom = 320
      ClientRectLeft = 116
      ClientRectRight = 481
      ClientRectTop = 4
      object tsGenerales: TcxTabSheet
        Caption = 'Generales'
        ImageIndex = 0
        object Label1: TLabel
          Left = 8
          Top = 39
          Width = 103
          Height = 14
          Caption = 'Ubicaci'#243'n Empresa'
        end
        object Label2: TLabel
          Left = 9
          Top = 13
          Width = 79
          Height = 14
          Caption = 'Usuario Activo'
        end
        object DBcbUbi: TcxDBComboBox
          Left = 120
          Top = 35
          TabOrder = 1
          Width = 121
        end
        object DBcbUser: TcxDBComboBox
          Left = 120
          Top = 7
          TabOrder = 0
          Width = 121
        end
      end
      object tsDefaults: TcxTabSheet
        Caption = 'Datos por defecto'
        ImageIndex = 1
        object pcDefaults: TcxPageControl
          Left = 0
          Top = 0
          Width = 365
          Height = 316
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tsDInqui
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 312
          ClientRectLeft = 4
          ClientRectRight = 361
          ClientRectTop = 25
          object tsDInqui: TcxTabSheet
            Caption = 'Inquilinos'
            ImageIndex = 0
          end
          object tsDProp: TcxTabSheet
            Caption = 'Propietarios'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          object tsDContrat: TcxTabSheet
            Caption = 'Contratos'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          object tsDFact: TcxTabSheet
            Caption = 'Facturas'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
        end
      end
      object tsContadores: TcxTabSheet
        Caption = 'Contadores'
        ImageIndex = 2
      end
    end
  end
end
