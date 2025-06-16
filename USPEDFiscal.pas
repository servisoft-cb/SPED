unit USPEDFiscal;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

interface

uses
{$IFNDEF FPC}
  Windows, Messages,
{$ENDIF}
  SysUtils, Variants, Classes, Graphics, Controls, Forms, ACBrEFDBlocos,
  Dialogs, StdCtrls, ACBrSpedFiscal, ExtCtrls, ComCtrls, ACBrUtil, ACBrTXTClass,
  Mask, ToolEdit, RzTabs, NxCollection, RxLookup, UDMSPEDFiscal, RzPanel,
  ACBrBase, RzLstBox, RzChkLst, Grids, DBGrids, SMDBGrid, DB, ActiveX, ComObj,
  NxEdit;

type

  { TFrmSPEDFiscal }

  TfrmSPEDFiscal = class(TForm)
    RZPageControlDados: TRzPageControl;
    TS_Gerar: TRzTabSheet;
    TS_Exemplo: TRzTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    memoError: TMemo;
    memoTXT: TMemo;
    btnError: TButton;
    btnTXT: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtFile: TEdit;
    cbConcomitante: TCheckBox;
    edNotas: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    btnB_0: TButton;
    btnB_1: TButton;
    btnB_C: TButton;
    btnB_D: TButton;
    btnB_E: TButton;
    btnB_H: TButton;
    btnB_G: TButton;
    btnB_Completo: TButton;
    btnB_9: TButton;
    ProgressBar1: TProgressBar;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    edBufLinhas: TEdit;
    edBufNotas: TEdit;
    BtnBloco_0: TNxButton;
    btnBloco_C: TNxButton;
    btnGravar_Txt: TNxButton;
    btnBloco_D: TNxButton;
    btnBloco_E: TNxButton;
    btnBloco_G: TNxButton;
    btnBloco_H: TNxButton;
    btnBloco_1: TNxButton;
    btnBloco_9: TNxButton;
    btnGerar: TNxButton;
    btnBloco_K: TNxButton;
    btnGerar_K: TNxButton;
    TS_Gerar_SPED: TRzTabSheet;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    cbFinalidade: TComboBox;
    DirectoryEdit1: TDirectoryEdit;
    ComboBox1: TComboBox;
    gbxVendedor: TRzGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    ComboBox2: TComboBox;
    DateEdit3: TDateEdit;
    RzCheckList1: TRzCheckList;
    ckImobilizado: TCheckBox;
    RzPageControl1: TRzPageControl;
    TS_SPED: TRzTabSheet;
    TS_Posse: TRzTabSheet;
    mSped: TMemo;
    SMDBGrid1: TSMDBGrid;
    ck0600: TCheckBox;
    TS_Resumo: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    ckICMSH020: TCheckBox;
    ckImp_BlocoK: TCheckBox;
    TS_Bloco_K: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    Panel4: TPanel;
    btnImp_Bloco_K: TNxButton;
    NxPanel1: TNxPanel;
    btnGerarSped: TNxButton;
    btnEstoque: TNxButton;
    btnVersao: TNxButton;
    NxButton1: TNxButton;
    Label16: TLabel;
    ComboBox3: TComboBox;
    chkResumo: TCheckBox;
    ckGravarPrecoZerado: TCheckBox;
    TS_Produto_Sem_Custo: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    Panel5: TPanel;
    NxButton2: TNxButton;
    RzGroupBox1: TRzGroupBox;
    Label18: TLabel;
    ComboBox4: TComboBox;
    ckC176: TCheckBox;
    NxButton3: TNxButton;
    TabSheet1: TRzTabSheet;
    Memo1: TMemo;
    TabSheet2: TRzTabSheet;
    Memo2: TMemo;
    ckParticipante: TCheckBox;
    chkC170Cupom: TCheckBox;
    procedure btnB_0Click(Sender: TObject);
    procedure btnB_9Click(Sender: TObject);
    procedure btnTXTClick(Sender: TObject);
    procedure btnB_1Click(Sender: TObject);
    procedure btnB_CClick(Sender: TObject);
    procedure btnB_DClick(Sender: TObject);
    procedure btnB_EClick(Sender: TObject);
    procedure btnB_HClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure edtFileChange(Sender: TObject);
    procedure cbConcomitanteClick(Sender: TObject);
    procedure ACBrSPEDFiscal1Error(const MsnError: AnsiString);
    procedure btnB_CompletoClick(Sender: TObject);
    procedure btnB_GClick(Sender: TObject);
    procedure BtnBloco_0Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBloco_CClick(Sender: TObject);
    procedure btnGravar_TxtClick(Sender: TObject);
    procedure btnBloco_DClick(Sender: TObject);
    procedure btnBloco_HClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGerar_KClick(Sender: TObject);
    procedure btnBloco_KClick(Sender: TObject);
    procedure btnGerarSpedClick(Sender: TObject);
    procedure btnVersaoClick(Sender: TObject);
    procedure btnEstoqueClick(Sender: TObject);
    procedure btnImp_Bloco_KClick(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure RzCheckList1Enter(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
  private
    fDMSPEDFiscal: TDMSPEDFiscal;
    vContador_Reg_0 : Integer;
    vContador_Reg_C : Integer;
    vContador_Reg_D : Integer;
    vContador_Reg_E : Integer;
    vContador_Reg_H : Integer;
    vContador_Reg_K : Integer;
    vGerar_H : Boolean;
    vGerar_K : Boolean;

    function fnc_Valida_Campos(Tipo_Bloco : String = '') : Boolean;

    procedure prc_Movimento;
    procedure prc_Gravar_mPessoa(ID : Integer);
    procedure prc_Gravar_mProduto;
    procedure prc_Gravar_mProdutoMov;
    procedure prc_Gravar_mUnidade(Unidade : String);
    procedure prc_Gravar_mNatureza(ID_CFOP: Integer; CODCFOP, NOME: String);
    procedure prc_Gravar_mC190;
    procedure prc_Consultar_cdsBalanco;
    procedure prc_Consultar_PosseEstoque;
    procedure prc_Le_PosseEstoque;

    procedure prc_Abrir_NotaFiscal(Bloco : String);
    procedure prc_Abrir_CupomFiscal;
    procedure prc_Abrir_CupomFiscal_Itens(AId: Integer);
    procedure prc_Abrir_C190(Aid: Integer);

    procedure LoadToMemo;
    procedure prc_Gerar_Bloco_0;
    procedure prc_Bloco_0_Reg_0000;
    procedure prc_Bloco_0_Reg_0001;
    procedure prc_Bloco_0_Reg_0002;
    procedure prc_Bloco_0_Reg_0005;
    procedure prc_Bloco_0_Reg_0015;
    procedure prc_Bloco_0_Reg_0100;
    procedure prc_Bloco_0_Reg_0150;
    procedure prc_Bloco_0_Reg_0175;
    procedure prc_Bloco_0_Reg_0190;
    procedure prc_Bloco_0_Reg_0200;
    procedure prc_Bloco_0_Reg_0205;
    procedure prc_Bloco_0_Reg_0206;
    procedure prc_Bloco_0_Reg_0220;
    procedure prc_Bloco_0_Reg_0300;
    procedure prc_Bloco_0_Reg_0305;
    procedure prc_Bloco_0_Reg_0400;
    procedure prc_Bloco_0_Reg_0450;
    procedure prc_Bloco_0_Reg_0460;
    procedure prc_Bloco_0_Reg_0500;
    procedure prc_Bloco_0_Reg_0600;
    procedure prc_Bloco_0_Reg_0990;
    procedure prc_Bloco_1_Reg_1001;


    procedure prc_Gerar_Bloco_C;
    procedure prc_Bloco_C_Reg_C001;
    procedure prc_Bloco_C_Reg_C100; //Falta gerar a NFCe
    procedure prc_Bloco_C_Reg_C100_Inutilizadas;
    procedure prc_Bloco_C_Reg_C100_Cupom;

    procedure prc_Bloco_C_Reg_C500;
    procedure prc_Bloco_C_Reg_C990;

    procedure prc_Gerar_Bloco_D;
    procedure prc_Bloco_D_Reg_D100;
    procedure prc_Bloco_D_Reg_D500;
    procedure prc_Bloco_D_Reg_D990;

    procedure prc_Gerar_Bloco_E;
    procedure prc_Bloco_E_Reg_E510;
    procedure prc_Bloco_E_Reg_E520;
    procedure prc_Bloco_E_Reg_E990;
    procedure prc_Gravar_mE520;

    procedure prc_Gerar_Bloco_H;
    procedure prc_Bloco_H_Reg_H005;
    procedure prc_Bloco_H_Reg_H010;
    procedure prc_Bloco_H_Reg_H990;
    procedure prc_Verifica_Produtos_Balanco;

    procedure prc_Gerar_Bloco_K;
    procedure prc_Bloco_K_Reg_K100;
    procedure prc_Bloco_K_Reg_K200;
    procedure prc_Bloco_K_Reg_K990;

    procedure prc_Abrir_NotaFiscal_Itens(ID : Integer);
    procedure prc_Le_NotaFiscal_Itens;
    procedure prc_Le_NotaFiscal;

    procedure prc_Gravar_Produto_SemCusto;

    //procedure prc_Gravar_mProduto2(ID_Produto : Integer ; Codigo : String);

    function Monta_Numero(Campo: String; Tamanho: Integer): String;

    function monta_codigo_produto(ID_Produto, ID_Cor : Integer ; Referencia, Tamanho, Usa_Tamanho_Agrupado : String) : String;

    procedure prc_CriaExcel_Novo(vDados: TDataSource; Grid: TSMDBGrid);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSPEDFiscal: TfrmSPEDFiscal;

implementation

uses uUtilPadrao, ACBrEFDBloco_C, ACBrEFDBloco_C_Class,
  SqlExpr, ACBrEFDBloco_D_Class, ACBrEFDBloco_D, ACBrEFDBloco_H_Class,
  ACBrEFDBloco_H, DateUtils, rsDBUtils, ACBrEFDBloco_K,
  ACBrEFDBloco_K_Class, ACBrEFDBloco_E_Class, ACBrEFDBloco_E, ACBrSped,
  UCadSpedVersao, UConsPosseEstoque, ACBrEFDBloco_0, UImportar_Excel,
  UConfigC176;

{$IFDEF FPC}
{$R *.lfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}

procedure TfrmSPEDFiscal.ACBrSPEDFiscal1Error(const MsnError: AnsiString);
begin
  memoError.Lines.Add(MsnError);
end;

procedure TfrmSPEDFiscal.btnB_0Click(Sender: TObject);

const
  strUNID: array [0 .. 4] of string = ('PC', 'UN', 'LT', 'PC', 'MT');

var
  int0150: integer;
  int0300: integer;
  int0190: integer;
  int0500: Integer;
  int0600: Integer;

begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco 0.

  cbConcomitante.Enabled := False;
  btnB_0.Enabled := False;
  btnB_C.Enabled := True;

  ACBrSPEDFiscal1.LinhasBuffer := StrToIntDef(edBufLinhas.Text, 0);
  ACBrSPEDFiscal1.Path         := DirectoryEdit1.Text;
  ACBrSPEDFiscal1.Arquivo      := edtFile.Text;

  //Definindo
  with ACBrSPEDFiscal1 do
  begin
    DT_INI := StrToDate('01/11/2011');
    DT_FIN := StrToDate('30/11/2011');
  end;

  if cbConcomitante.Checked then
  begin
    with ACBrSPEDFiscal1 do
    begin
      LinhasBuffer := StrToIntDef(edBufLinhas.Text, 0);

      IniciaGeracao;
    end;

    LoadToMemo;
  end;

  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      COD_VER := vlVersao103;
      COD_FIN := raOriginal;
      NOME := 'RAZÃO SOCIAL DA EMPRESA EMITENTE';
      CNPJ := '11111111111180';
      CPF := '';
      UF := 'RS';
      IE := '1111111119';
      COD_MUN := 4314902;
      IM := '';
      SUFRAMA := '';
      IND_PERFIL := pfPerfilA;
      IND_ATIV := atOutros;
    end;

    with Registro0001New do
    begin
      IND_MOV := imComDados;

      // FILHO - Dados complementares da Empresa
      with Registro0005New do
      begin
        FANTASIA := 'NOME FANTASSIA';
        CEP := '29900000';
        ENDERECO := 'ENDEREÇO DA EMPRESA';
        NUM := 'S/N';
        COMPL := '';
        BAIRRO := 'BAIRRO';
        FONE := '';
        FAX := '';
        EMAIL := '171@171.COM.BR';
      end;
//
//      with Registro0015New do
//      begin
//        UF_ST := 'SC';
//        IE_ST := '254504230';
//      end;
//
      // FILHO - Dados do contador.
      with Registro0100New do
      begin
        NOME := 'SO CONFIE NO CONTADOR I';
        CPF := '12345678909'; // Deve ser uma informação valida
        CRC := '65924';
        CNPJ := '';
        CEP := '92420020';
        ENDERECO := 'R. NOME DA RUA';
        NUM := '450';
        COMPL := '';
        BAIRRO := 'BAIRRO CONTADORES';
        FONE := '';
        FAX := '';
        EMAIL := 'NOME@NOME.COM.BR';
        COD_MUN := 3200607;
      end;
      // Check(Reg0001.Registro0190.LocalizaRegistro(UNID), '(0-0190) UNIDADE MEDIDA: A unidade de medida "%s" foi duplicada na lista de registros 0190!', [UNID]);

      // FILHO
      for int0150 := 1 to 10 do
      begin
        // 10 Clientes
        with Registro0150New do
        begin
          COD_PART := IntToStr(int0150);
          NOME := 'CLIENTE DE TESTES ' + IntToStr(int0150);
          if int0150 = 9 then //um exemplo de cliente no exterior.
          begin
            COD_PAIS := '3131'; //GUAM
            CNPJ := '';
            CPF := '';
//            COD_MUN := 43140070 + int0150; //O código do município é deixado de fora propositalmente. O componente vai fazê-lo ficar vazio
          end
          else
          begin
            CNPJ := '11111111111180';
            CPF := '12345678909';
            COD_PAIS := '1058';
          end;

          IE := '';
          COD_MUN := 43140070 + int0150;
          SUFRAMA := '';
          ENDERECO := 'ENDERECO CLIENTE' + IntToStr(int0150);
          NUM := '';
          COMPL := 'COMPLEMENTO'+ IntToStr(int0150);
          BAIRRO := 'BAIRRO CLIENTE' + IntToStr(int0150);
          //
          // FILHO - 1 Alteração para cada cliente de 2 a 3
          if (int0150 = 2) or (int0150 = 3) then
          begin
            with Registro0175New do
            begin
              DT_ALT := DT_INI + 1;
              NR_CAMPO := '1';
              CONT_ANT := 'CAMPO ANTERIOR ' + '1';
            end;
          end;
        end;
      end;

      // FILHO
      // 4 Unidades de medida
      // Const strUNID, esta declarada no inicio deste evento.
      for int0190 := Low(strUNID) to High(strUNID) do
      begin
        if not Registro0190.LocalizaRegistro(strUNID[int0190]) then
        begin
          with Registro0190New do
          begin
            UNID := strUNID[int0190];
            DESCR := 'Descricao ' + strUNID[int0190];
          end;
        end;
      end;

      with Registro0200New do
      begin
        COD_ITEM := '000001';
        DESCR_ITEM := 'PRODUTO 1';
        COD_BARRA := '';
        UNID_INV := 'UN';
        TIPO_ITEM := tiMercadoriaRevenda;
        COD_NCM := '30049026';
        COD_GEN := '30';
        ALIQ_ICMS := 17.00;

        //REGISTRO 0206: CÓDIGO DE PRODUTO CONFORME TABELA PUBLICADA PELA ANP (COMBUSTÍVEIS)
//        With Registro0206New do
//        begin
//          COD_COMB := '910101001';
//        end;
      end;

      // FILHO
      for int0300 := 1 to 10 do
      begin
        // 10 Bens Imobilizados
        with Registro0300New do
        begin
          COD_IND_BEM := FormatFloat('000000', int0300);
          IDENT_MERC := 1;
          DESCR_ITEM := 'DESCRIÇÃO DO ITEM';
          COD_PRNC := '';
          COD_CTA := '';
          NR_PARC := 10;
          // FILHO
          with Registro0305New do
          begin
            COD_CCUS := '1';
//            FUNC := 'BREVE DESCRIÇÃO DA FUNÇÃO DO IMOBILIZADO ' +FormatFloat('000000', int0300);;
            VIDA_UTIL := 60;
          end;
        end;
      end;

      with Registro0400New do
      begin
        COD_NAT := '12020';
        DESCR_NAT := 'DESCRIÇÃO DA NATUREZA DE OPERAÇÃO 12020';
      end;

      with Registro0450New do
      begin
        COD_INF := '000001';
        TXT := 'INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL';
      end;

      with Registro0460New do
      begin
        COD_OBS := '000001';
        TXT := 'TEXTO DE OBSERVAÇÃO DO DOCUMENTO FISCAL ';
      end;

      for int0500 := 1 to 10 do
      begin
        with Registro0500New do
        begin
          DT_ALT := StrToDate('30/11/2011');
          COD_NAT_CC := '01';
          IND_CTA := 'A';
          NIVEL := '1';
          COD_CTA := IntToStr(int0500);
          NOME_CTA := 'CONTA CONTÁBIL ' + IntToStr(int0500);
        end;
      end;

      for int0600 := 1 to 10 do
      begin
        with Registro0600New do
        begin
          DT_ALT := StrToDate('30/11/2011');
          COD_CCUS := IntToStr(int0600);
          CCUS := 'CENTRO DE CUSTOS ' + IntToStr(int0600);
        end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_0;
    LoadToMemo;
  end;
end;

procedure TfrmSPEDFiscal.btnB_9Click(Sender: TObject);
begin
  btnB_9.Enabled := False;
  ACBrSPEDFiscal1.WriteBloco_9;
  LoadToMemo;

  // Habilita os botões
  btnB_0.Enabled := True;
  btnB_1.Enabled := True;
  btnB_C.Enabled := True;
  btnB_D.Enabled := True;
  btnB_E.Enabled := True;
  btnB_G.Enabled := True;
  btnB_H.Enabled := True;

  cbConcomitante.Enabled := True;
end;

procedure TfrmSPEDFiscal.btnTXTClick(Sender: TObject);
begin
  btnTXT.Enabled := False;

  ACBrSPEDFiscal1.LinhasBuffer := StrToIntDef(edBufLinhas.Text, 0);

  with ACBrSPEDFiscal1 do
  begin
    DT_INI := StrToDate('01/11/2011');
    DT_FIN := StrToDate('30/11/2011');
  end;

  // Limpa a lista de erros.
  memoError.Lines.Clear;
  // Informa o pata onde será salvo o arquivo TXT.
  // ACBrSpedFiscal1.Path := '.\Arquivo Sped TXT\';

  // Método que gera o arquivo TXT.
  ACBrSPEDFiscal1.SaveFileTXT;

  // Carrega o arquivo TXT no memo.
  LoadToMemo;

  // Habilita os botões
  btnB_0.Enabled := True;
  btnTXT.Enabled := True;
  cbConcomitante.Enabled := True;
end;

procedure TfrmSPEDFiscal.btnErrorClick(Sender: TObject);
begin
  with ACBrSPEDFiscal1 do
  begin
    DT_INI := StrToDate('01/07/2011');
    DT_FIN := StrToDate('01/07/2011');
  end;

  // Limpa a lista de erros.
  memoError.Lines.Clear;

  // Método que gera o arquivo TXT.
  ACBrSPEDFiscal1.SaveFileTXT;

  // Habilita os botões
  btnB_0.Enabled := True;
  btnB_1.Enabled := True;
  btnB_C.Enabled := True;
  btnB_D.Enabled := True;
  btnB_E.Enabled := True;
  btnB_H.Enabled := True;
end;

procedure TfrmSPEDFiscal.btnB_1Click(Sender: TObject);
begin
  btnB_1.Enabled := False;
  btnB_9.Enabled := cbConcomitante.Checked;

  // Alimenta o componente com informações para gerar todos os registros do Bloco 1.
  with ACBrSPEDFiscal1.Bloco_1 do
  begin
    with Registro1001New do
    begin
      IND_MOV := imComDados;
    end;
    with Registro1010New do
    begin
      IND_EXP := 'N';
      IND_CCRF := 'N';
      IND_COMB := 'N';
      IND_USINA := 'N';
      IND_VA := 'N';
      IND_EE := 'N';
      IND_CART := 'N';
      IND_FORM := 'N';
      IND_AER := 'N';
      IND_GIAF1 := 'N';
      IND_GIAF3 := 'N';
      IND_GIAF4 := 'N';
      IND_REST_RESSARC_COMPL_ICMS := 'N';
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_1;
    LoadToMemo;
  end;
end;

procedure TfrmSPEDFiscal.btnB_CClick(Sender: TObject);
var
  INotas: integer;
  IItens: integer;
  NNotas: integer;
  BNotas: integer;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco C.
  btnB_C.Enabled := False;
  btnB_D.Enabled := True;

  NNotas := StrToInt64Def(edNotas.Text, 1);
  BNotas := StrToInt64Def(edBufNotas.Text, 1);

  ProgressBar1.Visible := cbConcomitante.Checked;
  ProgressBar1.Max := NNotas;
  ProgressBar1.Position := 0;

  with ACBrSPEDFiscal1.Bloco_C do
  begin
    with RegistroC001New do
    begin
      IND_MOV := imComDados;
      //
      for INotas := 1 to NNotas do
      begin
        with RegistroC100New do
        begin
          IND_OPER := tpEntradaAquisicao;
          //Só pra variar a emissão entre própria e de terceiros
          if Odd(INotas) then IND_EMIT := edEmissaoPropria
          else IND_EMIT := edTerceiros;

          COD_PART := '001';
          COD_MOD := '';
          COD_SIT := sdRegular;
          SER := '';
          NUM_DOC := FormatFloat('11000000', INotas);
          CHV_NFE := '';
          DT_DOC := DT_INI + INotas;
          DT_E_S := DT_INI + INotas;
          VL_DOC := 0;
          IND_PGTO := tpSemPagamento;
          VL_DESC := 0;
          VL_ABAT_NT := 0;
          VL_MERC := 0;
          IND_FRT := tfSemCobrancaFrete;
          VL_SEG := 0;
          VL_OUT_DA := 0;
          VL_BC_ICMS := 0;
          VL_ICMS := 0;
          VL_BC_ICMS_ST := 0;
          VL_ICMS_ST := 0;
          VL_IPI := 0;
          VL_PIS := 0;
          VL_COFINS := 0;
          VL_PIS_ST := 0;
          VL_COFINS_ST := 0;


          { Gera registros específicos para notas emitidas por terceiros }
          if IND_EMIT = edTerceiros then
          begin
            With RegistroC110New do
            begin
              COD_INF := '000001';
              TXT_COMPL := '';

              with RegistroC113New do
              begin
                IND_OPER := tpEntradaAquisicao;
                IND_EMIT := edEmissaoPropria;
                COD_PART := '001';
                COD_MOD := '1';
                SER := '1';
                SUB := '1';
                NUM_DOC := '333';
                DT_DOC := StrToDate('02/11/2011');
              end;
            end;
          end;

          { Gera o registro de importação apenas para notas de entrada }
          if IND_OPER = tpEntradaAquisicao then
          begin
            with RegistroC120New do
            begin
              COD_DOC_IMP := diSimplificadaImport;
              NUM_DOC__IMP := '1024879531';
              PIS_IMP := 0.00;
              COFINS_IMP := 0.00;
              NUM_ACDRAW := '';
            end;
          end;

          { Gera registros específicos para notas emitidas por terceiros e de prestação }
          if (IND_EMIT = edTerceiros) and (IND_OPER = tpSaidaPrestacao) then
          begin
            with RegistroC130New do
            begin
              VL_SERV_NT := 10.12;
              VL_BC_ISSQN := 10.12;
              VL_ISSQN := 10.12;
              VL_BC_IRRF := 10.12;
              VL_IRRF := 10.12;
              VL_BC_PREV := 10.12;
              VL_PREV := 10.12;
            end;
          end;


          // REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
          for IItens := 1 to 10 do
          begin
            with RegistroC170New do // Inicio Adicionar os Itens:
            begin
              NUM_ITEM := FormatFloat('000', IItens);
              COD_ITEM := FormatFloat('000000', StrToInt(NUM_ITEM));
              DESCR_COMPL := FormatFloat('11000000', INotas) + ' -> ITEM '
                + COD_ITEM;
              QTD := 1;
              UNID := 'UN';
              VL_ITEM := 0;
              VL_DESC := 0;
              IND_MOV := mfNao;
              CST_ICMS := '001';
              CFOP := '1252';
              COD_NAT := '64';
              VL_BC_ICMS := 0;
              ALIQ_ICMS := 0;
              VL_ICMS := 0;
              VL_BC_ICMS_ST := 0;
              ALIQ_ST := 0;
              VL_ICMS_ST := 0;
              IND_APUR := iaMensal;
              CST_IPI := CstIpiToStr(stipiEntradaIsenta);
              COD_ENQ := '';
              VL_BC_IPI := 0;
              ALIQ_IPI := 0;
              VL_IPI := 0;
              CST_PIS := CstPisToStr(stpisOutrasOperacoes);
              VL_BC_PIS := 0;
              ALIQ_PIS_PERC := 0;
              QUANT_BC_PIS := 0;
              ALIQ_PIS_R := 0;
              VL_PIS := 0;
              CST_COFINS := CstCofinsToStr(stcofinsOutrasOperacoes);
              VL_BC_COFINS := 0;
              ALIQ_COFINS_PERC := 0;
              QUANT_BC_COFINS := 0;
              ALIQ_COFINS_R := 0;
              VL_COFINS := 0;
              COD_CTA := '000';

              //REGISTRO C171: ARMAZENAMENTO DE COMBUSTIVEIS (código 01, 55)
              { Só gera para operações de aquisição }
//              if IND_OPER = tpEntradaAquisicao then
//              begin
//                with RegistroC171New do
//                begin
//                  NUM_TANQUE := '115';
//                  QTDE := 1.00;
//                end;
//              end;

              //REGISTRO C176: RESSARCIMENTO DE ICMS EM OPERAÇÕES COM
              //SUBSTITUIÇÃO TRIBUTÁRIA (CÓDIGO 01, 55).
//              with RegistroC176New do
//              begin
//                COD_MOD_ULT_E := '55';
//                NUM_DOC_ULT_E := '124567';
//                SER_ULT_E := '1';
//                DT_ULT_E := Now;
//                COD_PART_ULT_E := '000001';
//                QUANT_ULT_E := 10.00;
//                VL_UNIT_ULT_E := 1.00;
//                VL_UNIT_BC_ST := 5.00;
//              end;
            end; // Fim dos Itens;
          end;

          // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
          for IItens := 1 to 10 do
          begin
            with RegistroC190New do
            begin
              CST_ICMS := '040';
              CFOP := '1252';
              ALIQ_ICMS := 0;
              VL_OPR := 0;
              VL_BC_ICMS := 0;
              VL_ICMS := 0;
              VL_BC_ICMS_ST := 0;
              VL_ICMS_ST := 0;
              VL_RED_BC := 0;
              VL_IPI := 0;
              COD_OBS := '000';
            end; // Fim dos Itens;
          end;
        end;

        if cbConcomitante.Checked then
        begin
          if (INotas mod BNotas) = 0 then // Gravar a cada N notas
          begin
            // Grava registros na memoria para o TXT, e limpa memoria
            ACBrSPEDFiscal1.WriteBloco_C(False); // False, NAO fecha o Bloco
            ProgressBar1.Position := INotas;
            Application.ProcessMessages;
          end;
        end;
      end;

      //REGISTRO C400 - EQUIPAMENTO ECF (CÓDIGO 02 e 2D).
      With RegistroC400New do
      begin
        COD_MOD := '2D';
        ECF_MOD := 'DARUMA FS600';
        ECF_FAB := '21098765432123456789';
        ECF_CX := '001';

        With RegistroC405New do
        begin
          DT_DOC := DT_FIN; //StrToDate('30/11/2011');
          CRO := 1;
          CRZ := 1;
          NUM_COO_FIN := 1;
          GT_FIN := 100.00;
          VL_BRT := 100.00;

          With RegistroC410New do
          begin
            VL_PIS := 0.00;
            VL_COFINS := 0.00;
          end;

          With RegistroC420New do
          begin
            COD_TOT_PAR := 'T1700';
            VLR_ACUM_TOT := 100.00;
            NR_TOT := 1;
            DESCR_NR_TOT := 'TOTALIZADOR T1700';

            { Gera este registro somente para empresas do pergil B de apresentação }
            if Bloco_0.Registro0000.IND_PERFIL = pfPerfilB then
            begin
              With RegistroC425New do
              begin
                COD_ITEM := '000001';
                QTD := 1;
                UNID := 'PC';
                VL_ITEM := 100.00;
                VL_PIS := 0.00;
                VL_COFINS := 0.00;
              end;
            end;
          end;

          if Bloco_0.Registro0000.IND_PERFIL <> pfPerfilB then
          begin
            with REgistroC460New do
            begin
              COD_MOD := '2D';
              COD_SIT := sdRegular;
              NUM_DOC := '000001';
              DT_DOC := StrToDate('30/11/2011');
              VL_DOC := 100.00;
              VL_PIS := 0.00;
              VL_COFINS := 0.00;
              CPF_CNPJ := '33333333333';
              NOM_ADQ := 'TESTE';

              with RegistroC470New do
              begin
                COD_ITEM := '000001';
                QTD := 1;
                QTD_CANC := 0;
                UNID := 'UN';
                VL_ITEM := 100.00;
                CST_ICMS := '000';
                CFOP := '5102';
                ALIQ_ICMS := 17.00;
                VL_PIS := 0.00;
                VL_COFINS := 0.00;
              end;
            end;
          end;

          with RegistroC490New do
          begin
            CST_ICMS := '000';
            CFOP := '5102';
            ALIQ_ICMS := 17.00;
            VL_OPR := 100.00;
            VL_BC_ICMS := 100.00;
            VL_ICMS := 17.00;
            COD_OBS := '000001'
          end;

          { Só envia este registro se o contribuinte for da BA }
          if Bloco_0.Registro0000.UF = 'BA' then
          begin
            with RegistroC495New do
            begin
              ALIQ_ICMS := 17.00;
              COD_ITEM := '000001';
              QTD := 1.00;
              QTD_CANC := 0.00;
              UNID := 'UN';
              VL_ITEM := 100.00;
              VL_DESC := 0.00;
              VL_CANC := 0.00;
              VL_ACMO := 0.00;
              VL_BC_ICMS := 100.00;
              VL_ICMS := 17.00;
              VL_ISEN := 0.00;
              VL_ICMS_ST := 0.00;
            end;
          end;
        end;
      end;

    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_C(True); // True, fecha o Bloco
    LoadToMemo;
  end;

  ProgressBar1.Visible := False;

end;

procedure TfrmSPEDFiscal.btnB_CompletoClick(Sender: TObject);
begin
  btnB_0Click(Self);
  btnB_CClick(Self);
  btnB_DClick(Self);
  btnB_EClick(Self);
  btnB_GClick(Self);
  btnB_HClick(Self);
  btnB_1Click(Self);

end;

procedure TfrmSPEDFiscal.btnB_DClick(Sender: TObject);
begin
  btnB_D.Enabled := False;
  btnB_E.Enabled := True;

  // Alimenta o componente com informações para gerar todos os registros do Bloco D.
  with ACBrSPEDFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      IND_MOV := imComDados;

      with RegistroD100New do
      begin
        IND_OPER := tpEntradaAquisicao;
        IND_EMIT := edTerceiros;
        COD_PART := '000001';
        COD_MOD := '57';
        COD_SIT := sdRegular;
        SER := '1';
        NUM_DOC := '012345';
        CHV_CTE := '';
        DT_DOC := DT_FIN - 1; //StrToDate('30/11/2011');
        DT_A_P := DT_FIN - 1; //StrToDate('30/11/2011');
        TP_CT_e := '1';
        VL_DOC := 100.00;
        VL_DESC := 0.00;
        IND_FRT := tfPorContaEmitente;
        VL_SERV := 100.00;
        VL_BC_ICMS := 100.00;
        VL_ICMS := 17.00;
        VL_NT := 10.10;
        COD_INF := '000001';
        COD_CTA := '111';
      end;

      with RegistroD190New do
      begin
        CST_ICMS := '000';
        CFOP := '1252';
        ALIQ_ICMS := 17.00;
        VL_OPR := 100.00;
        VL_BC_ICMS := 100.00;
        VL_ICMS := 17.00;
        VL_RED_BC := 0.00;
        COD_OBS := '000001';
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_D;
    LoadToMemo;
  end;
end;

procedure TfrmSPEDFiscal.btnB_EClick(Sender: TObject);
const
  ESTADOS: array [0 .. 1] of String = ('RS', 'SC');
var
  I: Integer;
begin
  // Alimenta o componente com informações para gerar todos os registros do Bloco E.
  btnB_E.Enabled := False;
  btnB_G.Enabled := True;

  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE001New do
    begin
      IND_MOV := imComDados;

      with RegistroE100New do
      begin
        DT_INI := StrToDate('01/11/2011');
        DT_FIN := StrToDate('30/11/2011');

        with RegistroE110New do
        begin
          VL_TOT_DEBITOS := 17.00;
          VL_AJ_DEBITOS := 0.00;
          VL_TOT_AJ_DEBITOS := 0.00;
          VL_ESTORNOS_CRED := 0;
          VL_TOT_CREDITOS := 17.00;
          VL_AJ_CREDITOS := 0;
          VL_TOT_AJ_CREDITOS := 0;
          VL_ESTORNOS_DEB := 0;
          VL_SLD_CREDOR_ANT := 0;
          VL_SLD_APURADO := 0.00;
          VL_TOT_DED := 0.00;
          VL_ICMS_RECOLHER := 0.00;
          VL_SLD_CREDOR_TRANSPORTAR := 0;
          DEB_ESP := 0;

          // with RegistroE111New do begin
          // COD_AJ_APUR    := 'RS009999';
          // DESCR_COMPL_AJ := '';
          // VL_AJ_APUR     := 1.00;
          //
          // with RegistroE112New do begin
          // NUM_DA    := '123';
          // NUM_PROC  := '123';
          // IND_PROC  := opOutros;
          // PROC      := 'DESCRIÇÃO RESUMIDA';
          // TXT_COMPL := 'COMPLEMENTO';
          // end;
          //
          // with RegistroE113New do begin
          // COD_PART := '000001';
          // COD_MOD  := '01';
          // SER      := 'SERI';
          // SUB      := '';
          // NUM_DOC  := '123456789';
          // DT_DOC   := Now;
          // COD_ITEM := '000001';
          // VL_AJ_ITEM := 0;
          // end;
          // end;

          { Rio Grande do Sul não possui as tabelas do registro E115, então este não precisa ser gerado }
          // with RegistroE115New do begin
          // COD_INF_ADIC   := 'RS000001';
          // VL_INF_ADIC    := 0;
          // DESCR_COMPL_AJ := '';
          // end;

          with RegistroE116New do
          begin
            COD_OR := '000';
            VL_OR := 0;
            DT_VCTO := Now;
            COD_REC := '123';
            NUM_PROC := '10';
            IND_PROC := opSefaz;
            PROC := 'DESCRIÇÃO DO PROCESSO';
            TXT_COMPL := '';
            MES_REF := '112011';
          end;
        end;
      end;

      { Gera um registro E200 e filhos para cada estado onde o contribuinte possui inscrição estadual }
      for I := Low(ESTADOS) to High(ESTADOS) do
      begin
        with RegistroE200New do
        begin
          DT_INI := DateEdit1.Date;
          DT_FIN := DateEdit2.Date;
          UF := ESTADOS[I];

          with RegistroE210New do
          begin
            IND_MOV_ST := mstSemOperacaoST;
            VL_SLD_CRED_ANT_ST := 0;
            VL_DEVOL_ST := 0;
            VL_RESSARC_ST := 0;
            VL_OUT_CRED_ST := 0;
            VL_AJ_CREDITOS_ST := 0;
            VL_SLD_DEV_ANT_ST := 0.00;
            VL_DEDUCOES_ST := 0;
            VL_ICMS_RECOL_ST := 0.00;
            VL_SLD_CRED_ST_TRANSPORTAR := 0;
            VL_OUT_DEB_ST := 0.00;
            DEB_ESP_ST := 0;

            // with RegistroE220New do begin
            // COD_AJ_APUR    := 'RS109999';
            // DESCR_COMPL_AJ := '';
            // VL_AJ_APUR     := 0.00;
            //
            // with RegistroE230New do begin
            // NUM_DA    := '123';
            // NUM_PROC  := '123';
            // IND_PROC  := opOutros;
            // PROC      := 'DESCRIÇÃO RESUMIDA';
            // TXT_COMPL := 'COMPLEMENTO';
            // end;
            //
            // with RegistroE240New do begin
            // COD_PART   := '000001';
            // COD_MOD    := '01';
            // SER        := 'SERI';
            // SUB        := '';
            // NUM_DOC    := '123456789';
            // DT_DOC     := Now;
            // COD_ITEM   := '000001';
            // VL_AJ_ITEM := 0;
            // end;
            // end;

            with RegistroE250New do
            begin
              COD_OR := '000';
              VL_OR := 0;
              DT_VCTO := Now;
              COD_REC := '123';
              NUM_PROC := '1020304050';
              IND_PROC := opOutros;
              PROC := 'DESCRIÇÃO RESUMIDA';
              TXT_COMPL := '';
              MES_REF := '112011';
            end;
          end;
        end;
      end;

      with RegistroE500New do
      begin
        IND_APUR := iaMensal;
        //DT_INI := StrToDate('01/11/2011');
        //DT_FIN := StrToDate('30/11/2011');
        DT_INI := DateEdit1.Date;
        DT_FIN := DateEdit2.Date;

        with RegistroE510New do
        begin
          CFOP := '5120';
          CST_IPI := '50';
          VL_CONT_IPI := 0;
          VL_BC_IPI := 0;
          VL_IPI := 0;
        end;

        with RegistroE520New do
        begin
          VL_SD_ANT_IPI := 0;
          VL_DEB_IPI := 0;
          VL_CRED_IPI := 0;
          VL_OD_IPI := 10.00;
          VL_OC_IPI := 0;
          VL_SC_IPI := 0;
          VL_SD_IPI := 10.00;

          with RegistroE530New do
          begin
            IND_AJ := ajDebito;
            VL_AJ := 10;
            COD_AJ := '001';
            IND_DOC := odOutros;
            NUM_DOC := '123';
            DESCR_AJ := 'DESCRIÇÃO DETALHADA';
          end;
        end;
        { fim registro E500 }
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_E;
    LoadToMemo;
  end;
end;

procedure TfrmSPEDFiscal.btnB_GClick(Sender: TObject);
begin
  btnB_G.Enabled := False;
  btnB_H.Enabled := True;

  // Alimenta o componente com informações para gerar todos os registros do Bloco G.
  with ACBrSPEDFiscal1.Bloco_G do
  begin
    with RegistroG001New do
    begin
      IND_MOV := imComDados;

      With RegistroG110New do
      begin
        DT_INI := Now;
        DT_FIN := Now;
        SALDO_IN_ICMS := 44.00;
        SOM_PARC := 4.40;
        VL_TRIB_EXP := 10.999;
        VL_TOTAL := 10.999;
        IND_PER_SAI := 1.00;
        ICMS_APROP := 4.40;
        SOM_ICMS_OC := 10.999;

        With RegistroG125New do
        begin
          COD_IND_BEM := '000001';
          DT_MOV := StrToDate('01/11/2011');
          TIPO_MOV := mbcSI;
          VL_IMOB_ICMS_OP := 10.999;
          VL_IMOB_ICMS_ST := 10.999;
          VL_IMOB_ICMS_FRT := 10.999;
          VL_IMOB_ICMS_DIF := 10.999;
          NUM_PARC := 10;
          VL_PARC_PASS := 4.40;

          With RegistroG126New do
          begin
            DT_INI := StrToDate('01/10/2011');;
            DT_FIN := StrToDate('30/10/2011');;
            NUM_PARC := 1234;
            VL_PARC_PASS := 10.999;
            VL_TRIB_OC := 10.999;
            VL_TOTAL := 10.999;
            IND_PER_SAI := 1.00;
            VL_PARC_APROP := 10.999;
          end;

          With RegistroG130New do
          begin
            IND_EMIT := edEmissaoPropria;
            COD_PART := '000001';
            COD_MOD := '55';
            SERIE := '1';
            NUM_DOC := '000068849';
            CHV_NFE_CTE := '35100260318797000100550010000688490882775007';
            DT_DOC := Now;

            With RegistroG140New do
            begin
              NUM_ITEM := '9999';
              COD_ITEM := '000001';
            end;
          end;
        end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_G;
    LoadToMemo;
  end;

end;

procedure TfrmSPEDFiscal.btnB_HClick(Sender: TObject);
var
  IInvent: integer;
begin
  btnB_H.Enabled := False;
  btnB_1.Enabled := True;

  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco H.
  with ACBrSPEDFiscal1.Bloco_H do
  begin
    with RegistroH001New do
    begin
      IND_MOV := imComDados;
      //
      with RegistroH005New do
      begin
        DT_INV := DT_FIN; //o valor informado no campo deve ser menor ou igual ao valor no campo DT_FIN do registro 0000
        VL_INV := 1000;
        // FILHO
        for IInvent := 1 to 10 do
        begin
          with RegistroH010New do
          begin
            COD_ITEM := FormatFloat('00000000000000', IInvent);
            UNID := 'UN';
            QTD := 1;
            VL_UNIT := 100;
            VL_ITEM := 100;
            IND_PROP := piInformante;
            COD_PART := '';
            TXT_COMPL := '';
            COD_CTA := '11';//cleomar - informamos uma conta generica

            with RegistroH020New do
            begin
              CST_ICMS := '00';
              BC_ICMS  := 1;
              VL_ICMS := 2;
            end;

          end;
        end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_H;
    LoadToMemo;
  end;
end;

procedure TfrmSPEDFiscal.edtFileChange(Sender: TObject);
begin
  ACBrSPEDFiscal1.Arquivo := edtFile.Text;
end;

procedure TfrmSPEDFiscal.LoadToMemo;
begin
  memoTXT.Lines.Clear;
  if FileExists(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo) then
    memoTXT.Lines.LoadFromFile(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo);
end;

procedure TfrmSPEDFiscal.cbConcomitanteClick(Sender: TObject);
begin
  btnTXT.Enabled := not cbConcomitante.Checked;
  btnError.Enabled := btnTXT.Enabled;

  edBufNotas.Enabled := cbConcomitante.Checked;

  if not cbConcomitante.Checked then
  begin
    btnB_0.Enabled := True;
    btnB_C.Enabled := False;
    btnB_D.Enabled := False;
    btnB_E.Enabled := False;
    btnB_H.Enabled := False;
    btnB_1.Enabled := False;
    btnB_9.Enabled := False;
  end;
end;

procedure TfrmSPEDFiscal.BtnBloco_0Click(Sender: TObject);
begin
  if btnGerar.Tag <> 1 then
  begin
    if not fnc_Valida_Campos then
      exit;
    if MessageDlg('Deseja gerar o <Bloco 0>?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  vGerar_K := True;

  fDMSPEDFiscal.mPessoa.EmptyDataSet;
  fDMSPEDFiscal.mProduto.EmptyDataSet;
  fDMSPEDFiscal.mUnidade_Conv.EmptyDataSet;
  fDMSPEDFiscal.mUnidade.EmptyDataSet;
  fDMSPEDFiscal.mNatureza.EmptyDataSet;

  if fDMSPEDFiscal.cdsFilialID.AsInteger <> RxDBLookupCombo1.KeyValue then
    fDMSPEDFiscal.cdsFilial.Locate('ID',RxDBLookupCombo1.KeyValue,([Locaseinsensitive]));
  fDMSPEDFiscal.qUF.Close;
  fDMSPEDFiscal.qUF.ParamByName('UF').AsString := fDMSPEDFiscal.cdsFilialUF.AsString;
  fDMSPEDFiscal.qUF.Open;

  prc_Movimento;

  if vGerar_K then
  begin
    prc_Consultar_PosseEstoque;
    prc_Le_PosseEstoque;
  end;

  //05/07/2018
  if (btnGerar.Tag = 1) or (btnGerar_K.Tag = 1) then
    prc_Verifica_Produtos_Balanco;
  //*************

  if (btnGerar.Tag = 1) or (btnGerar_K.Tag = 1) then
  begin
    if fDMSPEDFiscal.cdsMovimento.IsEmpty then
    begin
      MessageDlg('*** Não existe movimento no período!', mtError, [mbOk], 0);
      exit;
    end;
  end;

  prc_Gerar_Bloco_0;
end;

procedure TfrmSPEDFiscal.prc_Gerar_Bloco_0;
begin
  vContador_Reg_0 := 0;
  
  //Tirei no dia 18/03/2014
  //ACBrSPEDFiscal1.LinhasBuffer := StrToIntDef(edBufLinhas.Text, 0);
  //ACBrSPEDFiscal1.Path         := DirectoryEdit1.Text;
  //ACBrSPEDFiscal1.Arquivo      := edtFile.Text;
  //ACBrSPEDFiscal1.LinhasBuffer := StrToIntDef(edBufLinhas.Text, 0);
  //ACBrSPEDFiscal1.IniciaGeracao;

  prc_Bloco_0_Reg_0000;
  prc_Bloco_0_Reg_0001;
  prc_Bloco_0_Reg_0002;
  prc_Bloco_0_Reg_0005;
  prc_Bloco_0_Reg_0015; //Não vai ser gerado no momento
  prc_Bloco_0_Reg_0100;
  prc_Bloco_0_Reg_0150;
  prc_Bloco_0_Reg_0190;
  prc_Bloco_0_Reg_0200;
  //prc_Bloco_0_Reg_0205;
  //prc_Bloco_0_Reg_0206;
  prc_Bloco_0_Reg_0300;
  prc_Bloco_0_Reg_0400;
  prc_Bloco_0_Reg_0450;
  prc_Bloco_0_Reg_0460;
  prc_Bloco_0_Reg_0500;
  if ck0600.Checked then
    prc_Bloco_0_Reg_0600;
  prc_Bloco_0_Reg_0990;


  //tirei daqui 18/03/2014
  //ACBrSPEDFiscal1.SaveFileTXT;
  //LoadToMemo;

    {with Registro0001New do

      end;

      // FILHO

      with Registro0450New do
      begin
        COD_INF := '000001';
        TXT := 'INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL';
      end;

      with Registro0460New do
      begin
        COD_OBS := '000001';
        TXT := 'TEXTO DE OBSERVAÇÃO DO DOCUMENTO FISCAL ';
      end;


      end;
    end;}

end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0000;
begin
  if RxDBLookupCombo1.KeyValue = '' then
  begin
    MessageDlg('*** Filial não informada', mtError, [mbOk], 0);
    exit;
  end;

  ACBrSPEDFiscal1.DT_INI := DateEdit1.Date;
  ACBrSPEDFiscal1.DT_FIN := DateEdit2.Date;

  fDMSPEDFiscal.qSped_Versao.Close;
  fDMSPEDFiscal.qSped_Versao.ParamByName('DATA').AsDate := DateEdit2.Date;
  fDMSPEDFiscal.qSped_Versao.Open;

  //case fDMSPEDFiscal.qParametrosVERSAO_LEIAUTE_SPED.AsInteger of
  case fDMSPEDFiscal.qSped_VersaoCOD_LEIAUTE.AsInteger  of
    1 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao100;
    2 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao101;
    3 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao102;
    4 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao103;
    5 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao104;
    6 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao105;
    7 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao106;
    8 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao107;
    9 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao108;
    10 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao109;
    11 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao110;
    12 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao111;
    13 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao112;
    14,15 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao114;
    16,17 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao116;
    18 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao117;
    19 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_VER := vlVersao118;
  end;
  case cbFinalidade.ItemIndex of
    0 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_FIN := raOriginal;
    1 : ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_FIN := raSubstituto;
  end;
  ACBrSPEDFiscal1.Bloco_0.Registro0000New.NOME := TirarAcento(fDMSPEDFiscal.cdsFilialNOME.AsString);
  if fDMSPEDFiscal.cdsFilialPESSOA.AsString = 'F' then
  begin
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.CPF  := Monta_Numero(fDMSPEDFiscal.cdsFilialCNPJ_CPF.AsString,11);
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.CNPJ := '';
  end
  else
  begin
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.CNPJ := Monta_Numero(fDMSPEDFiscal.cdsFilialCNPJ_CPF.AsString,14);
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.CPF  := '';
  end;
  ACBrSPEDFiscal1.Bloco_0.Registro0000New.UF := fDMSPEDFiscal.cdsFilialUF.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0000New.IE := Monta_Numero(fDMSPEDFiscal.cdsFilialINSCR_EST.AsString,0);
  fDMSPEDFiscal.prc_Abrir_qCidade(fDMSPEDFiscal.cdsFilialID_CIDADE.AsInteger);
  if not fDMSPEDFiscal.qCidade.IsEmpty then
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.COD_MUN := fDMSPEDFiscal.qCidadeCODMUNICIPIO.AsInteger;
  ACBrSPEDFiscal1.Bloco_0.Registro0000New.IM      := fDMSPEDFiscal.cdsFilialINSCMUNICIPAL.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0000New.SUFRAMA := fDMSPEDFiscal.cdsFilialINSCR_SUFRAMA.AsString;
  if fDMSPEDFiscal.cdsFilialSPED_PERFIL.AsString = 'A' then
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.IND_PERFIL := pfPerfilA
  else
  if fDMSPEDFiscal.cdsFilialSPED_PERFIL.AsString = 'B' then
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.IND_PERFIL := pfPerfilB
  else
  if fDMSPEDFiscal.cdsFilialSPED_PERFIL.AsString = 'C' then
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.IND_PERFIL := pfPerfilC;
  if fDMSPEDFiscal.cdsFilialSPED_ATIVIDADE.AsString = '0' then
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.IND_ATIV := atIndustrial
  else
  if fDMSPEDFiscal.cdsFilialSPED_ATIVIDADE.AsString = '1' then
    ACBrSPEDFiscal1.Bloco_0.Registro0000New.IND_ATIV := atOutros;
  vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0001;
begin
  ACBrSPEDFiscal1.Bloco_0.Registro0001New.IND_MOV := imComDados;
  vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0005;
begin
  ACBrSPEDFiscal1.Bloco_0.Registro0005New.FANTASIA := fDMSPEDFiscal.cdsFilialNOME_INTERNO.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0005New.CEP      := Monta_Numero(fDMSPEDFiscal.cdsFilialCEP.AsString,8);
  ACBrSPEDFiscal1.Bloco_0.Registro0005New.ENDERECO := fDMSPEDFiscal.cdsFilialENDERECO.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0005New.NUM      := copy(fDMSPEDFiscal.cdsFilialNUM_END.AsString,1,10);
  ACBrSPEDFiscal1.Bloco_0.Registro0005New.COMPL    := fDMSPEDFiscal.cdsFilialCOMPLEMENTO_END.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0005New.BAIRRO   := fDMSPEDFiscal.cdsFilialBAIRRO.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0005New.FONE     := Monta_Numero(fDMSPEDFiscal.cdsFilialDDD1.AsString + fDMSPEDFiscal.cdsFilialFONE.AsString,0);
  ACBrSPEDFiscal1.Bloco_0.Registro0005New.FAX      := Monta_Numero(fDMSPEDFiscal.cdsFilialDDDFAX.AsString + fDMSPEDFiscal.cdsFilialFAX.AsString,0);
  ACBrSPEDFiscal1.Bloco_0.Registro0005New.EMAIL    := fDMSPEDFiscal.cdsFilialEMAIL_NFE.AsString;
  vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0015;
begin
      // FILHO - Dados complementares da Empresa
//
//      with Registro0015New do
//      begin
//        UF_ST := 'SC';
//        IE_ST := '254504230';
//      end;
//  vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0100;
begin
  fDMSPEDFiscal.qContabilista.Close;
  fDMSPEDFiscal.qContabilista.ParamByName('ID').AsInteger := fDMSPEDFiscal.cdsFilialID_CONTABILISTA.AsInteger;
  fDMSPEDFiscal.qContabilista.Open;
  if fDMSPEDFiscal.qContabilista.IsEmpty then
    exit;
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.NOME := fDMSPEDFiscal.qContabilistaNOME.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.CPF  := Monta_Numero(fDMSPEDFiscal.qContabilistaCPF.AsString,11);
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.CRC  := fDMSPEDFiscal.qContabilistaCRC.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.CNPJ := Monta_Numero(fDMSPEDFiscal.qContabilistaCNPJ.AsString,14);
  if copy(ACBrSPEDFiscal1.Bloco_0.Registro0100New.CNPJ,1,6) = '000000' then
    ACBrSPEDFiscal1.Bloco_0.Registro0100New.CNPJ := '';
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.CEP      := Monta_Numero(fDMSPEDFiscal.qContabilistaCEP.AsString,8);
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.ENDERECO := fDMSPEDFiscal.qContabilistaENDERECO.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.NUM      := fDMSPEDFiscal.qContabilistaNUM_END.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.COMPL    := fDMSPEDFiscal.qContabilistaCOMPLEMENTO_END.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.BAIRRO   := fDMSPEDFiscal.qContabilistaBAIRRO.AsString;
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.FONE     := Monta_Numero(fDMSPEDFiscal.qContabilistaDDD_FONE.AsString + fDMSPEDFiscal.qContabilistaFONE.AsString,0);
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.FAX      := Monta_Numero(fDMSPEDFiscal.qContabilistaDDD_FAX.AsString + fDMSPEDFiscal.qContabilistaFAX.AsString,0);
  ACBrSPEDFiscal1.Bloco_0.Registro0100New.EMAIL    := fDMSPEDFiscal.qContabilistaEMAIL.AsString;
  fDMSPEDFiscal.prc_Abrir_qCidade(fDMSPEDFiscal.qContabilistaID_CIDADE.AsInteger);
  if not fDMSPEDFiscal.qCidade.IsEmpty then
    ACBrSPEDFiscal1.Bloco_0.Registro0100New.COD_MUN := fDMSPEDFiscal.qCidadeCODMUNICIPIO.AsInteger;
  vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0150;
var
  vAux : String;
begin
  fDMSPEDFiscal.mPessoa.First;
  while not fDMSPEDFiscal.mPessoa.Eof do
  begin
    with ACBrSPEDFiscal1.Bloco_0 do
    begin
      with Registro0001New do
      begin
        with Registro0150New do
        begin
          COD_PART := fDMSPEDFiscal.mPessoaCodigo.AsString;
          NOME     := fDMSPEDFiscal.mPessoaNome.AsString;
          COD_PAIS := fDMSPEDFiscal.mPessoaCod_Pais.AsString;
          if fDMSPEDFiscal.mPessoaCod_Pais.AsString = '1058' then
          begin
            if fDMSPEDFiscal.mPessoaCNPJ.AsString <> '' then
              CNPJ := Monta_Numero(fDMSPEDFiscal.mPessoaCNPJ.AsString,14)
            else
              CPF := Monta_Numero(fDMSPEDFiscal.mPessoaCPF.AsString,11);
            IE := Monta_Numero(fDMSPEDFiscal.mPessoaInscr_Estadual.AsString,0);
          end;
          //IE := fDMSPEDFiscal.mPessoaInscr_Estadual.AsString;
          vAux := Monta_Numero(fDMSPEDFiscal.mPessoaCod_Municipio.AsString,0);
          if trim(vAux) <> '' then
            COD_MUN := StrToInt(vAux)
          else
            COD_MUN := 0;
          SUFRAMA := fDMSPEDFiscal.mPessoaSuframa.AsString;
          ENDERECO := fDMSPEDFiscal.mPessoaEndereco.AsString;
          NUM      := fDMSPEDFiscal.mPessoaNum_End.AsString;
          COMPL    := fDMSPEDFiscal.mPessoaComplemento_End.AsString;
          BAIRRO   := fDMSPEDFiscal.mPessoaBairro.AsString;
          vContador_Reg_0 := vContador_Reg_0 + 1;
        end
      end
    end;
    //prc_Bloco_0_Reg_0175 // No Momento não vai ser usado

    {ACBrSPEDFiscal1.Bloco_0.Registro0150New.COD_PART := fDMSPEDFiscal.mPessoaCodigo.AsString;
    ACBrSPEDFiscal1.Bloco_0.Registro0150New.NOME     := fDMSPEDFiscal.mPessoaNome.AsString;
    ACBrSPEDFiscal1.Bloco_0.Registro0150New.COD_PAIS := fDMSPEDFiscal.mPessoaCod_Pais.AsString;
    if fDMSPEDFiscal.mPessoaCNPJ.AsString <> '' then
      ACBrSPEDFiscal1.Bloco_0.Registro0150New.CNPJ := Monta_Numero(fDMSPEDFiscal.mPessoaCNPJ.AsString,14)
    else
      ACBrSPEDFiscal1.Bloco_0.Registro0150New.CNPJ := Monta_Numero(fDMSPEDFiscal.mPessoaCPF.AsString,11);
    ACBrSPEDFiscal1.Bloco_0.Registro0150New.IE := fDMSPEDFiscal.mPessoaInscr_Estadual.AsString;
    ACBrSPEDFiscal1.Bloco_0.Registro0150New.COD_MUN := fDMSPEDFiscal.mPessoaCod_Municipio.AsInteger;
    ACBrSPEDFiscal1.Bloco_0.Registro0150New.SUFRAMA := fDMSPEDFiscal.mPessoaSuframa.AsString;
    ACBrSPEDFiscal1.Bloco_0.Registro0150New.ENDERECO := fDMSPEDFiscal.mPessoaEndereco.AsString;
    ACBrSPEDFiscal1.Bloco_0.Registro0150New.NUM      := fDMSPEDFiscal.mPessoaNum_End.AsString;
    ACBrSPEDFiscal1.Bloco_0.Registro0150New.COMPL    := fDMSPEDFiscal.mPessoaComplemento_End.AsString;
    ACBrSPEDFiscal1.Bloco_0.Registro0150New.BAIRRO   := fDMSPEDFiscal.mPessoaBairro.AsString;
    vContador_Reg_0 := vContador_Reg_0 + 1;
    //prc_Bloco_0_Reg_0175 // No Momento não vai ser usado}
    fDMSPEDFiscal.mPessoa.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0175;
begin
  // FILHO - 1 Alteração para cada cliente de 2 a 3
  {with Registro0175New do
  begin
    DT_ALT := DT_INI + 1;
    NR_CAMPO := '1';
    CONT_ANT := 'CAMPO ANTERIOR ' + '1';
  end;}
  //vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0190;
begin
  fDMSPEDFiscal.mUnidade.First;
  while not fDMSPEDFiscal.mUnidade.Eof do
  begin
    with ACBrSPEDFiscal1.Bloco_0 do
    begin
      with Registro0001New do
      begin
        with Registro0190New do
        begin
          UNID  := fDMSPEDFiscal.mUnidadeUnidade.AsString;
          DESCR := fDMSPEDFiscal.mUnidadeNome.AsString;
          if DESCR = EmptyStr then
            DESCR := fDMSPEDFiscal.mUnidadeUnidade.AsString;
          vContador_Reg_0 := vContador_Reg_0 + 1;
        end
      end
    end;
    //08/12/2022 alterado tirado daqui e colocado logo após o 0200
    //if (trim(fDMSPEDFiscal.mUnidadeUnidade_Conv.AsString) <> '') and (fDMSPEDFiscal.mUnidadeUnidade_Conv.AsString <> fDMSPEDFiscal.mUnidadeUnidade.AsString) then
    //if StrToFloat(FormatFloat('0.000',fDMSPEDFiscal.mUnidadeFator_Conversao.AsFloat)) <> 1 then
      //prc_Bloco_0_Reg_0220;
    fDMSPEDFiscal.mUnidade.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Movimento;
var
  vTipo_Reg : String;
  vNumNota : Integer;
  vID_Natureza : Integer;
  vComando: String;
begin
  exit;
  fDMSPEDFiscal.cdsMovimento.Close;
  vComando := fDMSPEDFiscal.ctMovimento;
  case ComboBox3.ItemIndex of
    1 : vComando := vComando + ' AND M.TIPO_ES = ' + QuotedStr('E');
    2 : vComando := vComando + ' AND M.TIPO_ES = ' + QuotedStr('S');
  end;
  fDMSPEDFiscal.sdsMovimento.CommandText := vComando;
  fDMSPEDFiscal.sdsMovimento.ParamByName('DT_INICIAL').AsDate := DateEdit1.Date;
  fDMSPEDFiscal.sdsMovimento.ParamByName('DT_FINAL').AsDate   := DateEdit2.Date;
  fDMSPEDFiscal.sdsMovimento.ParamByName('FILIAL').AsInteger  := RxDBLookupCombo1.KeyValue;
  fDMSPEDFiscal.cdsMovimento.Open;
  fDMSPEDFiscal.cdsMovimento.IndexFieldNames := 'ID';
  vTipo_Reg    := '';
  vNumNota     := 0;
  vID_Natureza := 0;
  fDMSPEDFiscal.cdsMovimento.First;

  while not fDMSPEDFiscal.cdsMovimento.Eof do
  begin
    if (((fDMSPEDFiscal.cdsMovimentoTIPO_REG.AsString = 'NTS') or (fDMSPEDFiscal.cdsMovimentoTIPO_REG.AsString = 'NTE'))
       and (fDMSPEDFiscal.cdsMovimentoID_NOTAFISCAL.AsInteger <> vNumNota)) or
       ((fDMSPEDFiscal.cdsMovimentoTIPO_REG.AsString = 'NSE') and (fDMSPEDFiscal.cdsMovimentoID_NOTASERVICO.AsInteger <> vNumNota)) then
    begin
      if (fDMSPEDFiscal.cdsMovimentoCANCELADO.AsString = 'N') and (fDMSPEDFiscal.cdsMovimentoDENEGADA.AsString = 'N') then
        prc_Gravar_mPessoa(fDMSPEDFiscal.cdsMovimentoID_PESSOA.AsInteger);
    end;

    if fDMSPEDFiscal.cdsMovimentoTIPO_REG.AsString = 'NTE' then
    begin
      //07/12/2022  não vai gravar qdo for frete
      if (fDMSPEDFiscal.cdsMovimentoCOD_MODELO.AsString <> '57') and (fDMSPEDFiscal.cdsMovimentoCOD_MODELO.AsString <> '06') then
      begin
        prc_Gravar_mProduto;
        prc_Gravar_mUnidade(fDMSPEDFiscal.cdsMovimentoUNIDADE.AsString);
        if fDMSPEDFiscal.cdsMovimentoUNIDADE.AsString <> fDMSPEDFiscal.cdsMovimentoUNIDADE_PRODUTO_CAD.AsString then
          prc_Gravar_mUnidade(fDMSPEDFiscal.cdsMovimentoUNIDADE_PRODUTO_CAD.AsString);
      end;
      if (vID_Natureza <> fDMSPEDFiscal.cdsMovimentoID_CFOP.AsInteger) and (fDMSPEDFiscal.cdsMovimentoID_CFOP.AsInteger <> 1482) then
        prc_Gravar_mNatureza(fDMSPEDFiscal.cdsMovimentoID_CFOP.AsInteger,fDMSPEDFiscal.cdsMovimentoCODCFOP.AsString,fDMSPEDFiscal.cdsMovimentoNOME_CFOP.AsString);
    end;

    if (fDMSPEDFiscal.cdsMovimentoTIPO_REG.AsString = 'NTS') or (fDMSPEDFiscal.cdsMovimentoTIPO_REG.AsString = 'NTE') then
      vNumNota := fDMSPEDFiscal.cdsMovimentoID_NOTAFISCAL.AsInteger
    else
    if (fDMSPEDFiscal.cdsMovimentoTIPO_REG.AsString = 'NSE') then
      vNumNota := fDMSPEDFiscal.cdsMovimentoID_NOTASERVICO.AsInteger
    else
    if (fDMSPEDFiscal.cdsMovimentoTIPO_REG.AsString = 'CFI') then
      vNumNota := fDMSPEDFiscal.cdsMovimentoID_CUPOMFISCAL.AsInteger;
    vID_Natureza := 0;
    fDMSPEDFiscal.cdsMovimento.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Gravar_mPessoa(ID : Integer);
begin
  if fDMSPEDFiscal.mPessoa.FindKey([ID]) then
    exit;
  fDMSPEDFiscal.qPessoa.Close;
  fDMSPEDFiscal.qPessoa.ParamByName('CODIGO').AsInteger := ID;
  fDMSPEDFiscal.qPessoa.Open;
  fDMSPEDFiscal.mPessoa.Insert;
  fDMSPEDFiscal.mPessoaCodigo.AsInteger := ID;
  fDMSPEDFiscal.mPessoaNome.AsString    := fDMSPEDFiscal.qPessoaNOME.AsString;
  fDMSPEDFiscal.mPessoaCod_Pais.AsString   := fDMSPEDFiscal.qPessoaCODPAIS.AsString;
  if fDMSPEDFiscal.qPessoaPESSOA.AsString = 'J' then
    fDMSPEDFiscal.mPessoaCNPJ.AsString := Monta_Numero(fDMSPEDFiscal.qPessoaCNPJ_CPF.AsString,14)
  else
    fDMSPEDFiscal.mPessoaCPF.AsString := Monta_Numero(fDMSPEDFiscal.qPessoaCNPJ_CPF.AsString,11);
  if trim(fDMSPEDFiscal.qPessoaINSCR_EST.AsString) <> '' then
    fDMSPEDFiscal.mPessoaInscr_Estadual.AsString := Monta_Numero(fDMSPEDFiscal.qPessoaINSCR_EST.AsString,fDMSPEDFiscal.qPessoaQTD_DIGITOS_IE.AsInteger);
  fDMSPEDFiscal.mPessoaCod_Municipio.AsString   := fDMSPEDFiscal.qPessoaCODMUNICIPIO.AsString;
  fDMSPEDFiscal.mPessoaSuframa.AsString         := '';
  fDMSPEDFiscal.mPessoaEndereco.AsString        := fDMSPEDFiscal.qPessoaENDERECO.AsString;
  fDMSPEDFiscal.mPessoaNum_End.AsString         := fDMSPEDFiscal.qPessoaNUM_END.AsString;
  fDMSPEDFiscal.mPessoaComplemento_End.AsString := fDMSPEDFiscal.qPessoaCOMPLEMENTO_END.AsString;
  fDMSPEDFiscal.mPessoaBairro.AsString          := fDMSPEDFiscal.qPessoaBAIRRO.AsString;
  fDMSPEDFiscal.mPessoa.Post;
end;

procedure TfrmSPEDFiscal.prc_Gravar_mProduto;
var
  vCodigo : String;
begin
  if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
    vCodigo := fDMSPEDFiscal.cdsMovimentoREFERENCIA.AsString
  else
    vCodigo := fDMSPEDFiscal.cdsMovimentoID_PRODUTO.AsString;
  if fDMSPEDFiscal.cdsMovimentoID_COR.AsInteger > 0 then
    vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsMovimentoID_COR.AsString;
  if (trim(fDMSPEDFiscal.cdsMovimentoTAMANHO.AsString) <> '') and (fDMSPEDFiscal.cdsMovimentoUSA_TAMANHO_AGRUPADO_NFE.AsString <> 'S') then
    vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsMovimentoTAMANHO.AsString;

  if not fDMSPEDFiscal.mProduto.FindKey([vCodigo]) then
  begin
    fDMSPEDFiscal.mProduto.Insert;
    fDMSPEDFiscal.mProdutoID.AsInteger         := fDMSPEDFiscal.cdsMovimentoID_PRODUTO.AsInteger;
    fDMSPEDFiscal.mProdutoCod_Produto.AsString := vCodigo;
    if trim(fDMSPEDFiscal.cdsMovimentoTAMANHO.AsString) <> '' then
      fDMSPEDFiscal.mProdutoTamanho.AsString     := fDMSPEDFiscal.cdsMovimentoTAMANHO.AsString;
    fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.cdsMovimentoNOME_PRODUTO_SERV.AsString;
    if trim(fDMSPEDFiscal.cdsMovimentoNOME_COR.AsString) <> '' then
      fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.mProdutoNome.AsString + ' ' + fDMSPEDFiscal.cdsMovimentoNOME_COR.AsString;
    fDMSPEDFiscal.mProdutoCod_Barra.AsString := Monta_Numero(fDMSPEDFiscal.cdsMovimentoCOD_BARRA_CAD.AsString,0);
    fDMSPEDFiscal.mProdutoCod_Anterior.AsString := '';
    fDMSPEDFiscal.mProdutoUnidade.AsString      := UpperCase(fDMSPEDFiscal.cdsMovimentoUNIDADE_PRODUTO_CAD.AsString);
    fDMSPEDFiscal.mProdutoTipo_Item.AsString    := fDMSPEDFiscal.cdsMovimentoSPED_TIPO_ITEM.AsString;
    fDMSPEDFiscal.mProdutoNCM.AsString          := Monta_Numero(fDMSPEDFiscal.cdsMovimentoNCM.AsString,0);
    fDMSPEDFiscal.mProdutoNCM_EX.AsString       := fDMSPEDFiscal.cdsMovimentoNCM_EX.AsString;
    fDMSPEDFiscal.mProdutoEX_IPI.AsString       := fDMSPEDFiscal.cdsMovimentoNCM_EX.AsString;
    fDMSPEDFiscal.mProdutoCOD_SERVICO.AsInteger := 0;
    fDMSPEDFiscal.mProdutoPERC_ICMS.AsFloat     := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.qUFPERC_ICMS_INTERNO.AsFloat));
    fDMSPEDFiscal.mProduto.Post;
    prc_Gravar_mUnidade(fDMSPEDFiscal.mProdutoUnidade.AsString);
  end;
  if (trim(fDMSPEDFiscal.cdsMovimentoUNIDADE_CONV.AsString) <> '') and (fDMSPEDFiscal.cdsMovimentoUNIDADE.AsString <> fDMSPEDFiscal.cdsMovimentoUNIDADE_PRODUTO_CAD.AsString) then
  begin
    if not fDMSPEDFiscal.mUnidade_Conv.Locate('Cod_Produto;Unidade',VarArrayOf([vCodigo,fDMSPEDFiscal.cdsMovimentoUNIDADE_CONV.AsString]),[locaseinsensitive]) then
    begin
      if StrToFloat(FormatFloat('0.0000',fDMSPEDFiscal.cdsMovimentoQTD_CONVERSOR.AsFloat)) <> 1 then
      begin
        fDMSPEDFiscal.mUnidade_Conv.Insert;
        fDMSPEDFiscal.mUnidade_ConvUnidade.AsString     := fDMSPEDFiscal.cdsMovimentoUNIDADE_CONV.AsString;
        fDMSPEDFiscal.mUnidade_ConvQtd_Conv.AsFloat     := fDMSPEDFiscal.cdsMovimentoQTD_CONVERSOR.AsFloat;
        fDMSPEDFiscal.mUnidade_ConvCod_Produto.AsString := vCodigo;
        fDMSPEDFiscal.mUnidade_Conv.Post;
        prc_Gravar_mUnidade(fDMSPEDFiscal.mUnidade_ConvUnidade.AsString);
      end;
    end;
  end; 
end;

procedure TfrmSPEDFiscal.prc_Gravar_mUnidade(Unidade : String);
begin
  Unidade := UpperCase(Unidade);
  if fDMSPEDFiscal.mUnidade.FindKey([Unidade]) then
    exit;
  fDMSPEDFiscal.qUnidade.Close;
  fDMSPEDFiscal.qUnidade.ParamByName('UNIDADE').AsString := Unidade;
  fDMSPEDFiscal.qUnidade.Open;
  fDMSPEDFiscal.mUnidade.Insert;
  fDMSPEDFiscal.mUnidadeUnidade.AsString := Unidade;
  if fDMSPEDFiscal.qUnidadeUNIDADE.AsString <> fDMSPEDFiscal.qUnidadeNOME.AsString then
    fDMSPEDFiscal.mUnidadeNome.AsString := fDMSPEDFiscal.qUnidadeNOME.AsString;
  fDMSPEDFiscal.mUnidade.Post;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0200;
begin
  fDMSPEDFiscal.mProduto.First;
  while not fDMSPEDFiscal.mProduto.Eof do
  begin
    with ACBrSPEDFiscal1.Bloco_0 do
    begin
      with Registro0001New do
      begin
        with Registro0200New do
        begin
          COD_ITEM     := fDMSPEDFiscal.mProdutoCod_Produto.AsString;
          DESCR_ITEM   := TiraAcentos(fDMSPEDFiscal.mProdutoNome.AsString);
          COD_BARRA    := fDMSPEDFiscal.mProdutoCod_Barra.AsString;
          COD_ANT_ITEM := '';
          UNID_INV     := TiraAcentos(fDMSPEDFiscal.mProdutoUnidade.AsString);
          case fDMSPEDFiscal.mProdutoTipo_Item.AsInteger of
            0 : TIPO_ITEM := tiMercadoriaRevenda;
            1 : TIPO_ITEM := tiMateriaPrima;
            2 : TIPO_ITEM := tiEmbalagem;
            3 : TIPO_ITEM := tiProdutoProcesso;
            4 : TIPO_ITEM := tiProdutoAcabado;
            5 : TIPO_ITEM := tiSubproduto;
            6 : TIPO_ITEM := tiProdutoIntermediario;
            7 : TIPO_ITEM := tiMaterialConsumo;
            8 : TIPO_ITEM := tiAtivoImobilizado;
            9 : TIPO_ITEM := tiServicos;
           10 : TIPO_ITEM := tiOutrosInsumos;
           99 : TIPO_ITEM := tiOutras;
          end;
          COD_NCM   := fDMSPEDFiscal.mProdutoNCM.AsString;
          EX_IPI    := fDMSPEDFiscal.mProdutoEX_IPI.AsString;
          COD_GEN   := copy(fDMSPEDFiscal.mProdutoNCM.AsString,1,2);
          COD_LST   := '';
          ALIQ_ICMS := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mProdutoPERC_ICMS.AsFloat));
          vContador_Reg_0 := vContador_Reg_0 + 1;

          fDMSPEDFiscal.mUnidade_Conv.Filtered := False;
          try
            fDMSPEDFiscal.mUnidade_Conv.Filter   := 'Cod_Produto = ' + QuotedStr(fDMSPEDFiscal.mProdutoCod_Produto.AsString);
            fDMSPEDFiscal.mUnidade_Conv.Filtered := True;
            fDMSPEDFiscal.mUnidade_Conv.First;
            while not fDMSPEDFiscal.mUnidade_Conv.Eof do
            begin
              prc_Bloco_0_Reg_0220;
              fDMSPEDFiscal.mUnidade_Conv.Next;
            end;

          finally
            fDMSPEDFiscal.mUnidade_Conv.Filtered := False;
          end;
        end;
      end;
    end;
    fDMSPEDFiscal.mProduto.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0205;
