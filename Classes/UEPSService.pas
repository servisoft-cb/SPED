unit UEPSService;

interface

uses
  SysUtils, DB, SqlExpr;

type
  TUEPSService = class
  public
    procedure Executar(Filial: Integer; DataInicial, DataFinal: TDateTime);
  end;

implementation

uses
  DmdDatabase; // unit onde está seu DataModule com scoDados

procedure TUEPSService.Executar(Filial: Integer; DataInicial, DataFinal: TDateTime);
var
  StoredProc: TSQLStoredProc;
begin
  StoredProc := TSQLStoredProc.Create(nil);
  try
    StoredProc.SQLConnection := dmDatabase.scoDados;
    StoredProc.StoredProcName := 'PRC_UEPS_PERIODO';

    StoredProc.Params.Clear;
    StoredProc.Params.CreateParam(ftInteger, 'P_FILIAL', ptInput).AsInteger := Filial;
    StoredProc.Params.CreateParam(ftDate, 'P_DATA_INICIAL', ptInput).AsDate := DataInicial;
    StoredProc.Params.CreateParam(ftDate, 'P_DATA_FINAL', ptInput).AsDate := DataFinal;

    StoredProc.ExecProc;
  finally
    StoredProc.Free;
  end;
end;

end.

