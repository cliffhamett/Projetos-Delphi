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
  while i <= 10 do
  begin
    //Inc incrementa um valor a uma vari�vel inteira
    Memo1.Lines.Add('Adicionada Linha: ' + IntToStr(i));
    Inc(i);
  end;

  Memo1.Lines.Add('Finalizado!');

end;

end.