begin
  //Não foi feito este bloco
  //  vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0206;
begin
  //Não foi feito este bloco
        //REGISTRO 0206: CÓDIGO DE PRODUTO CONFORME TABELA PUBLICADA PELA ANP (COMBUSTÍVEIS)
//        With Registro0206New do
//        begin
//          COD_COMB := '910101001';
//        end;
//    vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0220;
begin
  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    with Registro0001New do
    begin
      with Registro0220New do
      begin
        UNID_CONV := fDMSPEDFiscal.mUnidade_ConvUnidade.AsString;
        FAT_CONV  := fDMSPEDFiscal.mUnidade_ConvQtd_Conv.AsFloat;
      end;
    end;
  end;
  vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0300;
begin
  fDMSPEDFiscal.cdsAtivoImob.Close;
  fDMSPEDFiscal.cdsAtivoImob.Open;
  fDMSPEDFiscal.cdsAtivoImob.First;
  while not fDMSPEDFiscal.cdsAtivoImob.Eof do
  begin
    with ACBrSPEDFiscal1.Bloco_0 do
    begin
      with Registro0001New do
      begin
        with Registro0300New do
        begin
          COD_IND_BEM := fDMSPEDFiscal.cdsAtivoImobID.AsString;
          IDENT_MERC  := fDMSPEDFiscal.cdsAtivoImobTIPO_ATIVO.AsInteger;
          DESCR_ITEM  := TiraAcentos(fDMSPEDFiscal.cdsAtivoImobNOME_PRODUTO.AsString);
          if fDMSPEDFiscal.cdsAtivoImobID_PRODUTO_PRINCIPAL.AsInteger > 0 then
          begin
            if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
              COD_PRNC  := fDMSPEDFiscal.cdsAtivoImobREF_PRINCIPAL.AsString
            else
              COD_PRNC  := fDMSPEDFiscal.cdsAtivoImobID_PRODUTO_PRINCIPAL.AsString;
          end;
          COD_CTA := fDMSPEDFiscal.cdsAtivoImobCOD_PLANO_CONTAS.AsString;
          NR_PARC := fDMSPEDFiscal.cdsAtivoImobNUM_PARCELA_BEM.AsInteger;
        end;
      end;
    end;
    vContador_Reg_0 := vContador_Reg_0 + 1;
    prc_Bloco_0_Reg_0305;
    fDMSPEDFiscal.cdsAtivoImob.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0305;
