object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 579
  Width = 1027
  object ConexãoBD: TFDConnection
    Params.Strings = (
      'Database=financas_pessoais'
      'User_Name=root'
      'Password=masterkey'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 632
    Top = 72
  end
  object tbFornecedores: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConexãoBD
    UpdateOptions.UpdateTableName = 'financas_pessoais.fornecedores'
    TableName = 'financas_pessoais.fornecedores'
    Left = 632
    Top = 128
  end
  object DSFornecedores: TDataSource
    DataSet = tbFornecedores
    Left = 632
    Top = 184
  end
end
