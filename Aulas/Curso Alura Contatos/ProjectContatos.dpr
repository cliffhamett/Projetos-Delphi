program ProjectContatos;

uses
  Vcl.Forms,
  Unit1Contatos in 'Unit1Contatos.pas' {FormContatos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormContatos, FormContatos);
  Application.Run;
end.