begin
  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    with Registro0001New do
    begin
      with Registro0305New do
      begin
        COD_CCUS := fDMSPEDFiscal.cdsAtivoImobCOD_CENTRO_CUSTO.AsString;
        FUNC     := fDMSPEDFiscal.cdsAtivoImobFUNCAO.AsString;
        VIDA_UTIL := fDMSPEDFiscal.cdsAtivoImobVIDA_UTIL.AsInteger;
      end;
    end;
  end;
  vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Gravar_mNatureza(ID_CFOP: Integer; CODCFOP, NOME: String);
begin
  if (fDMSPEDFiscal.cdsMovimentoCOD_MODELO.AsString = '57') or (fDMSPEDFiscal.cdsMovimentoCOD_MODELO.AsString = '06') then
    exit;
  //if fDMSPEDFiscal.mNatureza.FindKey([fDMSPEDFiscal.cdsMovimentoCODCFOP.AsString]) then
  if trim(CODCFOP) = '' then
    CODCFOP := SQLLocate('TAB_CFOP','ID','CODCFOP',IntToStr(ID_CFOP));
  if fDMSPEDFiscal.mNatureza.FindKey([CODCFOP]) then
    exit;
  fDMSPEDFiscal.mNatureza.Insert;
  if trim(NOME) = '' then
    NOME := SQLLocate('TAB_CFOP','ID','NOME',IntToStr(ID_CFOP));
  fDMSPEDFiscal.mNaturezaCod_Natureza.AsString  := CODCFOP;
  fDMSPEDFiscal.mNaturezaNome_Natureza.AsString := TiraAcentos(NOME);
  fDMSPEDFiscal.mNatureza.Post;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0400;
begin
  fDMSPEDFiscal.mNatureza.First;
  while not fDMSPEDFiscal.mNatureza.Eof do
  begin
    with ACBrSPEDFiscal1.Bloco_0 do
    begin
      with Registro0001New do
      begin
        with Registro0400New do
        begin
          COD_NAT   := fDMSPEDFiscal.mNaturezaCod_Natureza.AsString;
          DESCR_NAT := TiraAcentos(fDMSPEDFiscal.mNaturezaNome_Natureza.AsString);
        end;
      end;
    end;
    vContador_Reg_0 := vContador_Reg_0 + 1;
    fDMSPEDFiscal.mNatureza.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0500;
begin
  fDMSPEDFiscal.cdsPlano_Contas.Close;
  fDMSPEDFiscal.cdsPlano_Contas.Open;
  fDMSPEDFiscal.cdsPlano_Contas.IndexFieldNames := 'CODIGO;ID';
  fDMSPEDFiscal.cdsPlano_Contas.First;
  while not fDMSPEDFiscal.cdsPlano_Contas.Eof do
  begin
    with ACBrSPEDFiscal1.Bloco_0 do
    begin
      with Registro0001New do
      begin
        with Registro0500New do
        begin
          DT_ALT := fDMSPEDFiscal.cdsPlano_ContasDT_CADASTRO.AsDateTime;
          COD_NAT_CC := fDMSPEDFiscal.cdsPlano_ContasCOD_NATUREZA.AsString;
          IND_CTA    := fDMSPEDFiscal.cdsPlano_ContasTIPO_REG.AsString;
          NIVEL      := fDMSPEDFiscal.cdsPlano_ContasNIVEL.AsString;
          COD_CTA    := fDMSPEDFiscal.cdsPlano_ContasCODIGO.AsString;
          NOME_CTA   := TiraAcentos(fDMSPEDFiscal.cdsPlano_ContasNOME.AsString);
        end;
      end;
    end;
    vContador_Reg_0 := vContador_Reg_0 + 1;
    fDMSPEDFiscal.cdsPlano_Contas.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0600;
