unit UConsPosseEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMSPEDFiscal, NxCollection, Grids, DBGrids, SMDBGrid;

type
  TfrmConsPosseEstoque = class(TForm)
    NxPanel1: TNxPanel;
    NxButton1: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMSPEDFiscal: TDMSPEDFiscal;
    
  end;

var
  frmConsPosseEstoque: TfrmConsPosseEstoque;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsPosseEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPosseEstoque.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMSPEDFiscal);
end;

procedure TfrmConsPosseEstoque.NxButton1Click(Sender: TObject);
begin
  Close;
end;

end.
