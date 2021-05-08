unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCarro, uAviao, uMeioTransporte;

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
    Button5: TButton;
    Button6: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
//  Carro : TCarro;
//  Aviao : TAviao;

  Carro,Aviao : TMeioTransporte;
  end;

var
  FrmExemplo: TFrmExemplo;

implementation

{$R *.dfm}

procedure TFrmExemplo.Button1Click(Sender: TObject);
begin
  // criar o objeto a inicializa campos conforme valores dos edits
  Aviao :=  TAviao.Create;

  if EdtDescAviao.Text <> '' then
  begin
    Aviao.Descricao := EdtDescAviao.Text;
  end;

  if EdtCapAviao.Text <> '' then
  begin
    Aviao.Capacidade := StrToIntDef(EdtCapAviao.Text,0);
  end;

  if EdtHorasVoo.Text <> '' then
  begin
    TAviao(Aviao).HorasVoo := StrToIntDef(EdtHorasVoo.Text,0);
  end;
end;

procedure TFrmExemplo.Button2Click(Sender: TObject);
begin
  Aviao.Free; //ou FreeAndNil(Aviao)
end;

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
    Tcarro(Carro).Quilometragem := StrToIntDef(EdtQuilometragem.Text,0);
  end;


end;

procedure TFrmExemplo.Button4Click(Sender: TObject);
begin
  Carro.Free; //ou FreeAndNil(Carro)
end;

procedure TFrmExemplo.Button5Click(Sender: TObject);
begin
  Carro.Mover;
end;

procedure TFrmExemplo.Button6Click(Sender: TObject);
begin
  Aviao.Mover;
end;

procedure TFrmExemplo.FormCreate(Sender: TObject);
begin
  EdtDescCarro.Text     := 'Ford Ka';
  EdtCapCarro.Text      := '5';
  EdtQuilometragem.Text := '11000';
  EdtDescAviao.Text     := 'Airbus A370';
  EdtCapAviao.Text      := '350';
  EdtHorasVoo.Text      := '5000';
end;

end.
