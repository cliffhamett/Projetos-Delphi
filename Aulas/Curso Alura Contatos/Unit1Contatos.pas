unit Unit1Contatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.Bind.DBScope, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFormContatos = class(TForm)
    FDConnection1: TFDConnection;
    BindSourceContatos_contatos: TBindSourceDB;
    FDTableContatos_contatos: TFDTable;
    BindingsList1: TBindingsList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContatos: TFormContatos;
  var MSG01: string ;

implementation

{$R *.dfm}

procedure TFormContatos.Button1Click(Sender: TObject);
begin
  FormContatos.Close ;
end;

procedure TFormContatos.DBEdit2Exit(Sender: TObject);
begin
  MSG01 := 'Campo obrigat�rio n�o informado!' ;

  if dbedit2.Text = '' then
    begin
      ShowMessage(MSG01) ;
      dbedit2.SetFocus ;
    end;
end;

end.
