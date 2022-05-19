unit fmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TTFmProdutos = class(TForm)
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    Código: TLabel;
    Descrição: TLabel;
    Unidade: TLabel;
    DBGrid1: TDBGrid;
    cdProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    cdProdutosCODIGO: TIntegerField;
    cdProdutosDESCRICAO: TStringField;
    cdProdutosUNIDADE: TStringField;
    btInserir: TButton;
    btRemover: TButton;
    btGravar: TButton;
    cbUnidade: TComboBox;
    qryProduto: TFDQuery;
    procedure btInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRemoverClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TFmProdutos: TTFmProdutos;

implementation

{$R *.dfm}

procedure TTFmProdutos.btGravarClick(Sender: TObject);
begin
  try
    qryProduto.Close;
    qryProduto.SQL.Clear;
    qryProduto.SQL.Add('DELETE FROM PRODUTOS');
    qryProduto.ExecSQL;

    cdProdutos.First;
    while not cdProdutos.Eof do
    begin
      qryProduto.Close;
      qryProduto.SQL.Clear;
      qryProduto.SQL.Add('INSERT INTO PRODUTOS (CODIGO, DESCRICAO, UNIDADE) VALUES (:CODIGO, :DESCRICAO, :UNIDADE)');
      qryProduto.ParamByName('CODIGO').AsInteger   := cdProdutosCODIGO.AsInteger;
      qryProduto.ParamByName('DESCRICAO').AsString := cdProdutosDESCRICAO.AsString;
      qryProduto.ParamByName('UNIDADE').AsString   := cdProdutosUNIDADE.AsString;
      qryProduto.Execute;

      cdProdutos.Next;
    end;

  except on E: Exception do
    begin
      ShowMessage('Problema ao gravar: '+e.Message);
      Abort;
    end;
  end;

  ShowMessage('Gravado com sucesso!');
end;

procedure TTFmProdutos.btInserirClick(Sender: TObject);
begin
  cdProdutos.Insert;
  cdProdutosCODIGO.AsInteger   := StrToInt(edtCodigo.Text);
  cdProdutosDESCRICAO.AsString := edtDescricao.Text;
  cdProdutosUNIDADE.AsString   := cbUnidade.Text;
  cdProdutos.Post;
end;

procedure TTFmProdutos.btRemoverClick(Sender: TObject);
begin
  cdProdutos.Delete;
end;

procedure TTFmProdutos.FormCreate(Sender: TObject);
begin
  cdProdutos.CreateDataSet;
end;

procedure TTFmProdutos.FormShow(Sender: TObject);
begin
  qryProduto.Close;
  qryProduto.SQL.Clear;
  qryProduto.SQL.Add('SELECT * FROM PRODUTOS');
  qryProduto.Open;

  while not qryProduto.Eof do
  begin
    cdProdutos.Insert;
    cdProdutosCODIGO.AsInteger   := qryProduto.FieldByName('CODIGO').AsInteger;
    cdProdutosDESCRICAO.AsString := qryProduto.FieldByName('DESCRICAO').AsString;
    cdProdutosUNIDADE.AsString   := qryProduto.FieldByName('UNIDADE').AsString;
    cdProdutos.Post;

    qryProduto.Next;
  end;
end;

end.
