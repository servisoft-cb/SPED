unit uUtilPadrao;

interface

uses
  Classes, SysUtils, Dialogs, Variants, Forms, ShellApi, Windows, StrUtils, SqlExpr, DmdDatabase, DBClient, Controls, SMDBGrid,
  DB, Printers, Messages, StdCtrls, ExtCtrls, MaskUtils, Graphics, acbrutil;

  function Monta_Numero(Campo: String; Tamanho: Integer): String;
  function TirarAcento(texto: string): string;
  function TirarAcento_Arq(texto: string): string;
  function Monta_Texto(Campo: String; Tamanho: Integer): String;
  procedure AbreArquivo(arquivo: string);
  function ValidaCNPJ(numCNPJ: string): Boolean;
  function ValidaCPF(numCPF: string): Boolean;
  function fnc_Encerrar_Tela(Tabela: TClientDataSet): Boolean;
  function Formatar_Campo(Campo: String; Tamanho: Integer): String;

  function fnc_Montar_Campo(Separador: String = ';'; vReg: String = ''): String;
  function fnc_Montar_Valor(Campo: String): String;
  function Replace(Str, Ant, Novo: string): string;
  function Replace2(Str, Ant, Novo: string): string;
  function fnc_verifica_Arquivo(NomeArquivo, Le_Grava: String): String;

  procedure prc_le_Grid(Grid: TSMDBGrid; Form, Caminho: string);
  procedure prc_Grava_Grid(Grid: TSMDBGrid; Form, Caminho: string);
  function fnc_Verifica_Numero(Campo: String): Boolean;
  function fnc_Verifica_Data(Campo: String): Boolean;

  procedure prc_ShellExecute(MSG: String);

  function fnc_Busca_Nome_Filial: String;
  procedure prc_Preencher_Excel(planilha: Variant; vDados: TDataSource);
  procedure prc_Preencher_Excel2(planilha: Variant;  vDados: TDataSource; Grid :TSMDBGrid; Line: Integer = 1);
  procedure prc_Preencher_CSV(vDados: TDataSource; Grid :TSMDBGrid; vNomeArq: String);

  function fnc_Verifica_Usa_NFeConfig: Boolean;

  function CharEspeciais(Texto:String):String;

  function fnc_CNPJCFP_FilialNFeConfig: String;

  procedure addLog(Erro: string; Arquivo: string; Usar_Log: String);
  procedure prc_Form_Aguarde(Form: TForm); overload;
  procedure prc_Form_Aguarde(Form: TForm; Mensagem: String); overload;

  function WinExecAndWait32(FileName: string; Visibility: Integer; Parametro: String): Longword;

  procedure Informa(Texto:string) ;

  function FormatarTelefone(Telefone: String):String;
  function Preenche(STRI, FloodStr:String; TAM:Integer; JUST: Integer):String ;
  function FormaCNPJ(aValue: String): String;
  function DeletaString(aValue, Caracter: String): String;
  function fnc_Montar_CNPJ(CNPJ: String): String;
  function fnc_Montar_CPF(CPF: String): String;
  procedure prc_Atualiza_Sequencial(Tabela, Campo_ID: String; NumRegistro: Integer );

  procedure prc_Controla_Gravacao(Tabela: String);
  function fnc_Cor_Habilita(Habilitado: Boolean): TColor;

  function  SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind: string): string; overload;
  function  SQLLocate(Tabela, CampoProcura, CampoProcura2, CampoRetorno, ValorFind, ValorFind2: string): string; overload;
  function DelphiAberto: Boolean;

var
  vFilial: Integer;
  vFilial_Nome: String;
  vRegistro_CSV: String;
  vRegistro_CSV2: String;
  vUsuario: String;
  vTerminal: Integer; //terminal PDV Cupom
  vEndereco_Arq: String;
  vDtValidade: String; //data até quando o sistema está liberado
  vCodigoCorreto: String;

implementation

uses DateUtils,
  Math, DBGrids, DmdDatabase_NFeBD, UInformeEndereco,
  UInfMotivoExc;

