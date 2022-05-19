object TFmProdutos: TTFmProdutos
  Left = 0
  Top = 0
  Caption = 'TFmProdutos'
  ClientHeight = 251
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Código: TLabel
    Left = 24
    Top = 19
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Descrição: TLabel
    Left = 25
    Top = 46
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Unidade: TLabel
    Left = 25
    Top = 73
    Width = 39
    Height = 13
    Caption = 'Unidade'
  end
  object edtCodigo: TEdit
    Left = 80
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtDescricao: TEdit
    Left = 80
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 131
    Width = 423
    Height = 120
    Align = alBottom
    DataSource = dsProdutos
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'Unidade'
        Visible = True
      end>
  end
  object btInserir: TButton
    Left = 24
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 3
    OnClick = btInserirClick
  end
  object btRemover: TButton
    Left = 105
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 4
    OnClick = btRemoverClick
  end
  object btGravar: TButton
    Left = 186
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 5
    OnClick = btGravarClick
  end
  object cbUnidade: TComboBox
    Left = 80
    Top = 70
    Width = 121
    Height = 21
    ItemIndex = 0
    TabOrder = 6
    Text = 'UN'
    Items.Strings = (
      'UN'
      'KG'
      'LT'
      'CX'
      'FD'
      'GL')
  end
  object cdProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
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
  end
  object dsProdutos: TDataSource
    DataSet = cdProdutos
    Left = 312
    Top = 24
  end
  object qryProduto: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 368
    Top = 24
  end
end
