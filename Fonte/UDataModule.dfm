object DataModule1: TDataModule1
  Height = 420
  Width = 565
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=estoque_yss_inventory'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 176
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      ' select * from Clientes')
    Left = 144
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 224
    Top = 32
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      ' select * from estoque')
    Left = 144
    Top = 120
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 224
    Top = 120
  end
  object FDQuery3: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Fornecedores')
    Left = 136
    Top = 208
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 224
    Top = 208
  end
end
