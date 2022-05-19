object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 217
  Width = 412
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=aula'
      'User_Name=root'
      'Password=123abc'
      'Server=localhost'
      'DriverID=MySQL')
    Left = 184
    Top = 80
  end
end
