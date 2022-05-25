program Project2;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  fmProdutos in 'fmProdutos.pas' {TFmProdutos},
  uDataModule in 'uDataModule.pas' {DataModule1: TDataModule},
  fmPedido in 'fmPedido.pas' {fmPedidos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfmPedidos, fmPedidos);
  Application.Run;
end.
