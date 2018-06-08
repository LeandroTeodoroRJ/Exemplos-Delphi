object dm: Tdm
  OldCreateOrder = False
  Height = 103
  Width = 340
  object Conn: TSQLConnection
    ConnectionName = 'CRUDdb'
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
      
        'Database=C:\DADOS\Informatica\Info_projetos\dbExpress_Manual_CRU' +
        'D\database.db')
    Connected = True
    Left = 32
    Top = 24
  end
  object Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM cadastro')
    SQLConnection = Conn
    Left = 96
    Top = 24
  end
  object DataSetProvider: TDataSetProvider
    DataSet = Query
    Left = 168
    Top = 24
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 256
    Top = 24
    object ClientDataSetcodigo: TLargeintField
      FieldName = 'codigo'
      Required = True
    end
    object ClientDataSetnome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 30
    end
  end
end
