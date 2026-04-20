unit UEPSService;

interface

uses
  SysUtils, DB, SqlExpr;

type
  TUEPSService = class
  public
    procedure Executar(Filial: Integer; DataMov: TDateTime);
  end;

implementation

uses
  DmdDatabase; // unit onde está seu DataModule com scoDados

procedure TUEPSService.Executar(Filial: Integer; DataMov: TDateTime);
var
  StoredProc: TSQLStoredProc;
begin
  StoredProc := TSQLStoredProc.Create(nil);
  try
    StoredProc.SQLConnection := dmDatabase.scoDados;
    StoredProc.StoredProcName := 'PRC_UEPS';

    StoredProc.Params.Clear;
    StoredProc.Params.CreateParam(ftInteger, 'P_FILIAL', ptInput).AsInteger := Filial;
    StoredProc.Params.CreateParam(ftDate, 'P_DATA', ptInput).AsDate := DataMov;

    StoredProc.ExecProc;
  finally
    StoredProc.Free;
  end;
end;

end.

