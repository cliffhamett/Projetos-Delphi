unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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
var i : integer;
var s : string;

begin
  try
     //bloco de c�digo
    if TryStrToInt(Edit1.Text, i) then
    begin
      MessageDlg('Valor convertido com sucesso!', mtInformation, [mbOK], 0);
    end
    else
    begin
       MessageDlg('Erro na convers�o do valor para inteiro!', mtError, [mbOK], 0);
       exit;
    end;


    i := StrtoInt(Edit1.Text);
    ShowMessage('Sucesso');
  except
     // bloco de c�digo caso der erro
     MessageDlg('Erro de convers�o', mtError, [mbOK], 0);
  end;
end;

end.
