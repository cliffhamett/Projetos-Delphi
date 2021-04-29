program ProjectFinanças;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitCadastroFornecedor in 'UnitCadastroFornecedor.pas' {FormCadastroFornecedor},
  Vcl.Themes,
  Vcl.Styles,
  UnitConexaoBancoDeDados in 'UnitConexaoBancoDeDados.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormCadastroFornecedor, FormCadastroFornecedor);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
