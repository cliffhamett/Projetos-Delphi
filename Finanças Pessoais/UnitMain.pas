unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TFormMain = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Fornecedores1: TMenuItem;
    Clientes1: TMenuItem;
    procedure Fornecedores1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure validaCampoObrigatório(Valor : string);
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses UnitCadastroFornecedor;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  RetornoMensagemDlg : integer;
begin
  RetornoMensagemDlg := Messagedlg('Tem certeza que deseja fechar o programa?', mtConfirmation, [mbYes, mbNo], 0);

  if RetornoMensagemDlg = 6 then
  begin
    FormCadastroFornecedor.Close;
  end
  else
  begin
    FormCadastroFornecedor.Refresh;
  end;
end;

procedure TFormMain.Fornecedores1Click(Sender: TObject);
begin
  FormCadastroFornecedor := TFormCadastroFornecedor.Create(self);
  FormCadastroFornecedor.ShowModal;
  FreeAndNil(FormCadastroFornecedor);
  FormCadastroFornecedor.txtCodigo.SetFocus;
end;

procedure TFormMain.validaCampoObrigatório(Valor: string);
var
  valorRecebido : string;
begin
  valorRecebido := Valor;
  if ValorRecebido = '' then
  begin
    MessageDlg('Campo obrigatório não informado', mtConfirmation, [mbOK], 0);
  end;
end;

end.
