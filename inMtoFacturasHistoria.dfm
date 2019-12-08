object frmFacturasHistoria: TfrmFacturasHistoria
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Historia'
  ClientHeight = 567
  ClientWidth = 588
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Lucida Sans Unicode'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 21
  object cxdbmHistoria: TcxDBMemo
    Left = 0
    Top = 0
    Align = alClient
    DataBinding.DataField = 'DESCRIPCION_HISTORIA'
    DataBinding.DataSource = dmmFac.dsHistoria
    Properties.ScrollBars = ssVertical
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 89
    Height = 567
    Width = 588
  end
end
