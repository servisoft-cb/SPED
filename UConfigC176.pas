unit UConfigC176;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLstBox, RzChkLst, NxCollection, ExtCtrls, RzPanel,
  RzRadGrp;

type
  TfrmConfigC176 = class(TForm)
    Label1: TLabel;
    edtNumDocumento: TEdit;
    NxButton1: TNxButton;
    RzRadioGroup1: TRzRadioGroup;
    RzRadioGroup2: TRzRadioGroup;
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigC176: TfrmConfigC176;

implementation

{$R *.dfm}

procedure TfrmConfigC176.NxButton1Click(Sender: TObject);
begin
  Close;
end;

end.
