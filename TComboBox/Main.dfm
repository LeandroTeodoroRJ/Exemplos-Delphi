object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'ComboBox'
  ClientHeight = 211
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 61
    Width = 66
    Height = 13
    Caption = 'Valor do item:'
  end
  object Label2: TLabel
    Left = 16
    Top = 117
    Width = 54
    Height = 13
    Caption = 'ItemIndex:'
  end
  object Label3: TLabel
    Left = 224
    Top = 61
    Width = 67
    Height = 13
    Caption = 'Cor do fundo:'
  end
  object Label4: TLabel
    Left = 224
    Top = 117
    Width = 65
    Height = 13
    Caption = 'Cor da fonte:'
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 0
    OnChange = ComboBox1Change
    Items.Strings = (
      'Item 1'
      'Item 2')
  end
  object Edit1: TEdit
    Left = 16
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 16
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ColorBox1: TColorBox
    Left = 224
    Top = 80
    Width = 145
    Height = 22
    Selected = clWindow
    TabOrder = 3
  end
  object ColorBox2: TColorBox
    Left = 224
    Top = 136
    Width = 145
    Height = 22
    Selected = clWindowText
    TabOrder = 4
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 332
    Top = 13
    object LinkControlToPropertyBrushColor: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = ColorBox1
      Track = True
      Component = ComboBox1
      ComponentProperty = 'Brush.Color'
    end
    object LinkControlToPropertyFontColor: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = ColorBox2
      Track = True
      Component = ComboBox1
      ComponentProperty = 'Font.Color'
    end
  end
end
