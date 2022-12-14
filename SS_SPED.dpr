program SS_SPED;

uses
  Forms,
  USPEDFiscal in 'USPEDFiscal.pas' {frmSPEDFiscal},
  DmdDatabase in '..\ssfacil\DmdDatabase.pas' {dmDatabase: TDataModule},
  UDMSPEDFiscal in 'UDMSPEDFiscal.pas' {DMSPEDFiscal: TDataModule},
  uUtilPadrao in '..\ssfacil\uUtilPadrao.pas',
  UEscolhe_Filial in '..\ssfacil\UEscolhe_Filial.pas' {frmEscolhe_Filial},
  rsDBUtils in '..\rslib\nova\rsDBUtils.pas',
  UDMSpedVersao in 'UDMSpedVersao.pas' {DMSpedVersao: TDataModule},
  UCadSpedVersao in 'UCadSpedVersao.pas' {frmCadSpedVersao},
  UConsPosseEstoque in 'UConsPosseEstoque.pas' {frmConsPosseEstoque},
  DmdDatabase_NFeBD in '..\ssfacil\DmdDatabase_NFeBD.pas' {dmDatabase_NFeBD: TDataModule},
  UImportar_Excel in 'UImportar_Excel.pas' {frmImportar_Excel},
  UDMImportar in 'UDMImportar.pas' {DMImportar: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SPED FISCAL';
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfrmSPEDFiscal, frmSPEDFiscal);
  Application.CreateForm(TfrmImportar_Excel, frmImportar_Excel);
  Application.CreateForm(TDMImportar, DMImportar);
  Application.Run;
end.
