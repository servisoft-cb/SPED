unit UImportar_Excel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzTabs, Grids, DBGrids, SMDBGrid, NxCollection,
  ExtCtrls, StdCtrls, Mask, ToolEdit, ComObj, Buttons, DB, SqlExpr,
  CurrEdit, midaslib, DBClient, UDMImportar,
  FMTBcd, AdvPanel, NxEdit;

type
  TfrmImportar_Excel = class(TForm)
    pnlPrincipal: TAdvPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    btnImportar: TNxButton;
    ceTotal: TCurrencyEdit;
    ceLidos: TCurrencyEdit;
    File_Excel: TFilenameEdit;
    Label4: TLabel;
    ComboMes: TNxComboBox;
    ceAno: TCurrencyEdit;
    btnExcluir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    fDMImportar: TDMImportar;

    vID_Produto : Integer;
    vReferencia: String;

    vRegistro : String;
    vArquivo : String;
    vArquivo_XLS : String;
    vArquivo_Adi : String;
    vVlrTotal : Real;

    gGrid: TStringGrid;
    linha : Integer;

    procedure prc_Gravar_Produto;
    procedure prc_Le_Excel;
    procedure prc_Gravar_Estoque_Mov;

    function fnc_Cliente(Nome : String) : Integer;
    function fnc_NCM(NCM : String) : Integer;
    function fnc_Unidade(Unidade : String) : String;

    function fnc_Montar_Campo: String;
    function Monta_Numero(Campo: String; Tamanho: Integer): String;
    function XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string; WorkSheet: Integer): Boolean;
    function fnc_verifica_Arquivo(NomeArquivo, Le_Grava : String) : String;
    function Replace(Str, Ant, Novo: string): string;
    function fnc_Verifica_Casas_Decimais(Campo : String) : String;
    function fnc_existe_Estoque_Mov : Boolean;

  public
    { Public declarations }
  end;

var
  frmImportar_Excel: TfrmImportar_Excel;

implementation

uses rsDBUtils, StrUtils, DateUtils, uUtilPadrao, VarUtils, DmdDatabase;

{$R *.dfm}

function TfrmImportar_Excel.fnc_Montar_Campo: String;
var
  i, X: Integer;
  vTexto: String;
begin
  Result := '';
  i      := pos(';',vRegistro);
  if i = 0 then
    i := Length(vRegistro) + 1;
  Result := Copy(vRegistro,1,i-1);
  vTexto := Result;
  Delete(vRegistro,1,i);
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
end;

