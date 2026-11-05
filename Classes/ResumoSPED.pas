unit ResumoSPED;

interface

uses Classes;

procedure ContarRegistrosSPED(Linhas, Contagens: TStrings);

implementation

uses SysUtils;

type
  TContagemRegistro = class
    Quantidade: Integer;
  end;

procedure ContarRegistrosSPED(Linhas, Contagens: TStrings);
var
  Lista: TStringList;
  I, J, Indice: Integer;
  Linha, Registro: string;
  Valido: Boolean;
  Contagem: TContagemRegistro;
begin
  Lista := TStringList.Create;
  try
    Lista.Sorted := True;
    for I := 0 to Linhas.Count - 1 do
    begin
      Linha := Linhas[I];
      if Length(Linha) < 6 then Continue;
      if (Linha[1] <> '|') or (Linha[6] <> '|') then Continue;
      Registro := Copy(Linha, 2, 4);
      Valido := True;
      for J := 1 to 4 do
        if not (Registro[J] in ['0'..'9', 'A'..'Z']) then
          Valido := False;
      if not Valido then Continue;
      if not Lista.Find(Registro, Indice) then
      begin
        Contagem := TContagemRegistro.Create;
        Lista.AddObject(Registro, Contagem);
      end
      else
        Contagem := TContagemRegistro(Lista.Objects[Indice]);
      Inc(Contagem.Quantidade);
    end;
    Contagens.BeginUpdate;
    try
      Contagens.Clear;
      for I := 0 to Lista.Count - 1 do
        Contagens.Add(Lista[I] + '=' +
          IntToStr(TContagemRegistro(Lista.Objects[I]).Quantidade));
    finally
      Contagens.EndUpdate;
    end;
  finally
    for I := 0 to Lista.Count - 1 do Lista.Objects[I].Free;
    Lista.Free;
  end;
end;

end.
