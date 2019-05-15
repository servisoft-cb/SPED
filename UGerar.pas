unit UGerar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrSpedFiscal, StdCtrls, Buttons, Mask, ToolEdit, NxCollection,
  ACBrBase;

type
  TForm1 = class(TForm)
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    DirectoryEdit1: TDirectoryEdit;
    Label1: TLabel;
    btnGerar: TNxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
