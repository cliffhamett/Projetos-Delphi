unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCarro, uAviao;

type
  TFrmExemplo = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtDescCarro: TEdit;
    EdtCapCarro: TEdit;
    EdtQuilometragem: TEdit;
    GroupBox2: TGroupBox;
    EdtDescAviao: TEdit;
    EdtCapAviao: TEdit;
    EdtHorasVoo: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
  Carro : TCarro;
  Aviao : TAviao;
  end;

var
  FrmExemplo: TFrmExemplo;

implementation

{$R *.dfm}

procedure TFrmExemplo.Button3Click(Sender: TObject);
begin
// cria o objeto e inicializa campos conforme valores dos edits
Carro := Tcarro.Create;

if EdtDescCarro.Text <> '' then
begin
  Carro.Descricao := EdtDescCarro.Text;
end;

if EdtCapCarro.Text <> '' then
begin
  Carro.Capacidade := StrtoIntDef(EdtCapCarro.Text,0);
end;

if EdtQuilometragem.Text <> '' then
begin
  Carro.Quilometragem := StrToIntDef(EdtQuilometragem.Text,0);
end;


end;

end.
