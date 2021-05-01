unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
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
  i : integer;

begin
  i := 1;

  repeat
    Memo1.Lines.Add('Adicionada Linha: ' + IntToStr(i));
    Inc(i);
  until (i > 10);
  // O repeat vai repetir o bloco de código enquanto o teste for falso.
  // Quando der positivo, ele finaliza.

  Memo1.Lines.Add('Finalizado!');

end;

end.