procedure TfrmImportar_Excel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmImportar_Excel.btnImportarClick(Sender: TObject);
begin
  if trim(File_Excel.Text) = '' then
  begin
    MessageDlg('*** Arquivo não informado!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMImportar.qFilial.Close;
  fDMImportar.qFilial.Open;

  if fnc_existe_Estoque_Mov then
  begin
    MessageDlg('*** Movimento do mês já gerado, para gerar novamente deve excluir o movimento!', mtInformation, [mbOk], 0);
    exit;
  end;

  gGrid := TStringGrid.Create(gGrid);
  try
    vArquivo_XLS := fnc_verifica_Arquivo(File_Excel.Text,'L');
    XlsToStringGrid2(gGrid,vArquivo_XLS,1);
    prc_Le_Excel;
  finally
    FreeAndNil(gGrid);
  end;
  MessageDlg('*** Importação concluída!', mtConfirmation, [mbOk], 0);
end;

function TfrmImportar_Excel.XlsToStringGrid2(AGrid: TStringGrid;
  AXLSFile: string; WorkSheet: Integer): Boolean;
const
	xlCellTypeLastCell = $0000000B;
var
	XLApp, Sheet: OLEVariant;
	RangeMatrix: Variant;
	x, y, k, r: Integer;
begin
	Result := False;
	//Cria Excel- OLE Object
	XLApp  := CreateOleObject('Excel.Application');
	try
		//Esconde Excel
		XLApp.Visible:=False;

		//Abre o Workbook
		XLApp.Workbooks.Open(AXLSFile);

		//Setar na planilha desejada
		XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[WorkSheet].Activate;

		// Para saber a dimensão do WorkSheet (o número de linhas e de colunas),
		//selecionamos a última célula não vazia do worksheet
		Sheet :=  XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[WorkSheet];
		Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Select;

    //Pegar o número da última linha
    x:=XLApp.ActiveCell.Row;
		//x:=fDMExcel.cdsProduto.RecordCount;
    //Pegar o número da última coluna
		y:=XLApp.ActiveCell.Column;

		//Seta Stringgrid linha e coluna
		AGrid.RowCount:=x;
		AGrid.ColCount:=y;

		//Associa a variant WorkSheet com a variant do Delphi
		RangeMatrix:=XLApp.Range['A1', XLApp.Cells.Item[X, Y]].Value;

		//Cria o loop para listar os registros no TStringGrid
		k:=1;
		repeat
		  for r:=1 to y do
		  begin
			 AGrid.Cells[(r - 1),(k - 1)] := RangeMatrix[K, R];

			 //Redimensionar tamanho das colunas do grid dinamicamente
			 If (AGrid.ColWidths[r-1] < (Length(AGrid.Cells[(r - 1),(k - 1)]) * 8)) then
				AGrid.ColWidths[r-1] := Length(AGrid.Cells[(r - 1),(k - 1)]) * 8;

		  end;
		  Inc(k,1);
		until k > x;
		RangeMatrix := Unassigned;
	finally
		//Fecha o Excel
		if not VarIsEmpty(XLApp) then
		   begin
			  XLApp.Quit;
			  XLAPP:=Unassigned;
			  Sheet:=Unassigned;
			  Result:=True;
		   end;
	end;

end;

function TfrmImportar_Excel.Monta_Numero(Campo: String;
  Tamanho: Integer): String;
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


function TfrmImportar_Excel.fnc_verifica_Arquivo(NomeArquivo, Le_Grava : String) : String;
begin
  if copy(NomeArquivo,1,1) = '"' then
    delete(NomeArquivo,1,1);
  if copy(NomeArquivo,Length(NomeArquivo),1) = '"' then
    delete(NomeArquivo,Length(NomeArquivo),1);
  if (Le_Grava = 'G') and (copy(NomeArquivo,Length(NomeArquivo),1) = '\') then
    delete(NomeArquivo,Length(NomeArquivo),1);
  Result := NomeArquivo;
end;

function TfrmImportar_Excel.Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

function TfrmImportar_Excel.fnc_Verifica_Casas_Decimais(Campo: String): String;
var
  i, x : Integer;
begin
  Result := '';
  i := pos(',',Campo);
  if i > 0 then
    i := Length(campo) - i;
  if i < 2 then
  begin
    for x := 1 to 2 - i do
      result := result + '0';
  end;
end;

procedure TfrmImportar_Excel.prc_Le_Excel;
begin
  ceTotal.AsInteger := gGrid.RowCount;
  ceLidos.AsInteger := 0;
  Linha             := 0;

  //Produto
  ceLidos.AsInteger := 0;
  Linha := 0;
  while Linha < gGrid.RowCount -1 do
  begin
    Linha := Linha + 1;
    ceLidos.AsInteger := ceLidos.AsInteger + 1;
    Application.ProcessMessages;
    if (linha > 2) then
    begin
      prc_Gravar_Produto;
      prc_Gravar_Estoque_Mov;
    end;
  end;
end;

procedure TfrmImportar_Excel.prc_Gravar_Produto;
var
  vTexto: String;
  vTexto2: String;
begin
  vTexto := gGrid.Cells[0,Linha];
  if trim(vTexto) = '' then
    exit;
    
  vReferencia := vTexto;

  fDMImportar.cdsProduto.Close;
  fDMImportar.sdsProduto.ParamByName('REFERENCIA').AsString := vReferencia;
  fDMImportar.cdsProduto.Open;
  if not fDMImportar.cdsProduto.IsEmpty then
    exit;

  vID_Produto := dmDatabase.ProximaSequencia('PRODUTO',0);
  fDMImportar.cdsProduto.Insert;
  fDMImportar.cdsProdutoID.AsInteger  := vID_Produto;
  fDMImportar.cdsProdutoREFERENCIA.AsString := vReferencia;
  fDMImportar.cdsProdutoNOME.AsString := UpperCase(trim(gGrid.Cells[2,Linha]));
  vTexto2 := trim(gGrid.Cells[3,Linha]);
  vTexto2 := Replace(vTexto2,'.','');
  fDMImportar.cdsProdutoPRECO_VENDA.AsString := trim(vTexto2);

  vTexto := UpperCase(gGrid.Cells[3,Linha]);
  fDMImportar.cdsProdutoID_FORNECEDOR.AsInteger := fnc_Cliente(vTexto);
  fDMImportar.cdsProdutoID_MARCA.Clear;
  fDMImportar.cdsProdutoPESOLIQUIDO.AsFloat := 0;
  fDMImportar.cdsProdutoPESOBRUTO.AsFloat   := 0;
  fDMImportar.cdsProdutoINATIVO.AsString    := 'N';
  fDMImportar.cdsProdutoPERC_IPI.AsFloat    := 0;
  fDMImportar.cdsProdutoPRECO_CUSTO.AsFloat := 0;
  fDMImportar.cdsProdutoTIPO_REG.AsString := 'P';
  fDMImportar.cdsProdutoPOSSE_MATERIAL.AsString := 'E';
  fDMImportar.cdsProdutoESTOQUE.AsString        := 'S';
  fDMImportar.cdsProdutoMATERIAL_OUTROS.AsString  := 'M';
  fDMImportar.cdsProdutoUSUARIO.AsString          := 'excel';
  fDMImportar.cdsProdutoDTCAD.AsDateTime          := Date;
  fDMImportar.cdsProdutoHRCAD.AsDateTime          := Now;
  vTexto := gGrid.Cells[5,Linha];
  fDMImportar.cdsProdutoID_NCM.AsInteger := fnc_NCM(vTexto);
  fDMImportar.cdsProdutoORIGEM_PROD.AsString := '0';
  fDMImportar.cdsProdutoOBS.Clear;
  fDMImportar.cdsProdutoTIPO_VENDA.AsString := 'R';
  fDMImportar.cdsProdutoSPED_TIPO_ITEM.AsString := '00';
  fDMImportar.cdsProdutoPERC_MARGEMLUCRO.Clear;
  vTexto  := 'UNI';
  fDMImportar.cdsProdutoUNIDADE.AsString := fnc_Unidade(vTexto);

  fDMImportar.cdsProdutoDT_ALTPRECO.Clear;
  fDMImportar.cdsProdutoLOCALIZACAO.Clear;
  fDMImportar.cdsProdutoID_GRUPO.Clear;
  fDMImportar.cdsProdutoCOD_BARRA.Clear;
  fDMImportar.cdsProdutoUSA_GRADE.AsString := 'N';
  fDMImportar.cdsProdutoQTD_ESTOQUE_MIN.Clear;
  fDMImportar.cdsProdutoUSA_PRECO_COR.AsString := 'N';
  fDMImportar.cdsProdutoUSA_COR.AsString       := 'N';
  fDMImportar.cdsProdutoTRANSFER.AsString      := 'N';
  fDMImportar.cdsProdutoPRECO_CUSTO_TOTAL.Clear;
  fDMImportar.cdsProdutoCOD_CEST.AsString := gGrid.Cells[8,Linha];
  fDMImportar.cdsProdutoGERAR_FCI.AsString := 'N';
  fDMImportar.cdsProdutoDT_ALT_PRECOCUSTO.Clear;
  fDMImportar.cdsProdutoUSA_NA_BALANCA.AsString := 'N';
  fDMImportar.cdsProdutoGERAR_WEB.AsString      := 'N';
  fDMImportar.cdsProdutoPERC_ICMS_NFCE.Clear;
  fDMImportar.cdsProdutoTIPO_PRODUTO.Clear;
  fDMImportar.cdsProdutoVLR_MINIMO.Clear;
  fDMImportar.cdsProdutoCOD_ANT.AsString := IntToStr(vID_Produto);
  fDMImportar.cdsProdutoQTD_ESTOQUE_MAX.Clear;
  fDMImportar.cdsProduto.Post;
  fDMImportar.cdsProduto.ApplyUpdates(0);
end;

procedure TfrmImportar_Excel.FormShow(Sender: TObject);
var
  vMes: Integer;
begin
  fDMImportar := TDMImportar.Create(Self);
  ceAno.AsInteger := YearOf(Date);
  if MonthOf(Date) = 01 then
  begin
    vMes := 12;
    ceAno.AsInteger := ceAno.AsInteger - 1;
  end
  else
    vMes := MonthOf(Date) - 1;
  ComboMes.ItemIndex := vMes - 1;
end;

function TfrmImportar_Excel.fnc_Cliente(Nome: String): Integer;
var
  vID: Integer;
begin
  fDMImportar.cdsPessoa.Close;
  fDMImportar.sdsPessoa.ParamByName('NOME').AsString := Nome;
  fDMImportar.cdsPessoa.Open;
  Result := fDMImportar.cdsPessoaCODIGO.AsInteger;
  if fDMImportar.cdsPessoaCODIGO.AsInteger > 0 then
    exit;

  vID := dmDatabase.ProximaSequencia('PESSOA',0);
  try
    fDMImportar.cdsPessoa.Insert;
    fDMImportar.cdsPessoaCODIGO.AsInteger  := vID;
    fDMImportar.cdsPessoaNOME.AsString     := Nome;
    fDMImportar.cdsPessoaFANTASIA.AsString := Nome;
    fDMImportar.cdsPessoaRG.Clear;
    fDMImportar.cdsPessoaPESSOA.AsString := 'J';
    fDMImportar.cdsPessoaCNPJ_CPF.AsString := '00.000.000/0000-00';
    fDMImportar.cdsPessoaEMAIL_NFE.Clear;
    fDMImportar.cdsPessoaOBS.Clear;
    fDMImportar.cdsPessoaENDERECO.Clear;
    fDMImportar.cdsPessoaNUM_END.Clear;
    fDMImportar.cdsPessoaCOMPLEMENTO_END.Clear;
    fDMImportar.cdsPessoaBAIRRO.Clear;
    fDMImportar.cdsPessoaCEP.Clear;
    fDMImportar.cdsPessoaID_CIDADE.Clear;
    fDMImportar.cdsPessoaUF.Clear;
    fDMImportar.cdsPessoaCIDADE.Clear;
    fDMImportar.cdsPessoaID_PAIS.AsInteger := 1;
    fDMImportar.cdsPessoaUF.Clear;
    fDMImportar.cdsPessoaDDDFONE1.Clear;
    fDMImportar.cdsPessoaTELEFONE1.Clear;
    fDMImportar.cdsPessoaDTCADASTRO.AsDateTime := Date;
    fDMImportar.cdsPessoaINATIVO.AsString := 'N';
    fDMImportar.cdsPessoaTP_CLIENTE.AsString := 'S';
    fDMImportar.cdsPessoaINSCR_EST.Clear;
    fDMImportar.cdsPessoaUSUARIO.AsString   := 'excel';
    fDMImportar.cdsPessoaNOME_CONTATO.Clear;
    fDMImportar.cdsPessoaID_VENDEDOR.Clear;
    fDMImportar.cdsPessoaCAIXAPOSTAL.Clear;
    fDMImportar.cdsPessoaPERC_COMISSAO.Clear;
    fDMImportar.cdsPessoaHOMEPAGE.Clear;
    fDMImportar.cdsPessoaTP_TRANSPORTADORA.AsString := 'N';
    fDMImportar.cdsPessoaTP_FORNECEDOR.AsString     := 'N';
    fDMImportar.cdsPessoaID_REGIME_TRIB.Clear;
    fDMImportar.cdsPessoaTIPO_COMISSAO.Clear;
    fDMImportar.cdsPessoaEMAIL_COMPRAS.Clear;
    fDMImportar.cdsPessoaCONTATO_COMPRAS.Clear;
    fDMImportar.cdsPessoaORGAO_PUBLICO.AsString := 'N';
    fDMImportar.cdsPessoaPERC_REDUCAO_INSS.Clear;
    fDMImportar.cdsPessoaPAI_NOME.Clear;
    fDMImportar.cdsPessoaMAE_NOME.Clear;
    fDMImportar.cdsPessoaVLR_LIMITE_CREDITO.Clear;
    fDMImportar.cdsPessoaTIPO_CONTRIBUINTE.AsInteger := 9;
    fDMImportar.cdsPessoaTIPO_CONSUMIDOR.AsInteger   := 1;
    fDMImportar.cdsPessoaPERC_COMISSAO_VEND.Clear;
    fDMImportar.cdsPessoaPERC_DESC_SUFRAMA.Clear;
    fDMImportar.cdsPessoaVLR_LIMITE_COMPRA.Clear;
    fDMImportar.cdsPessoaUSUARIO_LOG.AsString := 'excel';
    fDMImportar.cdsPessoaPROTESTAR.Clear;
    fDMImportar.cdsPessoaDESC_MAXIMO.Clear;
    fDMImportar.cdsPessoaID_TIPOCOBRANCA.Clear;
    fDMImportar.cdsPessoa.Post;
    fDMImportar.cdsPessoa.ApplyUpdates(0);
  finally
    Result := vID;
  end;
end;

function TfrmImportar_Excel.fnc_NCM(NCM: String): Integer;
var
  vID: Integer;
begin
  fDMImportar.cdsNCM.Close;
  fDMImportar.sdsNCM.ParamByName('NCM').AsString := NCM;
  fDMImportar.cdsNCM.Open;
  Result := fDMImportar.cdsNCMID.AsInteger;
  if fDMImportar.cdsNCMID.AsInteger > 0 then
    exit;
  vID := dmDatabase.ProximaSequencia('TAB_NCM',0);
  try
    fDMImportar.cdsNCM.Insert;
    fDMImportar.cdsNCMID.AsInteger  := vID;
    fDMImportar.cdsNCMNCM.AsString  := NCM;
    fDMImportar.cdsNCMNOME.AsString := '';
    fDMImportar.cdsNCMGERAR_ST.AsString := 'N';
    fDMImportar.cdsNCMINATIVO.AsString  := 'N';
    fDMImportar.cdsNCMTIPO_AS.AsString  := 'A';
    fDMImportar.cdsNCMUSAR_MVA_UF_DESTINO.AsString  := 'S';
    fDMImportar.cdsNCMCOD_CEST.AsString := gGrid.Cells[8,Linha];
    fDMImportar.cdsNCM.Post;
    fDMImportar.cdsNCM.ApplyUpdates(0);
  finally
    Result := vID;
  end;
end;

function TfrmImportar_Excel.fnc_Unidade(Unidade: String): String;
begin
  fDMImportar.cdsUnidade.Close;
  fDMImportar.sdsUnidade.ParamByName('UNIDADE').AsString := Unidade;
  fDMImportar.cdsUnidade.Open;
  Result := fDMImportar.cdsUnidadeUNIDADE.AsString;
  if trim(fDMImportar.cdsUnidadeUNIDADE.AsString) <> '' then
    exit;
  try
    fDMImportar.cdsUnidade.Insert;
    fDMImportar.cdsUnidadeUNIDADE.AsString := Unidade;
    fDMImportar.cdsUnidadeUNIDADE.AsString := Unidade + '.';
    fDMImportar.cdsUnidadeINATIVA.AsString := 'N';
    fDMImportar.cdsUnidade.Post;
    fDMImportar.cdsUnidade.ApplyUpdates(0);
  finally
    Result := Unidade;
  end;
end;

procedure TfrmImportar_Excel.prc_Gravar_Estoque_Mov;
var
  vID_Estoque : Integer;
  vQtd: Real;
  vTexto: String;
  vData: TDateTime;
  vVlrRet, vVlrSubst: Real;
begin
  fDMImportar.cdsProduto.Close;
  fDMImportar.sdsProduto.ParamByName('REFERENCIA').AsString := vReferencia;
  fDMImportar.cdsProduto.Open;

  vTexto := gGrid.Cells[1,Linha];
  vTexto := Replace(vTexto,'.','');
  vQtd   := StrToIntDef(vTexto,0);
  if vQtd = 0 then
    exit;
  vTexto := trim(gGrid.Cells[9,Linha]);
  vTexto := Replace(vTexto,'.','');
  vVlrRet := StrToFloatDef(vTexto,0);
  vTexto := trim(gGrid.Cells[10,Linha]);
  vTexto := Replace(vTexto,'.','');
  vVlrSubst := StrToFloatDef(vTexto,0);
  vData := EncodeDate(ceAno.AsInteger,ComboMes.ItemIndex+1,DaysInAMonth(ceAno.AsInteger,ComboMes.ItemIndex+1));
  try
    vID_Estoque := fDMImportar.fnc_Gravar_Estoque(0,
                                                 fDMImportar.qFilialID.AsInteger,
                                                 1,
                                                 fDMImportar.cdsProdutoID.AsInteger,
                                                 0,
                                                 0,
                                                 0,
                                                 0,
                                                 0,
                                                 'E',
                                                 'EXCEL',
                                                 fDMImportar.cdsProdutoUNIDADE.AsString,
                                                 fDMImportar.cdsProdutoUNIDADE.AsString,
                                                 '',
                                                 '',
                                                 vData,
                                                 fDMImportar.cdsProdutoPRECO_VENDA.AsFloat,
                                                 vQtd,
                                                 0,
                                                 fDMImportar.cdsProdutoPERC_IPI.AsFloat,
                                                 0,
                                                 0,
                                                 0,
                                                 vQtd,
                                                 fDMImportar.cdsProdutoPRECO_VENDA.AsFloat,
                                                 0,0,
                                                 fDMImportar.cdsProdutoUNIDADE.AsString,
                                                 0,
                                                 '','S',
                                                 fDMImportar.cdsProdutoPRECO_CUSTO.AsFloat,0,0,0,
                                                 0,0,0,'',vVlrRet,vVlrSubst);
  except
  end;
end;

procedure TfrmImportar_Excel.btnExcluirClick(Sender: TObject);
var
  sds: TSQLDataSet;
  vData1, vData2: TDateTime;
  Form : TForm;
begin
  if MessageDlg('Deseja excluir o movimento do mês / Ano: ' + ComboMes.Text + IntToStr(ceAno.AsInteger) + ' ?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  vData1 := EncodeDate(ceAno.AsInteger,ComboMes.ItemIndex+1,1);
  vData2 := EncodeDate(ceAno.AsInteger,ComboMes.ItemIndex+1,DaysInAMonth(ceAno.AsInteger,ComboMes.ItemIndex+1));
  Form := TForm.Create(Application);
  uUtilPadrao.prc_Form_Aguarde(Form);
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'delete from ESTOQUE_MOV E where E.DTMOVIMENTO between :DATA1 and :DATA2 ';
    sds.ParamByName('DATA1').AsDate := vData1;
    sds.ParamByName('DATA2').AsDate := vData2;
    sds.ExecSQL;
  finally
    begin
      FreeAndNil(sds);
      FreeAndNil(Form);
    end;
  end;
  MessageDlg('*** Movimento excluído!', mtConfirmation, [mbOk], 0);
end;

function TfrmImportar_Excel.fnc_existe_Estoque_Mov: Boolean;
var
  sds: TSQLDataSet;
  vData1, vData2: TDateTime;
begin
  Result := False;
  vData1 := EncodeDate(ceAno.AsInteger,ComboMes.ItemIndex+1,1);
  vData2 := EncodeDate(ceAno.AsInteger,ComboMes.ItemIndex+1,DaysInAMonth(ceAno.AsInteger,ComboMes.ItemIndex+1));
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'select count(1) CONTADOR from ESTOQUE_MOV E where E.DTMOVIMENTO between :DATA1 and :DATA2';
    sds.ParamByName('DATA1').AsDate := vData1;
    sds.ParamByName('DATA2').AsDate := vData2;
    sds.Open;
    Result := (sds.FieldByName('CONTADOR').AsInteger > 0);
  finally
    FreeAndNil(sds);
  end;
end;

end.
