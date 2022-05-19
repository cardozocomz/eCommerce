program Project2;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  fmProdutos in 'fmProdutos.pas' {TFmProdutos},
  uDataModule in 'uDataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TTFmProdutos, TFmProdutos);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