begin
  fDMSPEDFiscal.cdsCentroCusto.Close;
  fDMSPEDFiscal.cdsCentroCusto.Open;
  fDMSPEDFiscal.cdsCentroCusto.First;
  while not fDMSPEDFiscal.cdsCentroCusto.Eof do
  begin
    with ACBrSPEDFiscal1.Bloco_0 do
    begin
      with Registro0001New do
      begin
        with Registro0600New do
        begin
          DT_ALT   := fDMSPEDFiscal.cdsCentroCustoDT_CADASTRO.AsDateTime;
          COD_CCUS := fDMSPEDFiscal.cdsCentroCustoCODIGO.AsString;
          CCUS     := fDMSPEDFiscal.cdsCentroCustoDESCRICAO.AsString;
        end;
      end;                                   
    end;
    vContador_Reg_0 := vContador_Reg_0 + 1;
    fDMSPEDFiscal.cdsCentroCusto.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0990;
begin
  vContador_Reg_0 := vContador_Reg_0 + 1;
  //ACBrSPEDFiscal1.Bloco_0.Registro0990.QTD_LIN_0 := vContador_Reg_0;
  ACBrSPEDFiscal1.Bloco_0.Registro0990.QTD_LIN_0 := vContador_Reg_0;
end;

procedure TfrmSPEDFiscal.FormShow(Sender: TObject);
begin
  fDMSPEDFiscal := TDMSPEDFiscal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMSPEDFiscal);
  TS_Exemplo.TabVisible := False;
  if fDMSPEDFiscal.cdsFilial.RecordCount = 1 then
  begin
    RxDBLookupCombo1.KeyValue := fDMSPEDFiscal.cdsFilialID.AsInteger;
    RxDBLookupCombo1Exit(Sender);
  end;

  RzCheckList1.ItemChecked[1] := True;
  RzCheckList1.ItemChecked[6] := True;

  DateEdit1.Date := IncMonth(EncodeDate(YearOf(Date),MonthOf(Date),01), -1);
  DateEdit2.Date := EncodeDate(YearOf(DateEdit1.Date),MonthOf(DateEdit1.Date),DaysInAMonth(YearOf(DateEdit1.Date),MonthOf(DateEdit1.Date)));
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0450;
begin
  fDMSPEDFiscal.m0450.First;
  while not fDMSPEDFiscal.m0450.Eof do
  begin
    with ACBrSPEDFiscal1.Bloco_0 do
    begin
      with Registro0001New do
      begin
        with Registro0450New do
        begin
          COD_INF := fDMSPEDFiscal.m0450Codigo.AsString;
          TXT     := fDMSPEDFiscal.m0450Obs.AsString;
        end;
      end;
    end;
    fDMSPEDFiscal.m0450.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0460;
begin
  fDMSPEDFiscal.m0460.First;
  while not fDMSPEDFiscal.m0460.Eof do
  begin
    with ACBrSPEDFiscal1.Bloco_0 do
    begin
      with Registro0001New do
      begin
        with Registro0460New do
        begin
          COD_OBS := fDMSPEDFiscal.m0460Codigo.AsString;
          TXT     := fDMSPEDFiscal.m0460Obs.AsString;
        end;
      end;
    end;
    fDMSPEDFiscal.m0460.Next;
  end;
end;

function TfrmSPEDFiscal.fnc_Valida_Campos(Tipo_Bloco : String = '') : Boolean;
var
  vMsg : String;
begin
  Result := False;
  vMsg   := '';
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) or (DateEdit1.Date > DateEdit2.Date) then
    vMsg := vMsg + #13 + 'Período informado inválido!';
  if RxDBLookupCombo1.Text = '' then
    vMsg := vMsg + #13 + '*** Filial não informada!';
  if fDMSPEDFiscal.cdsFilialID_CONTABILISTA.AsInteger <= 0 then
    vMsg := vMsg + #13 + '*** Filial não possui contabilista cadastrado!';
  if trim(vMsg) <> '' then
  begin
    MessageDlg(vMsg, mtError, [mbOk], 0);
    exit;
  end;
  Result := True;
end;

procedure TfrmSPEDFiscal.btnBloco_CClick(Sender: TObject);
begin
  if btnGerar.Tag <> 1 then
  begin
    if not fnc_Valida_Campos then
      exit;
    if MessageDlg('Deseja gerar o <Bloco C>?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;
  prc_Gerar_Bloco_C;
end;

procedure TfrmSPEDFiscal.prc_Gerar_Bloco_C;
begin
  vContador_Reg_C := 0;
  //24/02/2023
  //prc_Abrir_NotaFiscal('C');

  if ComboBox3.ItemIndex <> 1 then
  begin
    fDMSPEDFiscal.cdsNFe_Inutilizadas.Close;
    fDMSPEDFiscal.sdsNFe_Inutilizadas.ParamByName('DT_INICIAL').AsDate := DateEdit1.Date;
    fDMSPEDFiscal.sdsNFe_Inutilizadas.ParamByName('DT_FINAL').AsDate   := DateEdit2.Date;
    fDMSPEDFiscal.sdsNFe_Inutilizadas.ParamByName('FILIAL').AsInteger  := RxDBLookupCombo1.KeyValue;
    fDMSPEDFiscal.cdsNFe_Inutilizadas.Open;
  end;

  //Abertura do Bloco C
  prc_Bloco_C_Reg_C001;

  case ComboBox3.ItemIndex of
    0,2 : prc_Bloco_C_Reg_C100_Inutilizadas;
  end;

  fDMSPEDFiscal.cdsNotaFiscal.First;
  while not fDMSPEDFiscal.cdsNotaFiscal.Eof do
  begin
    {if (fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsInteger <> 74474) then
    begin
      fDMSPEDFiscal.cdsNotaFiscal.Next;
      Continue;
    end;}

    fDMSPEDFiscal.mC190.EmptyDataSet;
    if (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '06') or (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '29') or
      (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '28') then
      prc_Bloco_C_Reg_C500
    else
    if (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '01') or (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '1B') or
        (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '04') or (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '55') or
        (trim(fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString) = '')  then
      prc_Bloco_C_Reg_C100;
    fDMSPEDFiscal.cdsNotaFiscal.Next;
  end;

  fDMSPEDFiscal.cdsCupomFiscal.First;
  while not fDMSPEDFiscal.cdsCupomFiscal.Eof do
  begin
    if fDMSPEDFiscal.cdsCupomFiscalID.AsInteger = 3770005 then
      ShowMessage('1');
    prc_Bloco_C_Reg_C100_Cupom;
    fDMSPEDFiscal.cdsCupomFiscal.Next;
  end;


  prc_Bloco_C_Reg_C990;
  //ACBrSPEDFiscal1.WriteBloco_C(True); // False, NAO fecha o Bloco
end;

procedure TfrmSPEDFiscal.prc_Bloco_C_Reg_C100;
begin
  with ACBrSPEDFiscal1.Bloco_C do
  begin
  //  with RegistroC001New do
  //  begin
      with RegistroC100New do
      begin
        if fDMSPEDFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
          IND_OPER := tpEntradaAquisicao
        else
          IND_OPER := tpSaidaPrestacao;
        //Só pra variar a emissão entre própria e de terceiros
        if fDMSPEDFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTE' then
          IND_EMIT := edTerceiros
        else
          IND_EMIT := edEmissaoPropria;
        if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString = 'N') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'N') then
          COD_PART := fDMSPEDFiscal.cdsNotaFiscalID_CLIENTE.AsString;
        if fDMSPEDFiscal.cdsNotaFiscalID_CLIENTE.AsInteger = 4877 then
          COD_MOD := '01'
        else
        if fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '' then
          COD_MOD := '55'
        else
        if fDMSPEDFiscal.cdsNotaFiscalSERIE.AsString = '890' then
          COD_MOD  := '55'
        else
          COD_MOD  := fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString;

        if fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString = 'S' then
          COD_SIT  := sdCancelado
        else
        if fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
          COD_SIT  := sdDoctoDenegado
        else
        if fDMSPEDFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '2' then
          COD_SIT  := sdFiscalCompl
        else
        if fDMSPEDFiscal.cdsNotaFiscalSERIE.AsString = '890' then
          COD_SIT  := sdRegimeEspecNEsp
        else
          COD_SIT  := sdRegular;
        //if fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsInteger = 141310 then
        //  showmessage('aqui');
        SER     := fDMSPEDFiscal.cdsNotaFiscalSERIE.AsString;
        NUM_DOC := fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsString;
        if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString = 'N') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'N') then
        begin
        end;
        CHV_NFE := fDMSPEDFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString;
        if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString = 'N') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'N') then
        begin
          DT_DOC := fDMSPEDFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime;
          if fDMSPEDFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime > 10 then
            DT_E_S := fDMSPEDFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime
          else
          if fDMSPEDFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
            DT_E_S := fDMSPEDFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime;
          if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString <> 'S') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString <> 'S') then
          begin
            VL_DOC := fDMSPEDFiscal.cdsNotaFiscalVLR_NOTA.AsFloat;
            if fDMSPEDFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V' then
              IND_PGTO := tpVista
            else
            if fDMSPEDFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'P' then
              IND_PGTO := tpPrazo
            else
              IND_PGTO := tpOutros;
            VL_DESC    := fDMSPEDFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat;
            VL_ABAT_NT := 0;
            VL_MERC    := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscalVLR_ITENS.AsFloat + fDMSPEDFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat));
            if fDMSPEDFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '1' then
              IND_FRT := tfPorContaEmitente
            else
            if fDMSPEDFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '2' then
              IND_FRT := tfPorContaDestinatario
            else
            if fDMSPEDFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '3' then
              IND_FRT := tfPorContaTerceiros
            else
            if fDMSPEDFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '9' then
              IND_FRT := tfSemCobrancaFrete;
              //if fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsInteger = 33417 then
                //ShowMessage('parte 1');
            VL_FRT := fDMSPEDFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
            VL_SEG := fDMSPEDFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat;
            VL_OUT_DA := fDMSPEDFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat;
            if StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat)) > 0 then
              VL_BC_ICMS := fDMSPEDFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat
            else
              VL_BC_ICMS := fDMSPEDFiscal.cdsNotaFiscalBASE_ICMS.AsFloat;
          end;
          //if fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsInteger = 20099 then
          //  showMessage('aqui');
          if StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat)) > 0 then
            VL_ICMS := fDMSPEDFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat
          else
            VL_ICMS := fDMSPEDFiscal.cdsNotaFiscalVLR_ICMS.AsFloat;
          if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString <> 'S') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString <> 'S') then
          begin
            VL_BC_ICMS_ST := fDMSPEDFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat;
            VL_ICMS_ST    := fDMSPEDFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat;
            VL_IPI        := fDMSPEDFiscal.cdsNotaFiscalVLR_IPI.AsFloat;
            VL_PIS        := fDMSPEDFiscal.cdsNotaFiscalVLR_PIS.AsFloat;
            VL_COFINS     := fDMSPEDFiscal.cdsNotaFiscalVLR_COFINS.AsFloat;
            VL_PIS_ST     := 0;
            VL_COFINS_ST  := 0;
          end;
        end;
        vContador_Reg_C := vContador_Reg_C + 1;

        //Registro C105
        //Dúvida se vai ou não gerar aqui

        { Gera registros específicos para notas emitidas por terceiros }
        //Dúvida
        //if IND_EMIT = edTerceiros then //tirei esse IF 17/03/2014
        //begin
          //With RegistroC110New do
          begin
            //Ver aqui
            //COD_INF   := '000001';
            //TXT_COMPL := '';
            //vContador_Reg_C := vContador_Reg_C + 1;

            {fDMSPEDFiscal.cdsNotaFiscal_Ref.Close;
            fDMSPEDFiscal.sdsNotaFiscal_Ref.ParamByName('ID').AsInteger := fDMSPEDFiscal.cdsNotaFiscalID.AsInteger;
            fDMSPEDFiscal.cdsNotaFiscal_Ref.Open;
            while not fDMSPEDFiscal.cdsNotaFiscal_Ref.Eof do
            begin
              if (fDMSPEDFiscal.cdsNotaFiscal_RefTIPO.AsString = '13') or
                 (fDMSPEDFiscal.cdsNotaFiscal_RefTIPO.AsString = '14') or
                 (fDMSPEDFiscal.cdsNotaFiscal_RefTIPO.AsString = '20a') then
              begin
                With RegistroC110New do
                  begin
                    COD_INF   := '000001';
                    TXT_COMPL := '';
                    vContador_Reg_C := vContador_Reg_C + 1;
                    with RegistroC113New do
                    begin
                      IND_OPER := tpEntradaAquisicao;
                      IND_EMIT := edTerceiros;
                      if fDMSPEDFiscal.cdsNotaFiscal_RefTIPO.AsString = '13' then
                      begin
                        COD_PART := fDMSPEDFiscal.cdsNotaFiscal_RefCOD_PESSOA.AsString;
                        COD_MOD  := '55';
                        SER      := fDMSPEDFiscal.cdsNotaFiscal_RefSERIE_NFE.AsString;
                        SUB      := '';
                        NUM_DOC  := fDMSPEDFiscal.cdsNotaFiscal_RefNUMNOTA_NFE.AsString;
                        DT_DOC   := fDMSPEDFiscal.cdsNotaFiscal_RefDTEMISSAO_NFE.AsDateTime;
                      end
                      else
                      begin
                        COD_PART := fDMSPEDFiscal.cdsNotaFiscal_RefID_CLIENTE.AsString;
                        COD_MOD  := fDMSPEDFiscal.cdsNotaFiscal_RefMODELO_REF.AsString;
                        SER      := fDMSPEDFiscal.cdsNotaFiscal_RefSERIE_REF.AsString;
                        SUB      := '';
                        NUM_DOC  := fDMSPEDFiscal.cdsNotaFiscal_RefNUMNOTA_REF.AsString;
                        //DT_DOC   :=
                      end;
                      vContador_Reg_C := vContador_Reg_C + 1;
                    end;
                  end;
              end;
              fDMSPEDFiscal.cdsNotaFiscal_Ref.Next;
            end;}
          end;
        //end;
        //Local da Coleta e/ou Entrega
        {if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString <> 'S') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString <> 'S') then
        begin
          fDMSPEDFiscal.qPessoa.Close;
          fDMSPEDFiscal.qPessoa.ParamByName('CODIGO').AsInteger := fDMSPEDFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
          fDMSPEDFiscal.qPessoa.Open;
          if trim(fDMSPEDFiscal.qPessoaENDERECO_ENT.AsString) <> '' then
          begin
            With RegistroC110New do
            begin
              COD_INF   := '000001';
              TXT_COMPL := '';
              vContador_Reg_C := vContador_Reg_C + 1;
              with RegistroC115New do
              begin
                IND_CARGA   := ttRodoviario;
                CNPJ_COL    := '';
                IE_COL      := '';
                CPF_COL     := '';
                COD_MUN_COL := '';
                if fDMSPEDFiscal.qPessoaPESSOA_ENT.AsString = 'J' then
                  CNPJ_ENTG := Monta_Numero(fDMSPEDFiscal.qPessoaCNPJ_CPF.AsString,14)
                else
                if fDMSPEDFiscal.qPessoaPESSOA_ENT.AsString = 'F' then
                  CPF_COL   := Monta_Numero(fDMSPEDFiscal.qPessoaCNPJ_CPF.AsString,11);
                IE_ENTG      := fDMSPEDFiscal.qPessoaINSC_EST_ENT.AsString;
                COD_MUN_ENTG := fDMSPEDFiscal.qPessoaCODMUNICIPIO_ENT.AsString;
                vContador_Reg_C := vContador_Reg_C + 1;
              end;
            end;
          end;
        end;}

        { Gera o registro de importação apenas para notas de entrada }
        {if IND_OPER = tpEntradaAquisicao then
        begin
          with RegistroC120New do
          begin
            COD_DOC_IMP := diSimplificadaImport;
            NUM_DOC__IMP := '1024879531';
            PIS_IMP := 0.00;
            COFINS_IMP := 0.00;
            NUM_ACDRAW := '';
          end;
        end;}

        { Gera registros específicos para notas emitidas por terceiros e de prestação }
        //aqui
        {if (IND_EMIT = edTerceiros) and (IND_OPER = tpSaidaPrestacao) then
        begin
          with RegistroC130New do
          begin
            VL_SERV_NT := 10.12;
            VL_BC_ISSQN := 10.12;
            VL_ISSQN := 10.12;
            VL_BC_IRRF := 10.12;
            VL_IRRF := 10.12;
            VL_BC_PREV := 10.12;
            VL_PREV := 10.12;
          end;
        end;}
        //Ler as parcelas aqui
        if fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '01' then
        begin
          fDMSPEDFiscal.cdsNotaFiscal_Parc.Close;
          fDMSPEDFiscal.sdsNotaFiscal_Parc.ParamByName('ID').AsInteger := fDMSPEDFiscal.cdsNotaFiscalID.AsInteger;
          fDMSPEDFiscal.cdsNotaFiscal_Parc.Open;
          with RegistroC140New do
          begin
            if fDMSPEDFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTE' then
              IND_EMIT := edTerceiros
            else
            if fDMSPEDFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS' then
              IND_EMIT := edEmissaoPropria;
            IND_TIT := tcDuplicata;
            DESC_TIT := '';
            NUM_TIT  := fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsString;
            QTD_PARC := fDMSPEDFiscal.cdsNotaFiscal_Parc.RecordCount;
            VL_TIT   := fDMSPEDFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat;
            vContador_Reg_C := vContador_Reg_C + 1;
            //C141
            fDMSPEDFiscal.cdsNotaFiscal_Parc.First;
            while not fDMSPEDFiscal.cdsNotaFiscal_Parc.Eof do
            begin
              with RegistroC141New do
              begin
                NUM_PARC := fDMSPEDFiscal.cdsNotaFiscal_ParcITEM.AsString;
                DT_VCTO  := fDMSPEDFiscal.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime;
                VL_PARC  := fDMSPEDFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat;
                vContador_Reg_C := vContador_Reg_C + 1;
              end;
              fDMSPEDFiscal.cdsNotaFiscal_Parc.Next;
            end;
          end;
        end;

        // REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
        //if fDMSPEDFiscal.cdsNotaFiscalID.AsInteger = 9947 then
         // ShowMessage('aqui');
        prc_Abrir_NotaFiscal_Itens(fDMSPEDFiscal.cdsNotaFiscalID.AsInteger);
        fDMSPEDFiscal.cdsNotaFiscal_Itens.First;
        while not fDMSPEDFiscal.cdsNotaFiscal_Itens.Eof do
        begin
          //if (IND_EMIT = edTerceiros) AND (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString <> '08') then
              //if fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsInteger = 33417 then
                //ShowMessage('parte 2');

          //if (IND_EMIT = edTerceiros) then
          begin
            with RegistroC170New do // Inicio Adicionar os Itens:
            begin
              NUM_ITEM := FormatFloat('000',fDMSPEDFiscal.cdsNotaFiscal_ItensITEM.AsInteger);
              COD_ITEM := monta_codigo_produto(fDMSPEDFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,fDMSPEDFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                                               fDMSPEDFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString,fDMSPEDFiscal.cdsNotaFiscal_ItensTAMANHO.AsString,'N');
              DESCR_COMPL := fDMSPEDFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString;
              QTD := fDMSPEDFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
              UNID := UpperCase(fDMSPEDFiscal.cdsNotaFiscal_ItensUNIDADE.AsString);
              VL_ITEM := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_OUTROS_ITENS.AsFloat ;
              VL_DESC := (fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat);
              if fDMSPEDFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S' then
                IND_MOV := mfSim
              else
                IND_MOV := mfNao;
              CST_ICMS := fDMSPEDFiscal.cdsNotaFiscal_ItensCST_ICMS.AsString;
              CFOP    := fDMSPEDFiscal.cdsNotaFiscal_ItensCODCFOP.AsString;
              COD_NAT := fDMSPEDFiscal.cdsNotaFiscal_ItensCODCFOP.AsString;
              if StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat)) > 0 then
                VL_BC_ICMS := fDMSPEDFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat
              else
                VL_BC_ICMS := fDMSPEDFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat;
              if StrToFloat(FormatFloat('0.000',fDMSPEDFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat)) > 0 then
                ALIQ_ICMS := fDMSPEDFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat
              else
                ALIQ_ICMS := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat;
              if StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat)) > 0 then
                VL_ICMS := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat
              else
                VL_ICMS := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat;
              VL_BC_ICMS_ST := fDMSPEDFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat;
              ALIQ_ST       := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_MVA.AsFloat;
              VL_ICMS_ST    := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
              IND_APUR      := iaMensal;
              CST_IPI       := CstIpiToStr(stipiEntradaIsenta);
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '00' then CST_IPI := CstIpiToStr(stipiEntradaRecuperacaoCredito)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '01' then CST_IPI := CstIpiToStr(stipiEntradaTributradaZero)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '02' then CST_IPI := CstIpiToStr(stipiEntradaIsenta)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '03' then CST_IPI := CstIpiToStr(stipiEntradaNaoTributada)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '04' then CST_IPI := CstIpiToStr(stipiEntradaImune)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '05' then CST_IPI := CstIpiToStr(stipiEntradaComSuspensao)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '49' then CST_IPI := CstIpiToStr(stipiOutrasEntradas)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '50' then CST_IPI := CstIpiToStr(stipiSaidaTributada)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '51' then CST_IPI := CstIpiToStr(stipiSaidaTributadaZero)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '52' then CST_IPI := CstIpiToStr(stipiSaidaIsenta)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '53' then CST_IPI := CstIpiToStr(stipiSaidaNaoTributada)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '54' then CST_IPI := CstIpiToStr(stipiSaidaImune)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '55' then CST_IPI := CstIpiToStr(stipiSaidaComSuspensao)
              else
              if fDMSPEDFiscal.cdsNotaFiscal_ItensCST_IPI.AsString = '99' then CST_IPI := CstIpiToStr(stipiOutrasSaidas);
              COD_ENQ   := '';
              VL_BC_IPI := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_OUTROS_ITENS.AsFloat;
              ALIQ_IPI  := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat;
              VL_IPI    := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat;
              //CST_PIS := pisOutrasOperacoes;
              CST_PIS := fDMSPEDFiscal.cdsNotaFiscal_ItensCST_PIS.AsString;
              if StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat)) > 0 then
              begin
                VL_BC_PIS     := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat;
                ALIQ_PIS_PERC := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat;
                QUANT_BC_PIS  := fDMSPEDFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
                ALIQ_PIS_R    := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat;
                VL_PIS        := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat;
              end;
              //CST_COFINS := cofinsOutrasOperacoes;
              CST_COFINS := fDMSPEDFiscal.cdsNotaFiscal_ItensCST_COFINS.AsString;
              if StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat)) > 0 then
              begin
                VL_BC_COFINS     := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat;
                ALIQ_COFINS_PERC := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat;
                QUANT_BC_COFINS  := fDMSPEDFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
                ALIQ_COFINS_R    := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat;
                VL_COFINS        := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat;
              end;
              COD_CTA := '';
              vContador_Reg_C := vContador_Reg_C + 1;
              //REGISTRO C178
              //Ver este registro
                {with RegistroC178New do
                begin
                  CL_ENQ    := fDMSPEDFiscal.cdsNotaFiscal_ItensCOD_ENQIPI.AsString;
                  VL_UNID   := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat;
                  QUANT_PAD := fDMSPEDFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
                  vContador_Reg_C := vContador_Reg_C + 1;
                end;}
            end;
          end;

          //Registro C176
          if ckC176.Checked then
          begin
            if fDMSPEDFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
            begin
              fDMSPEDFiscal.cdsC176.Close;
              fDMSPEDFiscal.sdsC176.ParamByName('ID_DOC_SAIDA').AsInteger   := fDMSPEDFiscal.cdsNotaFiscal_ItensID.AsInteger;
              fDMSPEDFiscal.sdsC176.ParamByName('ITEM_DOC_SAIDA').AsInteger := fDMSPEDFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
              fDMSPEDFiscal.cdsC176.Open;
              fDMSPEDFiscal.cdsC176.First;
              while not fDMSPEDFiscal.cdsC176.Eof do
              begin
                with RegistroC176New do
                begin
                  COD_MOD_ULT_E := '55';
                  NUM_DOC_ULT_E := fDMSPEDFiscal.cdsC176NUM_NOTA_ENT.AsString;
                  SER_ULT_E     := fDMSPEDFiscal.cdsC176SERIE_NOTA_ENT.AsString;
                  DT_ULT_E      := fDMSPEDFiscal.cdsC176DTSAIDAENTRADA.AsDateTime;
                  COD_PART_ULT_E := fDMSPEDFiscal.cdsC176ID_FORNECEDOR.AsString;
                  QUANT_ULT_E    := fDMSPEDFiscal.cdsC176QTD_ENTRADA.AsFloat;
                  VL_UNIT_ULT_E  := fDMSPEDFiscal.cdsC176VLR_UNITARIO.AsFloat;
                  VL_UNIT_BC_ST  := fDMSPEDFiscal.cdsC176VLR_UNITARIO_BC_ST.AsFloat;
                  CHAVE_NFE_ULT_E := fDMSPEDFiscal.cdsC176NFECHAVEACESSO.AsString;
                  NUM_ITEM_ULT_E  := fDMSPEDFiscal.cdsC176ITEM_NOTA_ENT.AsString;
                  VL_UNIT_BC_ICMS_ULT_E := fDMSPEDFiscal.cdsC176VLR_UNITARIO_BC_ICMS_ENT.AsFloat;
                  ALIQ_ICMS_ULT_E       := fDMSPEDFiscal.cdsC176PERC_ICMS_ENT.AsFloat;
                  if VL_UNIT_BC_ICMS_ULT_E < VL_UNIT_BC_ST then
                    VL_UNIT_LIMITE_BC_ICMS_ULT_E := VL_UNIT_BC_ICMS_ULT_E
                  else
                    VL_UNIT_LIMITE_BC_ICMS_ULT_E := VL_UNIT_BC_ST;
                  VL_UNIT_ICMS_ULT_E := StrToFloat(FormatFloat('0.00',(VL_UNIT_LIMITE_BC_ICMS_ULT_E * ALIQ_ICMS_ULT_E) / 100));
                  VL_UNIT_RES        := fDMSPEDFiscal.cdsC176VLR_ICMS.AsFloat;
                  COD_RESP_RET       := IntToStr(frmConfigC176.RzRadioGroup1.ItemIndex + 1);
                  COD_MOT_RES        := tmrVendaOutraUF;
                  CHAVE_NFE_RET      := fDMSPEDFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString;
                  SER_NFE_RET        := fDMSPEDFiscal.cdsC176SERIE_DOC_SAIDA.AsString;
                  ITEM_NFE_RET       := fDMSPEDFiscal.cdsC176ITEM_DOC_SAIDA.AsString;
                  COD_DA             := IntToStr(frmConfigC176.RzRadioGroup2.ItemIndex);
                  NUM_DA             := frmConfigC176.edtNumDocumento.Text;
                end;
                fDMSPEDFiscal.cdsC176.Next;
              end;
            end;
          end;



          //Gravar a tabela auxiliar do registro C190
          //IF fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString <> '08' then
            prc_Gravar_mC190;



          fDMSPEDFiscal.cdsNotaFiscal_Itens.Next;
        end;

        // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
        if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString = 'N') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'N') then
        begin
          fDMSPEDFiscal.mC190.First;
          while not fDMSPEDFiscal.mC190.Eof do
          begin
            with RegistroC190New do
            begin
              CST_ICMS      := fDMSPEDFiscal.mC190CST_ICMS.AsString;
              CFOP          := fDMSPEDFiscal.mC190Cod_CFOP.AsString;
              ALIQ_ICMS     := fDMSPEDFiscal.mC190Perc_ICMS.AsFloat;
              VL_OPR        := fDMSPEDFiscal.mC190Vlr_Operacao.AsFloat;
              VL_BC_ICMS    := fDMSPEDFiscal.mC190Vlr_Base_ICMS.AsFloat;
              VL_ICMS       := fDMSPEDFiscal.mC190Vlr_ICMS.AsFloat;
              VL_BC_ICMS_ST := fDMSPEDFiscal.mC190Vlr_Base_ICMS_ST.AsFloat;
              VL_ICMS_ST    := fDMSPEDFiscal.mC190Vlr_ICMS_ST.AsFloat;
              VL_RED_BC     := fDMSPEDFiscal.mC190Vlr_Reducao_ICMS.AsFloat;
              VL_IPI        := fDMSPEDFiscal.mC190Vlr_IPI.AsFloat;
              COD_OBS       := fDMSPEDFiscal.mC190Cod_OBS.AsString;
              vContador_Reg_C := vContador_Reg_C + 1;
            end;
            fDMSPEDFiscal.mC190.Next;
          end;
        end;
        {with RegistroC195 do
        begin
          //fazer aqui
        end;
        with RegistroC197New do
        begin
          //fazer aqui
        end;}
      end;
