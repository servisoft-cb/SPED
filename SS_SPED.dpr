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
  UDMImportar in 'UDMImportar.pas' {DMImportar: TDataModule},
  Classe.Retorno in '..\ssfacil\Classes\Classe.Retorno.pas',
  UInformeEndereco in '..\ssfacil\UInformeEndereco.pas' {frmInformeEndereco};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SPED FISCAL';
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfrmSPEDFiscal, frmSPEDFiscal);
  Application.Run;
end.
