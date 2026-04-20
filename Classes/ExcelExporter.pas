unit ExcelExporter;

interface

uses
  ComObj, Variants, DB, DBClient, SysUtils;

type
  TExcelExporter = class
  private
    FExcelApp: OleVariant;
    FWorkbook: OleVariant;
    FWorksheet: OleVariant;
    procedure InicializarExcel;
    procedure FinalizarExcel;
    procedure EscreverCabecalhos(CDS: TClientDataSet);
    procedure EscreverDados(CDS: TClientDataSet);
  public
    procedure Exportar(CDS: TClientDataSet; const NomeArquivo: string);
  end;

implementation

procedure TExcelExporter.InicializarExcel;
begin
  FExcelApp := CreateOleObject('Excel.Application');
  FExcelApp.Visible := False;
  FExcelApp.DisplayAlerts := False;
  FWorkbook := FExcelApp.Workbooks.Add;
  FWorksheet := FWorkbook.Worksheets[1];
end;

procedure TExcelExporter.FinalizarExcel;
begin
  FWorkbook.Close(False);
  FExcelApp.Quit;
  FWorksheet := Unassigned;
  FWorkbook := Unassigned;
  FExcelApp := Unassigned;
end;

procedure TExcelExporter.EscreverCabecalhos(CDS: TClientDataSet);
var
  i: Integer;
begin
  for i := 0 to CDS.FieldCount - 1 do
    FWorksheet.Cells[1, i + 1] := CDS.Fields[i].DisplayName;
end;

procedure TExcelExporter.EscreverDados(CDS: TClientDataSet);
var
  i, row: Integer;
  valor: string;
begin
  row := 2;
  CDS.First;
  while not CDS.Eof do
  begin
    for i := 0 to CDS.FieldCount - 1 do
    begin
      if CDS.Fields[i].DataType in [ftString, ftWideString] then
      begin
        valor := CDS.Fields[i].AsString;
        if Length(valor) >= 15 then
          FWorksheet.Cells[row, i + 1] := '''' + valor // Força texto
        else
          FWorksheet.Cells[row, i + 1] := valor;
      end
      else
      begin
        // Se for numérico, envia como número
        FWorksheet.Cells[row, i + 1] := CDS.Fields[i].AsVariant;
      end;
//      if (CDS.Fields[i].DataType in [ftString, ftWideString]) and (Length(valor) >= 15) then
//        FWorksheet.Cells[row, i + 1] := '''' + valor // força como texto no Excel
//      else
//        FWorksheet.Cells[row, i + 1] := valor;
    end;
    Inc(row);
    CDS.Next;
  end;
end;

procedure TExcelExporter.Exportar(CDS: TClientDataSet; const NomeArquivo: string);
begin
  CDS.First;
  CDS.DisableControls;
  try
    InicializarExcel;
    try
      EscreverCabecalhos(CDS);
      EscreverDados(CDS);
      FWorkbook.SaveAs(NomeArquivo, 51); // 51 = xlOpenXMLWorkbook (.xlsx)
    finally
      FinalizarExcel;
    end;
  finally
    CDS.EnableControls;
  end;
end;

end.

