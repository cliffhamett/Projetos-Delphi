unit uMeioTransporte;

interface

uses Dialogs;

type
TMeioTransporte = class

private
FDescricao : string;
FCapacidade : integer;

protected
procedure Ligar(); virtual; abstract;

public
constructor create();
destructor destroy; override;
procedure Mover();  virtual;

published
property Descricao: string read FDescricao write FDescricao;
property Capacidade: integer read FCapacidade write FCapacidade;

end;

implementation

{ TMeioTransporte}

constructor TMeioTransporte.create;
begin
  inherited;
  Capacidade := 0;
  Descricao := 'Sem nome';
end;

destructor TMeioTransporte.destroy;
begin
  // seu código de limpeza aqui
  inherited;
end;

procedure TMeioTransporte.Mover();
begin
  Ligar();
end;

end.
