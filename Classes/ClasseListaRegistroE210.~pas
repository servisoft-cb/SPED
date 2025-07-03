unit ClasseListaRegistroE210;

interface

uses
  ClasseRegistroE210;

type
  TListaE210 = class
  private
    FListaE210: TObjectList<TE210>;
    procedure SetListaE210(const Value: TObjectList<TE210>);

  public
    constructor Create;
    destructor Destroy; override;
    procedure Adicionar(aValue: TE210);
    function Registros : Integer;
    property ListaE210: TObjectList<TE210> read FListaE210 write SetListaE210;
  end;

implementation

uses
  System.SysUtils;

{ TListaE210 }

procedure TListaE210.Adicionar(aValue: TE210);
var
  i : integer;
begin
  FListaE210.Add(aValue);
end;

constructor TListaE210.Create;
begin
  FListaE210 := TObjectList<TE210>.Create;
end;

destructor TListaE210.Destroy;
begin
  FreeAndNil(FListaE210);
  inherited;
end;

function TListaE210.Registros: Integer;
begin
  Result := FListaE210.Count;
end;

procedure TListaE210.SetListaE210(const Value: TObjectList<TE210>);
begin
  FListaE210 := Value;
end;

end.
