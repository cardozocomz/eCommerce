object fmPedidos: TfmPedidos
  Left = 0
  Top = 0
  Caption = 'fmPedidos'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 13
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label2: TLabel
    Left = 184
    Top = 13
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object edtNumero: TEdit
    Left = 32
    Top = 32
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object dbgProdutos: TDBGrid
    Left = 0
    Top = 136
    Width = 527
    Height = 106
    Align = alBottom
    DataSource = dsProdutos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edtValor: TEdit
    Left = 184
    Top = 32
    Width = 73
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object btGravar: TButton
    Left = 32
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = btGravarClick
  end
  object cdProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdProdutosBeforePost
    Left = 352
    Top = 24
    object cdProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object cdProdutosQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object cdProdutosPRECO: TCurrencyField
      FieldName = 'PRECO'
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdProdutos
    Left = 416
    Top = 24
  end
  object qryProduto: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 352
    Top = 80
  end
  object qryPedido: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 416
    Top = 88
  end
end
