program ProjectFinanšas;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitCadastroFornecedor in 'UnitCadastroFornecedor.pas' {FormCadastroFornecedor},
  Vcl.Themes,
  Vcl.Styles,
  UnitConexaoBancoDeDados in 'UnitConexaoBancoDeDados.pas' {ConexoesBD: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormCadastroFornecedor, FormCadastroFornecedor);
  Application.CreateForm(TConexoesBD, ConexoesBD);
  Application.Run;
end.
