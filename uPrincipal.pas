unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, fmProdutos, fmPedido;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Pedidos1: TMenuItem;
    procedure Produtos1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Pedidos1Click(Sender: TObject);
begin
  fmPedidos.ShowModal;
end;

procedure TForm1.Produtos1Click(Sender: TObject);
var
  fmProdutos : TTFmProdutos;
begin
  fmProdutos := TTFmProdutos.Create(nil);
  if fmProdutos.ShowModal = mrCancel then
    fmProdutos.Free;
end;

end.
