unit fmPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDataModule;

type
  TfmPedidos = class(TForm)
    edtNumero: TEdit;
    Label1: TLabel;
    dbgProdutos: TDBGrid;
    edtValor: TEdit;
    Label2: TLabel;
    cdProdutos: TClientDataSet;
    cdProdutosCODIGO: TIntegerField;
    cdProdutosDESCRICAO: TStringField;
    cdProdutosUNIDADE: TStringField;
    cdProdutosQTDE: TFloatField;
    cdProdutosPRECO: TCurrencyField;
    dsProdutos: TDataSource;
    qryProduto: TFDQuery;
    btGravar: TButton;
    qryPedido: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure cdProdutosBeforePost(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPedidos: TfmPedidos;

implementation

{$R *.dfm}

procedure TfmPedidos.btGravarClick(Sender: TObject);
begin
  qryPedido.Close;
  qryPedido.SQL.Clear;
  qryPedido.SQL.Add('INSERT INTO PEDIDOS (NUMERO, VALOR) VALUES (:NUMERO, :VALOR)');
  qryPedido.ParamByName('NUMERO').AsInteger := StrToInt(edtNumero.Text);
  qryPedido.ParamByName('VALOR').AsFloat    := StrToFloat(edtValor.Text);
  qryPedido.ExecSQL;

  cdProdutos.First;
  while not cdProdutos.Eof do
  begin
    qryPedido.Close;
    qryPedido.SQL.Clear;
    qryPedido.SQL.Add('INSERT INTO ITENSPEDIDO (NUMERO, CODIGO, QTDE, PRECO) VALUES (:NUMERO, :CODIGO, :QTDE, :PRECO)');
    qryPedido.ParamByName('NUMERO').AsInteger := StrToInt(edtNumero.Text);
    qryPedido.ParamByName('CODIGO').AsFloat   := cdProdutosCODIGO.AsInteger;
    qryPedido.ParamByName('QTDE').AsFloat     := cdProdutosQTDE.AsFloat;
    qryPedido.ParamByName('PRECO').AsFloat    := cdProdutosPRECO.AsFloat;
    qryPedido.ExecSQL;

    cdProdutos.Next;
  end;
end;

procedure TfmPedidos.cdProdutosBeforePost(DataSet: TDataSet);
var
  Valor: Currency;
begin
  if dbgProdutos.SelectedIndex = 0 then
  begin
    qryProduto.Close;
    qryProduto.SQL.Clear;
    qryProduto.SQL.Add('SELECT * FROM PRODUTOS WHERE CODIGO = :CODIGO');
    qryProduto.ParamByName('CODIGO').AsInteger := cdProdutosCODIGO.AsInteger;
    qryProduto.Open;

    if not qryProduto.Eof then
    begin
      cdProdutosCODIGO.AsInteger   := qryProduto.FieldByName('CODIGO').AsInteger;
      cdProdutosDESCRICAO.AsString := qryProduto.FieldByName('DESCRICAO').AsString;
      cdProdutosUNIDADE.AsString   := qryProduto.FieldByName('UNIDADE').AsString;
      cdProdutosQTDE.AsFloat       := 0;
      cdProdutosPRECO.AsFloat      := 0;
    end;
  end;


  if dbgProdutos.SelectedIndex = 4 then
  begin
    Valor := StrToCurr(edtValor.Text);
    Valor := Valor + cdProdutosPRECO.AsFloat;
    edtValor.Text := CurrToStr(Valor);
  end;

end;

procedure TfmPedidos.FormShow(Sender: TObject);
begin
  cdProdutos.CreateDataSet;
end;

end.
