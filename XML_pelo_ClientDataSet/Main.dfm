object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Criar XML pelo ClientDataSet'
  ClientHeight = 251
  ClientWidth = 264
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
    Left = 8
    Top = 39
    Width = 87
    Height = 13
    Caption = 'Filtrar pelo nome: '
  end
  object BindNavigator1: TBindNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = BindSourceDB1
    Orientation = orHorizontal
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 63
    Width = 247
    Height = 180
    DataSource = DataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit: TEdit
    Left = 101
    Top = 36
    Width = 108
    Height = 21
    TabOrder = 2
  end
  object CheckBox: TCheckBox
    Left = 215
    Top = 39
    Width = 97
    Height = 17
    Caption = 'OK'
    TabOrder = 3
    OnClick = CheckBoxClick
  end
  object ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'dados.xml'
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    StoreDefs = True
    Left = 32
    Top = 184
    Data = {
      420000009619E0BD010000001800000002000000000003000000420006636F64
      69676F0400010000000000046E6F6D6501004900000001000557494454480200
      020014000000}
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = ClientDataSet
    ScopeMappings = <>
    Left = 104
    Top = 128
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 108
    Top = 181
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 32
    Top = 128
  end
end
