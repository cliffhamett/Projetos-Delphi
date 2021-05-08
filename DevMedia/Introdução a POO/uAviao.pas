unit uAviao;

interface

uses Dialogs, uMeioTransporte;

type
TAviao = class(TMeioTransporte)

private
FHorasVoo : integer;
function GetHorasVoo: integer;
procedure SetHorasVoo(const Value: integer);

protected
procedure Ligar(); override;

public
procedure Mover(); override;

published
property HorasVoo: integer
read GetHorasVoo write SetHorasVoo;
constructor create();
end;

implementation

{ TAviao }

constructor TAviao.create();
begin
  inherited;
  HorasVoo := 0;
end;

function TAviao.GetHorasVoo: integer;
begin
  result := FHorasVoo
end;

procedure TAviao.Ligar();
begin
  ShowMessage('Ligando o aviao ' + Descricao);
end;

procedure TAviao.Mover();
begin
  inherited;
  ShowMessage(Descricao+' est� voando.');
end;

procedure TAviao.SetHorasVoo(const Value: integer);
begin
  if Value < 0 then
  begin
    FHorasVoo := 0
  end
  else
  begin
    FHorasVoo := Value;
  end;
end;

end.
