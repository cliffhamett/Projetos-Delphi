unit UnitCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormCalculadora = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Valor1: TEdit;
    Valor2: TEdit;
    Label3: TLabel;
    Resultado: TEdit;
    Label4: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnDividirInteiro: TButton;
    btnMultiplicar: TButton;
    btnDividirFlutuante: TButton;
    btnResto: TButton;
    GroupBox1: TGroupBox;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirInteiroClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirFlutuanteClick(Sender: TObject);
    procedure btnRestoClick(Sender: TObject);
  private
    { Private declarations }
  public
    function somar(Valor1, Valor2 : Integer) : Integer ;
    function subtrair(Valor1, Valor2 : Integer) : Integer;
    function multiplicar(Valor1, Valor2 : Integer) : Integer;
    function dividirInteiro(Valor1, Valor2 : Integer) : Integer;
    function dividirFlutuante(Valor1, Valor2 : Currency) : Currency;
    function resto(Valor1, Valor2 : Integer) : Integer;
  end;

var
  FormCalculadora: TFormCalculadora;

implementation

{$R *.dfm}

procedure TFormCalculadora.btnDividirFlutuanteClick(Sender: TObject);
var
  ResultadoDivisaoFlutuante : Currency;
begin
  ResultadoDivisaoFlutuante     := dividirFlutuante(StrToCurr(Valor1.Text), StrToCurr(Valor2.Text));
  Resultado.Text                := CurrToStr(ResultadoDivisaoFlutuante);
end;

procedure TFormCalculadora.btnDividirInteiroClick(Sender: TObject);
var
  ResultadoDivisaoInteiro : Integer;
begin
  ResultadoDivisaoInteiro       := dividirInteiro(StrToInt(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text                := IntToStr(ResultadoDivisaoInteiro);
end;

procedure TFormCalculadora.btnMultiplicarClick(Sender: TObject);
var
  ResultadoMultiplicacao : Integer;
begin
  ResultadoMultiplicacao        := multiplicar(StrToint(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text                := IntToStr(ResultadoMultiplicacao);
end;

procedure TFormCalculadora.btnRestoClick(Sender: TObject);
var
  ResultadoResto : Integer;
begin
  ResultadoResto := resto(StrToInt(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text := IntToStr(ResultadoResto);
end;

procedure TFormCalculadora.btnSomarClick(Sender: TObject);
var
  ResultadoSoma : Integer;

begin
  ResultadoSoma                 := somar(StrToInt(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text                := IntToStr(ResultadoSoma);
end;

procedure TFormCalculadora.btnSubtrairClick(Sender: TObject);
var
  ResultadoSubtracao : Integer;
begin
  ResultadoSubtracao            := subtrair(StrToInt(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text                := IntToStr(ResultadoSubtracao);
end;

function TFormCalculadora.resto(Valor1: Integer; Valor2: Integer) : Integer;
begin
  Result := Valor1 mod Valor2;
end;

function TFormCalculadora.dividirFlutuante(Valor1: Currency; Valor2: Currency) : Currency;
begin
  Result := Valor1 / Valor2;
end;

function TFormCalculadora.multiplicar(Valor1: Integer; Valor2: Integer) : Integer;
begin
  Result := Valor1 * Valor2;
end;

function TFormCalculadora.dividirInteiro(Valor1, Valor2: Integer): Integer;
begin
  Result := Valor1 div Valor2;
  //Para dividir valores inteiros, deve ser usado "div" ao inv�s de "/"
end;

function TFormCalculadora.somar(Valor1: Integer; Valor2: Integer) : Integer;
begin
  Result := Valor1 + Valor2;
end;

function TFormCalculadora.subtrair(Valor1: Integer; Valor2: Integer) : Integer;
begin
  Result := Valor1 - Valor2;
end;

end.
