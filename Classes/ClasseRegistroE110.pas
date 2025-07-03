unit ClasseRegistroE110;

interface

type
  TE110 = class
  private
    FValorTotalDebitos: Real;
    FValorAjusteDebitos: Real;
    FValorAjusteCreditos: real;
    FValorEstornoDebitos: Real;
    FValorTotalCreditos: real;
    FValorTotalAjusteCreditos: real;
    FValorTotalAjusteDebitos: Real;
    FValorEstornoCreditos: real;
    FValorIcmsRecolher: Real;
    FValorRecolhidoRecolher: Real;
    FValorTotalDeducao: Real;
    FValorSaldoApurado: Real;
    FValorSaldoCredorAnt: Real;
    FValorSaldoCredorTransportar: Real;
    procedure SetValorTotalDebitos(const Value: Real);
    procedure SetValorAjusteDebitos(const Value: Real);
    procedure SetValorAjusteCreditos(const Value: real);
    procedure SetValorEstornoCreditos(const Value: real);
    procedure SetValorEstornoDebitos(const Value: Real);
    procedure SetValorTotalAjusteCreditos(const Value: real);
    procedure SetValorTotalAjusteDebitos(const Value: Real);
    procedure SetValorTotalCreditos(const Value: real);
    procedure SetValorIcmsRecolher(const Value: Real);
    procedure SetValorRecolhidoRecolher(const Value: Real);
    procedure SetValorSaldoApurado(const Value: Real);
    procedure SetValorSaldoCredorAnt(const Value: Real);
    procedure SetValorSaldoCredorTransportar(const Value: Real);
    procedure SetValorTotalDeducao(const Value: Real);
  public
    constructor create;
    destructor destroy; override;
    property ValorTotalDebitos: Real read FValorTotalDebitos write SetValorTotalDebitos;
    property ValorAjusteDebitos : Real read FValorAjusteDebitos write SetValorAjusteDebitos;
    property ValorTotalAjusteDebitos : Real read FValorTotalAjusteDebitos write SetValorTotalAjusteDebitos;
    property ValorEstornoCreditos : Real read FValorEstornoCreditos write SetValorEstornoCreditos;
    property ValorTotalCreditos : Real read FValorTotalCreditos write SetValorTotalCreditos;
    property ValorAjusteCreditos : Real read FValorAjusteCreditos write SetValorAjusteCreditos;
    property ValorTotalAjusteCreditos : Real read FValorTotalAjusteCreditos write SetValorTotalAjusteCreditos;
    property ValorEstornoDebitos : Real read FValorEstornoDebitos write SetValorEstornoDebitos;
    property ValorSaldoCredorAnt : Real read FValorSaldoCredorAnt write SetValorSaldoCredorAnt;
    property ValorSaldoApurado : Real read FValorSaldoApurado write SetValorSaldoApurado;
    property ValorTotalDeducao : Real read FValorTotalDeducao write SetValorTotalDeducao;
    property ValorIcmsRecolher : Real read FValorIcmsRecolher write SetValorIcmsRecolher;
    property ValorSaldoCredorTransportar : Real read FValorSaldoCredorTransportar write SetValorSaldoCredorTransportar;
    property ValorRecolhidoRecolher : Real read FValorRecolhidoRecolher write SetValorRecolhidoRecolher;
    function CalcularImposto : Real;
    function ValorSaldoCredor : Real;
  end;

implementation

{ TE110 }

function TE110.CalcularImposto: Real;
begin
  FValorSaldoApurado := FValorTotalDebitos - FValorTotalCreditos;
  if FValorSaldoApurado < 0 then
    FValorSaldoApurado := 0;
  Result := FValorSaldoApurado;
  ValorIcmsRecolher := ValorSaldoApurado + ValorTotalDeducao;
end;

constructor TE110.create;
begin
  FValorTotalDebitos := 0;
  FValorTotalCreditos := 0;
  FValorAjusteDebitos := 0;
  FValorAjusteCreditos := 0;
  FValorEstornoDebitos := 0;
  FValorTotalAjusteCreditos := 0;
  FValorTotalAjusteDebitos := 0;
  FValorEstornoCreditos := 0;
  FValorIcmsRecolher := 0;
  FValorRecolhidoRecolher := 0;
  FValorTotalDeducao := 0;
  FValorSaldoApurado := 0;
  FValorSaldoCredorAnt := 0;
  FValorSaldoCredorTransportar := 0;
end;

destructor TE110.destroy;
begin

  inherited;
end;

procedure TE110.SetValorAjusteCreditos(const Value: real);
begin
  FValorAjusteCreditos := Value;
end;

procedure TE110.SetValorAjusteDebitos(const Value: Real);
begin
  FValorAjusteDebitos := Value;
end;

procedure TE110.SetValorEstornoCreditos(const Value: real);
begin
  FValorEstornoCreditos := Value;
end;

procedure TE110.SetValorEstornoDebitos(const Value: Real);
begin
  FValorEstornoDebitos := Value;
end;

procedure TE110.SetValorIcmsRecolher(const Value: Real);
begin
  FValorIcmsRecolher := Value;
end;

procedure TE110.SetValorRecolhidoRecolher(const Value: Real);
begin
  FValorRecolhidoRecolher := Value;
end;

procedure TE110.SetValorSaldoApurado(const Value: Real);
begin
  FValorSaldoApurado := Value;
end;

procedure TE110.SetValorSaldoCredorAnt(const Value: Real);
begin
  FValorSaldoCredorAnt := Value;
end;

procedure TE110.SetValorSaldoCredorTransportar(const Value: Real);
begin
  FValorSaldoCredorTransportar := Value;
end;

procedure TE110.SetValorTotalAjusteCreditos(const Value: real);
begin
  FValorTotalAjusteCreditos := Value;
end;

procedure TE110.SetValorTotalAjusteDebitos(const Value: Real);
begin
  FValorTotalAjusteDebitos := Value;
end;

procedure TE110.SetValorTotalCreditos(const Value: real);
begin
  FValorTotalCreditos := Value;
end;

procedure TE110.SetValorTotalDebitos(const Value: Real);
begin
  FValorTotalDebitos := Value;
end;

procedure TE110.SetValorTotalDeducao(const Value: Real);
begin
  FValorTotalDeducao := Value;
end;

function TE110.ValorSaldoCredor: Real;
begin
  if FValorTotalCreditos > FValorTotalDebitos then
    FValorSaldoCredorTransportar := FValorTotalCreditos - FValorTotalDebitos
  else
    FValorSaldoCredorTransportar := 0;
  Result := FValorSaldoCredorTransportar;
end;

end.
