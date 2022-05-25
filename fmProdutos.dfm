object TFmProdutos: TTFmProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 305
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 185
    Width = 414
    Height = 120
    Align = alBottom
    DataSource = dsProdutos
    TabOrder = 0
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 185
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Código: TLabel
      Left = 16
      Top = 13
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Descrição: TLabel
      Left = 17
      Top = 54
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Unidade: TLabel
      Left = 16
      Top = 95
      Width = 39
      Height = 13
      Caption = 'Unidade'
    end
    object edtCodigo: TEdit
      Left = 16
      Top = 27
      Width = 37
      Height = 21
      TabOrder = 0
    end
    object edtDescricao: TEdit
      Left = 16
      Top = 68
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object cbUnidade: TComboBox
      Left = 16
      Top = 111
      Width = 121
      Height = 21
      ItemIndex = 0
      TabOrder = 2
      Text = 'UN'
      Items.Strings = (
        'UN'
        'KG'
        'LT'
        'CX'
        'FD'
        'GL')
    end
    object Panel2: TPanel
      Left = 1
      Top = 151
      Width = 412
      Height = 33
      Align = alBottom
      TabOrder = 3
      object btGravar: TBitBtn
        Left = 151
        Top = 1
        Width = 74
        Height = 31
        Align = alLeft
        Caption = 'Gravar'
        Glyph.Data = {
          F2010000424DF201000000000000760000002800000024000000130000000100
          0400000000007C01000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
          3333333333388F3333333333000033334224333333333333338338F333333333
          0000333422224333333333333833338F33333333000033422222243333333333
          83333338F3333333000034222A22224333333338F33F33338F33333300003222
          A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
          38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
          2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
          0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
          333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
          33333A2224A2233333333338F338F83300003333333333A2224A333333333333
          8F338F33000033333333333A222433333333333338F338F30000333333333333
          A224333333333333338F38F300003333333333333A223333333333333338F8F3
          000033333333333333A3333333333333333383330000}
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btGravarClick
      end
      object btRemover: TBitBtn
        Left = 76
        Top = 1
        Width = 75
        Height = 31
        Align = alLeft
        Cancel = True
        Caption = 'Remover'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btRemoverClick
      end
      object btInserir: TBitBtn
        Left = 1
        Top = 1
        Width = 75
        Height = 31
        Align = alLeft
        Caption = 'Inserir'
        Default = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        TabOrder = 2
        OnClick = btInserirClick
      end
    end
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
