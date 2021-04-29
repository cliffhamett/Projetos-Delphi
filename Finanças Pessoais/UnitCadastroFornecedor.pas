unit UnitCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFormCadastroFornecedor = class(TForm)
    txtCodigo: TDBEdit;
    txtNome: TDBEdit;
    GroupBoxFornecedoresCadastrados: TGroupBox;
    labelCodigo: TLabel;
    labelNomeFornecedor: TLabel;
    labelCnpj: TLabel;
    GroupBoxInformacoesParaCadastro: TGroupBox;
    PainelBotoes: TPanel;
    DBGrid1: TDBGrid;
    btnNovo: TSpeedButton;
    btnGravar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    txtMaskCnpj: TMaskEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFornecedor: TFormCadastroFornecedor;

implementation

{$R *.dfm}

uses UnitConexaoBancoDeDados;

procedure TFormCadastroFornecedor.btnNovoClick(Sender: TObject);
begin
  ConexoesBD.tbFornecedores.Insert;
end;

procedure TFormCadastroFornecedor.btnSairClick(Sender: TObject);
begin
  FormCadastroFornecedor.Close;
end;

procedure TFormCadastroFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFormCadastroFornecedor.FormCreate(Sender: TObject);
begin
  txtMaskCnpj.EditMask := '99.999.999/9999-99';
end;

end.