//    end;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_C_Reg_C100_Inutilizadas;
var
  i : Integer;
begin
  //Le as notas inutilizadas para gravar o registro C100
  fDMSPEDFiscal.cdsNFe_Inutilizadas.First;
  while not fDMSPEDFiscal.cdsNFe_Inutilizadas.Eof do
  begin
    i := fDMSPEDFiscal.cdsNFe_InutilizadasNUMNOTA_INI.AsInteger;
    while i <= fDMSPEDFiscal.cdsNFe_InutilizadasNUMNOTA_FIN.AsInteger do
    begin
      with ACBrSPEDFiscal1.Bloco_C do
      begin
        with RegistroC001New do
        begin
          with RegistroC100New do
          begin
            IND_OPER := tpSaidaPrestacao;
            IND_EMIT := edEmissaoPropria;
            COD_MOD  := fDMSPEDFiscal.cdsNFe_InutilizadasMODELO.AsString;
            COD_SIT  := sdDoctoNumInutilizada;
            SER      := fDMSPEDFiscal.cdsNFe_InutilizadasSERIE.AsString;
            NUM_DOC  := IntToStr(i);
            vContador_Reg_C := vContador_Reg_C + 1;
          end;
        end;
      end;
      i := i + 1;
    end;
    fDMSPEDFiscal.cdsNFe_Inutilizadas.Next;
  end;
  //*****************************
end;

procedure TfrmSPEDFiscal.prc_Bloco_C_Reg_C500;
begin
  with ACBrSPEDFiscal1.Bloco_C do
  begin
    with RegistroC001New do
    begin
      with RegistroC500New do
      begin
        if fDMSPEDFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
          IND_OPER := tpEntradaAquisicao
        else
          IND_OPER := tpSaidaPrestacao;
        if fDMSPEDFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTE' then
          IND_EMIT := edTerceiros
        else
          IND_EMIT := edEmissaoPropria;
        COD_PART := fDMSPEDFiscal.cdsNotaFiscalID_CLIENTE.AsString;
        COD_MOD  := fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString;
        if fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString = 'S' then
          COD_SIT  := sdCancelado
        else
        if fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
          COD_SIT  := sdDoctoDenegado
        else
        if fDMSPEDFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '2' then
          COD_SIT  := sdFiscalCompl
        else
          COD_SIT  := sdRegular;
        SER     := fDMSPEDFiscal.cdsNotaFiscalSERIE.AsString;
        SUB     := '';
        NUM_DOC := fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsString;
        DT_DOC := fDMSPEDFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime;
        if fDMSPEDFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime > 10 then
          DT_E_S := fDMSPEDFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;
        if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString <> 'S') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString <> 'S') then
        begin
          VL_DOC     := fDMSPEDFiscal.cdsNotaFiscalVLR_NOTA.AsFloat;
          VL_DESC    := fDMSPEDFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat;
          VL_FORN    := fDMSPEDFiscal.cdsNotaFiscalVLR_NOTA.AsFloat;
          VL_SERV_NT := 0;
          VL_TERC    := 0;
          VL_DA      := 0;
          VL_BC_ICMS := fDMSPEDFiscal.cdsNotaFiscalBASE_ICMS.AsFloat;
          VL_ICMS    := fDMSPEDFiscal.cdsNotaFiscalVLR_ICMS.AsFloat;
          VL_BC_ICMS_ST := fDMSPEDFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat;
          VL_ICMS_ST    := fDMSPEDFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat;
          COD_INF       := '';//tratar esse campo 0450
          VL_PIS        := fDMSPEDFiscal.cdsNotaFiscalVLR_PIS.AsFloat;
          VL_COFINS     := fDMSPEDFiscal.cdsNotaFiscalVLR_COFINS.AsFloat;
          TP_LIGACAO    := tlTrifasico;
          COD_GRUPO_TENSAO := gtA1;
        end;
        vContador_Reg_C := vContador_Reg_C + 1;
        if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString <> 'S') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString <> 'S') then
        begin
          prc_Abrir_NotaFiscal_Itens(fDMSPEDFiscal.cdsNotaFiscalID.AsInteger);
          fDMSPEDFiscal.cdsNotaFiscal_Itens.First;
          while not fDMSPEDFiscal.cdsNotaFiscal_Itens.Eof do
          begin
            prc_Gravar_mC190;
            fDMSPEDFiscal.cdsNotaFiscal_Itens.Next;
          end;

          while not fDMSPEDFiscal.cdsNotaFiscal_Itens.Eof do
          begin
            with RegistroC510New do
            begin
              NUM_ITEM   := fDMSPEDFiscal.cdsNotaFiscal_ItensITEM.AsString;
              if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
                COD_ITEM   := fDMSPEDFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString
              else
                COD_ITEM   := fDMSPEDFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsString;
              COD_CLASS  := '';//Ver aqui
              QTD        := fDMSPEDFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
              UNID       := UpperCase(fDMSPEDFiscal.cdsNotaFiscal_ItensUNIDADE.AsString);
              VL_ITEM    := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat;
              VL_DESC    := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat;
              CST_ICMS   := fDMSPEDFiscal.cdsNotaFiscal_ItensCST_ICMS.AsString;
              CFOP := fDMSPEDFiscal.cdsNotaFiscal_ItensCODCFOP.AsString;
              VL_BC_ICMS := fDMSPEDFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat;
              ALIQ_ICMS  := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat;
              VL_ICMS    := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat;
              VL_BC_ICMS_ST := fDMSPEDFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat;
              ALIQ_ST       := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_MVA.AsFloat;
              VL_ICMS_ST    := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
              IND_REC       := trPropria;
              COD_PART      := fDMSPEDFiscal.cdsNotaFiscalID_CLIENTE.AsString;
              VL_PIS        := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat;
              VL_COFINS     := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat;
              COD_CTA       := '';
              vContador_Reg_C := vContador_Reg_C + 1;
            end;
            prc_Gravar_mC190;
            fDMSPEDFiscal.cdsNotaFiscal_Itens.Next;
          end;
        end;
        //C590
        fDMSPEDFiscal.mC190.First;
        while not fDMSPEDFiscal.mC190.Eof do
        begin
          with RegistroC590New do
          begin
            CST_ICMS      := fDMSPEDFiscal.mC190CST_ICMS.AsString;
            CFOP := fDMSPEDFiscal.mC190Cod_CFOP.AsString;
            ALIQ_ICMS     := fDMSPEDFiscal.mC190Perc_ICMS.AsFloat;
            VL_OPR        := fDMSPEDFiscal.mC190Vlr_Operacao.AsFloat;
            VL_BC_ICMS    := fDMSPEDFiscal.mC190Vlr_Base_ICMS.AsFloat;
            VL_ICMS       := fDMSPEDFiscal.mC190Vlr_ICMS.AsFloat;
            VL_BC_ICMS_ST := fDMSPEDFiscal.mC190Vlr_Base_ICMS_ST.AsFloat;
            VL_ICMS_ST    := fDMSPEDFiscal.mC190Vlr_ICMS_ST.AsFloat;
            VL_RED_BC     := fDMSPEDFiscal.mC190Vlr_Reducao_ICMS.AsFloat;
            COD_OBS       := ''; //Ver aqui 0450
            vContador_Reg_C := vContador_Reg_C + 1;
          end;
          fDMSPEDFiscal.mC190.Next;
        end;
        //Final da C590
      end;
    end;
  end;
end;

procedure TfrmSPEDFiscal.prc_Gravar_mC190;
var
  vAux_Aliq : Real;
  vAux : Real;
begin
  try
    vAux_Aliq := StrToFloat(FormatFloat('0.000',fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat));
    if fDMSPEDFiscal.mC190.FindKey([StrToFloat(FormatFloat('0',fDMSPEDFiscal.cdsNotaFiscal_ItensCST_ICMS.AsInteger)),fDMSPEDFiscal.cdsNotaFiscal_ItensCODCFOP.AsInteger,vAux_Aliq]) then
      fDMSPEDFiscal.mC190.Edit
    else
    begin
      fDMSPEDFiscal.mC190.Insert;
      fDMSPEDFiscal.mC190CST_ICMS.AsInteger := fDMSPEDFiscal.cdsNotaFiscal_ItensCST_ICMS.AsInteger;
      fDMSPEDFiscal.mC190Cod_CFOP.AsInteger := fDMSPEDFiscal.cdsNotaFiscal_ItensCODCFOP.AsInteger;
      fDMSPEDFiscal.mC190Perc_ICMS.AsFloat  := StrToFloat(FormatFloat('0.000',vAux_Aliq));
    end;
    fDMSPEDFiscal.mC190Vlr_Operacao.AsFloat := fDMSPEDFiscal.mC190Vlr_Operacao.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat
                                             + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat
                                             + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat
                                             + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat;
    fDMSPEDFiscal.mC190Vlr_Base_ICMS.AsFloat := fDMSPEDFiscal.mC190Vlr_Base_ICMS.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat
                                              + fDMSPEDFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat;
    fDMSPEDFiscal.mC190Vlr_ICMS.AsFloat      := fDMSPEDFiscal.mC190Vlr_ICMS.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat
                                              + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat;
    fDMSPEDFiscal.mC190Vlr_Base_ICMS_ST.AsFloat := fDMSPEDFiscal.mC190Vlr_Base_ICMS_ST.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat;
    fDMSPEDFiscal.mC190Vlr_ICMS_ST.AsFloat      := fDMSPEDFiscal.mC190Vlr_ICMS_ST.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
    if (StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat)) < 100) and
       (StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat)) > 0) then
    begin
      vAux := StrToFloat(FormatFloat('0.0000',100 - fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat));
      vAux := StrToFloat(FormatFloat('0.00',((fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * vAux) * fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat) / 100));
      fDMSPEDFiscal.mC190Vlr_Reducao_ICMS.AsFloat := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mC190Vlr_Reducao_ICMS.AsFloat + vAux));
    end;
    fDMSPEDFiscal.mC190Vlr_IPI.AsFloat          := fDMSPEDFiscal.mC190Vlr_IPI.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat;
    fDMSPEDFiscal.mC190Cod_OBS.AsString         := '';
    fDMSPEDFiscal.mC190.Post;

    if StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mC190Vlr_ICMS.AsFloat)) > 0 then
    begin
      if not fDMSPEDFiscal.mE200.Locate('UF',fDMSPEDFiscal.cdsNotaFiscalUF.AsString,([Locaseinsensitive])) then
      begin
        fDMSPEDFiscal.mE200.Insert;
        fDMSPEDFiscal.mE200UF.AsString := fDMSPEDFiscal.cdsNotaFiscalUF.AsString;
        fDMSPEDFiscal.mE200.Post;
      end;
    end; 

  except
      on E: exception do
      begin
        raise Exception.Create('erro c190 ' + E.Message + #13 + ' Nº Nota: ' + fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsString + #13 +
                               'Classe: ' + E.ClassName + #13)
      end;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_C_Reg_C990;
begin
  vContador_Reg_C := vContador_Reg_C + 1;
  ACBrSPEDFiscal1.Bloco_C.RegistroC990.QTD_LIN_C := vContador_Reg_C;
end;

procedure TfrmSPEDFiscal.btnGravar_TxtClick(Sender: TObject);
var
  vArq : String;
begin
  ACBrSPEDFiscal1.LinhasBuffer := StrToIntDef(edBufLinhas.Text, 0);
  ACBrSPEDFiscal1.Path         := DirectoryEdit1.Text;
  vArq := 'SPED_Fiscal_' + FormatFloat('0000',YearOf(DateEdit2.Date)) + FormatFloat('00',MonthOf(DateEdit2.Date)) + '.txt';
  edtFile.Text := vArq;
  ACBrSPEDFiscal1.Arquivo      := edtFile.Text;

  ACBrSPEDFiscal1.SaveFileTXT;
  LoadToMemo;

  mSped.Lines.Clear;
  if FileExists(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo) then
    mSped.Lines.LoadFromFile(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo);

  fDMSPEDFiscal.mAuxResumo.IndexFieldNames := 'Registro;Descricao_Sped';
  //RzPageControl1.ActivePage := TS_Resumo;
end;

procedure TfrmSPEDFiscal.btnBloco_DClick(Sender: TObject);
begin
  if not fnc_Valida_Campos then
    exit;
  if MessageDlg('Deseja gerar o <Bloco D>?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Gerar_Bloco_D;
end;

procedure TfrmSPEDFiscal.prc_Gerar_Bloco_D;
begin
  vContador_Reg_C := 0;
  //24/02/2023
  //prc_Abrir_NotaFiscal('D');

  //Abertura do Bloco C
  with ACBrSPEDFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      IND_MOV := imComDados;
      vContador_Reg_D := vContador_Reg_D + 1;
    end;
  end;

  fDMSPEDFiscal.cdsNotaFiscal.First;
  while not fDMSPEDFiscal.cdsNotaFiscal.Eof do
  begin
    fDMSPEDFiscal.mC190.EmptyDataSet;
    if (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '07') or (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '08') or
        (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '8B') or (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '09') or
        (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '10') or (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '11') or
        (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '26') or (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '27') or
        (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '57') then
      prc_Bloco_D_Reg_D100
    else
    if (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '21') or (fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString = '22') then
      prc_Bloco_D_Reg_D500;
    fDMSPEDFiscal.cdsNotaFiscal.Next;
  end;

  prc_Bloco_D_Reg_D990;
end;

procedure TfrmSPEDFiscal.prc_Abrir_NotaFiscal(Bloco: String);
var
  vComando: String;
begin
  fDMSPEDFiscal.cdsNotaFiscal.Close;
  vComando := fDMSPEDFiscal.sdsNotaFiscal.CommandText;
  if ComboBox3.ItemIndex = 0 then
  begin
    vComando := vComando + ' and (((N.DTEMISSAO between :DT_INICIAL and :DT_FINAL) and '
              + '(N.TIPO_REG = ' + QuotedStr('NTS') + ')) or ((N.DTSAIDAENTRADA between :DT_INICIAL and :DT_FINAL) and '
              + '(N.TIPO_REG = ' + QuotedStr('NTE') + '))) ';
  end
  else
  if ComboBox3.ItemIndex = 1 then
  begin
    vComando := vComando + ' and ((N.DTSAIDAENTRADA between :DT_INICIAL and :DT_FINAL) and '
              + '(N.TIPO_REG = ' + QuotedStr('NTE') + ')) ';
  end
  else
  if ComboBox3.ItemIndex = 2 then
  begin
    vComando := vComando + ' and ((N.DTEMISSAO between :DT_INICIAL and :DT_FINAL) and '
              + '(N.TIPO_REG = ' + QuotedStr('NTS') + '))';
  end;
  fDMSPEDFiscal.sdsNotaFiscal.CommandText := vComando;
  fDMSPEDFiscal.sdsNotaFiscal.ParamByName('DT_INICIAL').AsDate := DateEdit1.Date;
  fDMSPEDFiscal.sdsNotaFiscal.ParamByName('DT_FINAL').AsDate   := DateEdit2.Date;
  fDMSPEDFiscal.sdsNotaFiscal.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  Memo1.Lines.Clear;
  Memo1.Lines.Text := fDMSPEDFiscal.sdsNotaFiscal.CommandText;
  fDMSPEDFiscal.cdsNotaFiscal.Open;

  {if Bloco = 'C' then
    fDMSPEDFiscal.sdsNotaFiscal.CommandText := fDMSPEDFiscal.sdsNotaFiscal.CommandText
                                             + ' AND ((N.COD_MODELO = ' + QuotedStr('06') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('29') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('28') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('01') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('1B') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('04') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('55') + '))';}
  {if Bloco = 'D' then
    fDMSPEDFiscal.sdsNotaFiscal.CommandText := fDMSPEDFiscal.sdsNotaFiscal.CommandText
                                             + ' AND ((N.COD_MODELO = ' + QuotedStr('07') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('08') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('8B') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('09') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('10') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('11') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('26') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('27') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('57') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('21') + ')'
                                             + ' OR   (N.COD_MODELO = ' + QuotedStr('22') + '))';
  fDMSPEDFiscal.cdsNotaFiscal.Open}
end;

procedure TfrmSPEDFiscal.prc_Bloco_D_Reg_D100;
begin
  with ACBrSPEDFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      with RegistroD100New do
      begin
        if fDMSPEDFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTE' then
          IND_OPER := tpEntradaAquisicao
        else
          IND_OPER := tpSaidaPrestacao;
        if fDMSPEDFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTE' then
          IND_EMIT := edTerceiros
        else
          IND_EMIT := edEmissaoPropria;
        COD_PART := fDMSPEDFiscal.cdsNotaFiscalID_CLIENTE.AsString;
        COD_MOD  := fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString;
        if fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString = 'S' then
          COD_SIT  := sdCancelado
        else
        if fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
          COD_SIT  := sdDoctoDenegado
        else
        if fDMSPEDFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '2' then
          COD_SIT  := sdFiscalCompl
        else
          COD_SIT  := sdRegular;
        SER     := fDMSPEDFiscal.cdsNotaFiscalSERIE.AsString;
        SUB     := '';
        NUM_DOC := fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsString;
        CHV_CTE := fDMSPEDFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString;
        DT_DOC := fDMSPEDFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime;
        DT_A_P := fDMSPEDFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;
        TP_CT_e := '';
        CHV_CTE_REF := '';
        if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString <> 'S') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString <> 'S') then
        begin
          VL_DOC := fDMSPEDFiscal.cdsNotaFiscalVLR_NOTA.AsFloat;
          VL_DESC    := fDMSPEDFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat;
          if fDMSPEDFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '1' then
            IND_FRT := tfPorContaEmitente
          else
          if fDMSPEDFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '2' then
            IND_FRT := tfPorContaDestinatario
          else
          if fDMSPEDFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '3' then
            IND_FRT := tfPorContaTerceiros
          else
          if fDMSPEDFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '9' then
            IND_FRT := tfSemCobrancaFrete;
          VL_SERV   := fDMSPEDFiscal.cdsNotaFiscalVLR_ITENS.AsFloat;
          VL_BC_ICMS := fDMSPEDFiscal.cdsNotaFiscalBASE_ICMS.AsFloat;
          VL_ICMS    := fDMSPEDFiscal.cdsNotaFiscalVLR_ICMS.AsFloat;
          VL_NT      := fDMSPEDFiscal.cdsNotaFiscalVLR_NOTA.AsFloat - fDMSPEDFiscal.cdsNotaFiscalBASE_ICMS.AsFloat;
          COD_INF    := ''; //mesmo do 0450 e 0460
          COD_CTA    := '';
          COD_MUN_ORIG := fDMSPEDFiscal.cdsNotaFiscalCODMUNICIPIO_ORI.AsString;
          COD_MUN_DEST := fDMSPEDFiscal.cdsNotaFiscalCODMUNICIPIO_DEST.AsString;
        end;
        vContador_Reg_D := vContador_Reg_D + 1;

        prc_Abrir_NotaFiscal_Itens(fDMSPEDFiscal.cdsNotaFiscalID.AsInteger);
        fDMSPEDFiscal.cdsNotaFiscal_Itens.First;
        while not fDMSPEDFiscal.cdsNotaFiscal_Itens.Eof do
        begin
          with RegistroD110New do
          begin
            NUN_ITEM := fDMSPEDFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
            COD_ITEM := monta_codigo_produto(fDMSPEDFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,
                                                             fDMSPEDFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                                                             fDMSPEDFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString,
                                                             fDMSPEDFiscal.cdsNotaFiscal_ItensTAMANHO.AsString,'N');
            VL_SERV  := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));
            VL_OUT   := StrToFloat(FormatFloat('0.00',0));
          end;
          //Gravar a tabela auxiliar do registro C190
          prc_Gravar_mC190;
          fDMSPEDFiscal.cdsNotaFiscal_Itens.Next;
        end;

        // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 07, 08, 8B, 09, 10, 11, 26, 27 e 57)
        fDMSPEDFiscal.mC190.First;
        while not fDMSPEDFiscal.mC190.Eof do
        begin
          with RegistroD190New do
          begin
            CST_ICMS        := FormatFloat('000',fDMSPEDFiscal.mC190CST_ICMS.AsInteger);
            CFOP := fDMSPEDFiscal.mC190Cod_CFOP.AsString;
            ALIQ_ICMS       := fDMSPEDFiscal.mC190Perc_ICMS.AsFloat;
            VL_OPR          := fDMSPEDFiscal.mC190Vlr_Operacao.AsFloat;
            VL_BC_ICMS      := fDMSPEDFiscal.mC190Vlr_Base_ICMS.AsFloat;
            VL_ICMS         := fDMSPEDFiscal.mC190Vlr_ICMS.AsFloat;
            VL_RED_BC       := fDMSPEDFiscal.mC190Vlr_Reducao_ICMS.AsFloat;
            COD_OBS         := fDMSPEDFiscal.mC190Cod_OBS.AsString;
            vContador_Reg_D := vContador_Reg_D + 1;
          end;
          fDMSPEDFiscal.mC190.Next;
        end;
        {with RegistroD195 do
        begin
          //fazer aqui
        end;
        with RegistroD197New do
        begin
          //fazer aqui
        end;}
      end;
    end;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_D_Reg_D500;
begin
  with ACBrSPEDFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      with RegistroD500New do
      begin
        if fDMSPEDFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTE' then
          IND_OPER := tpEntradaAquisicao
        else
          IND_OPER := tpSaidaPrestacao;
        if fDMSPEDFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTE' then
          IND_EMIT := edTerceiros
        else
          IND_EMIT := edEmissaoPropria;
        COD_PART := fDMSPEDFiscal.cdsNotaFiscalID_CLIENTE.AsString;
        COD_MOD  := fDMSPEDFiscal.cdsNotaFiscalCOD_MODELO.AsString;
        if fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString = 'S' then
          COD_SIT  := sdCancelado
        else
        if fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
          COD_SIT  := sdDoctoDenegado
        else
        if fDMSPEDFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '2' then
          COD_SIT  := sdFiscalCompl
        else
          COD_SIT  := sdRegular;
        SER     := fDMSPEDFiscal.cdsNotaFiscalSERIE.AsString;
        SUB     := '';
        NUM_DOC := fDMSPEDFiscal.cdsNotaFiscalNUMNOTA.AsString;
        DT_DOC := fDMSPEDFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime;
        if fDMSPEDFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime > 10 then
          DT_A_P := fDMSPEDFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;
        if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString <> 'S') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString <> 'S') then
        begin
          VL_DOC     := fDMSPEDFiscal.cdsNotaFiscalVLR_NOTA.AsFloat;
          VL_DESC    := fDMSPEDFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat;
          VL_SERV    := fDMSPEDFiscal.cdsNotaFiscalVLR_ITENS.AsFloat;
          VL_SERV_NT := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsNotaFiscalVLR_NOTA.AsFloat - fDMSPEDFiscal.cdsNotaFiscalBASE_ICMS.AsFloat));
          VL_TERC    := 0;
          VL_DA      := fDMSPEDFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat;
          VL_BC_ICMS := fDMSPEDFiscal.cdsNotaFiscalBASE_ICMS.AsFloat;
          VL_ICMS    := fDMSPEDFiscal.cdsNotaFiscalVLR_ICMS.AsFloat;
          COD_INF       := '';//tratar esse campo 0450
          VL_PIS        := fDMSPEDFiscal.cdsNotaFiscalVLR_PIS.AsFloat;
          VL_COFINS     := fDMSPEDFiscal.cdsNotaFiscalVLR_COFINS.AsFloat;
          COD_CTA       := '';
          TP_ASSINANTE  := assComercialIndustrial;
        end;
        vContador_Reg_D := vContador_Reg_D + 1;
        if (fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString <> 'S') and (fDMSPEDFiscal.cdsNotaFiscalNFEDENEGADA.AsString <> 'S') then
        begin
          prc_Abrir_NotaFiscal_Itens(fDMSPEDFiscal.cdsNotaFiscalID.AsInteger);
          fDMSPEDFiscal.cdsNotaFiscal_Itens.First;
          while not fDMSPEDFiscal.cdsNotaFiscal_Itens.Eof do
          begin
            with RegistroD510New do
            begin
              NUM_ITEM   := fDMSPEDFiscal.cdsNotaFiscal_ItensITEM.AsString;
              if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
                COD_ITEM   := fDMSPEDFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString
              else
                COD_ITEM   := fDMSPEDFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsString;
              COD_CLASS  := '';//Ver aqui
              QTD        := fDMSPEDFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
              UNID       := UpperCase(fDMSPEDFiscal.cdsNotaFiscal_ItensUNIDADE.AsString);
              VL_ITEM    := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat;
              VL_DESC    := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat;
              CST_ICMS   := fDMSPEDFiscal.cdsNotaFiscal_ItensCST_ICMS.AsString;
              CFOP := fDMSPEDFiscal.cdsNotaFiscal_ItensCODCFOP.AsString;
              VL_BC_ICMS := fDMSPEDFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat;
              ALIQ_ICMS  := fDMSPEDFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat;
              VL_ICMS    := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat;
              VL_BC_ICMS_UF := 0;
              VL_ICMS_UF    := 0;
              IND_REC       := recServicoPrePago;
              COD_PART      := fDMSPEDFiscal.cdsNotaFiscalID_CLIENTE.AsString;
              VL_PIS        := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat;
              VL_COFINS     := fDMSPEDFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat;
              COD_CTA       := '';
              vContador_Reg_D := vContador_Reg_D + 1;
            end;
            prc_Gravar_mC190;
            fDMSPEDFiscal.cdsNotaFiscal_Itens.Next;
          end;
        end;
        //C590                                                 
        fDMSPEDFiscal.mC190.First;
        while not fDMSPEDFiscal.mC190.Eof do
        begin
          with RegistroD590New do
          begin
            CST_ICMS      := fDMSPEDFiscal.mC190CST_ICMS.AsString;
            CFOP := fDMSPEDFiscal.mC190Cod_CFOP.AsString;
            ALIQ_ICMS     := fDMSPEDFiscal.mC190Perc_ICMS.AsFloat;
            VL_OPR        := fDMSPEDFiscal.mC190Vlr_Operacao.AsFloat;
            VL_BC_ICMS    := fDMSPEDFiscal.mC190Vlr_Base_ICMS.AsFloat;
            VL_ICMS       := fDMSPEDFiscal.mC190Vlr_ICMS.AsFloat;
            VL_BC_ICMS_UF := 0;
            VL_ICMS_UF    := 0;
            VL_RED_BC     := fDMSPEDFiscal.mC190Vlr_Reducao_ICMS.AsFloat;
            COD_OBS       := ''; //Ver aqui 0450
            vContador_Reg_D := vContador_Reg_D + 1;
          end;
          fDMSPEDFiscal.mC190.Next;
        end;
        //Final da D590
      end;
    end;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_D_Reg_D990;
