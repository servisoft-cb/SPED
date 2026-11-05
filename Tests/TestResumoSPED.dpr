program TestResumoSPED;

{$APPTYPE CONSOLE}

uses SysUtils, Classes, ResumoSPED in '..\Classes\ResumoSPED.pas';

procedure Check(Condicao: Boolean; const Mensagem: string);
begin
  if not Condicao then raise Exception.Create(Mensagem);
end;

var
  Linhas, Contagens: TStringList;
  I: Integer;
begin
  Linhas := TStringList.Create;
  Contagens := TStringList.Create;
  try
    Linhas.Add('|0000|dados|');
    Linhas.Add('|C100|nota 1|');
    Linhas.Add('|C100|nota 2|');
    Linhas.Add('|E110|apuracao|');
    Linhas.Add('|H010|estoque|');
    Linhas.Add('|K200|estoque|');
    Linhas.Add('|9999|fim|');
    Linhas.Add('');
    Linhas.Add('texto sem registro');
    Linhas.Add('|C10|invalido|');
    for I := 1 to 100000 do Linhas.Add('|C170|item|');
    ContarRegistrosSPED(Linhas, Contagens);
    Check(Contagens.Count = 7, 'Quantidade de tipos de registro');
    Check(Contagens.Values['C100'] = '2', 'Notas acumuladas');
    Check(Contagens.Values['C170'] = '100000', 'Itens acumulados');
    Check(Contagens.Values['9999'] = '1', 'Encerramento incluido');
    ContarRegistrosSPED(Linhas, Contagens);
    Check(Contagens.Values['C100'] = '2', 'Recontagem nao duplica');
    Linhas.Clear;
    ContarRegistrosSPED(Linhas, Contagens);
    Check(Contagens.Count = 0, 'Sem linhas nao mantem contagem antiga');
    Writeln('OK: registros, acumulacao, recontagem e linhas invalidas/vazias');
  finally
    Contagens.Free;
    Linhas.Free;
  end;
end.
