object frmCadSpedVersao: TfrmCadSpedVersao
  Left = 376
  Top = 110
  Width = 524
  Height = 480
  BorderIcons = [biSystemMenu]
  Caption = 'Vers'#227'o SPED'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 508
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object btnInserir: TNxButton
      Left = 13
      Top = 8
      Width = 81
      Height = 26
      Caption = 'Inserir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnInserirClick
    end
    object btnAlterar: TNxButton
      Left = 93
      Top = 8
      Width = 81
      Height = 26
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnConfirmar: TNxButton
      Left = 173
      Top = 8
      Width = 81
      Height = 26
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TNxButton
      Left = 253
      Top = 8
      Width = 81
      Height = 26
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnCancelarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 157
    Width = 508
    Height = 285
    Align = alClient
    DataSource = DMSpedVersao.dsSpedVersao
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTINICIO'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. In'#237'cio'
        Width = 82
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTFINAL'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Final'
        Width = 89
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COD_LEIAUTE'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Leiaute'
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VERSAO_LEIAUTE'
        Title.Alignment = taCenter
        Title.Caption = 'Vers'#227'o Leiaute'
        Width = 95
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 508
    Height = 116
    Align = alTop
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 79
      Top = 12
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 49
      Top = 34
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.In'#237'cio:'
    end
    object Label4: TLabel
      Left = 19
      Top = 99
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vers'#227'o Leiaute:'
    end
    object Label5: TLabel
      Left = 30
      Top = 77
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. Leiaute:'
    end
    object Label6: TLabel
      Left = 51
      Top = 56
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Final:'
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 4
      Width = 88
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'ID'
      DataSource = DMSpedVersao.dsSpedVersao
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 69
      Width = 121
      Height = 21
      DataField = 'COD_LEIAUTE'
      DataSource = DMSpedVersao.dsSpedVersao
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 96
      Top = 91
      Width = 121
      Height = 21
      DataField = 'VERSAO_LEIAUTE'
      DataSource = DMSpedVersao.dsSpedVersao
      TabOrder = 2
    end
    object DBDateEdit1: TDBDateEdit
      Left = 96
      Top = 26
      Width = 121
      Height = 21
      DataField = 'DTINICIO'
      DataSource = DMSpedVersao.dsSpedVersao
      NumGlyphs = 2
      TabOrder = 3
    end
    object DBDateEdit2: TDBDateEdit
      Left = 96
      Top = 48
      Width = 121
      Height = 21
      DataField = 'DTFINAL'
      DataSource = DMSpedVersao.dsSpedVersao
      NumGlyphs = 2
      TabOrder = 4
    end
  end
end
