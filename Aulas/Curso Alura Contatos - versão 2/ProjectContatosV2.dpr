program ProjectContatosV2;

uses
  Vcl.Forms,
  UnitContatos in 'UnitContatos.pas' {Form1},
  UnitFormul�rioPrincipal in 'UnitFormul�rioPrincipal.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
