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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses UnitCadastroFornecedor;

procedure TFormMain.Fornecedores1Click(Sender: TObject);
begin
  FormCadastroFornecedor := TFormCadastroFornecedor.Create(self);
  FormCadastroFornecedor.ShowModal;
  FreeAndNil(FormCadastroFornecedor);
end;

end.
