unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Retorno: Integer;

begin
  Retorno := Messagedlg('Deseja continuar a aplicação?', mtConfirmation,
    [mbYes, mbNo], 0);

  if Retorno = 6 then
  begin
    Messagedlg('Ok, seja feliz!', mtInformation, [mbOK], 0);
  end
  else
  begin
    Close;
  end;

  { if CheckBox1.Checked then
    begin
    showMessage('Verdadeiro');
    end
    else if CheckBox2.Checked then
    begin
    showMessage('Verdadeiro 2');
    end
    else
    begin
    showMessage('Falso')
    end; }
end;

end.
