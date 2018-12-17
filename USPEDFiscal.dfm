object frmSPEDFiscal: TfrmSPEDFiscal
  Left = 179
  Top = 102
  Width = 995
  Height = 474
  Caption = 'Gerar SPED Fiscal    (Vers'#227'o  1.0.3)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RZPageControlDados: TRzPageControl
    Left = 0
    Top = 0
    Width = 979
    Height = 435
    ActivePage = TS_Gerar
    Align = alClient
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TS_Gerar: TRzTabSheet
      Caption = 'Observa'#231#227'o'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 129
        Align = alTop
        TabOrder = 0
        DesignSize = (
          975
          129)
        object Label9: TLabel
          Left = 40
          Top = 16
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Inicial:'
        end
        object Label10: TLabel
          Left = 197
          Top = 16
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Final:'
        end
        object Label11: TLabel
          Left = 65
          Top = 37
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Filial:'
        end
        object Label12: TLabel
          Left = 37
          Top = 58
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Finalidade:'
        end
        object Label13: TLabel
          Left = 6
          Top = 103
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Local do Arquivo:'
        end
        object Label14: TLabel
          Left = 10
          Top = 80
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ind. Movimento:'
        end
        object DateEdit1: TDateEdit
          Left = 91
          Top = 8
          Width = 98
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
          Text = '01/02/2016'
        end
        object DateEdit2: TDateEdit
          Left = 242
          Top = 8
          Width = 98
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
          Text = '29/02/2016'
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 91
          Top = 29
          Width = 366
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMSPEDFiscal.dsFilial
          TabOrder = 2
        end
        object cbFinalidade: TComboBox
          Left = 91
          Top = 50
          Width = 366
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'Remessa do arquivo original'
          Items.Strings = (
            'Remessa do arquivo original'
            'Remessa do arquivo substituto')
        end
        object DirectoryEdit1: TDirectoryEdit
          Left = 91
          Top = 95
          Width = 366
          Height = 21
          NumGlyphs = 1
          TabOrder = 4
          Text = 'C:\A'
        end
        object ComboBox1: TComboBox
          Left = 91
          Top = 72
          Width = 238
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = 'Com Movimento'
          Items.Strings = (
            'Com Movimento'
            'Sem Movimento')
        end
        object gbxVendedor: TRzGroupBox
          Left = 502
          Top = 7
          Width = 442
          Height = 81
          Anchors = [akLeft, akTop, akRight]
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Op'#231#245'es Bloco H '
          Ctl3D = True
          FlatColor = clNavy
          FlatColorAdjustment = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          VisualStyle = vsGradient
          object Label15: TLabel
            Left = 13
            Top = 20
            Width = 100
            Height = 13
            Alignment = taRightJustify
            Caption = 'Movito do Invent'#225'rio:'
          end
          object Label16: TLabel
            Left = 89
            Top = 42
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tipo:'
          end
          object Label17: TLabel
            Left = 47
            Top = 64
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt. Invent'#225'rio:'
          end
          object ComboBox2: TComboBox
            Left = 115
            Top = 12
            Width = 310
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = '01 - No final do per'#237'odo'
            Items.Strings = (
              '01 - No final do per'#237'odo'
              '02 - Na mudan'#231'a de forma de tributa'#231#227'o da mercadoria (ICMS)'
              
                '03 - Na solicita'#231#227'o da baixa cadastral, paralisa'#231#227'o tempor'#225'ria e' +
                ' outras situa'#231#245'es'
              
                '04 - Na altera'#231#227'o de regime de pagamento - condi'#231#227'o do contribui' +
                'nte'
              '05 - Por determina'#231#227'o dos fiscos')
          end
          object ComboBox3: TComboBox
            Left = 115
            Top = 34
            Width = 310
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 4
            TabOrder = 1
            Text = 'Ambos'
            Items.Strings = (
              'Produto'
              'Material'
              'Mterial de Consumo'
              'Semi Acabado'
              'Ambos')
          end
          object DateEdit3: TDateEdit
            Left = 116
            Top = 56
            Width = 98
            Height = 21
            NumGlyphs = 2
            TabOrder = 2
            Text = '29/02/2016'
          end
        end
      end
      object BtnBloco_0: TNxButton
        Left = 51
        Top = 227
        Width = 151
        Height = 30
        Caption = 'Bloco 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 1
        Transparent = True
        Visible = False
        OnClick = BtnBloco_0Click
      end
      object btnBloco_C: TNxButton
        Left = 211
        Top = 227
        Width = 151
        Height = 30
        Caption = 'Bloco C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 2
        Transparent = True
        Visible = False
        OnClick = btnBloco_CClick
      end
      object btnGravar_Txt: TNxButton
        Left = 739
        Top = 299
        Width = 151
        Height = 30
        Caption = 'Gravar Txt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 3
        Transparent = True
        Visible = False
        OnClick = btnGravar_TxtClick
      end
      object btnBloco_D: TNxButton
        Left = 371
        Top = 227
        Width = 151
        Height = 30
        Caption = 'Bloco D'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 4
        Transparent = True
        Visible = False
        OnClick = btnBloco_DClick
      end
      object btnBloco_E: TNxButton
        Left = 531
        Top = 227
        Width = 151
        Height = 30
        Caption = 'Bloco E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 5
        Transparent = True
        Visible = False
      end
      object btnBloco_G: TNxButton
        Left = 699
        Top = 227
        Width = 151
        Height = 30
        Caption = 'Bloco G'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 6
        Transparent = True
        Visible = False
      end
      object btnBloco_H: TNxButton
        Left = 51
        Top = 283
        Width = 151
        Height = 30
        Caption = 'Bloco H'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 7
        Transparent = True
        Visible = False
        OnClick = btnBloco_HClick
      end
      object btnBloco_1: TNxButton
        Left = 211
        Top = 283
        Width = 151
        Height = 30
        Caption = 'Bloco 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 8
        Transparent = True
        Visible = False
      end
      object btnBloco_9: TNxButton
        Left = 379
        Top = 283
        Width = 151
        Height = 30
        Caption = 'Bloco 9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 9
        Transparent = True
        Visible = False
      end
      object btnGerar: TNxButton
        Left = 51
        Top = 147
        Width = 151
        Height = 30
        Caption = 'Bloco H'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 10
        Transparent = True
        OnClick = btnGerarClick
      end
    end
    object TS_Exemplo: TRzTabSheet
      Caption = 'TS_Exemplo'
      DesignSize = (
        975
        412)
      object Label2: TLabel
        Left = 8
        Top = 161
        Width = 65
        Height = 13
        Caption = 'Lista de erros'
        Color = clBtnFace
        ParentColor = False
      end
      object Label3: TLabel
        Left = 8
        Top = 265
        Width = 75
        Height = 13
        Caption = 'Arquivo Gerado'
        Color = clBtnFace
        ParentColor = False
      end
      object Label7: TLabel
        Left = 25
        Top = 499
        Width = 63
        Height = 13
        Caption = 'Buffer Linhas'
        Color = clBtnFace
        ParentColor = False
      end
      object Label8: TLabel
        Left = 130
        Top = 499
        Width = 61
        Height = 13
        Caption = 'Buffer Notas'
        Color = clBtnFace
        ParentColor = False
      end
      object memoError: TMemo
        Left = 8
        Top = 178
        Width = 946
        Height = 83
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object memoTXT: TMemo
        Left = 8
        Top = 283
        Width = 946
        Height = 48
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
        WantReturns = False
        WordWrap = False
      end
      object btnError: TButton
        Left = 750
        Top = 308
        Width = 100
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Gerar TXT Error'
        TabOrder = 2
        OnClick = btnErrorClick
      end
      object btnTXT: TButton
        Left = 856
        Top = 308
        Width = 100
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Gerar TXT'
        TabOrder = 3
        OnClick = btnTXTClick
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 58
        Align = alTop
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 4
        DesignSize = (
          971
          54)
        object Label1: TLabel
          Left = 22
          Top = 14
          Width = 82
          Height = 13
          Caption = 'Nome do Arquivo'
          Color = clBtnFace
          ParentColor = False
        end
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 971
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = '1 - Informe o Nome do Arquivo e m'#233'todo de Gera'#231#227'o'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 654
          Top = 14
          Width = 71
          Height = 13
          Caption = 'Num.Notas (C)'
          Color = clBtnFace
          ParentColor = False
        end
        object edtFile: TEdit
          Left = 22
          Top = 28
          Width = 344
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          Text = 'ACBrSpedFiscal.txt'
          OnChange = edtFileChange
          OnExit = edtFileChange
        end
        object cbConcomitante: TCheckBox
          Left = 390
          Top = 30
          Width = 134
          Height = 19
          Hint = 
            'Grava os Registros a medida que s'#227'o alimentados'#13#10'Economizando me' +
            'm'#243'ria. '#13#10#218'til para evitar erros em arquivos Enormes'
          Anchors = [akTop, akRight]
          Caption = 'Gerar Concomitante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cbConcomitanteClick
        end
        object edNotas: TEdit
          Left = 654
          Top = 29
          Width = 107
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          Text = '2'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 58
        Width = 975
        Height = 87
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        TabOrder = 5
        object Label4: TLabel
          Left = 1
          Top = 1
          Width = 969
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 
            '2 - Clique em cada bot'#227'o dos Blocos e em seguida no bot'#227'o Gerar ' +
            'TXT'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object btnB_0: TButton
          Left = 16
          Top = 51
          Width = 100
          Height = 25
          Caption = 'Registros Bloco 0'
          TabOrder = 1
          OnClick = btnB_0Click
        end
        object btnB_1: TButton
          Left = 635
          Top = 51
          Width = 100
          Height = 25
          Caption = 'Registros Bloco 1'
          Enabled = False
          TabOrder = 7
          OnClick = btnB_1Click
        end
        object btnB_C: TButton
          Left = 118
          Top = 51
          Width = 100
          Height = 25
          Caption = 'Registros Bloco C'
          Enabled = False
          TabOrder = 2
          OnClick = btnB_CClick
        end
        object btnB_D: TButton
          Left = 220
          Top = 51
          Width = 100
          Height = 25
          Caption = 'Registros Bloco D'
          Enabled = False
          TabOrder = 3
          OnClick = btnB_DClick
        end
        object btnB_E: TButton
          Left = 323
          Top = 51
          Width = 100
          Height = 25
          Caption = 'Registros Bloco E'
          Enabled = False
          TabOrder = 4
          OnClick = btnB_EClick
        end
        object btnB_H: TButton
          Left = 531
          Top = 51
          Width = 100
          Height = 25
          Caption = 'Registros Bloco H'
          Enabled = False
          TabOrder = 6
          OnClick = btnB_HClick
        end
        object btnB_G: TButton
          Left = 427
          Top = 51
          Width = 100
          Height = 25
          Caption = 'Registros Bloco G'
          Enabled = False
          TabOrder = 5
          OnClick = btnB_GClick
        end
        object btnB_Completo: TButton
          Left = 16
          Top = 23
          Width = 719
          Height = 25
          Caption = 'Gerar o arquivo do SPED Fiscal completo'
          TabOrder = 0
          OnClick = btnB_CompletoClick
        end
      end
      object btnB_9: TButton
        Left = 644
        Top = 308
        Width = 100
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Gravar Bloco 9'
        Enabled = False
        TabOrder = 6
        OnClick = btnB_9Click
      end
      object ProgressBar1: TProgressBar
        Left = 198
        Top = 155
        Width = 348
        Height = 20
        TabOrder = 7
        Visible = False
      end
      object edBufLinhas: TEdit
        Left = 17
        Top = 514
        Width = 80
        Height = 21
        TabOrder = 8
        Text = '1000'
      end
      object edBufNotas: TEdit
        Left = 122
        Top = 514
        Width = 80
        Height = 21
        Enabled = False
        TabOrder = 9
        Text = '1000'
      end
    end
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = '.\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 44
    Top = 441
  end
end
