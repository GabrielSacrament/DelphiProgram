object frmFornecedores: TfrmFornecedores
  Left = 0
  Top = 0
  Caption = 'Fornecedores Cadastrados'
  ClientHeight = 405
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 72
    Top = 56
    Width = 593
    Height = 266
    DataSource = DataModule1.DataSource3
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
