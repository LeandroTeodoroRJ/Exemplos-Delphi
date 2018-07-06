object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Emitir alarme sonoro'
  ClientHeight = 42
  ClientWidth = 205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btPlay: TButton
    Left = 8
    Top = 8
    Width = 81
    Height = 25
    Align = alCustom
    Caption = 'Reproduzir'
    TabOrder = 0
    OnClick = btPlayClick
  end
  object btStop: TButton
    Left = 112
    Top = 8
    Width = 85
    Height = 25
    Align = alCustom
    Caption = 'Parar'
    TabOrder = 1
    OnClick = btStopClick
  end
end