function fnc_verifica_Arquivo(NomeArquivo, Le_Grava: String): String;
begin
  if copy(NomeArquivo,1,1) = '"' then
    delete(NomeArquivo,1,1);
  if copy(NomeArquivo,Length(NomeArquivo),1) = '"' then
    delete(NomeArquivo,Length(NomeArquivo),1);
  if (Le_Grava = 'G') and (copy(NomeArquivo,Length(NomeArquivo),1) = '\') then
    delete(NomeArquivo,Length(NomeArquivo),1);
  Result := NomeArquivo;
end;

function Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str  := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

function Replace2(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Posex(Ant, Str) > 0 do
  begin
    iPos := Posex(Ant, Str);
    delete(str,ipos,Length(ant));
    Str  := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

function Monta_Numero(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function TirarAcento(Texto: string): string;
var
  i: Integer;
begin
  //Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>øØ') = 0 then
    begin
      case Texto[i] of
        'Á', 'À', 'Â', 'Ä', 'Ã': Texto[i] := 'A';
        'á', 'à', 'â', 'ä', 'ã': Texto[i] := 'a';
        'É', 'È', 'Ê', 'Ë': Texto[i] := 'E';
        'é', 'è', 'ê', 'ë': Texto[i] := 'e';
        'Í', 'Ì', 'Î', 'Ï': Texto[i] := 'I';
        'í', 'ì', 'î', 'ï': Texto[i] := 'i';
        'Ó', 'Ò', 'Ô', 'Ö', 'Õ': Texto[i] := 'O';
        'ó', 'ò', 'ô', 'ö', 'õ': Texto[i] := 'o';
        'Ú', 'Ù', 'Û', 'Ü': Texto[i] := 'U';
        'ú', 'ù', 'û', 'ü': Texto[i] := 'u';
        'Ç': Texto[i] := 'C';
        'ç': Texto[i] := 'c';
        'Ñ': Texto[i] := 'N';
        'ñ': Texto[i] := 'n';
        'ø': Texto[i] := 'ø';
        'Ø': Texto[i] := 'Ø';
      else
        Texto[i] := ' ';
      end;
    end;
  end;
  Texto := StringReplace(Texto, '&', 'e',[rfReplaceAll, rfIgnoreCase]);
  Result := Texto;
end;

function TirarAcento_arq(Texto: string): string;
var
  i: Integer;
begin
  Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''!@#$%^&()_-+={}[];,.') = 0 then
    begin
      case Texto[i] of
        'Á', 'À', 'Â', 'Ä', 'Ã': Texto[i] := 'A';
        'É', 'È', 'Ê', 'Ë': Texto[i] := 'E';
        'Í', 'Ì', 'Î', 'Ï': Texto[i] := 'I';
        'Ó', 'Ò', 'Ô', 'Ö', 'Õ': Texto[i] := 'O';
        'Ú', 'Ù', 'Û', 'Ü': Texto[i] := 'U';
        'Ç': Texto[i] := 'C';
        'Ñ': Texto[i] := 'N';
      else
        Texto[i] := ' ';
      end;
    end;
  end;
  Texto := StringReplace(Texto, '&', 'e',[rfReplaceAll, rfIgnoreCase]);
  Result := AnsiUpperCase(Texto);
end;

procedure AbreArquivo(arquivo: string);
begin
  if FileExists(arquivo) then
  begin
    arquivo := '"' + arquivo + '"';
    ShellExecute(Application.Handle, 'open', PChar(arquivo), nil, nil, SW_SHOWMAXIMIZED);
  end
  else
    ShowMessage('Arquivo não encontrado!');
end;

function Monta_Texto(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function ValidaCNPJ(numCNPJ: string): Boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
  ret  := False;
  cnpj := '0';
//Analisa os formatos
  if trim(copy(numCNPJ,1,2)) = '' then
    exit;
  if Length(numCNPJ) = 18 then
  begin
    if (Copy(numCNPJ,3,1) + Copy(numCNPJ,7,1) + Copy(numCNPJ,11,1) + Copy(numCNPJ,16,1) = '../-') then
    begin
      cnpj := Copy(numCNPJ,1,2) + Copy(numCNPJ,4,3) + Copy(numCNPJ,8,3) + Copy(numCNPJ,12,4) + Copy(numCNPJ,17,2);
      ret  := True;
    end;
    if (copy(cnpj,1,6) = '000000') or (trim(copy(cnpj,1,6)) = '') then
    begin
      Result := True;
      exit;
    end;
  end;

  cnpj := Monta_Numero(numCNPJ,0);

  if Length(cnpj) = 14 then
    ret  := True;

  //Verifica
  if ret then
  begin
    try
      //1° digito
      total := 0;
      for x := 1 to 12 do
      begin
        if x < 5 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
        else
           Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
      end;
      dg1 := 11 - (total mod 11);
      if dg1 > 9 then
        dg1 := 0;

      //2° digito
      total := 0;
      for x := 1 to 13 do
      begin
        if x < 6 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
        else
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
      end;

      dg2 := 11 - (total mod 11);
      if dg2 > 9 then
        dg2 := 0;
      //Validação final
      if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
        ret := True
      else
        ret := False;
    except
      ret := False;
    end;
      //Inválidos
    case AnsiIndexStr(cnpj,['11111111111111','22222222222222','33333333333333','44444444444444',
                            '55555555555555','66666666666666','77777777777777','88888888888888','99999999999999']) of
      0..9: ret := False;
    end;
  end;
  ValidaCNPJ := ret;
end;

function ValidaCPF(numCPF: string): Boolean;
var
  cpf: string;
  x, total, dg1, dg2: Integer;
  ret: boolean;
begin
  ret := True;
  for x := 1 to Length(numCPF) do
    if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
      ret := False;

  if ret then
  begin
    ret := True;
    cpf := '';
    for x:=1 to Length(numCPF) do
      if numCPF[x] in ['0'..'9'] then
        cpf := cpf + numCPF[x];
    if Length(cpf) <> 11 then
      ret := False;

    if ret then
    begin
      //1° dígito
      total := 0;
      for x := 1 to 9 do
        total := total + (StrToInt(cpf[x]) * x);
      dg1 := total mod 11;
      if dg1 = 10 then
        dg1 := 0;

      //2° dígito
      total := 0;
      for x := 1 to 8 do
        total := total + (StrToInt(cpf[x + 1]) * (x));
      total := total + (dg1 * 9);
      dg2 := total mod 11;
      if dg2 = 10 then
        dg2 := 0;

      //Validação final
      ret := False;
      if dg1 = StrToInt(cpf[10]) then
        if dg2 = StrToInt(cpf[11]) then
          ret := True;
      //Inválidos
      case AnsiIndexStr(cpf,['11111111111','22222222222','33333333333','44444444444',
                             '55555555555','66666666666','77777777777','88888888888','99999999999']) of
        0..9: ret := False;
      end;
    end
    else
    begin
    //Se não informado deixa passar
      if cpf = '' then
        ret := True;
    end;
  end;
  ValidaCPF := ret;
end;

function fnc_Encerrar_Tela(Tabela: TClientDataSet): Boolean;
begin
  Result := True;
  if Tabela.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
      Result := False
    else
      Result := True;
  end;
end;

function Formatar_Campo(Campo: String; Tamanho: Integer): String;
var
  i: Integer;
  texto2: String;
  vAux: Integer;
begin
  Campo := Trim(Copy(Campo,1,Tamanho));
  if Tamanho <= 0 then
    vAux := Length(Campo)
  else
    vAux := Tamanho;
  Result := '';
  texto2 := Campo;
  for i := 1 to vAux - Length(texto2) do
    texto2 := texto2 + ' ';
  Result := Texto2;
end;

function fnc_Montar_Campo(Separador: String = ';'; vReg: String = ''): String;
var
  i, X: Integer;
  vTexto: String;
  vRegAux: String;
begin
  Result := '';
  if trim(vReg) = '' then
    vRegAux := vRegistro_CSV
  else
    vRegAux := vRegistro_CSV2;
  i := pos(Separador,vRegAux);
  if i = 0 then
    i := Length(vRegAux) + 1;
  Result := Copy(vRegAux,1,i-1);
  vTexto := Result;
  Delete(vRegAux,1,i);
  for x := 1 to Length(vTexto) do
  begin
    if Pos(vTexto[x],'''"') > 0 then
    begin
      vTexto[x] := ' ';
    end;
  end;
  if trim(copy(vTexto,1,1)) = '' then
    Delete(vTexto,1,1);
  if trim(copy(vTexto,Length(vTexto),1)) = '' then
    Delete(vTexto,Length(vTexto),1);
  Result := vTexto;
  if trim(vReg) = '' then
    vRegistro_CSV := vRegAux
  else
    vRegistro_CSV2 := vRegAux;
end;

function fnc_Montar_Valor(Campo: String): String;
var
  vTexto: String;
  i: Integer;
begin
  Result := '';
  vTexto := '';
  for i := 1 to Length(Campo) do
  begin
    if (copy(Campo,i,1) = '0')
      or (copy(Campo,i,1) = '1')
      or (copy(Campo,i,1) = '2')
      or (copy(Campo,i,1) = '3')
      or (copy(Campo,i,1) = '4')
      or (copy(Campo,i,1) = '5')
      or (copy(Campo,i,1) = '6')
      or (copy(Campo,i,1) = '7')
      or (copy(Campo,i,1) = '8')
      or (copy(Campo,i,1) = '9')
      or (copy(Campo,i,1) = ',')
      or (copy(Campo,i,1) = '.') then
    begin
      if (copy(Campo,i,1) = '.') then
        vTexto := vTexto + ','
      else
        vTexto := vTexto + copy(Campo,i,1);
    end;
  end;
  Result := vTexto;
end;

procedure prc_le_Grid(Grid: TSMDBGrid; Form, Caminho: string);
begin
  if trim(caminho) = '' then
    Caminho := sqlLocate('PARAMETROS_GERAL','ID','ENDGRIDS','1');
  if trim(Caminho) = '' then
    exit;
  if copy(Caminho,Length(Caminho),1) <> '\' then
    Caminho := Caminho + '\';
  try
    if fileExists(Caminho + Form + '_' + Grid.Name + '_' + vUsuario + '.txt') then
      Grid.Columns.LoadFromFile(Caminho + Form + '_' + Grid.Name + '_' + vUsuario + '.txt');
  except
  end;
end;

procedure prc_Grava_Grid(Grid: TSMDBGrid; Form, Caminho: string);
begin
  if trim(caminho) = '' then
    Caminho := sqlLocate('PARAMETROS_GERAL','ID','ENDGRIDS','1');
  if trim(Caminho) = '' then
    exit;
  try
    if not DirectoryExists(caminho) then
      CreateDirectory(PAnsiChar(caminho), nil);
    if copy(Caminho,Length(Caminho),1) <> '\' then
      Caminho := Caminho + '\';
    Grid.Columns.SaveToFile(Caminho + Form + '_' + Grid.Name + '_' + vUsuario + '.txt');
  except
    on e: Exception do
      MessageDlg('Erro ao gravar o layout da Grid: ' + #13 + e.Message, mtError, [mbOk], 0);
  end;
end;

function fnc_Verifica_Usa_NFeConfig: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT cast(COUNT(1) as integer) CONTADOR FROM PARAMETROS P '
                        + 'WHERE (P.usa_nfce = ' + QuotedStr('S') + ') '
                        + ' or (P.usa_servico = ' + QuotedStr('S') + ') '
                        + ' or (P.nfeproducao = ' + QuotedStr('1') + ') ';
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_ShellExecute(MSG: String);
begin
  ShellExecute(Application.Handle, 'Open',pansichar(MSG) ,'', '',0);
end;

function fnc_Verifica_Numero(Campo: String): Boolean;
var
  Resultado: Boolean;
  I:Integer;
begin
  Resultado := true;
  For i:=1 to Length(campo) do
    begin
      if campo[i] in ['0'..'9'] then
      else
        Resultado := false;
    end;
  Result := Resultado;
end;

function fnc_Busca_Nome_Filial: String;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT NOME FROM FILIAL WHERE PRINCIPAL = ' + QuotedStr('S');
    sds.Open;
    Result := sds.FieldByName('NOME').AsString;
    vFilial_Nome := Result;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_Preencher_Excel(planilha: Variant; vDados: TDataSource);
var
  linha, coluna: Integer;
  valorCampo: String;
  ColunaP: Integer;
  vTexto: String;
begin
  linha   := 1;
  ColunaP := 0;
  for coluna := 1 to vDados.DataSet.FieldCount do
  begin
    ColunaP := ColunaP + 1;
    valorcampo := vDados.DataSet.Fields[coluna - 1].DisplayLabel;
    planilha.cells[Linha, colunaP] := valorCampo;
    planilha.cells[Linha, colunaP].Font.bold := True; // Negrito
  end;
  vDados.DataSet.First;
  while not vDados.DataSet.Eof do
  begin
    linha := Linha + 1;
    ColunaP := 0;
    for coluna := 1 to vDados.DataSet.FieldCount do
    begin
      ColunaP := ColunaP + 1;
      vTexto := vDados.DataSet.Fields[coluna - 1].AsString;
      if trim(vTexto) <> '' then
        valorcampo := vDados.DataSet.Fields[coluna - 1].Value
      else
        valorcampo := '';
      if (FieldTypeNames[vDados.DataSet.Fields[coluna - 1].DataType] = 'Integer') then
      begin
        if trim(valorcampo) = '' then
          valorcampo := '0';
        planilha.Cells[linha, colunaP].NumberFormat := '#.##0_);(#.##0)';
        planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
      end
      else
      if (FieldTypeNames[vDados.DataSet.Fields[coluna - 1].DataType] = 'Float') then
      begin
        if trim(valorcampo) = '' then
          valorcampo := '0';
        planilha.Cells[linha, colunaP].NumberFormat := '#.##0,00_);(#.##0,000##)';
        planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
      end
      else
      if (FieldTypeNames[vDados.DataSet.Fields[coluna - 1].DataType] = 'Date') then
      begin
        if fnc_Verifica_Data(valorCampo) then //verfica se uma string é data
        begin
          try
            valorCampo := FormatDateTime('mm/dd/yyyy',StrToDate(valorCampo));
            planilha.Cells[linha, colunaP].NumberFormat := AnsiString('dd/mm/aaaa');
            planilha.cells[linha, colunaP] := valorCampo;
          except
//            vDados.DataSet.Next;
          end;
        end;
      end
      else
      begin
        planilha.Cells[linha, colunaP].NumberFormat := AnsiChar('@');;
        planilha.cells[linha, colunaP] := valorCampo;
      end;
    end;
    vDados.DataSet.Next;
  end;
end;

function fnc_Verifica_Data(Campo: String): Boolean; //verfica se uma string é data
begin
  campo := Monta_Numero(campo,8);
  Result := True;
  try
    Result := IsValidDate(StrToInt(Copy(Campo,7,4)),StrToInt(Copy(Campo,3,2)),StrToInt(Copy(Campo,1,2)));
  except
    Result := False;
  end;
end;

procedure prc_Preencher_Excel2(planilha: Variant;  vDados: TDataSource; Grid :TSMDBGrid; Line: Integer = 1);
var
  linha, coluna: Integer;
  valorCampo: String;
  ColunaP: Integer;
  vTexto: String;
begin
  Linha   := Line;
  ColunaP := 0;
  for coluna := 0 to Grid.FieldCount - 1 do
  begin
    if Grid.Columns[coluna].Visible then
    begin
      ColunaP := ColunaP + 1;
      valorcampo := Grid.Columns[coluna].Title.Caption;
      planilha.cells[Linha, colunaP] := valorCampo;
      planilha.cells[Linha, colunaP].Font.bold := True; // Negrito
    end;
  end;

  vDados.DataSet.First;
  while not vDados.DataSet.Eof do
  begin
    linha := Linha + 1;
    ColunaP := 0;
    for coluna := 0 to Grid.FieldCount - 1 do
    begin
      if Grid.Columns[coluna].Visible then
      begin
        ColunaP := ColunaP + 1;
        vTexto := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).AsString;
        if trim(vTexto) <> '' then
          valorcampo := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).Value
        else
          valorcampo := '';
        vTexto := Grid.Columns[coluna]. FieldName;

        if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Integer' then
        begin
          if trim(valorcampo) = '' then
            valorcampo := '0';
          planilha.Cells[linha, colunaP].NumberFormat := '#.##0_);(#.##0)';
          planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
        end
        else
        if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Float' then
        begin
          if trim(valorcampo) = '' then
            valorcampo := '0';
          planilha.Cells[linha, colunaP].NumberFormat := '#.##0,00_);(#.##0,000##)';
          planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
        end
        else
        if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Date' then
        begin
          if trim(valorCampo) <> '' then
          begin
            try
              valorCampo := FormatDateTime('mm/dd/yyyy',StrToDate(valorCampo));
              planilha.Cells[linha, colunaP].NumberFormat := AnsiString('dd/mm/aaaa');
              planilha.cells[linha, colunaP] := valorCampo;
            except
              vDados.DataSet.Next;
            end;
          end;
        end
        else
        begin
          planilha.Cells[linha, colunaP].NumberFormat := AnsiChar('@');;
          planilha.cells[linha, colunaP] := valorCampo;
        end;
      end;
    end;
    vDados.DataSet.Next;
  end;
end;

function CharEspeciais(Texto: String): String;
var
  i,t:integer;
begin
  Result := '';
  t:=length(texto);
  i:=1;
  While i <= t do
  begin
   if texto[i] in ['0'..'9','a'..'z','A'..'Z'] Then
     result:=result+Texto[i];
   i:=i+1;
  end;
end;

function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind: string): string; overload;
var
  MyQuery: TSQLQuery;
begin
  if ValorFind <> '' then
  begin
    MyQuery := TSQLQuery.Create(dmDatabase);
    MyQuery.SQLConnection :=  dmDatabase.scoDados;
    MyQuery.Close;
    MyQuery.SQL.Clear ;
    MyQuery.SQL.Add('select ' + CampoRetorno + ' from ' + Tabela) ;
    MyQuery.SQL.Add('where  ' + CampoProcura + ' = ' + QuotedStr(ValorFind));
    MyQuery.Open ;
    if not MyQuery.EOF then
      SQLLocate := MyQuery.FieldByName(CampoRetorno).AsString
    else
      SQLLocate := '' ;
    MyQuery.Destroy ;
  end
  else
    SQLLocate := '' ;
end ;

function fnc_Converte_Min_Dec(Hora: Real): Real; //Converte de Decimal para Minutos
var
  vAux: Real;
begin
  Result := 0;
  vAux := Frac(Hora);
  if StrToFloat(FormatFloat('0.00',vAux)) > 0 then
  begin
    vAux := StrToFloat(FormatFloat('0.00',(vAux * 60) / 100));
    vAux := Trunc(Hora) + vAux;
    Result := vAux;
  end;

end;

function fnc_CNPJCFP_FilialNFeConfig: String;
var
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  vCNPJAux: String;
begin
  dmDatabase_NFeBD := TdmDatabase_NFeBD.Create(dmDatabase_NFeBD);

  Result   := '';
  vCNPJAux := '';
  sds      := TSQLDataSet.Create(nil);
  sds2     := TSQLDataSet.Create(nil);
  try
    if SQLLocate('PARAMETROS_NFE','ID','USA_NFECONFIG_CENTRAL','1') = 'S' then
      sds.SQLConnection := dmDatabase_NFeBD.scoNFeBD_Central
    else
      sds.SQLConnection := dmDatabase_NFeBD.scoNFeBD;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds2.SQLConnection := dmDatabase.scoDados;
    sds2.NoMetadata    := True;
    sds2.GetMetadata   := False;
    sds2.Close;
    sds2.CommandText   := 'select f.cnpj_cpf, f.pessoa  from filial f '
                        + ' where coalesce(f.inativo,' + QuotedStr('N') + ') = ' + QuotedStr( 'N')
                        + '   and coalesce(f.Principal,' + QuotedStr('N') + ') = ' + QuotedStr( 'S');
    sds2.Open;
    sds2.First;
    while not sds2.Eof do
    begin
      if Trim(Result) = '' then
      begin
        sds.Close;
        sds.CommandText   := ' SELECT CC.CNPJ_TITULAR, CC.chave_acesso, CC.validade_inicio, CC.validade_fim FROM CONFIG_NFE CN '
                           + ' INNER JOIN CONFIG_CERTIFICADOS CC ON CN.ID_CERTIFICADO = CC.ID '
                           + ' WHERE CC.CNPJ_TITULAR = :CNPJ_TITULAR ';
        if sds2.FieldByName('pessoa').AsString = 'F' then
          vCNPJAux := Monta_Numero(sds2.FieldByName('cnpj_cpf').AsString,11)
        else
          vCNPJAux := Monta_Numero(sds2.FieldByName('cnpj_cpf').AsString,14);
        sds.ParamByName('CNPJ_TITULAR').AsString := vCNPJAux;
        sds.Open;
        if sds.FieldByName('validade_fim').AsDateTime >= Date then
          Result := vCNPJAux;
      end;
      sds2.Next;
    end;
  finally
    FreeAndNil(sds);
    FreeAndNil(sds2);
    FreeAndNil(dmDatabase_NFeBD);
  end;
end;

procedure addLog(Erro: string; Arquivo: string; Usar_Log: String);
begin
  if trim(Usar_Log) <> 'S' then
    exit;
  try
      with TStringList.Create do
      try
        Erro := TiraAcentos(Erro);
        if Arquivo = '' then
          Arquivo := ExtractFilePath(Application.ExeName)+'LogErro_' + FormatDateTime('yyyymmdd', now) + '.txt';
        if FileExists(arquivo) then
          LoadFromFile(arquivo);
        Add(DateTimeToStr(now) + ' ' + vUsuario + ' - ' + erro);
        SaveToFile(arquivo);

      finally
        Free;
      end;
  except
  end;
end;

procedure prc_Form_Aguarde(Form: TForm); overload;
var
  MSG: Tlabel;
  Borda: TShape;
begin
  //Form := TForm.Create(Application);
  Form.BorderStyle := bsNone;
  Form.Position := poScreenCenter;
  Form.Width := 400;
  Form.Height := 45; // até aqui criamos o form

  Borda := TShape.Create(Application);
  Borda.Parent := Form;
  Borda.Align := alClient; // uma borda envolta do form

  MSG := Tlabel.Create(Application);
  MSG.Parent := Form;
  MSG.Transparent := true;
  MSG.AutoSize := False;
  MSG.Font.Name := 'Verdana';
  MSG.Font.Size := 25;
  MSG.Width := 395;
  MSG.Height := 42;
  MSG.Caption := '... Aguarde ...';
  MSG.Alignment := taCenter; // label com a mensagem "Aguarde"

  Form.Show;
  Form.Update;
end;

procedure prc_Form_Aguarde(Form: TForm; Mensagem: String); overload;
var
  MSG: Tlabel;
  Borda: TShape;
begin
  //Form := TForm.Create(Application);
  Form.BorderStyle := bsNone;
  Form.Position := poScreenCenter;
  Form.Width := 400;
  Form.Height := 45;

  Borda := TShape.Create(Application);
  Borda.Parent := Form;
  Borda.Align := alClient;

  MSG := Tlabel.Create(Application);
  MSG.Parent := Form;
  MSG.Transparent := true;
  MSG.AutoSize := False;
  MSG.Font.Name := 'Verdana';
  MSG.Font.Size := 25;
  MSG.Width := 395;
  MSG.Height := 42;
  MSG.Caption := Mensagem;
  MSG.Alignment := taCenter;

  Form.Show;
  Form.Update;
end;

function WinExecAndWait32(FileName: string;
  Visibility: Integer; Parametro: String): Longword;
var { by Pat Ritchey }
  zAppName: array[0..512] of Char;
  zCurDir: array[0..255] of Char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  if Parametro <> EmptyStr then
  Parametro := ' ' + Parametro;
  StrPCopy(zAppName, FileName + Parametro);
  GetDir(0, WorkDir);
  StrPCopy(zCurDir, WorkDir);
  FillChar(StartupInfo, SizeOf(StartupInfo), #0);
  StartupInfo.cb          := SizeOf(StartupInfo);
  StartupInfo.dwFlags     := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  if not CreateProcess(nil,
    zAppName, // pointer to command line string
    nil, // pointer to process security attributes
    nil, // pointer to thread security attributes
    False, // handle inheritance flag
    CREATE_NEW_CONSOLE or // creation flags
    NORMAL_PRIORITY_CLASS,
    nil, //pointer to new environment block
    nil, // pointer to current directory name
    StartupInfo, // pointer to STARTUPINFO
    ProcessInfo) // pointer to PROCESS_INF
    then Result := WAIT_FAILED
  else
  begin
    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
    GetExitCodeProcess(ProcessInfo.hProcess, Result);
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end;

procedure Informa(Texto:string) ;
begin
  Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_Ok + MB_ICONINFORMATION + MB_SETFOREGROUND);
end ;

function FormatarTelefone(Telefone: String):String;
  function SomenteNumero(snum: String): String;
  VAR s1, s2: STRING;
    i: Integer;
  BEGIN
    s1 := snum;
    s2 := '';
    FOR i := 1 TO Length(s1) DO
      IF s1[i] IN ['0'..'9'] THEN
        s2 := s2 + s1[i];
    result := s2;
  End;
var sTel: String;
    bZero: Boolean;
    iDigitos: Integer;
begin
   //Obs: mascara prevê tratamento apenas para números brasileiros
   //Obs2: Esta função não leva em conta o código do país (Ex: 55, ou +55)
   sTel := SomenteNumero(Telefone); //Remove qualquer formatação que o usuário possa ter colocado.
   if sTel='' then
    Result := ''
   else
   begin
     if sTel[1]='0' then //Verifica se foi adicionado o 0 no início do número
     begin
       bZero:= True;
       sTel := Trim( copy(sTel,2,Length(sTel)) ); //Remove para fazer a formatação depois adiciona
     end
     else
       bZero := False;
     iDigitos := Length(sTel);
     //Formata de acordo com a quantidade de números encontrados.
     case iDigitos of
       8: Result := FormatMaskText('9999-9999;0;_',sTel); //8 digitos SEM DDD (ex: 34552318)
       9: Result := FormatMaskText('9 9999-9999;0;_',sTel); //9 digitos SEM DDD (ex: 991916889)
      10: Result := FormatMaskText('(99) 9999-9999;0;_',sTel); //8 Digitos (convencional, ex: 7734552318)
      11: Result := FormatMaskText('(99) 9 9999-9999;0;_',sTel); //9 Digitos (novos números, ex: 77991916889)
      12: Result := FormatMaskText('99(99)9999-9999;0;_',sTel); //Se foram 12 digitos possívelmente digitou a operadora também
      13: Result := FormatMaskText('99(99)9 9999-9999;0;_',sTel); //Se foram 13 digitos possívelmente digitou a operadora também
     else
       Result := Telefone; //Mantém na forma que o usuário digitou
     end;
     if bZero then //Para ficar com a preferência do usuário, se ele digitou o "0" eu mantenho.
       Result := '0'+Result;
   end;
end;   

function Preenche(STRI, FloodStr:String; TAM:Integer; JUST: Integer):String ;
var
  Conta: integer ;
  TotalStr, Aux_Str: String;
begin
  Aux_Str := '' ;
  for Conta := 1 to (Tam-Length(STRI)) do
  if FloodStr = '' then
    Aux_Str := Aux_Str + ' '
  else
    Aux_Str := Aux_Str + FloodStr ;
  if JUST = 0 then //Esquerda
    AUX_STR := AUX_STR + STRI ;
  if JUST = 2 then //Direita
    AUX_STR := STRI + AUX_STR ;
  Preenche := AUX_STR ;
end;

function FormaCNPJ(aValue:String):String;
begin
  Delete(aValue,ansipos('.',aValue),1);  //Remove ponto .
  Delete(aValue,ansipos('.',aValue),1);
  Delete(aValue,ansipos('-',aValue),1); //Remove traço -
  Delete(aValue,ansipos('/',aValue),1); //Remove barra /
  Result:=FormatmaskText('00\.000\.000\/0000\-00;0;',aValue);
end;

function DeletaString(aValue, Caracter: String): String;
begin
  Delete(aValue,ansipos(Caracter,aValue),1);
  Result := aValue;
end;

procedure prc_Preencher_CSV(vDados: TDataSource; Grid :TSMDBGrid; vNomeArq: String);
var
  linha, coluna: Integer;
  valorCampo: String;
  vTexto: String;
  vTexto2: String;
  vArquivo: TStringList;
  Form: TForm;
begin
  if trim(vEndereco_Arq) = '' then
  begin
    frmInformeEndereco := TfrmInformeEndereco.Create(nil);
    try
      frmInformeEndereco.ShowModal;
    finally
      FreeAndNil(frmInformeEndereco);
    end;
    if trim(vEndereco_Arq) = '' then
    begin
      MessageDlg('*** Endereço não informado' , mtInformation, [mbOk], 0);
      exit;
    end;
    if copy(vEndereco_Arq,Length(vEndereco_Arq),1) <> '\' then
      vEndereco_Arq := vEndereco_Arq + '\';
  end;
  vArquivo := TStringList.Create;
  Form := TForm.Create(Application);
  Grid.DisableScroll;
  try
    uUtilPadrao.prc_Form_Aguarde(Form);
    vTexto   := '';
    linha   := 1;
    for coluna := 0 to Grid.FieldCount - 1 do
    begin
      if Grid.Columns[coluna].Visible then
      begin
        valorcampo := Grid.Columns[coluna].Title.Caption;
        if trim(vTexto) <> '' then
          vTexto := vTexto + ';' + valorcampo
        else
          vTexto := valorcampo;
      end;
    end;
    vArquivo.Add(vTexto);
    vTexto := '';
    vDados.DataSet.First;
    while not vDados.DataSet.Eof do
    begin
      for coluna := 0 to Grid.FieldCount - 1 do
      begin
        if Grid.Columns[coluna].Visible then
        begin
          vTexto2 := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).AsString;
          if trim(vTexto2) <> '' then
            valorcampo := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).Value
          else
            valorcampo := '';
          if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Integer' then
          begin
            if valorcampo = '' then
              valorCampo := '0';
          end;
          if vTexto <> '' then
            vTexto := vTexto + ';' + valorCampo
          else
            vTexto := valorCampo;
        end;
      end;
      vArquivo.Add(vTexto);
      vTexto := '';
      vDados.DataSet.Next;
    end;
    if copy(vEndereco_Arq,Length(vEndereco_Arq),1) <> '\' then
      vEndereco_Arq := vEndereco_Arq + '\';
    vArquivo.SaveToFile(vEndereco_Arq + vNomeArq);
    MessageDlg('*** Gravado o Arquivo: ' + vEndereco_Arq + vNomeArq , mtConfirmation, [mbOk], 0);
  finally
    begin
      FreeAndNil(vArquivo);
      FreeAndNil(Form);
    end;
  end;
  Grid.EnableScroll;
end;

procedure prc_Atualiza_Sequencial(Tabela, Campo_ID: String; NumRegistro: Integer );
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    if trim(Campo_ID) <> '' then
    begin
      sds.CommandText   := 'SELECT MAX('+Campo_ID+') ID from ' + Tabela;
      if UpperCase(Tabela) = 'PESSOA' then
        sds.CommandText := sds.CommandText + ' WHERE CODIGO < 99999';
      sds.Open;
      NumRegistro := sds.FieldByName('ID').AsInteger;
    end;
    sds.Close;
    sds.CommandText   := 'update or insert into SEQUENCIAL (TABELA, FILIAL, NUMREGISTRO, SERIE) '
                       + 'values (:TABELA, 0, :NUMREGISTRO, 0)';
    sds.ParamByName('TABELA').AsString       := Tabela;
    sds.ParamByName('NUMREGISTRO').AsInteger := NumRegistro;
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Montar_CNPJ(CNPJ: String): String;
begin
  CNPJ := Monta_Numero(CNPJ,0);
  Result := copy(CNPJ,1,2) + '.' + copy(CNPJ,3,3) + '.' + copy(CNPJ,6,3) + '/' + copy(CNPJ,9,4) + '-' + copy(CNPJ,13,2);
end;

function fnc_Montar_CPF(CPF: String): String;
begin
  CPF    := Monta_Numero(CPF,0);
  Result := copy(CPF,1,3) + '.' + copy(CPF,4,3) + '.' + copy(CPF,7,3) + '-' + copy(CPF,10,2);
end;

function  SQLLocate(Tabela, CampoProcura, CampoProcura2, CampoRetorno, ValorFind, ValorFind2: string): string; overload;
var
  MyQuery: TSQLQuery;
begin
  if ValorFind <> '' then
  begin
    MyQuery := TSQLQuery.Create(dmDatabase);
    MyQuery.SQLConnection :=  dmDatabase.scoDados;
    MyQuery.Close;
    MyQuery.SQL.Clear ;
    MyQuery.SQL.Add('select ' + CampoRetorno + ' from ' + Tabela) ;
    MyQuery.SQL.Add('where  ' + CampoProcura + ' = ' + QuotedStr(ValorFind));
    MyQuery.SQL.Add('  AND  ' + CampoProcura2 + ' = ' + QuotedStr(ValorFind2));
    MyQuery.Open ;
    if not MyQuery.EOF then
      SQLLocate := MyQuery.FieldByName(CampoRetorno).AsString
    else
      SQLLocate := '' ;
    MyQuery.Destroy ;
  end
  else
    ValorFind := '' ;
end;

procedure prc_Controla_Gravacao(Tabela: String);
var
  sds: TSQLDataSet;
  Flag: Boolean;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr(Tabela);
    Flag := False;
    while not Flag do
    begin
      try
        sds.Close;
        sds.ExecSQL;
        Flag := True;
      except
        on E: Exception do
        begin
          Flag := False;
        end;
      end;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Cor_Habilita(Habilitado: Boolean): TColor;
begin
  if Habilitado then
    Result := clWindow
  else
    Result := $00DDDDDD;
end;

function DelphiAberto: Boolean;
begin
  Result := FindWindow('TAppBuilder', nil) > 0;
end;

end.