begin
  vContador_Reg_D := vContador_Reg_D + 1;
  ACBrSPEDFiscal1.Bloco_D.RegistroD990.QTD_LIN_D := vContador_Reg_D;
end;

procedure TfrmSPEDFiscal.prc_Consultar_cdsBalanco;
var
  vComando : WideString;
begin
  vComando    := 'select AUX.*,'
               + '       case '
               + '         when AUX.PRECO_MEDIO_FIXO > 0 or AUX.PRECO_MEDIO_FIXO is not null then AUX.PRECO_MEDIO_FIXO'
               + '         else AUX.PRECO_MEDIO_CALC'
               + '       end PRECO_MEDIO,'
               + '       case'
               + '         when AUX.PRECO_MEDIO_FIXO > 0 or AUX.PRECO_MEDIO_FIXO is not null then AUX.QTD_ESTOQUE * AUX.PRECO_MEDIO_FIXO'
               + '         else AUX.QTD_ESTOQUE * AUX.PRECO_MEDIO_CALC'
               + '       end VLR_TOTAL '
               + 'from ( '
               + 'with e as ( '
               + 'select em.tipo_es, em.gerar_custo, EM.ID_PRODUTO, EM.TAMANHO, sum(cast(EM.QTD2 as numeric(15,5))) QTD_ESTOQUE, PRO.REFERENCIA, '
               + '       PRO.NOME NOME_PRODUTO, PRO.UNIDADE, EM.ID_COR, PRO.SPED_TIPO_ITEM, PRO.TIPO_REG, PRO.USA_PRECO_COR, '
               + '       case '
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('00') + ' then ' + QuotedStr('00 - Mercadoria para Revenda')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('01') + ' then ' + QuotedStr('01- Matéria-Prima')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('02') + ' then ' + QuotedStr('02- Embalagem')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('03') + ' then ' + QuotedStr('03 - Produto em Processo')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('04') + ' then ' + QuotedStr('04 - Produto Acabado')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('05') + ' then ' + QuotedStr('05 - SubProduto')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('06') + ' then ' + QuotedStr('06 - Produto Intermediário')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('07') + ' then ' + QuotedStr('07 - Material de Uso e Consumo')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('08') + ' then ' + QuotedStr('08 - Ativo Imobilizado')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('10') + ' then ' + QuotedStr('10 - Outros Insumos')
               + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('99') + ' then ' + QuotedStr('99 - Outras')
               + '         else ' + QuotedStr('')
               + '       end TIPO_SPED, '
               + '       case '
               + '         when PRO.TIPO_REG = ' + QuotedStr('C') + ' then ' + QuotedStr('C - Material Consumo ')
               + '         when PRO.TIPO_REG = ' + QuotedStr('M') + ' then ' + QuotedStr('M - Materia Prima ')
               + '         when PRO.TIPO_REG = ' + QuotedStr('P') + ' then ' + QuotedStr('P - Produto Acabado ')
               + '         when PRO.TIPO_REG = ' + QuotedStr('S') + ' then ' + QuotedStr('S - Semi Acabado ')
               + '         when PRO.TIPO_REG = ' + QuotedStr('I') + ' then ' + QuotedStr('I - Imobilizado ')
               + '         else ' + QuotedStr('')
               + '       end DESC_TIPO_REG, '
               + '       iif(Em.TIPO_ES = ' + QuotedStr('E') + ' and em.GERAR_CUSTO = ' + QuotedStr('S') + ',sum(em.QTD * em.VLR_UNITARIO),0) VLR_ENTRADA, '
               + '       iif(Em.TIPO_ES = ' + QuotedStr('E') + ' and em.GERAR_CUSTO = ' + QuotedStr('S') + ',sum(em.QTD),0) QTD_ENTRADA, PRO.PERC_IPI, pro.id_ncm, PRO.perc_icms '
               + 'from PRODUTO pro '
               + 'inner join ESTOQUE_MOV em on EM.ID_PRODUTO = PRO.ID '
               + 'where EM.FILIAL = :FILIAL and '
               + '      EM.DTMOVIMENTO <= :DTMOVIMENTO '
               + ' AND (pro.SPED_TIPO_ITEM = ' + QuotedStr('00')
               + '   OR pro.SPED_TIPO_ITEM = ' + QuotedStr('01')
               + '   OR pro.SPED_TIPO_ITEM = ' + QuotedStr('02')
               + '   OR pro.SPED_TIPO_ITEM = ' + QuotedStr('03')
               + '   OR pro.SPED_TIPO_ITEM = ' + QuotedStr('04')
               + '   OR pro.SPED_TIPO_ITEM = ' + QuotedStr('05')
               + '   OR pro.SPED_TIPO_ITEM = ' + QuotedStr('06')
               + '   OR pro.SPED_TIPO_ITEM = ' + QuotedStr('10') + ')'
               + '  and PRO.INATIVO = ' + QuotedStr('N') + ' and '
               + '      PRO.ESTOQUE = ' + QuotedStr('S')
               + 'group by em.tipo_es, em.gerar_custo, EM.ID_PRODUTO, EM.TAMANHO, PRO.REFERENCIA, PRO.NOME, '
               + 'PRO.UNIDADE, EM.ID_COR, PRO.SPED_TIPO_ITEM, PRO.PERC_IPI, PRO.TIPO_REG, pro.id_ncm, PRO.perc_icms, PRO.USA_PRECO_COR), '
               + 'a as '
               + '( '
               + 'select E.ID_PRODUTO, E.TAMANHO, sum(e.QTD_ESTOQUE) QTD_ESTOQUE, e.REFERENCIA, '
               + '       e.NOME_PRODUTO, e.UNIDADE, e.ID_COR, e.SPED_TIPO_ITEM, e.TIPO_REG, '
               + '       e.TIPO_SPED, '
               + '       e.DESC_TIPO_REG, '
               + '       sum(e.VLR_ENTRADA) VLR_ENTRADA , '
               + '       sum(e.QTD_ENTRADA) QTD_ENTRADA, e.PERC_IPI, '
               + '       E.perc_icms, e.id_ncm, e.USA_PRECO_COR '
               + 'from e '
               + 'group by E.ID_PRODUTO, E.TAMANHO, e.REFERENCIA, '
               + '       e.NOME_PRODUTO, e.UNIDADE, e.ID_COR, e.SPED_TIPO_ITEM, e.TIPO_REG, '
               + '       e.TIPO_SPED, '
               + '       e.DESC_TIPO_REG, '
               + '       e.PERC_IPI, E.PERC_ICMS,  e.id_ncm, e.USA_PRECO_COR) '
               + 'select a.*, ncm.ncm,  '
               + 'COMB.NOME NOME_COMBINACAO, '
               + '       cast(a.REFERENCIA || '' '' || a.NOME_produto || '' '' || coalesce(COMB.NOME, '''') as varchar(200)) REF_NOME_COR, '
               + '       cast(a.TIPO_REG || '' '' || a.nome_produto || '' '' || '' '' || a.ID_PRODUTO || '' '' || coalesce(COMB.NOME, '''') as varchar(200)) PRODUTO_NOME_COR, '
               + '       case '
               + '         when (a.usa_preco_cor = ' + QuotedStr('S') + ' and ((a.tipo_reg = ' + QuotedStr('M') + ' or a.tipo_reg = ' + QuotedStr('C') + ')))  then '
               + '                        (select first 1 med.preco_medio from produto_cmedio med where med.id = a.id_produto and med.id_cor = a.id_cor '
               + '                            and med.data <= :DTMOVIMENTO order by med.data desc) '
               + '         else '
               + '                        (select first 1 med.preco_medio from produto_cmedio med where med.id = a.id_produto and med.id_cor = 0 '
               + '                            and med.data <= :DTMOVIMENTO order by med.data desc) '
               + '         end PRECO_MEDIO_FIXO, '
               + '       iif(A.VLR_ENTRADA > 0 and A.QTD_ENTRADA > 0, A.VLR_ENTRADA / A.QTD_ENTRADA, 0) PRECO_MEDIO_CALC '
               + 'from a '
               + 'left join COMBINACAO COMB on a.ID_COR = COMB.ID '
               + 'left join TAB_NCM NCM on a.ID_NCM = NCM.ID) aux '
               + 'where aux.qtd_estoque > 0 ';
  fDMSPEDFiscal.cdsBalanco.Close;
  fDMSPEDFiscal.sdsBalanco.CommandText := vComando;
  fDMSPEDFiscal.sdsBalanco.ParamByName('FILIAL').AsInteger   := RxDBLookupCombo1.KeyValue;
  fDMSPEDFiscal.sdsBalanco.ParamByName('DTMOVIMENTO').AsDate := DateEdit3.Date;
  memo2.Lines.Clear;
  Memo2.Lines.Text := fDMSPEDFiscal.sdsBalanco.CommandText;
  fDMSPEDFiscal.cdsBalanco.Open;
end;

procedure TfrmSPEDFiscal.btnBloco_HClick(Sender: TObject);
begin
  if btnGerar.Tag <> 1 then
  begin
    if not fnc_Valida_Campos('H') then
      exit;
    if (DateEdit3.Date > DateEdit2.Date) or (DateEdit3.Date < 10) then
    begin
      MessageDlg('*** Data do inventário inválida' , mtError, [mbOk], 0);
      exit;
    end;
    if MessageDlg('Deseja gerar o <Bloco H>?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;
  prc_Gerar_Bloco_H;
end;

procedure TfrmSPEDFiscal.prc_Bloco_H_Reg_H005;
var
  vVlrEstoque : Real;
begin
  vVlrEstoque := 0;
  fDMSPEDFiscal.cdsBalanco.First;
  while not fDMSPEDFiscal.cdsBalanco.Eof do
  begin
    vVlrEstoque := StrToCurr(FormatCurr('0.00',vVlrEstoque + fDMSPEDFiscal.cdsBalancoVlr_Total.AsFloat));
    fDMSPEDFiscal.cdsBalanco.Next;
  end;

  with ACBrSPEDFiscal1.Bloco_H do
  begin
    with RegistroH005New do
    begin
        //15/03/2024 alterado
        //DT_INV := DT_FIN; //o valor informado no campo deve ser menor ou igual ao valor no campo DT_FIN do registro 0000
        DT_INV := DateEdit3.Date;
        VL_INV := StrToCurr(FormatCurr('0.00',vVlrEstoque));
        case ComboBox2.ItemIndex of
          0 : MOT_INV := miFinalPeriodo;
          1 : MOT_INV := miMudancaTributacao;
          2 : MOT_INV := miBaixaCadastral;
          3 : MOT_INV := miRegimePagamento;
          4 : MOT_INV := miDeterminacaoFiscos;
          5 : MOT_INV := miControleMercadoriaSujeitaST;
        end;
    end;
    vContador_Reg_H := vContador_Reg_H + 1;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_H_Reg_H010;
var
  vCodigo : String;
begin
  fDMSPEDFiscal.cdsBalanco.First;
  while not fDMSPEDFiscal.cdsBalanco.Eof do
  begin
    if not(ckGravarPrecoZerado.Checked) and (StrToFloat(FormatFloat('0.000000',fDMSPEDFiscal.cdsBalancoPRECO_MEDIO.AsFloat)) <= 0) then
    begin
      fDMSPEDFiscal.cdsBalanco.Next;
      Continue;
    end;
    with ACBrSPEDFiscal1.Bloco_H do
    begin
      with RegistroH010New do
      begin
        //01/02/2019
        if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
          vCodigo := fDMSPEDFiscal.cdsBalancoREFERENCIA.AsString
        else
          vCodigo := fDMSPEDFiscal.cdsBalancoID_PRODUTO.AsString;
        if fDMSPEDFiscal.cdsBalancoID_COR.AsInteger > 0 then
          vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsBalancoID_COR.AsString;
        if (trim(fDMSPEDFiscal.cdsBalancoTAMANHO.AsString) <> '') then //and (fDMSPEDFiscal.cdsMovimentoUSA_TAMANHO_AGRUPADO_NFE.AsString <> 'S') then
          vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsBalancoTAMANHO.AsString;
        //if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
          COD_ITEM   := vCodigo;
        //else
          //COD_ITEM   := fDMSPEDFiscal.cdsBalancoID_PRODUTO.AsString;
        UNID       := UpperCase(fDMSPEDFiscal.cdsBalancoUNIDADE.AsString);
        QTD        := StrToFloat(FormatFloat('0.000',fDMSPEDFiscal.cdsBalancoQTD_ESTOQUE.AsFloat));
        VL_UNIT    := StrToFloat(FormatFloat('0.000000',fDMSPEDFiscal.cdsBalancoPreco_Medio.AsFloat));
        VL_ITEM    := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsBalancoVlr_Total.AsFloat));
        IND_PROP   := piInformante;
        COD_PART   := '';
        TXT_COMPL  := '';
        COD_CTA    := '11';//cleomar - informamos uma conta generica
        VL_ITEM_IR := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsBalancoVlr_Total.AsFloat));
        vContador_Reg_H := vContador_Reg_H + 1;

        //10/02/2020  incluído o registro H020
        //if fDMSPEDFiscal.qParametros_EstGERAR_REG_H020.AsString = 'S' then
        if ckICMSH020.Checked then
        begin
          //with RegistroH020New do
          with RegistroH020new do
          begin
            if (fDMSPEDFiscal.cdsBalancoSPED_TIPO_ITEM.AsString = '04') and (ckICMSH020.Checked) then
              CST_ICMS := '041'
            else
              CST_ICMS := '000';
            BC_ICMS  := StrToFloat(FormatFloat('0.000000',fDMSPEDFiscal.cdsBalancoPreco_Medio.AsFloat));
            if (fDMSPEDFiscal.cdsBalancoSPED_TIPO_ITEM.AsString = '04') and (ckICMSH020.Checked) then
              VL_ICMS  := StrToFloat(FormatFloat('0.00',0))
            else
              VL_ICMS  := StrToFloat(FormatFloat('0.00',((fDMSPEDFiscal.cdsBalancoPreco_Medio.AsFloat * fDMSPEDFiscal.qUFPERC_ICMS.AsFloat) / 100)));

            vContador_Reg_H := vContador_Reg_H + 1;
          end;
        end;
        if chkResumo.Checked then
        begin
          if fDMSPEDFiscal.mAuxResumo.Locate('Tipo_SPED;Registro',VarArrayOf([fDMSPEDFiscal.cdsBalancoSPED_TIPO_ITEM.AsString,'H010']),[locaseinsensitive]) then
            fDMSPEDFiscal.mAuxResumo.Edit
          else
          begin
            fDMSPEDFiscal.mAuxResumo.Insert;
            fDMSPEDFiscal.mAuxResumoBloco.AsString          := 'H';
            fDMSPEDFiscal.mAuxResumoRegistro.AsString       := 'H010';
            fDMSPEDFiscal.mAuxResumoTipo_SPED.AsString      := fDMSPEDFiscal.cdsBalancoSPED_TIPO_ITEM.AsString;
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := fDMSPEDFiscal.cdsBalancoTIPO_SPED.AsString;
            fDMSPEDFiscal.mAuxResumoPosse.AsString          := '';
          end;
          fDMSPEDFiscal.mAuxResumoQtd.AsFloat       := StrToFloat(FormatFloat('0.0000',fDMSPEDFiscal.mAuxResumoQtd.AsFloat + fDMSPEDFiscal.cdsBalancoQTD_ESTOQUE.AsFloat));
          fDMSPEDFiscal.mAuxResumoVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mAuxResumoVlr_Total.AsFloat + fDMSPEDFiscal.cdsBalancoVlr_Total.AsFloat));
          fDMSPEDFiscal.mAuxResumo.Post;
        end;
      end;
    end;
    fDMSPEDFiscal.cdsBalanco.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_H_Reg_H990;
begin
  vContador_Reg_H := vContador_Reg_H + 1;
  with ACBrSPEDFiscal1.Bloco_H do
  begin
    with RegistroH990 do
    begin
      QTD_LIN_H := vContador_Reg_H;
    end
  end;
end;

procedure TfrmSPEDFiscal.prc_Gerar_Bloco_H;
begin
  vContador_Reg_H := 0;

  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco H.
  with ACBrSPEDFiscal1.Bloco_H do
  begin
    with RegistroH001New do
    begin
      case ComboBox1.ItemIndex of
        0 : IND_MOV := imComDados;
        1 : IND_MOV := imSemDados;
      end;
      vContador_Reg_H := vContador_Reg_H + 1;
    end
  end;

  prc_Bloco_H_Reg_H005;
  prc_Bloco_H_Reg_H010;
  prc_Bloco_H_Reg_H990;

  //if cbConcomitante.Checked then
  //begin
  //  ACBrSPEDFiscal1.WriteBloco_H;
  //  LoadToMemo;
  //end;
end;

function TfrmSPEDFiscal.Monta_Numero(Campo: String;
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

procedure TfrmSPEDFiscal.btnGerarClick(Sender: TObject);
begin
  if not fnc_Valida_Campos('H') then
    exit;
  if (DateEdit3.Date > DateEdit2.Date) or (DateEdit3.Date < 10) then
  begin
    MessageDlg('*** Data do inventário inválida' , mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja gerar o <Bloco H>?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  btnGerar.Tag := 1;
  try
    vGerar_H := True;
    vGerar_K := True;
    if MessageDlg('Deseja gerar o Bloco K  junto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      vGerar_K := False;
    BtnBloco_0Click(Sender);
    btnBloco_CClick(Sender);
    btnBloco_HClick(Sender);
    if vGerar_K then
      btnBloco_KClick(Sender);

    btnGravar_TxtClick(Sender);

    MessageDlg('*** Bloco H gerado!' , mtInformation, [mbOk], 0);
  finally
    btnGerar.Tag := 0;
  end;
end;

procedure TfrmSPEDFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 83) then //S
  begin
    TS_Exemplo.TabVisible := not(TS_Exemplo.TabVisible);
    BtnBloco_0.Visible    := not(BtnBloco_0.Visible);
    btnBloco_1.Visible    := not(btnBloco_1.Visible);
    btnBloco_9.Visible    := not(btnBloco_9.Visible);
    btnBloco_C.Visible    := not(btnBloco_C.Visible);
    btnBloco_D.Visible    := not(btnBloco_D.Visible);
    btnBloco_E.Visible    := not(btnBloco_E.Visible);
    btnBloco_G.Visible    := not(btnBloco_G.Visible);
    btnBloco_H.Visible    := not(btnBloco_H.Visible);
    btnBloco_K.Visible    := not(btnBloco_K.Visible);
    btnGravar_Txt.Visible := not(btnGravar_Txt.Visible);
  end;
end;

procedure TfrmSPEDFiscal.prc_Verifica_Produtos_Balanco;
var
  vCodigo : String;
begin
  //prc_Consultar_cdsBalanco;
  fDMSPEDFiscal.cdsBalanco.First;
  while not fDMSPEDFiscal.cdsBalanco.Eof do
  begin
    if not(ckGravarPrecoZerado.Checked) and (StrToFloat(FormatFloat('0.000000',fDMSPEDFiscal.cdsBalancoPRECO_MEDIO.AsFloat)) <= 0) then
    begin
      prc_Gravar_Produto_SemCusto;
      fDMSPEDFiscal.cdsBalanco.Next;
      Continue;
    end;

    {if (fDMSPEDFiscal.cdsBalancoID_PRODUTO.AsInteger <> 38872) and
       (fDMSPEDFiscal.cdsBalancoID_PRODUTO.AsInteger <> 41179) then
    begin
      fDMSPEDFiscal.cdsBalanco.Next;
      continue;
    end;}

    if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
      vCodigo := fDMSPEDFiscal.cdsBalancoREFERENCIA.AsString
    else
      vCodigo := fDMSPEDFiscal.cdsBalancoID_PRODUTO.AsString;
    if fDMSPEDFiscal.cdsBalancoID_COR.AsInteger > 0 then
      vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsBalancoID_COR.AsString;
    if (trim(fDMSPEDFiscal.cdsBalancoTAMANHO.AsString) <> '') then
      vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsBalancoTAMANHO.AsString;
    if not fDMSPEDFiscal.mProduto.FindKey([vCodigo]) then
    begin
      fDMSPEDFiscal.qProduto.Close;
      fDMSPEDFiscal.qProduto.ParamByName('ID').AsInteger := fDMSPEDFiscal.cdsBalancoID_PRODUTO.AsInteger;
      fDMSPEDFiscal.qProduto.Open;
      if not fDMSPEDFiscal.qProduto.IsEmpty then
      begin
        //if fDMSPEDFiscal.qProdutoID.AsInteger = 31592 then
        //  ShowMessage('aqui qProduto 1');

        fDMSPEDFiscal.mProduto.Insert;
        fDMSPEDFiscal.mProdutoID.AsInteger         := fDMSPEDFiscal.qProdutoID.AsInteger;
        fDMSPEDFiscal.mProdutoCod_Produto.AsString := vCodigo;
        if trim(fDMSPEDFiscal.cdsBalancoTAMANHO.AsString) <> '' then
          fDMSPEDFiscal.mProdutoTamanho.AsString     := fDMSPEDFiscal.cdsBalancoTAMANHO.AsString;
        fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.cdsBalancoNOME_PRODUTO.AsString;
        if trim(fDMSPEDFiscal.cdsBalancoNOME_COMBINACAO.AsString) <> '' then
          fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.mProdutoNome.AsString + ' ' + fDMSPEDFiscal.cdsBalancoNOME_COMBINACAO.AsString;
        fDMSPEDFiscal.mProdutoNome.AsString := TiraAcentos(fDMSPEDFiscal.mProdutoNome.AsString);
        fDMSPEDFiscal.mProdutoCod_Barra.AsString    := '';
        fDMSPEDFiscal.mProdutoCod_Anterior.AsString := '';
        fDMSPEDFiscal.mProdutoUnidade.AsString      := UpperCase(fDMSPEDFiscal.qProdutoUNIDADE.AsString);
        fDMSPEDFiscal.mProdutoTipo_Item.AsString    := fDMSPEDFiscal.qProdutoSPED_TIPO_ITEM.AsString;
        fDMSPEDFiscal.mProdutoNCM.AsString          := Monta_Numero(fDMSPEDFiscal.qProdutoNCM.AsString,0);
        fDMSPEDFiscal.mProdutoNCM_EX.AsString       := fDMSPEDFiscal.qProdutoNCM_EX.AsString;
        fDMSPEDFiscal.mProdutoEX_IPI.AsString       := fDMSPEDFiscal.qProdutoNCM_EX.AsString;
        fDMSPEDFiscal.mProdutoCOD_SERVICO.AsInteger := 0;
        fDMSPEDFiscal.mProdutoPERC_ICMS.AsFloat     := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.qUFPERC_ICMS_INTERNO.AsFloat));
        fDMSPEDFiscal.mProduto.Post;

        prc_Gravar_mUnidade(fDMSPEDFiscal.qProdutoUNIDADE.AsString);
      end;
    end;
    fDMSPEDFiscal.cdsBalanco.Next;
  end;
end;

{procedure TfrmSPEDFiscal.prc_Gravar_mProduto2(ID_Produto : Integer ; Codigo :String);
begin
  if not fDMSPEDFiscal.mProduto.FindKey([Codigo]) then
  begin
    fDMSPEDFiscal.qProduto.Close;
    fDMSPEDFiscal.qProduto.ParamByName('ID').AsInteger := ID_Produto;
    fDMSPEDFiscal.qProduto.Open;
    if not fDMSPEDFiscal.qProduto.IsEmpty then
    begin
      fDMSPEDFiscal.mProduto.Insert;
      fDMSPEDFiscal.mProdutoID.AsInteger         := fDMSPEDFiscal.qProdutoID.AsInteger;
      fDMSPEDFiscal.mProdutoCod_Produto.AsString := Codigo;
      //if trim(fDMSPEDFiscal.cdsBalancoTAMANHO.AsString) <> '' then
      //  fDMSPEDFiscal.mProdutoTamanho.AsString     := fDMSPEDFiscal.cdsBalancoTAMANHO.AsString;
      fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.qProdutoNOME.AsString;
      fDMSPEDFiscal.mProdutoCod_Barra.AsString    := '';
      fDMSPEDFiscal.mProdutoCod_Anterior.AsString := '';
      fDMSPEDFiscal.mProdutoUnidade.AsString      := fDMSPEDFiscal.qProdutoUNIDADE.AsString;
      fDMSPEDFiscal.mProdutoTipo_Item.AsString    := fDMSPEDFiscal.qProdutoSPED_TIPO_ITEM.AsString;
      fDMSPEDFiscal.mProdutoNCM.AsString          := Monta_Numero(fDMSPEDFiscal.qProdutoNCM.AsString,0);
      fDMSPEDFiscal.mProdutoNCM_EX.AsString       := fDMSPEDFiscal.qProdutoNCM_EX.AsString;
      fDMSPEDFiscal.mProdutoEX_IPI.AsString       := fDMSPEDFiscal.qProdutoNCM_EX.AsString;
      fDMSPEDFiscal.mProdutoCOD_SERVICO.AsInteger := 0;
      fDMSPEDFiscal.mProdutoPERC_ICMS.AsFloat     := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.qUFPERC_ICMS_INTERNO.AsFloat));
      fDMSPEDFiscal.mProduto.Post;

      prc_Gravar_mUnidade(fDMSPEDFiscal.qProdutoUNIDADE.AsString);
    end;
  end;
end;}

