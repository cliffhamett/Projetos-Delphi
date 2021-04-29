unit UnitContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtID: TEdit;
    txtNOME: TEdit;
    txtTELEFONE: TEdit;
    txtEMAIL: TEdit;
    txtOBS: TMemo;
    FDConnection1: TFDConnection;
    FDContatos: TFDTable;
    DataSource1: TDataSource;
    btnNovo: TButton;
    btnGravar: TButton;
    Button1: TButton;
    Button2: TButton;
    btnExcluir: TButton;
    btnEditar: TButton;
    btnCancelar: TButton;
    txtProcura: TEdit;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    imgFoto: TImage;
    SpeedButton3: TSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure carrega;
    procedure bloqueia;
    procedure limpa;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure txtNOMEExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FDContatosBeforePost(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  estado: integer;

  implementation

{$R *.dfm}

uses UnitFormul�rioPrincipal;

procedure TForm1.carrega;
begin
  txtID.Text       := fdcontatos.FieldByName('id').Value;
  txtNOME.Text     := fdcontatos.FieldByName('nome').Value;

  if fdcontatos.FieldByName('telefone').Value = null then
    begin
      txtTELEFONE.Text := '';
    end
  else
    begin
      txtTELEFONE.Text := fdcontatos.FieldByName('telefone').Value;
    end;

  if fdcontatos.FieldByName('email').Value = null then
    begin
      txtEMAIL.Text    := '';
    end
  else
    begin
      txtEMAIL.Text    := fdcontatos.FieldByName('email').Value;
    end;

  if fdcontatos.FieldByName('observacoes').Value = null then
    begin
      txtOBS.Text      := '';
    end
  else
    begin
      txtOBS.Text      := fdcontatos.FieldByName('observacoes').Value;
    end;

  if fdcontatos.FieldByName('foto').Value <> null then
    begin
      if fileexists(fdcontatos.FieldByName('foto').Value) then
        begin
          imgfoto.Picture.LoadFromFile(fdcontatos.FieldByName('foto').Value);
        end
    end
    else
      begin
        imgfoto.Picture := nil;
      end;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
  carrega;
end;

procedure TForm1.bloqueia;
begin
  txtNOME.Enabled     := not txtNOME.Enabled;
  txtTELEFONE.Enabled := not txtTELEFONE.Enabled;
  txtEMAIL.Enabled    := not txtEMAIL.Enabled;
  txtOBS.Enabled      := not txtOBS.Enabled;
end;

procedure TForm1.limpa;
begin
  txtID.Text       := '';
  txtNOME.Text     := '';
  txtTELEFONE.Text := '';
  txtEMAIL.Text    := '';
  txtOBS.Text      := '';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if not fdcontatos.FindKey([txtProcura.Text]) then
    begin
       ShowMessage('C�digo informado n�o foi encontrado.');
    end
  else
    begin
      carrega;
    end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  opendialog1.Execute();
  imgfoto.Picture.LoadFromFile(opendialog1.FileName);
  fdcontatos.Edit;
  fdcontatos.FieldByName('foto').Value := opendialog1.FileName;
  fdcontatos.post;
end;

procedure TForm1.txtNOMEExit(Sender: TObject);
begin
  if txtNome.Text = '' then
    begin
      ShowMessage('Campo obrigat�rio n�o informado!');
      txtNome.SetFocus;
    end;
end;

procedure TForm1.btnCancelarClick(Sender: TObject);
begin
  limpa;

  if estado = 1 then
    begin
      fdcontatos.Prior;
    end;

  carrega;
  bloqueia;

  estado := 0;
end;

procedure TForm1.btnEditarClick(Sender: TObject);
begin
  bloqueia;
  fdcontatos.Edit;
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
  fdcontatos.Delete;
  carrega;
end;

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  fdcontatos.Post;
  bloqueia;
  ShowMessage('Contato gravado com sucesso!');
end;

procedure TForm1.btnNovoClick(Sender: TObject);
begin
  fdcontatos.Insert;
  bloqueia;
  limpa;
  txtNome.SetFocus;

  estado := 1; //1 significa que est� gravado (post)
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
fdcontatos.Next;
carrega;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
fdcontatos.Prior;
carrega;
end;

procedure TForm1.FDContatosBeforePost(DataSet: TDataSet);
begin
  fdcontatos.FieldByName('nome').value        := txtNOME.Text;
  fdcontatos.FieldByName('telefone').value    := txtTELEFONE.Text;
  fdcontatos.FieldByName('email').value       := txtEMAIL.Text;
  fdcontatos.FieldByName('observacoes').value := txtOBS.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  fdconnection1.Params.Database := 'Contatos' ;
  fdconnection1.Connected       := true ;
  fdcontatos.TableName          := 'contatos';
  fdcontatos.Active             := true ;
end;

end.
