unit ClasseRegistroE116;

interface

type
  TE116 = class
  private
    FREG: string;
    FCOD_OR: string;
    FVL_OR: Double;
    FDT_VCTO: TDateTime;
    FCOD_REC: string;
    FNUM_PROC: string;
    FIND_PROC: string;
  public
    constructor Create;
    destructor Destroy; override;
    property COD_OR: string read FCOD_OR write FCOD_OR;
    property VL_OR: Double read FVL_OR write FVL_OR;
    property DT_VCTO: TDateTime read FDT_VCTO write FDT_VCTO;
    property COD_REC: string read FCOD_REC write FCOD_REC;
    property NUM_PROC: string read FNUM_PROC write FNUM_PROC;
    property IND_PROC: string read FIND_PROC write FIND_PROC;
  end;

implementation

{ TE116 }

constructor TE116.Create;
begin
  COD_OR := '';
  VL_OR := 0;
  COD_REC := '';
  NUM_PROC := '';
  IND_PROC := '';
end;

destructor TE116.Destroy;
begin

  inherited;
end;

end.
