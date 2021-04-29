unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Dolar: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Real: TEdit;
    Cotacao: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Compra: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CompraClick(Sender: TObject);
//    procedure CotacaoOnExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  VARREAL : Float64 ;
  VARNOME : string ;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if dolar.Text = '' then
    begin
      ShowMessage('Favor informar o valor em d�lar!');
      dolar.SetFocus ;
    end
  else if cotacao.Text = '' then
    begin
      ShowMessage('Favor informar o valor da cota��o do dia!');
      cotacao.SetFocus ;
    end
  else
    begin
      Compra.Enabled := true ;
      Compra.SetFocus ;
      VARREAL := StrToFloat(Dolar.Text) * StrToFloat(Cotacao.Text) ;
      REAL.Text := FloatToStr(VARREAL) ;
    end;
end;

procedure TForm1.CompraClick(Sender: TObject);
begin

  if strtofloat(DOLAR.Text) = 0 then
    begin
      ShowMessage('O valor da compra n�o pode ser zero!');
      Abort ;
    end
  else if strtofloat (DOLAR.Text) < 0 then
    begin
      ShowMessage('O valor da compra n�o pode ser inferior a zero!');
      Abort ;
    end
  else if strtofloat (real.Text) <0 then
    begin
    ShowMessage('Clique no bot�o "Convers�o" para recalcular o valor da compra.');
    Abort ;
  end
  else
    begin
      VARNOME := INPUTBOX('Nome','Digite o seu nome:', '');
    end;

  if VARNOME <> '' then
    begin
      Label4.Caption := 'Compra executada por ' + VARNOME + '. Voc� comprou ' + dolar.Text + ' d�lar(es)! ' +
      'A sua compra custou ' + real.text + ' real(ais).'
    end
  else
    begin
      Showmessage('Favor informar o nome do comprador!') ;
      Abort ;
    end;
end;

//procedure TForm1.CotacaoOnExit(Sender: TObject);
//begin
//  if strtofloat(cotacao.Text) = 0 then
//  begin
//    showMessage('O valor informado da cota��o � inv�lido!') ;
//    cotacao.SetFocus ;
//  end;
//end;

end.
