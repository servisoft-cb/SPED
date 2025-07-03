unit ClasseRegistroE210;

interface

type
  TE210 = class
  private
    FValorICMSSTOutrosCreditos: Real;
    FValorICMSSTDevolucao: Real;
    FSaldoCredorPerAnterior: Real;
    FValorICMSSTRessarcimento: Real;
    FValorAjusteCreditoICMSST: Real;
    FValorICMSSTRetido: Real;
    FValorAjusteDebitoICMSST: Real;
    FValorICMSSTOutrosDebitos: Real;
    FValorTotalDeducoes: Real;
    FValorRecolhidoRecolher: Real;
    FValorTotalICMSSTRecolher: Real;
    FSaldoDevedorAntesDeducoes: Real;
    FValorSaldoCredorICMSST: Real;
    FUF: String;
    procedure SetSaldoCredorPerAnterior(const Value: Real);
    procedure SetValorICMSSTDevolucao(const Value: Real);
    procedure SetValorICMSSTOutrosCreditos(const Value: Real);
    procedure SetValorICMSSTRessarcimento(const Value: Real);
    procedure SetValorAjusteCreditoICMSST(const Value: Real);
    procedure SetValorICMSSTRetido(const Value: Real);
    procedure SetValorAjusteDebitoICMSST(const Value: Real);
    procedure SetValorICMSSTOutrosDebitos(const Value: Real);
    procedure SetSaldoDevedorAntesDeducoes(const Value: Real);
    procedure SetValorRecolhidoRecolher(const Value: Real);
    procedure SetValorSaldoCredorICMSST(const Value: Real);
    procedure SetValorTotalDeducoes(const Value: Real);
    procedure SetValorTotalICMSSTRecolher(const Value: Real);
    procedure SetUF(const Value: String);
  public
    Constructor create;
    destructor destroy; override;
    property UF : String read FUF write SetUF;
    property SaldoCredorPerAnterior: Real read FSaldoCredorPerAnterior write SetSaldoCredorPerAnterior;
    property ValorICMSSTDevolucao: Real read FValorICMSSTDevolucao write SetValorICMSSTDevolucao;
    property ValorICMSSTRessarcimento: Real read FValorICMSSTRessarcimento write SetValorICMSSTRessarcimento;
    property ValorICMSSTOutrosCreditos: Real read FValorICMSSTOutrosCreditos write SetValorICMSSTOutrosCreditos;
    property ValorAjusteCreditoICMSST : Real read FValorAjusteCreditoICMSST write SetValorAjusteCreditoICMSST;
    property ValorICMSSTRetido : Real read FValorICMSSTRetido write SetValorICMSSTRetido;
    property ValorICMSSTOutrosDebitos : Real read FValorICMSSTOutrosDebitos write SetValorICMSSTOutrosDebitos;
    property ValorAjusteDebitoICMSST : Real read FValorAjusteDebitoICMSST write SetValorAjusteDebitoICMSST;
    property SaldoDevedorAntesDeducoes : Real read FSaldoDevedorAntesDeducoes write SetSaldoDevedorAntesDeducoes;
    property ValorTotalDeducoes : Real read FValorTotalDeducoes write SetValorTotalDeducoes;
    property ValorTotalICMSSTRecolher : Real read FValorTotalICMSSTRecolher write SetValorTotalICMSSTRecolher;
    property ValorSaldoCredorICMSST : Real read FValorSaldoCredorICMSST write SetValorSaldoCredorICMSST;
    property ValorRecolhidoRecolher : Real read FValorRecolhidoRecolher write SetValorRecolhidoRecolher;
    function CalculoSaldoCredorICMSST : Real;
    function CalculoSaldoCredorTransportar : Real;
  end;

implementation

  { TE210 }

function TE210.CalculoSaldoCredorICMSST: Real;
begin
  Result := SaldoDevedorAntesDeducoes - ValorTotalDeducoes;
end;

function TE210.CalculoSaldoCredorTransportar: Real;
begin
  Result := (SaldoCredorPerAnterior + ValorICMSSTDevolucao + ValorICMSSTRessarcimento +
             ValorICMSSTOutrosCreditos + ValorAjusteCreditoICMSST + ValorTotalDeducoes) -
            (ValorICMSSTRetido + ValorICMSSTOutrosDebitos + ValorAjusteDebitoICMSST)
end;

constructor TE210.create;
begin
  SaldoCredorPerAnterior := 0;
  ValorICMSSTDevolucao := 0;
  ValorICMSSTRessarcimento := 0;
  ValorICMSSTOutrosCreditos := 0;
  ValorAjusteCreditoICMSST := 0;
  ValorICMSSTRetido := 0;
  ValorICMSSTOutrosDebitos := 0;
  ValorAjusteDebitoICMSST := 0;
  SaldoDevedorAntesDeducoes := 0;
  ValorTotalDeducoes := 0;
  ValorTotalICMSSTRecolher := 0;
  ValorSaldoCredorICMSST := 0;
  ValorRecolhidoRecolher := 0;
end;

destructor TE210.destroy;
begin
  inherited;
end;

procedure TE210.SetSaldoCredorPerAnterior(const Value: Real);
begin
  FSaldoCredorPerAnterior := Value;
end;

procedure TE210.SetSaldoDevedorAntesDeducoes(const Value: Real);
begin
  FSaldoDevedorAntesDeducoes := Value;
end;

procedure TE210.SetUF(const Value: String);
begin
  FUF := Value;
end;

procedure TE210.SetValorAjusteCreditoICMSST(const Value: Real);
begin
  FValorAjusteCreditoICMSST := Value;
end;

procedure TE210.SetValorAjusteDebitoICMSST(const Value: Real);
begin
  FValorAjusteDebitoICMSST := Value;
end;

procedure TE210.SetValorICMSSTDevolucao(const Value: Real);
begin
  FValorICMSSTDevolucao := Value;
end;

procedure TE210.SetValorICMSSTOutrosCreditos(const Value: Real);
begin
  FValorICMSSTOutrosCreditos := Value;
end;

procedure TE210.SetValorICMSSTOutrosDebitos(const Value: Real);
begin
  FValorICMSSTOutrosDebitos := Value;
end;

procedure TE210.SetValorICMSSTRessarcimento(const Value: Real);
begin
  FValorICMSSTRessarcimento := Value;
end;

procedure TE210.SetValorICMSSTRetido(const Value: Real);
begin
  FValorICMSSTRetido := Value;
end;

procedure TE210.SetValorRecolhidoRecolher(const Value: Real);
begin
  FValorRecolhidoRecolher := Value;
end;

procedure TE210.SetValorSaldoCredorICMSST(const Value: Real);
begin
  FValorSaldoCredorICMSST := Value;
end;

procedure TE210.SetValorTotalDeducoes(const Value: Real);
begin
  FValorTotalDeducoes := Value;
end;

procedure TE210.SetValorTotalICMSSTRecolher(const Value: Real);
begin
  FValorTotalICMSSTRecolher := Value;
end;

end.
