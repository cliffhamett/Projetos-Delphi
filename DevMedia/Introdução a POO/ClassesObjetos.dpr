program ClassesObjetos;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmExemplo},
  uMeioTransporte in 'uMeioTransporte.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemplo, FrmExemplo);
  Application.Run;
end.
