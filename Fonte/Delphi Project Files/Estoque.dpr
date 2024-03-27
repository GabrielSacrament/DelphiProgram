program Estoque;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  USobre in 'USobre.pas' {frmSobre},
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule},
  UClientes in 'UClientes.pas' {frmClientes},
  UEstoque in 'UEstoque.pas' {frmEstoque},
  UFornecedores in 'UFornecedores.pas' {frmFornecedores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmEstoque, frmEstoque);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.Run;
end.
