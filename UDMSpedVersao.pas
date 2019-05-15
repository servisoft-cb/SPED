unit UDMSpedVersao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TDMSpedVersao = class(TDataModule)
    sdsSPEDVersao: TSQLDataSet;
    dspSpedVersao: TDataSetProvider;
    sdsSPEDVersaoID: TIntegerField;
    sdsSPEDVersaoDTINICIO: TDateField;
    sdsSPEDVersaoDTFINAL: TDateField;
    sdsSPEDVersaoCOD_LEIAUTE: TIntegerField;
    sdsSPEDVersaoVERSAO_LEIAUTE: TStringField;
    cdsSpedVersao: TClientDataSet;
    dsSpedVersao: TDataSource;
    cdsSpedVersaoID: TIntegerField;
    cdsSpedVersaoDTINICIO: TDateField;
    cdsSpedVersaoDTFINAL: TDateField;
    cdsSpedVersaoCOD_LEIAUTE: TIntegerField;
    cdsSpedVersaoVERSAO_LEIAUTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSpedVersao: TDMSpedVersao;

implementation

uses DmdDatabase;

{$R *.dfm}

end.
