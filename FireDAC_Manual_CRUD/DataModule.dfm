object dm: Tdm
  OldCreateOrder = False
  Height = 248
  Width = 500
  object DataSetProvider: TDataSetProvider
    DataSet = FDQuery
    Left = 96
    Top = 104
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 184
    Top = 104
    object ClientDataSetcodigo: TAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ClientDataSetnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\DADOS\Informatica\Info_projetos\Exemplos Delphi\Fire' +
        'ADC_Manual_CRUD\database.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM cadastro')
    Left = 144
    Top = 24
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 248
    Top = 24
  end
  object FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 360
    Top = 24
  end
end