procedure TfrmSPEDFiscal.btnGerar_KClick(Sender: TObject);
begin
  if not fnc_Valida_Campos('H') then
    exit;
  if (DateEdit3.Date > DateEdit2.Date) or (DateEdit3.Date < 10) then
  begin
    MessageDlg('*** Data do inventário inválida' , mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja gerar o <Bloco K>?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  btnGerar.Tag := 1;
  try
    vGerar_H := True;
    vGerar_K := True;
    if MessageDlg('Deseja gerar o   Bloco H  junto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      vGerar_H := False;

    BtnBloco_0Click(Sender);
    btnBloco_CClick(Sender);

    if vGerar_H then
      btnBloco_HClick(Sender);

    btnBloco_KClick(Sender);

    btnGravar_TxtClick(Sender);

    MessageDlg('*** Bloco K gerado!' , mtInformation, [mbOk], 0);
  finally
    btnGerar.Tag := 0;
  end;
end;

procedure TfrmSPEDFiscal.btnBloco_KClick(Sender: TObject);
begin
  if btnGerar.Tag <> 1 then
  begin
    if not fnc_Valida_Campos('K') then
      exit;
    if (DateEdit3.Date > DateEdit2.Date) or (DateEdit3.Date < 10) then
    begin
      MessageDlg('*** Data do inventário inválida' , mtError, [mbOk], 0);
      exit;
    end;
    if MessageDlg('Deseja gerar o <Bloco K>?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    fDMSPEDFiscal.qUF.Close;
    fDMSPEDFiscal.qUF.ParamByName('UF').AsString := fDMSPEDFiscal.cdsFilialUF.AsString;
    fDMSPEDFiscal.qUF.Open;

    prc_Consultar_PosseEstoque;
    prc_Le_PosseEstoque;
  end;
  prc_Gerar_Bloco_K;
end;

procedure TfrmSPEDFiscal.prc_Gerar_Bloco_K;
begin
  vContador_Reg_K := 0;

  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco H.
  with ACBrSPEDFiscal1.Bloco_K do
  begin
    with RegistroK001New do
    begin
      case ComboBox1.ItemIndex of
        0 : IND_MOV := imComDados;
        1 : IND_MOV := imSemDados;
      end;
      vContador_Reg_K := vContador_Reg_K + 1;
    end;

    //09/03/2023 incluido o registro K010
    if ComboBox1.ItemIndex = 0 then
    begin
      with RegistroK010New do
      begin
        case ComboBox4.ItemIndex of
          0 : IND_TIPO_LEIAUTE := itlSimplificado;
          1 : IND_TIPO_LEIAUTE := itlCompleto;
          2 : IND_TIPO_LEIAUTE := itlRestritoSaldoEstoque;
        end;
        vContador_Reg_K := vContador_Reg_K + 1;
      end
    end;
    //*********************

  end;

  prc_Bloco_K_Reg_K100;
  prc_Bloco_K_Reg_K200;

  prc_Bloco_K_Reg_K990;
end;

procedure TfrmSPEDFiscal.prc_Consultar_PosseEstoque;
var
  vComando: String;
begin



  fDMSPEDFiscal.cdsPosseEstoque.Close;
  fDMSPEDFiscal.sdsPosseEstoque.ParamByName('FILIAL').AsInteger   := RxDBLookupCombo1.KeyValue;
  fDMSPEDFiscal.sdsPosseEstoque.ParamByName('DTMOVIMENTO').AsDate := DateEdit2.Date;
  fDMSPEDFiscal.cdsPosseEstoque.Open;
end;

procedure TfrmSPEDFiscal.prc_Bloco_K_Reg_K100;
begin
  with ACBrSPEDFiscal1.Bloco_K do
  begin
    with RegistroK100New do
    begin
      DT_INI := DateEdit1.Date;
      DT_FIN := DateEdit2.Date;
    end;
  end;
  vContador_Reg_K := vContador_Reg_K + 1;
end;

procedure TfrmSPEDFiscal.prc_Bloco_K_Reg_K200;
var
  vCodigo : String;
begin
  SMDBGrid1.DataSource := nil;
  try
    fDMSPEDFiscal.cdsPosseEstoque.First;
    while not fDMSPEDFiscal.cdsPosseEstoque.Eof do
    begin
      {if StrToFloat(FormatFloat('0.0000',fDMSPEDFiscal.cdsPosseEstoqueQTD.AsFloat)) <= 0 then
      begin
        fDMSPEDFiscal.cdsPosseEstoque.Next;
        continue;
      end;}

      if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
        vCodigo := fDMSPEDFiscal.cdsPosseEstoqueREFERENCIA.AsString
      else
        vCodigo := fDMSPEDFiscal.cdsPosseEstoqueID_PRODUTO.AsString;
      if fDMSPEDFiscal.cdsPosseEstoqueID_COR.AsInteger > 0 then
        vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsPosseEstoqueID_COR.AsString;
      if (trim(fDMSPEDFiscal.cdsPosseEstoqueTAMANHO.AsString) <> '') then
        vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsPosseEstoqueTAMANHO.AsString;


      with ACBrSPEDFiscal1.Bloco_K do
      begin
        with RegistroK200New do
        begin
          COD_ITEM := vCodigo;
          QTD      := StrToFloat(FormatFloat('0.000',fDMSPEDFiscal.cdsPosseEstoqueQTD.AsFloat));
          if copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '0' then
            IND_EST  := estPropInformantePoder
          else
          if copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '1'  then
            IND_EST  := estPropInformanteTerceiros
          else
          if copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '2' then
            IND_EST  := estPropTerceirosInformante;
          if (copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '1') or (copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '2') then
            COD_PART := fDMSPEDFiscal.cdsPosseEstoqueID_PESSOA.AsString;
          DT_EST := DateEdit2.Date;
        end;
      end;

      if chkResumo.Checked then
      begin
        if fDMSPEDFiscal.mAuxResumo.Locate('Tipo_SPED;Registro;Posse',VarArrayOf([fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString,'K200',fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString ]),[locaseinsensitive]) then
          fDMSPEDFiscal.mAuxResumo.Edit
        else
        begin
          fDMSPEDFiscal.mAuxResumo.Insert;
          fDMSPEDFiscal.mAuxResumoPosse.AsString          := fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString;
          if copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '0' then
            fDMSPEDFiscal.mAuxResumoDesc_Posse.AsString  := 'Produto do Informante'
          else
          if copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '1'  then
            fDMSPEDFiscal.mAuxResumoDesc_Posse.AsString  := 'do Informante em poder de Terceiros'
          else
          if copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '2' then
            fDMSPEDFiscal.mAuxResumoDesc_Posse.AsString  := 'De Terceiros em Poder do Informante';
          fDMSPEDFiscal.mAuxResumoBloco.AsString          := 'K';
          fDMSPEDFiscal.mAuxResumoRegistro.AsString       := 'K200';
          fDMSPEDFiscal.mAuxResumoTipo_SPED.AsString      := fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString;
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '00' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '00- Mercadoria para Revenda'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '01' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '01- Matéria-Prima'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '02' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '02- Embalagem'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '03' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '03- Produto em Processo'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '04' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '04- Produto Acabado'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '05' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '05- SubProduto'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '06' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '06- Produto Intermediário'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '07' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '07- Material de Uso e Consumo'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '08' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '08- Ativo Imobilizado'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '10' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '10- Outros Insumos'
          else
          if fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString = '99' then
            fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString := '99- Outras';
        end;
        fDMSPEDFiscal.mAuxResumoQtd.AsFloat       := StrToFloat(FormatFloat('0.0000',fDMSPEDFiscal.mAuxResumoQtd.AsFloat + fDMSPEDFiscal.cdsPosseEstoqueQTD.AsFloat));
        fDMSPEDFiscal.mAuxResumo.Post;
      end;

      //Gravar o mK200 para impressão   10/03/2020
      if ckImp_BlocoK.Checked then
      begin
        fDMSPEDFiscal.mK200.Insert;
        fDMSPEDFiscal.mK200DtEstoque.AsDateTime  := DateEdit2.Date;
        fDMSPEDFiscal.mK200Cod_Produto.AsString  := vCodigo;
        fDMSPEDFiscal.mK200Nome_Produto.AsString := TiraAcentos(fDMSPEDFiscal.cdsPosseEstoqueNOME_PRODUTO.AsString);
        fDMSPEDFiscal.mK200Qtd.AsFloat          := StrToFloat(FormatFloat('0.000',fDMSPEDFiscal.cdsPosseEstoqueQTD.AsFloat));
        if (copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '1') or (copy(fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString,1,1) = '2') then
        begin
           fDMSPEDFiscal.mK200Cod_Pessoa.AsString  := fDMSPEDFiscal.cdsPosseEstoqueID_PESSOA.AsString;
           fDMSPEDFiscal.mK200Nome_Pessoa.AsString := TiraAcentos(fDMSPEDFiscal.cdsPosseEstoqueNOME_TERCEIRO.AsString);
        end;
        fDMSPEDFiscal.mK200Posse.AsString      := fDMSPEDFiscal.cdsPosseEstoqueTIPO_EST.AsString;
        fDMSPEDFiscal.mK200Desc_Posse.AsString := fDMSPEDFiscal.mAuxResumoDesc_Posse.AsString;
        fDMSPEDFiscal.mK200Descricao_Sped.AsString := fDMSPEDFiscal.mAuxResumoDescricao_Sped.AsString;
        fDMSPEDFiscal.mK200Tipo_Sped.AsString      := fDMSPEDFiscal.mAuxResumoTipo_SPED.AsString;
        fDMSPEDFiscal.mK200.Post;
      end;
      //****************************

      vContador_Reg_K := vContador_Reg_K + 1;

      fDMSPEDFiscal.cdsPosseEstoque.Next;
    end;
    fDMSPEDFiscal.mK200.IndexFieldNames := 'Posse;Tipo_Sped;Nome_Produto';
  finally
    SMDBGrid1.DataSource := fDMSPEDFiscal.dsPosseEstoque;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_K_Reg_K990;
begin
  vContador_Reg_K := vContador_Reg_K + 1;
  with ACBrSPEDFiscal1.Bloco_K do
  begin
    with RegistroK990 do
    begin
      QTD_LIN_K := vContador_Reg_K;
    end
  end;
end;

procedure TfrmSPEDFiscal.prc_Gravar_mProdutoMov;
var
  vCodigo : String;
begin

  if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
    vCodigo := fDMSPEDFiscal.cdsPosseEstoqueREFERENCIA.AsString
  else
    vCodigo := fDMSPEDFiscal.cdsPosseEstoqueID_PRODUTO.AsString;
  if fDMSPEDFiscal.cdsPosseEstoqueID_COR.AsInteger > 0 then
    vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsPosseEstoqueID_COR.AsString;
  if (trim(fDMSPEDFiscal.cdsPosseEstoqueTAMANHO.AsString) <> '') then
    vCodigo := vCodigo + '.' + fDMSPEDFiscal.cdsPosseEstoqueTAMANHO.AsString;

  if fDMSPEDFiscal.mProduto.Locate('Cod_Produto',vCodigo,([Locaseinsensitive])) then
    exit;

  fDMSPEDFiscal.mProduto.Insert;
  fDMSPEDFiscal.mProdutoID.AsInteger         := fDMSPEDFiscal.cdsPosseEstoqueID_PRODUTO.AsInteger;
  fDMSPEDFiscal.mProdutoCod_Produto.AsString := vCodigo;
  if trim(fDMSPEDFiscal.cdsPosseEstoqueTAMANHO.AsString) <> '' then
    fDMSPEDFiscal.mProdutoTamanho.AsString     := fDMSPEDFiscal.cdsPosseEstoqueTAMANHO.AsString;
  fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.cdsPosseEstoqueNOME_PRODUTO.AsString;

  if trim(fDMSPEDFiscal.cdsPosseEstoqueTAMANHO.AsString) <> '' then
    fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.mProdutoNome.AsString + ' TAM. ' + fDMSPEDFiscal.cdsPosseEstoqueTAMANHO.AsString;
  if trim(fDMSPEDFiscal.cdsPosseEstoqueNOME_COMBINACAO.AsString) <> '' then
    fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.mProdutoNome.AsString + ' ' + fDMSPEDFiscal.cdsPosseEstoqueNOME_COMBINACAO.AsString;
  fDMSPEDFiscal.mProdutoNome.AsString := TiraAcentos(fDMSPEDFiscal.mProdutoNome.AsString);
  fDMSPEDFiscal.mProdutoCod_Barra.AsString    := '';
  fDMSPEDFiscal.mProdutoCod_Anterior.AsString := '';
  fDMSPEDFiscal.mProdutoUnidade.AsString      := UpperCase(fDMSPEDFiscal.cdsPosseEstoqueUNIDADE.AsString);
  fDMSPEDFiscal.mProdutoTipo_Item.AsString    := fDMSPEDFiscal.cdsPosseEstoqueSPED_TIPO_ITEM.AsString;
  fDMSPEDFiscal.mProdutoNCM.AsString          := Monta_Numero(fDMSPEDFiscal.cdsPosseEstoqueNCM.AsString,0);
  fDMSPEDFiscal.mProdutoNCM_EX.AsString       := fDMSPEDFiscal.cdsPosseEstoqueNCM_EX.AsString;
  fDMSPEDFiscal.mProdutoEX_IPI.AsString       := fDMSPEDFiscal.cdsPosseEstoqueNCM_EX.AsString;
  fDMSPEDFiscal.mProdutoCOD_SERVICO.AsInteger := 0;
  fDMSPEDFiscal.mProdutoPERC_ICMS.AsFloat     := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.qUFPERC_ICMS_INTERNO.AsFloat));

  prc_Gravar_mUnidade(fDMSPEDFiscal.cdsPosseEstoqueUNIDADE.AsString);

  fDMSPEDFiscal.mProduto.Post;
end;

procedure TfrmSPEDFiscal.prc_Le_PosseEstoque;
begin
  SMDBGrid1.DisableScroll;
  try
    fDMSPEDFiscal.cdsPosseEstoque.First;
    while not fDMSPEDFiscal.cdsPosseEstoque.Eof do
    begin
      if StrToFloat(FormatFloat('0.0000',fDMSPEDFiscal.cdsPosseEstoqueQTD.AsFloat)) > 0 then
      begin
        prc_Gravar_mProdutoMov;
        prc_Gravar_mUnidade(fDMSPEDFiscal.cdsPosseEstoqueUNIDADE.AsString);
        if fDMSPEDFiscal.cdsPosseEstoqueID_PESSOA.AsInteger > 0 then
          prc_Gravar_mPessoa(fDMSPEDFiscal.cdsPosseEstoqueID_PESSOA.AsInteger);
      end;
      fDMSPEDFiscal.cdsPosseEstoque.Next;
    end;
  finally
    SMDBGrid1.EnableScroll;
  end;
end;

procedure TfrmSPEDFiscal.btnGerarSpedClick(Sender: TObject);
var
  Form : TForm;
begin
  if (RzCheckList1.ItemChecked[5]) and (not fnc_Valida_Campos('H')) then
    exit;
  if not DirectoryExists(DirectoryEdit1.Text) then
  begin
    MessageDlg('*** Local para gravar o arquivo não existe!' , mtError, [mbOk], 0);
    exit;
  end;
  if (RzCheckList1.ItemChecked[5]) then
  begin
    if (DateEdit3.Date > DateEdit2.Date) or (DateEdit3.Date < 10) then
    begin
      MessageDlg('*** Data do inventário inválida!' , mtError, [mbOk], 0);
      exit;
    end;
  end;
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!' , mtError, [mbOk], 0);
    exit;
  end;
  fDMSPEDFiscal.mK200.EmptyDataSet;
  fDMSPEDFiscal.mPessoa.EmptyDataSet;
  fDMSPEDFiscal.mProduto.EmptyDataSet;
  fDMSPEDFiscal.mUnidade.EmptyDataSet;
  fDMSPEDFiscal.mNatureza.EmptyDataSet;
  fDMSPEDFiscal.mAuxResumo.EmptyDataSet;
  fDMSPEDFiscal.mProdSemCusto.EmptyDataSet;
  fDMSPEDFiscal.mE200.EmptyDataSet;
  fDMSPEDFiscal.qParametros_Est.Open;
  if fDMSPEDFiscal.cdsFilialID.AsInteger <> RxDBLookupCombo1.KeyValue then
    fDMSPEDFiscal.cdsFilial.Locate('ID',RxDBLookupCombo1.KeyValue,([Locaseinsensitive]));
  fDMSPEDFiscal.qUF.Close;
  fDMSPEDFiscal.qUF.ParamByName('UF').AsString := fDMSPEDFiscal.cdsFilialUF.AsString;
  fDMSPEDFiscal.qUF.Open;

  Form := TForm.Create(Application);
  uUtilPadrao.prc_Form_Aguarde(Form);
  try
    vGerar_K := (RzCheckList1.ItemChecked[6]);
    uUtilPadrao.prc_Form_Aguarde(Form,'Estoque...');
    if (RzCheckList1.ItemChecked[5]) then
      prc_Consultar_cdsBalanco;
    uUtilPadrao.prc_Form_Aguarde(Form,'Notas...');
    if (RzCheckList1.ItemChecked[2]) or (RzCheckList1.ItemChecked[3]) then
    begin
      prc_Movimento;
      prc_Abrir_NotaFiscal('');
      prc_Le_NotaFiscal;
      prc_Abrir_CupomFiscal;
    end;
    uUtilPadrao.prc_Form_Aguarde(Form,'Verificando Produto...');
    if (RzCheckList1.ItemChecked[5]) then
      prc_Verifica_Produtos_Balanco;

    //26/01/2023  
    if (RzCheckList1.ItemChecked[2]) then
    begin
      prc_Abrir_NotaFiscal_Itens(0);
      prc_Le_NotaFiscal_Itens;
    end;

    uUtilPadrao.prc_Form_Aguarde(Form,'Posse dos Produtos...');
    if (RzCheckList1.ItemChecked[6]) then
    begin
      prc_Consultar_PosseEstoque;
      prc_Le_PosseEstoque;
    end;

    uUtilPadrao.prc_Form_Aguarde(Form,'Bloco 0...');
    if (RzCheckList1.ItemChecked[1]) then
    begin
      prc_Gerar_Bloco_0;
      prc_Bloco_1_Reg_1001;
    end;
    uUtilPadrao.prc_Form_Aguarde(Form,'Bloco C...');
    if (RzCheckList1.ItemChecked[2]) then
      prc_Gerar_Bloco_C;
    uUtilPadrao.prc_Form_Aguarde(Form,'Bloco D...');
    if (RzCheckList1.ItemChecked[3]) then
      prc_Gerar_Bloco_D;
    uUtilPadrao.prc_Form_Aguarde(Form,'Bloco E...');
    if (RzCheckList1.ItemChecked[4]) then
      prc_gerar_Bloco_E;
    uUtilPadrao.prc_Form_Aguarde(Form,'Bloco H...');
    if (RzCheckList1.ItemChecked[5]) then
      prc_Gerar_Bloco_H;
    uUtilPadrao.prc_Form_Aguarde(Form,'Bloco K...');
    if (RzCheckList1.ItemChecked[6]) then
      prc_Gerar_Bloco_K;
    uUtilPadrao.prc_Form_Aguarde(Form,'Gravando Arq...');

    btnGravar_TxtClick(Sender);
  finally
    FreeAndNil(Form);
  end;
  mSped.Update;
  Application.ProcessMessages;
end;

procedure TfrmSPEDFiscal.prc_Gerar_Bloco_E;
begin
  vContador_Reg_E := 0;

  fDMSPEDFiscal.cdsIPI.Close;
  fDMSPEDFiscal.sdsIPI.ParamByName('DATA1').AsDate     := DateEdit1.Date;
  fDMSPEDFiscal.sdsIPI.ParamByName('DATA2').AsDate     := DateEdit2.Date;
  fDMSPEDFiscal.sdsIPI.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMSPEDFiscal.cdsIPI.Open;

  fDMSPEDFiscal.cdsICMS.Close;
  fDMSPEDFiscal.sdsICMS.ParamByName('DATA1').AsDate     := DateEdit1.Date;
  fDMSPEDFiscal.sdsICMS.ParamByName('DATA2').AsDate     := DateEdit2.Date;
  fDMSPEDFiscal.sdsICMS.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMSPEDFiscal.cdsICMS.Open;
  
  fDMSPEDFiscal.mE520.EmptyDataSet;

  //Abertura do Bloco E
  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE001New do
    begin
      IND_MOV := imComDados;
      vContador_Reg_E := vContador_Reg_E + 1;
    end;

      with RegistroE100New do
      begin
        DT_INI := DateEdit1.Date ;
        DT_FIN := DateEdit2.Date;

        fDMSPEDFiscal.cdsICMS.First;
        while not fDMSPEDFiscal.cdsICMS.Eof do
        begin
          with RegistroE110New do
          begin
            VL_TOT_DEBITOS     := fDMSPEDFiscal.cdsICMSVLR_ICMS_DEBITO.AsFloat;
            VL_AJ_DEBITOS      := 0.00;
            VL_TOT_AJ_DEBITOS  := 0.00;
            VL_ESTORNOS_CRED   := 0;
            VL_TOT_CREDITOS    := fDMSPEDFiscal.cdsICMSVLR_ICMS_CREDITO.AsFloat;
            VL_AJ_CREDITOS     := 0;
            VL_TOT_AJ_CREDITOS := 0;
            VL_ESTORNOS_DEB    := 0;
            VL_SLD_CREDOR_ANT  := 0;
            VL_SLD_APURADO     := fDMSPEDFiscal.cdsICMSVLR_ICMS_DEBITO.AsFloat - fDMSPEDFiscal.cdsICMSVLR_ICMS_CREDITO.AsFloat;
            VL_TOT_DED         := 0.00;
            VL_ICMS_RECOLHER   := VL_SLD_APURADO - VL_TOT_DED;
            if VL_ICMS_RECOLHER < 0 then
            begin
              VL_ICMS_RECOLHER := 0.00;
              VL_SLD_CREDOR_TRANSPORTAR := fDMSPEDFiscal.cdsICMSVLR_ICMS_DEBITO.AsFloat - fDMSPEDFiscal.cdsICMSVLR_ICMS_CREDITO.AsFloat;
            end
            else
              VL_SLD_CREDOR_TRANSPORTAR := VL_ICMS_RECOLHER;
            DEB_ESP := 0;

            //with RegistroE116New do
            //begin
              //COD_OR := '000';
              //VL_OR := 0;
              //DT_VCTO := Now;
              //COD_REC := '123';
              //NUM_PROC := '10';
              //IND_PROC := opSefaz;
              //PROC := 'DESCRIÇÃO DO PROCESSO';
              //TXT_COMPL := '';
              //MES_REF := '112011';
            //end;
          end;
          vContador_Reg_E := vContador_Reg_E + 1;
          fDMSPEDFiscal.cdsICMS.Next;
        end;
      end;

      fDMSPEDFiscal.mE200.First;
      while not fDMSPEDFiscal.mE200.Eof do
      begin
        with RegistroE200New do
        begin
          DT_INI := DateEdit1.Date;
          DT_FIN := DateEdit2.Date;
          UF     := fDMSPEDFiscal.mE200UF.AsString;

          {with RegistroE210New do
          begin
            IND_MOV_ST := mstSemOperacaoST;
            VL_SLD_CRED_ANT_ST := 0;
            VL_DEVOL_ST := 0;
            VL_RESSARC_ST := 0;
            VL_OUT_CRED_ST := 0;
            VL_AJ_CREDITOS_ST := 0;
            VL_SLD_DEV_ANT_ST := 0.00;
            VL_DEDUCOES_ST := 0;
            VL_ICMS_RECOL_ST := 0.00;
            VL_SLD_CRED_ST_TRANSPORTAR := 0;
            VL_OUT_DEB_ST := 0.00;
            DEB_ESP_ST := 0;

            // with RegistroE220New do begin
            // COD_AJ_APUR    := 'RS109999';
            // DESCR_COMPL_AJ := '';
            // VL_AJ_APUR     := 0.00;
            //
            // with RegistroE230New do begin
            // NUM_DA    := '123';
            // NUM_PROC  := '123';
            // IND_PROC  := opOutros;
            // PROC      := 'DESCRIÇÃO RESUMIDA';
            // TXT_COMPL := 'COMPLEMENTO';
            // end;
            //
            // with RegistroE240New do begin
            // COD_PART   := '000001';
            // COD_MOD    := '01';
            // SER        := 'SERI';
            // SUB        := '';
            // NUM_DOC    := '123456789';
            // DT_DOC     := Now;
            // COD_ITEM   := '000001';
            // VL_AJ_ITEM := 0;
            // end;
            // end;

            with RegistroE250New do
            begin
              COD_OR := '000';
              VL_OR := 0;
              DT_VCTO := Now;
              COD_REC := '123';
              NUM_PROC := '1020304050';
              IND_PROC := opOutros;
              PROC := 'DESCRIÇÃO RESUMIDA';
              TXT_COMPL := '';
              MES_REF := '112011';
            end;
          end;}
        end;
        fDMSPEDFiscal.mE200.Next;
      end;

    if ACBrSPEDFiscal1.Bloco_0.Registro0000New.IND_ATIV = atIndustrial then
    begin
      with RegistroE500New do
      begin
        if fDMSPEDFiscal.cdsFilialSPED_PERIODO_IPI.AsString = '1' then
          IND_APUR := iaDecendial
        else
          IND_APUR := iaMensal;
        DT_INI := DateEdit1.Date;
        DT_FIN := DateEdit2.Date;
        vContador_Reg_E := vContador_Reg_E + 1;
      end;

      fDMSPEDFiscal.cdsIPI.First;
      while not fDMSPEDFiscal.cdsIPI.Eof do
      begin
        prc_Bloco_E_Reg_E510;
        prc_Gravar_mE520;
        fDMSPEDFiscal.cdsIPI.Next;
        vContador_Reg_E := vContador_Reg_E + 1;
      end;
      prc_Bloco_E_Reg_E520;
    end;
  end;

  prc_Bloco_E_Reg_E990;
end;

procedure TfrmSPEDFiscal.prc_Bloco_E_Reg_E510;
begin
  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE510New do
    begin
      CFOP        := fDMSPEDFiscal.cdsIPICODCFOP.AsString;
      CST_IPI     := fDMSPEDFiscal.cdsIPICOD_IPI.AsString;
      VL_CONT_IPI := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsIPIVLR_TOTAL.AsFloat));
      VL_BC_IPI   := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsIPIBASE_IPI.AsFloat));
      VL_IPI      := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.cdsIPIVLR_IPI.AsFloat));
    end;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_E_Reg_E990;
begin
  vContador_Reg_E := vContador_Reg_E + 1;
  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE990 do
    begin
      QTD_LIN_E := vContador_Reg_E;
    end;
  end;
end;

procedure TfrmSPEDFiscal.btnVersaoClick(Sender: TObject);
begin
  frmCadSpedVersao := TfrmCadSpedVersao.Create(self);
  frmCadSpedVersao.ShowModal;
  FreeAndNil(frmCadSpedVersao);
end;

