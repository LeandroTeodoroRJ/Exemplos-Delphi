object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Varrer registros e salvando no array'
  ClientHeight = 211
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btVarrer: TButton
    Left = 96
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Varrer'
    Enabled = False
    TabOrder = 0
    OnClick = btVarrerClick
  end
  object lsValores: TListBox
    Left = 198
    Top = 8
    Width = 211
    Height = 185
    ItemHeight = 13
    TabOrder = 1
  end
  object btConectar: TButton
    Left = 15
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 2
    OnClick = btConectarClick
  end
  object SQLConnection: TSQLConnection
    ConnectionName = 'dbDados'
    DriverName = 'Sqlite'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Sqlite'
      'DriverUnit=Data.DbxSqlite'
      
        'DriverPackageLoader=TDBXSqliteDriverLoader,DBXSqliteDriver200.bp' +
        'l'
      
        'MetaDataPackageLoader=TDBXSqliteMetaDataCommandFactory,DbxSqlite' +
        'Driver200.bpl'
      'FailIfMissing=True'
      
        'Database=C:\DADOS\Informatica\Info_projetos\Exemplos Delphi\Varr' +
        'er_registro_com_array\dados.db')
    Connected = True
    Left = 40
    Top = 64
  end
  object SQLQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM salvos')
    SQLConnection = SQLConnection
    Left = 120
    Top = 64
  end
  object DataSetProvider: TDataSetProvider
    DataSet = SQLQuery
    Left = 40
    Top = 128
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 120
    Top = 128
    object ClientDataSetitem: TLargeintField
      FieldName = 'item'
      Required = True
    end
    object ClientDataSetvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
  end
end