procedure TfrmSPEDFiscal.btnEstoqueClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  frmConsPosseEstoque := TfrmConsPosseEstoque.Create(self);
  try
    prc_Consultar_PosseEstoque;
    Screen.Cursor := crDefault;
    frmConsPosseEstoque.fDMSPEDFiscal := fDMSPEDFiscal;
    frmConsPosseEstoque.ShowModal;
  finally
    FreeAndNil(frmConsPosseEstoque);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSPEDFiscal.btnImp_Bloco_KClick(Sender: TObject);
var
  vArq : String;
  vOpcaoAux : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Bloco_K200.fr3';
  if (FileExists(vArq)) and (trim(vArq) <> '') then
    fDMSPEDFiscal.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  vOpcaoAux := '(Data: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
             + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  fDMSPEDFiscal.frxReport1.variables['ImpOpcao'] := QuotedStr(vOpcaoAux);
  fDMSPEDFiscal.frxReport1.ShowReport;
end;            

procedure TfrmSPEDFiscal.prc_Bloco_1_Reg_1001;
begin
  with ACBrSPEDFiscal1.Bloco_1 do
  begin
    with Registro1001New do
    begin
      IND_MOV := imComDados;
    end;
    with Registro1010New do
    begin
      IND_EXP := 'N';
      IND_CCRF := 'N';
      IND_COMB := 'N';
      IND_USINA := 'N';
      IND_VA := 'N';
      IND_EE := 'N';
      IND_CART := 'N';
      IND_FORM := 'N';
      IND_AER := 'N';
      IND_GIAF1 := 'N';
      IND_GIAF3 := 'N';
      IND_GIAF4 := 'N';
      IND_REST_RESSARC_COMPL_ICMS := 'N';
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_1;
    LoadToMemo;
  end;

end;

procedure TfrmSPEDFiscal.RxDBLookupCombo1Exit(Sender: TObject);
var
  vFlag: String;
begin
  DirectoryEdit1.Text := fDMSPEDFiscal.cdsFilialENDERECO_ARQ_SPED.AsString;
  if RxDBLookupCombo1.Text <> '' then
  begin
    vFlag := SQLLocate('FILIAL','ID','TIPO_SPED',IntToStr(RxDBLookupCombo1.KeyValue));
    RzCheckList1.ItemEnabled[2] := (vFlag = '2');
    RzCheckList1.ItemEnabled[3] := (vFlag = '2');
    RzCheckList1.ItemEnabled[4] := (vFlag = '2');
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_0_Reg_0002;
begin
  ACBrSPEDFiscal1.Bloco_0.Registro0002New.CLAS_ESTAB_IND := fDMSPEDFiscal.cdsFilialCOD_CLASIPI.AsString;
  vContador_Reg_0 := vContador_Reg_0 + 1;
end;

procedure TfrmSPEDFiscal.prc_Gravar_mE520;
begin
  if fDMSPEDFiscal.mE520.IsEmpty then
    fDMSPEDFiscal.mE520.Insert
  else
  if not(fDMSPEDFiscal.mE520.State in [dsEdit, dsInsert]) then
    fDMSPEDFiscal.mE520.Edit;
  fDMSPEDFiscal.mE520Saldo_Anterior.AsFloat := 0;
  if (fDMSPEDFiscal.cdsIPITIPO_NOTA.AsString = 'E') and (fDMSPEDFiscal.cdsIPIGERA_CREDITO.AsString = 'S') then
    fDMSPEDFiscal.mE520Vlr_Debitos.AsFloat := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Debitos.AsFloat + fDMSPEDFiscal.cdsIPIVLR_IPI.AsFloat));
  if (fDMSPEDFiscal.cdsIPITIPO_NOTA.AsString = 'S') and (fDMSPEDFiscal.cdsIPIGERA_CREDITO.AsString = 'S') then
    fDMSPEDFiscal.mE520Vlr_Creditos.AsFloat := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Creditos.AsFloat + fDMSPEDFiscal.cdsIPIVLR_IPI.AsFloat));
  fDMSPEDFiscal.mE520Vlr_Outros_Debitos.AsFloat := 0;
  fDMSPEDFiscal.mE520Vlr_Outros_Creditos.AsFloat := 0;

  fDMSPEDFiscal.mE520Vlr_Saldo_Credor.AsFloat    := StrToFloat(FormatFloat('0.00',(fDMSPEDFiscal.mE520Vlr_Debitos.AsFloat + fDMSPEDFiscal.mE520Vlr_Outros_Debitos.AsFloat) -
                                                    (fDMSPEDFiscal.mE520Saldo_Anterior.AsFloat + fDMSPEDFiscal.mE520Vlr_Creditos.AsFloat +
                                                     fDMSPEDFiscal.mE520Vlr_Outros_Creditos.AsFloat)));
  if StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Saldo_Credor.AsFloat)) < 0 then
    fDMSPEDFiscal.mE520Vlr_Saldo_Devedor.AsFloat := 0
  else
  begin
    fDMSPEDFiscal.mE520Vlr_Saldo_Devedor.AsFloat := StrToFloat(FormatFloat('0.00',(fDMSPEDFiscal.mE520Vlr_Debitos.AsFloat + fDMSPEDFiscal.mE520Vlr_Outros_Debitos.AsFloat) -
                                                    (fDMSPEDFiscal.mE520Saldo_Anterior.AsFloat + fDMSPEDFiscal.mE520Vlr_Creditos.AsFloat +
                                                     fDMSPEDFiscal.mE520Vlr_Outros_Creditos.AsFloat)));
    if StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Saldo_Devedor.AsFloat)) >= 0 then
      fDMSPEDFiscal.mE520Vlr_Saldo_Credor.AsFloat := 0;
  end;
  fDMSPEDFiscal.mE520.Post;
end;

procedure TfrmSPEDFiscal.prc_Bloco_E_Reg_E520;
begin
  fDMSPEDFiscal.mE520.First;
  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE520New do
    begin
      VL_SD_ANT_IPI := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Saldo_Anterior.AsFloat));
      VL_DEB_IPI    := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Debitos.AsFloat));
      VL_CRED_IPI   := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Creditos.AsFloat));
      VL_OD_IPI     := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Outros_Debitos.AsFloat));
      VL_OC_IPI     := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Outros_Creditos.AsFloat));
      VL_SC_IPI     := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Saldo_Credor.AsFloat));
      VL_SD_IPI     := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.mE520Vlr_Saldo_Devedor.AsFloat));
    end;
  end;
end;

function TfrmSPEDFiscal.monta_codigo_produto(ID_Produto, ID_Cor : Integer ; Referencia, Tamanho, Usa_Tamanho_Agrupado : String) : String;
var
  vCodigo: String;
begin
  if fDMSPEDFiscal.qParametrosIMP_NFE_REF_PROD.AsString = 'R' then
    vCodigo := Referencia
  else
    vCodigo := IntToStr(ID_Produto);
  if ID_Cor > 0 then
    vCodigo := vCodigo + '.' + IntToStr(ID_Cor);
  if (trim(Tamanho) <> '') and (Usa_Tamanho_Agrupado <> 'S') then
    vCodigo := vCodigo + '.' + Tamanho;
  Result := vCodigo;
end;

procedure TfrmSPEDFiscal.NxButton1Click(Sender: TObject);
var
  vObsAux: String;
begin
  vObsAux := 'Tipo do SPED que o sistema vai gerar o Bloco H:' + #13+ #13
           + '00 - Mercadoria para Revenda' + #13
           + '01- Matéria-Prima'+ #13
           + '02- Embalagem'+ #13
           + '03 - Produto em Processo'+ #13
           + '04 - Produto Acabado'+ #13
           + '05 - SubProduto'+ #13
           + '06 - Produto Intermediário'+ #13
           + '10 - Outros Insumos';
  MessageDlg(vObsAux , mtConfirmation, [mbOk], 0);
end;

procedure TfrmSPEDFiscal.RzCheckList1Enter(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** É preciso escolher primeiro a Filial!', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
end;

procedure TfrmSPEDFiscal.prc_Le_NotaFiscal_Itens;
var
  vCodigo: String;
begin
  fDMSPEDFiscal.cdsNotaFiscal_Itens.First;
  while not fDMSPEDFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    {if (fDMSPEDFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <> 38872) and
       (fDMSPEDFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <> 41179) then
    begin
      fDMSPEDFiscal.cdsNotaFiscal_Itens.Next;
      continue;
    end;}

    vCodigo := monta_codigo_produto(fDMSPEDFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,fDMSPEDFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                                    fDMSPEDFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString,fDMSPEDFiscal.cdsNotaFiscal_ItensTAMANHO.AsString,'N');
                                    
    if not (fDMSPEDFiscal.mProduto.Locate('Cod_Produto',vCodigo,([Locaseinsensitive]))) then
    begin
      fDMSPEDFiscal.mProduto.Insert;
      fDMSPEDFiscal.mProdutoID.AsInteger         := fDMSPEDFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;   
      fDMSPEDFiscal.mProdutoCod_Produto.AsString := vCodigo;
      if trim(fDMSPEDFiscal.cdsMovimentoTAMANHO.AsString) <> '' then
        fDMSPEDFiscal.mProdutoTamanho.AsString     := fDMSPEDFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
      fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString;
      if trim(fDMSPEDFiscal.cdsNotaFiscal_ItensNOME_COR.AsString) <> '' then
        fDMSPEDFiscal.mProdutoNome.AsString := fDMSPEDFiscal.mProdutoNome.AsString + ' ' + fDMSPEDFiscal.cdsNotaFiscal_ItensNOME_COR.AsString;
      fDMSPEDFiscal.mProdutoNome.AsString := TiraAcentos(fDMSPEDFiscal.mProdutoNome.AsString);
      fDMSPEDFiscal.mProdutoCod_Barra.AsString := Monta_Numero(fDMSPEDFiscal.cdsNotaFiscal_ItensCOD_BARRA.AsString,0);
      fDMSPEDFiscal.mProdutoCod_Anterior.AsString := '';
      fDMSPEDFiscal.mProdutoUnidade.AsString      := UpperCase(fDMSPEDFiscal.cdsNotaFiscal_ItensUNIDADE_CAD.AsString);
      fDMSPEDFiscal.mProdutoTipo_Item.AsString    := fDMSPEDFiscal.cdsMovimentoSPED_TIPO_ITEM.AsString;
      fDMSPEDFiscal.mProdutoNCM.AsString          := Monta_Numero(fDMSPEDFiscal.cdsNotaFiscal_ItensNCM.AsString,0);
      fDMSPEDFiscal.mProdutoNCM_EX.AsString       := fDMSPEDFiscal.cdsNotaFiscal_ItensNCM_EX.AsString;
      fDMSPEDFiscal.mProdutoEX_IPI.AsString       := fDMSPEDFiscal.cdsNotaFiscal_ItensNCM_EX.AsString;
      fDMSPEDFiscal.mProdutoCOD_SERVICO.AsInteger := 0;
      fDMSPEDFiscal.mProdutoPERC_ICMS.AsFloat     := StrToFloat(FormatFloat('0.00',fDMSPEDFiscal.qUFPERC_ICMS_INTERNO.AsFloat));
      fDMSPEDFiscal.mProduto.Post;
      prc_Gravar_mUnidade(fDMSPEDFiscal.mProdutoUnidade.AsString);
      prc_Gravar_mNatureza(fDMSPEDFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,fDMSPEDFiscal.cdsNotaFiscal_ItensCODCFOP.AsString,'');
    end;
    if (fDMSPEDFiscal.cdsNotaFiscal_ItensUNIDADE.AsString <> fDMSPEDFiscal.cdsNotaFiscal_ItensUNIDADE_CAD.AsString) and (StrToFloat(FormatFloat('0.0000',fDMSPEDFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) <> 1)
     and (StrToFloat(FormatFloat('0.0000',fDMSPEDFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0) then
    begin
      fDMSPEDFiscal.mUnidade_Conv.Insert;
      fDMSPEDFiscal.mUnidade_ConvUnidade.AsString     := fDMSPEDFiscal.cdsNotaFiscal_ItensUNIDADE.AsString;
      fDMSPEDFiscal.mUnidade_ConvQtd_Conv.AsFloat     := fDMSPEDFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat;
      fDMSPEDFiscal.mUnidade_ConvCod_Produto.AsString := vCodigo;
      fDMSPEDFiscal.mUnidade_Conv.Post;
      prc_Gravar_mUnidade(fDMSPEDFiscal.mUnidade_ConvUnidade.AsString);
    end;
    fDMSPEDFiscal.cdsNotaFiscal_Itens.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Abrir_NotaFiscal_Itens(ID: Integer);
var
  vComando : String;
begin
  fDMSPEDFiscal.cdsNotaFiscal_Itens.Close;
  vComando := fDMSPEDFiscal.ctNotaFiscal_Itens;
  if ID > 0 then
  begin
    vComando := vComando + ' WHERE i.ID = ' + IntToStr(ID);
    fDMSPEDFiscal.sdsNotaFiscal_Itens.CommandText := vComando;
  end
  else
  begin
    vComando := vComando + ' where N.FILIAL = :FILIAL ';
    if ComboBox3.ItemIndex = 0 then
    begin
      vComando := vComando + '  and (((N.DTEMISSAO between :DT_INICIAL and :DT_FINAL) and '
                + '(N.TIPO_REG = ' + QuotedStr('NTS') + ')) or ((N.DTSAIDAENTRADA between :DT_INICIAL and :DT_FINAL) and '
                + '(N.TIPO_REG = ' + QuotedStr('NTE') + '))) ';
    end                                                     
    else
    if ComboBox3.ItemIndex = 1 then
    begin
      vComando := vComando + ' and ((N.DTSAIDAENTRADA between :DT_INICIAL and :DT_FINAL) and '
                + '(N.TIPO_REG = ' + QuotedStr('NTE') + ')) ';
    end
    else
    if ComboBox3.ItemIndex = 2 then
    begin
      vComando := vComando + ' and ((N.DTEMISSAO between :DT_INICIAL and :DT_FINAL) and '
                + '(N.TIPO_REG = ' + QuotedStr('NTS') + '))';
    end;
    //vcomando := vcomando + ' and (N.NUMNOTA = 44849 or N.NUMNOTA = 44850)'; 
    //vcomando := vcomando + ' and (N.NUMNOTA = 74474)'; 
    fDMSPEDFiscal.sdsNotaFiscal_Itens.CommandText := vComando;
    fDMSPEDFiscal.sdsNotaFiscal_Itens.ParamByName('DT_INICIAL').AsDate := DateEdit1.Date;
    fDMSPEDFiscal.sdsNotaFiscal_Itens.ParamByName('DT_FINAL').AsDate   := DateEdit2.Date;
    fDMSPEDFiscal.sdsNotaFiscal_Itens.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  fDMSPEDFiscal.cdsNotaFiscal_Itens.Open;
end;

procedure TfrmSPEDFiscal.prc_Le_NotaFiscal;
begin
  fDMSPEDFiscal.cdsNotaFiscal.First;
  while not fDMSPEDFiscal.cdsNotaFiscal.Eof do
  begin
    if trim(fDMSPEDFiscal.cdsNotaFiscalCANCELADA.AsString) <> 'S' then
      prc_Gravar_mPessoa(fDMSPEDFiscal.cdsNotaFiscalID_CLIENTE.AsInteger);
    fDMSPEDFiscal.cdsNotaFiscal.Next;
  end;
end;

procedure TfrmSPEDFiscal.prc_Gravar_Produto_SemCusto;
begin
  fDMSPEDFiscal.mProdSemCusto.Insert;
  fDMSPEDFiscal.mProdSemCustoCodigo.AsString := fDMSPEDFiscal.cdsBalancoID_PRODUTO.AsString;
  if fDMSPEDFiscal.cdsBalancoID_COR.AsInteger > 0 then
    fDMSPEDFiscal.mProdSemCustoCodigo.AsString := fDMSPEDFiscal.mProdSemCustoCodigo.AsString + '.' + fDMSPEDFiscal.cdsBalancoID_COR.AsString;
  fDMSPEDFiscal.mProdSemCustoNome_Cor.AsString := fDMSPEDFiscal.cdsBalancoNOME_COMBINACAO.AsString;
  fDMSPEDFiscal.mProdSemCustoNome_Produto.AsString := fDMSPEDFiscal.cdsBalancoNOME_PRODUTO.AsString;
  fDMSPEDFiscal.mProdSemCustoQtd.AsFloat           := fDMSPEDFiscal.cdsBalancoQTD_ESTOQUE.AsFloat;
  fDMSPEDFiscal.mProdSemCusto.Post;
end;

procedure TfrmSPEDFiscal.NxButton2Click(Sender: TObject);
begin
  prc_CriaExcel_Novo(SMDBGrid4.DataSource,SMDBGrid4);

end;

procedure TfrmSPEDFiscal.prc_CriaExcel_Novo(vDados: TDataSource;
  Grid: TSMDBGrid);
var
  planilha: variant;
  vTexto: string;
  sLinha: TStringList;
  cLinha: String;
  ColunaP: Integer;
  Coluna: Integer;
begin
  CoInitialize(nil);
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;
  Grid.DisableScroll;
  sLinha := TStringList.Create;

  try
    planilha := CreateOleObject('Excel.Application');

    cLinha  := '';
    for coluna := 1 to vDados.DataSet.FieldCount do
    begin
      if trim(cLinha) = '' then
        cLinha := vDados.DataSet.Fields[coluna - 1].DisplayLabel
      else
        cLinha := cLinha + ';' + vDados.DataSet.Fields[coluna - 1].DisplayLabel;
    end;
    sLinha.Add(cLinha);

    vDados.DataSet.First;
    while not vDados.DataSet.Eof do
    begin
      ColunaP := 0;
      cLinha := '';
      for coluna := 1 to vDados.DataSet.FieldCount do
      begin
        ColunaP := ColunaP + 1;
        if ColunaP > 1 then
          cLinha := cLinha + ';' + vDados.DataSet.Fields[coluna - 1].AsString
        else
          cLinha := vDados.DataSet.Fields[coluna - 1].AsString;
      end;
      sLinha.Add(cLinha);
      vDados.DataSet.Next;
    end;

    vTexto := ExtractFilePath(Application.ExeName);
    vTexto := vTexto + Name + '_' + RzPageControl1.ActivePage.Caption + '.csv';
    if FileExists(vTexto) then
      DeleteFile(vTexto);
    sLinha.SaveToFile(vTexto);
    planilha.visible := true;
    //planilha.Workbooks.Open(vTexto);
    //planilha.columns.Autofit;

  finally
    Screen.Cursor := crDefault;
    Grid.EnableScroll;
    FreeAndNil(sLinha);
  end;

  CoUnInitialize;
end;

procedure TfrmSPEDFiscal.NxButton3Click(Sender: TObject);
begin
  frmConfigC176.ShowModal;
end;

procedure TfrmSPEDFiscal.prc_Abrir_CupomFiscal;
begin
  fDMSPEDFiscal.cdsCupomFiscal.Close;
  fDMSPEDFiscal.sdsCupomFiscal.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMSPEDFiscal.sdsCupomFiscal.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMSPEDFiscal.sdsCupomFiscal.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMSPEDFiscal.cdsCupomFiscal.Open;
end;

procedure TfrmSPEDFiscal.prc_Bloco_C_Reg_C100_Cupom;
var
  LValorBase : Real;
begin
  with ACBrSPEDFiscal1.Bloco_C do
  begin
    with RegistroC100New do
    begin
      IND_OPER := tpSaidaPrestacao;
      IND_EMIT := edEmissaoPropria;
      COD_MOD := '65';
      COD_PART := '';
      SER     := fDMSPEDFiscal.cdsCupomFiscalSERIE.AsString;
      NUM_DOC := fDMSPEDFiscal.cdsCupomFiscalNUMCUPOM.AsString;
      CHV_NFE := fDMSPEDFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString;
      if fDMSPEDFiscal.cdsCupomFiscalCANCELADO.AsString = 'S' then
        COD_SIT  := sdCancelado
      else
        COD_SIT  := sdRegular;
      if COD_SIT = sdCancelado then
      begin
        fDMSPEDFiscal.cdsCupomFiscal.Next;
        Exit;
      end;
      DT_DOC := fDMSPEDFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime;
      VL_DOC := fDMSPEDFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat;
      IND_PGTO := tpVista;
      if fDMSPEDFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'P' then
        IND_PGTO := tpPrazo;
      VL_DESC := fDMSPEDFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat;
      VL_ABAT_NT := 0;
      VL_MERC := fDMSPEDFiscal.cdsCupomFiscalVLR_PRODUTOS.AsFloat;
      IND_FRT := tfSemCobrancaFrete;
      if fDMSPEDFiscal.cdsCupomFiscalVLR_FRETE.AsFloat > 0 then
        IND_FRT := tfPorContaEmitente;
      VL_FRT := fDMSPEDFiscal.cdsCupomFiscalVLR_FRETE.AsFloat;
      VL_SEG := 0;
      VL_OUT_DA := 0;
      VL_BC_ICMS := fDMSPEDFiscal.cdsCupomFiscalBASE_ICMS.AsFloat;
      VL_ICMS := fDMSPEDFiscal.cdsCupomFiscalVLR_ICMS.AsFloat;
      VL_BC_ICMS_ST := 0;
      VL_ICMS_ST := 0;
      VL_IPI := 0;
      VL_PIS := 0;
      VL_COFINS := 0;
      VL_PIS_ST := 0;
      VL_COFINS_ST := 0;

      prc_Abrir_CupomFiscal_Itens(fDMSPEDFiscal.cdsCupomFiscalID.AsInteger);
      fDMSPEDFiscal.cdsCupomFiscalItem.First;

      if chkC170Cupom.Checked then
      begin
        while not fDMSPEDFiscal.cdsCupomFiscalItem.Eof do
        begin
          with RegistroC170New do
          begin
            NUM_ITEM := fDMSPEDFiscal.cdsCupomFiscalItemITEM.AsString;
            LValorBase := fDMSPEDFiscal.cdsCupomFiscalItemVLR_TOTAL.AsFloat;
            COD_ITEM := fDMSPEDFiscal.cdsCupomFiscalItemID_PRODUTO.AsString;
            DESCR_COMPL := fDMSPEDFiscal.cdsCupomFiscalItemREFERENCIA.AsString;
            QTD := fDMSPEDFiscal.cdsCupomFiscalItemQTD.AsFloat;
            UNID := fDMSPEDFiscal.cdsCupomFiscalItemUNIDADE.AsString;
            VL_ITEM := fDMSPEDFiscal.cdsCupomFiscalItemVLR_UNITARIO.AsFloat;
            VL_DESC := fDMSPEDFiscal.cdsCupomFiscalItemVLR_DESCONTO.AsFloat;
            IND_MOV := mfSim;
            CST_ICMS := '00'; //ver o que vai aqui
            CST_ICMS := fDMSPEDFiscal.cdsCupomFiscalItemCOD_CST.AsString;
            CFOP := fDMSPEDFiscal.cdsCupomFiscalItemCFOP.AsString;
            COD_NAT := EmptyStr;
            VL_BC_ICMS := fDMSPEDFiscal.cdsCupomFiscalItemBASE_ICMS.AsFloat;
            ALIQ_ICMS := fDMSPEDFiscal.cdsCupomFiscalItemPERC_ICMS.AsFloat;
            VL_ICMS := fDMSPEDFiscal.cdsCupomFiscalItemVLR_ICMS.AsFloat;
            VL_BC_ICMS_ST := 0;
            ALIQ_ST := 0;
            VL_ICMS_ST := 0;
            IND_APUR := iaMensal;
            CST_IPI := SQLLocate('TAB_CSTIPI','ID','COD_IPI', fDMSPEDFiscal.cdsCupomFiscalItemID_CSTIPI.AsString);
            COD_ENQ := EmptyStr;
            VL_BC_IPI := LValorBase;
            ALIQ_IPI := 0;
            VL_IPI := 0;
            CST_PIS := fDMSPEDFiscal.cdsCupomFiscalItemCST_PIS.AsString;
            CST_COFINS := fDMSPEDFiscal.cdsCupomFiscalItemCST_COFINS.AsString;
            VL_BC_PIS := LValorBase;
            ALIQ_PIS_PERC := fDMSPEDFiscal.cdsCupomFiscalItemPERC_PIS.AsFloat;
            VL_PIS := fDMSPEDFiscal.cdsCupomFiscalItemVLR_PIS.AsFloat;
            VL_BC_COFINS := LValorBase;
            ALIQ_COFINS_PERC := fDMSPEDFiscal.cdsCupomFiscalItemPERC_COFINS.AsFloat;
            VL_COFINS := fDMSPEDFiscal.cdsCupomFiscalItemVLR_COFINS.AsFloat;
            COD_CTA := '11';
            vContador_Reg_C := vContador_Reg_C + 1;
          end;
          fDMSPEDFiscal.cdsCupomFiscalItem.Next;
        end;
      end;
      vContador_Reg_C := vContador_Reg_C + 1;
      prc_Abrir_C190(fDMSPEDFiscal.cdsCupomFiscalID.AsInteger);
      fDMSPEDFiscal.sqlC190.First;
      while not fDMSPEDFiscal.sqlC190.Eof do
      begin
        with RegistroC190New do
        begin
          CST_ICMS := fDMSPEDFiscal.sqlC190COD_CST.AsString;
          CFOP := fDMSPEDFiscal.sqlC190CODCFOP.AsString;
          ALIQ_ICMS := fDMSPEDFiscal.sqlC190PERC_ICMS.AsFloat;
          VL_OPR := fDMSPEDFiscal.sqlC190VLR_PRODUTO.AsFloat;
          VL_BC_ICMS := fDMSPEDFiscal.sqlC190BASE_ICMS.AsFloat;
          VL_ICMS := fDMSPEDFiscal.sqlC190VLR_ICMS.AsFloat;
          VL_BC_ICMS_ST := 0;
          VL_ICMS_ST := 0;
          VL_RED_BC := fDMSPEDFiscal.sqlC190VALOR_BASE_REDUCAO.AsFloat;
          fDMSPEDFiscal.sqlC190.Next;
        end;
      end;
    end;
  end;
end;

procedure TfrmSPEDFiscal.prc_Bloco_C_Reg_C001;
begin
  with ACBrSPEDFiscal1.Bloco_C do
  begin
    with RegistroC001New do
    begin
      IND_MOV := imComDados;
      vContador_Reg_C := vContador_Reg_C + 1;
    end;
  end;
end;

procedure TfrmSPEDFiscal.prc_Abrir_CupomFiscal_Itens(AId: Integer);
begin
  fDMSPEDFiscal.cdsCupomFiscalItem.Close;
  fDMSPEDFiscal.sdsCupomFiscalItem.ParamByName('ID_Cupom').AsInteger := AId;
  fDMSPEDFiscal.cdsCupomFiscalItem.Open;
end;

procedure TfrmSPEDFiscal.prc_Abrir_C190(Aid: Integer);
begin
  fDMSPEDFiscal.sqlC190.Close;
  fDMSPEDFiscal.sqlC190.ParamByName('ID_Cupom').AsInteger := AId;
  fDMSPEDFiscal.sqlC190.Open;
end;

end.

