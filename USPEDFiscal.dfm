object frmSPEDFiscal: TfrmSPEDFiscal
  Left = 166
  Top = 48
  Width = 1133
  Height = 641
  Caption = 'Gerar SPED Fiscal    (Vers'#227'o  15/02/2022  1.0.26) '
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
    Width = 1125
    Height = 610
    ActivePage = TS_Gerar_SPED
    ActivePageDefault = TS_Gerar_SPED
    Align = alClient
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 2
    TabOrder = 0
    FixedDimension = 19
    object TS_Gerar: TRzTabSheet
      Caption = 'Observa'#231#227'o'
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
        TabOrder = 0
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
        TabOrder = 1
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
        TabOrder = 2
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
        TabOrder = 3
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
        TabOrder = 4
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
        TabOrder = 5
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
        TabOrder = 6
        Transparent = True
        Visible = False
        OnClick = btnBloco_HClick
      end
      object btnBloco_1: TNxButton
        Left = 373
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
        TabOrder = 7
        Transparent = True
        Visible = False
      end
      object btnBloco_9: TNxButton
        Left = 541
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
        TabOrder = 8
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
        TabOrder = 9
        Transparent = True
        OnClick = btnGerarClick
      end
      object btnBloco_K: TNxButton
        Left = 211
        Top = 283
        Width = 151
        Height = 30
        HelpType = htKeyword
        Caption = 'Bloco K'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 10
        Transparent = True
        Visible = False
        OnClick = btnBloco_KClick
      end
      object btnGerar_K: TNxButton
        Left = 211
        Top = 147
        Width = 151
        Height = 30
        Caption = 'Bloco K'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 11
        Transparent = True
        OnClick = btnGerar_KClick
      end
    end
    object TS_Exemplo: TRzTabSheet
      Caption = 'TS_Exemplo'
      DesignSize = (
        1121
        587)
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
        Width = 1084
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
        Width = 1084
        Height = 215
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
        Left = 888
        Top = 475
        Width = 100
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Gerar TXT Error'
        TabOrder = 2
        OnClick = btnErrorClick
      end
      object btnTXT: TButton
        Left = 994
        Top = 475
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
        Width = 1121
        Height = 58
        Align = alTop
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 4
        DesignSize = (
          1117
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
          Width = 1117
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
          Width = 290
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          Text = 'ACBrSpedFiscal.txt'
          OnChange = edtFileChange
          OnExit = edtFileChange
        end
        object cbConcomitante: TCheckBox
          Left = 336
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
          Width = 53
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          Text = '2'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 58
        Width = 1121
        Height = 87
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        TabOrder = 5
        object Label4: TLabel
          Left = 1
          Top = 1
          Width = 1115
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
        Left = 782
        Top = 475
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
    object TS_Gerar_SPED: TRzTabSheet
      Caption = 'SPED'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1121
        Height = 141
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1121
          141)
        object Label9: TLabel
          Left = 40
          Top = 11
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Inicial:'
        end
        object Label10: TLabel
          Left = 197
          Top = 11
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Final:'
        end
        object Label11: TLabel
          Left = 65
          Top = 32
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Filial:'
        end
        object Label12: TLabel
          Left = 37
          Top = 53
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Finalidade:'
        end
        object Label13: TLabel
          Left = 6
          Top = 96
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Local do Arquivo:'
        end
        object Label14: TLabel
          Left = 10
          Top = 75
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ind. Movimento:'
        end
        object DateEdit1: TDateEdit
          Left = 91
          Top = 3
          Width = 93
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
          Text = '01/02/2021'
        end
        object DateEdit2: TDateEdit
          Left = 242
          Top = 3
          Width = 93
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
          Text = '28/02/2021'
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 91
          Top = 24
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
          Top = 45
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
          Top = 88
          Width = 366
          Height = 21
          NumGlyphs = 1
          TabOrder = 4
          Text = 'C:\A'
        end
        object ComboBox1: TComboBox
          Left = 91
          Top = 67
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
          Left = 462
          Top = 7
          Width = 429
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
              '05 - Por determina'#231#227'o dos fiscos'
              
                '06 - Para controle das mercadorias sujeitas ao regime de substit' +
                'ui'#231#227'o tribut'#225'ria')
          end
          object cbTipo: TComboBox
            Left = 115
            Top = 34
            Width = 310
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 1
            Items.Strings = (
              'Produto'
              'Material'
              'Material de Consumo'
              'Semi Acabado'
              'Ambos')
          end
          object DateEdit3: TDateEdit
            Left = 116
            Top = 56
            Width = 92
            Height = 21
            NumGlyphs = 2
            TabOrder = 2
            Text = '31/12/2020'
          end
          object ckImobilizado: TCheckBox
            Left = 240
            Top = 58
            Width = 121
            Height = 17
            Caption = 'enviar Imobilizado'
            TabOrder = 3
            Visible = False
          end
        end
        object RzCheckList1: TRzCheckList
          Left = 904
          Top = 6
          Width = 121
          Height = 131
          Items.Strings = (
            '//SPED Fiscal'
            'Bloco 0'
            'Bloco C'
            'Bloco D'
            'Bloco E'
            'Bloco H'
            'Bloco K')
          Items.ItemEnabled = (
            True
            True
            True
            True
            True
            True
            True)
          Items.ItemState = (
            0
            0
            0
            0
            0
            0
            0)
          Color = clSilver
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          GroupColor = clSilver
          GroupFont.Charset = DEFAULT_CHARSET
          GroupFont.Color = clBlue
          GroupFont.Height = -11
          GroupFont.Name = 'MS Sans Serif'
          GroupFont.Style = [fsBold]
          ItemHeight = 18
          MultiSelect = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object NxButton1: TNxButton
          Left = 754
          Top = 110
          Width = 145
          Height = 30
          Caption = 'Gerar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            18000000000078060000130B0000130B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BED7B786B5A064A1955795965B
            95AB84AAD5C8D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB571AA801171831376902787
            9B3B9BA451A6AA5DAEA25DA89C68A45B215C8E6B8EFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFDEBAD9880C728E177D9B
            3193A54CA4A550A4A44DA2A34BA2A24BA1A448A2A247A1C37CC6AC84B6480E48
            D1C6D2FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFCA90C18602
            719524899E3898A249A1A147A0A0449DA1469FA1469FA1469FA1469FA1459F9E
            409BA747A0CB91CF5D2A61B39CB2FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            D8AED2860072962489983092A1449CA0419A9F4199AA55A59E3D989F419BA041
            99A0419AA0419BA0419B9F3F9A9E3996C57EC65A285FCFC1CFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF8A06779421849127899E3C959D3E949D3D949B3691D8BECF
            9D3D949E3B949D3D949D3D949D3D949D3D949D3D949C3B93972D8DC88ECC480E
            4AFFFFFFFFFFFF000000FFFFFFB15FA790197D8B2782942E899E37919D36919D
            36919C34909A308DFFFFFF9220859D35919D36919D35909D36919D35919F3692
            942C8994338BA97FB48F6A8DFFFFFF000000FFFFFF8D0D7B88277F81277F9A31
            8C9B318D9B318D9A318D9B318D962588C896C2FFFFFF9421859B318D9B318D9B
            318D9B318D9B318D9D318D7D1E79AF69B25C225FFFFFFF000000D8B2D38D187E
            7721787B237B9B2A8A9629889629889629889629889628888F1880FDFFFEA23F
            95922184962988962988962988962988992A8A80237D741B76995F9FD8CBD800
            0000C07AB6821F7B5E195F731C6E991F83941D80941D80941D80941E80931E81
            8E137ABF7BB2F5FDF48F127B941F829621839521839521839821857C1E735C15
            5C8C4292AF89AF000000B35DAB701B6C390D3E74206AA139949F4098A1439BA1
            429A9F3C96972B878E157786046DF1F2ECD8BECF8B087094217D94227D94227D
            982380781C6A3D0C3F7B357D9E659E000000B76CB9701B6F7821739A3F97A751
            A7A44EA4A44EA4A34EA49E419DFFFFFFFFFFFFFEFFFFEFEFE9F4FFF0BD81AA90
            15719621789521779921797618634D134F8828869B5F9C000000C38AC87E227C
            8A257D963A90A54FA5A44DA3A34CA2A44CA29E429EC997C9FFFFFFFEFCFEC693
            C7CA99C9C9A1C89C378D9B368D9E398FA042979B3D958C27808C2182A670A800
            0000D8B4DE8132838F237F95348CA54FA5A34CA2A34CA2A34CA2A34BA29D409C
            FFFFFFFFFFFFB873B69B3B9A9F449EA44EA4A44FA5A44FA4A650A697388F8E26
            7F891D7EBD90BB000000ECDDF3975B9F861D77942A84A755AAA44FA5A44FA5A4
            4FA5A550A59E429FD6B0D6FFFFFFFDFEFD9C3F9DA44EA5A54FA5A54FA5A44FA5
            A654AA942D87912782831277E0CADE000000FFFFFFC899D96D1764962083A855
            ADA95AB1A959B0A959B0A959B1A857AFA859B0FFFFFFFFFFFFD0A5D4A34EAAA9
            59B1A959B0AA5AB1A959B0932080952285831674FFFFFF000000FFFFFFE7D0F6
            8C5B958C1678A03E9CB16EC2AE67BCAE67BCAE67BCAE67BCA658B5E5D1EAFFFF
            FFFFFFFFAC64BCAE65BBAE67BCB16DC2A0429F9622868C147ABC7FB3FFFFFF00
            0000FFFFFFFFFFFFDCBCF16322639A2284B472C9B778CEB576CBB576CBB576CB
            B472CAFFFFFFF9F3FAF8F1F9FFFFFFB26FC9B678CDB575CB962783931F828B12
            78FFFFFFFFFFFF000000FFFFFFFFFFFFF7F0FCD0B0E35E1459A1328FC291E7BD
            8AE1BC88DFBD88DFBC88DFBA84DDB57AD9B67ADAB781DBBC8AE0C192E99F3A92
            962483870171E6CDE3FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF4EBFCCFB0
            E364216095308ACDA2F7CAA1F4C599EFC598EEC598EEC598EEC599EEC8A1F3CB
            A3F4A04299921E7D860072D5ACD0FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFDCBDF18958936B1E63B785C5E3CDFEE3CDFEE1CCFDE3CF
            FEE4D0FFC291D39130838911768B0D7BE5CAE1FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D4F5CA99DA9150977A307B
            8F49909951999443918218778108718E127DBF7AB6FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF1E4F5DCBBE1C792CAB86FB9B76AB0C78DC0E4C8E0FFFFFFFFFFFFFFFFFF
            FFFFFFF2F2F2FFFFFFFFFFFFF2F2F2000000}
          GlyphSpacing = 10
          ParentFont = False
          TabOrder = 8
          OnClick = NxButton1Click
        end
        object NxButton2: TNxButton
          Left = 464
          Top = 110
          Width = 145
          Height = 30
          Caption = 'Vers'#227'o SPED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          GlyphSpacing = 10
          ParentFont = False
          TabOrder = 9
          OnClick = NxButton2Click
        end
        object NxButton3: TNxButton
          Left = 609
          Top = 110
          Width = 145
          Height = 30
          Caption = 'Cons. Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          GlyphSpacing = 10
          ParentFont = False
          TabOrder = 10
          OnClick = NxButton3Click
        end
        object ck0600: TCheckBox
          Left = 8
          Top = 120
          Width = 209
          Height = 17
          Caption = 'Gerar Centro de Custo (Reg. 0600)'
          Checked = True
          State = cbChecked
          TabOrder = 11
        end
        object ckICMSH020: TCheckBox
          Left = 232
          Top = 120
          Width = 188
          Height = 17
          Caption = 'Produto Final (H020 ICMS Isento)'
          TabOrder = 12
        end
        object ckImp_BlocoK: TCheckBox
          Left = 759
          Top = 91
          Width = 122
          Height = 17
          Caption = 'Imprimir Bloco K'
          TabOrder = 13
        end
      end
      object RzPageControl1: TRzPageControl
        Left = 0
        Top = 141
        Width = 1121
        Height = 446
        ActivePage = TS_Resumo
        ActivePageDefault = TS_Resumo
        Align = alClient
        TabIndex = 2
        TabOrder = 1
        FixedDimension = 19
        object TS_SPED: TRzTabSheet
          Caption = 'SPED'
          object mSped: TMemo
            Left = 0
            Top = 0
            Width = 1117
            Height = 423
            TabStop = False
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            WantReturns = False
            WordWrap = False
          end
        end
        object TS_Posse: TRzTabSheet
          Caption = 'Posse Estoque'
          object SMDBGrid1: TSMDBGrid
            Left = 0
            Top = 0
            Width = 1117
            Height = 423
            Align = alClient
            DataSource = DMSPEDFiscal.dsPosseEstoque
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
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
            ColCount = 15
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_PRODUTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILIAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_COR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_COMBINACAO'
                Width = 225
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_PRODUTO'
                Width = 229
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REFERENCIA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PESSOA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TAMANHO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SPED_TIPO_ITEM'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCM_EX'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCM'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_EST'
                Width = 64
                Visible = True
              end>
          end
        end
        object TS_Resumo: TRzTabSheet
          Caption = 'Resumo'
          object SMDBGrid2: TSMDBGrid
            Left = 0
            Top = 0
            Width = 1117
            Height = 423
            Align = alClient
            Ctl3D = False
            DataSource = DMSPEDFiscal.dsmAuxResumo
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Flat = True
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
                Expanded = False
                FieldName = 'Registro'
                Title.Alignment = taCenter
                Title.Color = 16777143
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao_Sped'
                Title.Alignment = taCenter
                Title.Caption = 'Tipo SPED'
                Title.Color = 16777143
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Desc_Posse'
                Title.Alignment = taCenter
                Title.Caption = 'Posse'
                Title.Color = 16777143
                Width = 263
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Qtd'
                Title.Alignment = taCenter
                Title.Color = 16777143
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Vlr_Total'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Total'
                Title.Color = 16777143
                Width = 124
                Visible = True
              end>
          end
        end
        object TS_Bloco_K: TRzTabSheet
          Caption = 'Bloco K'
          object SMDBGrid3: TSMDBGrid
            Left = 0
            Top = 34
            Width = 1117
            Height = 389
            Align = alClient
            Ctl3D = False
            DataSource = DMSPEDFiscal.dsmK200
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Flat = True
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
            ColCount = 8
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'Desc_Posse'
                Title.Alignment = taCenter
                Title.Caption = 'Posse'
                Title.Color = 4227327
                Width = 205
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao_Sped'
                Title.Alignment = taCenter
                Title.Caption = 'Tipo SPED'
                Title.Color = 4227327
                Width = 147
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Cod_Produto'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd. Produto'
                Title.Color = 4227327
                Width = 169
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome_Produto'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Produto'
                Title.Color = 4227327
                Width = 404
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Qtd'
                Title.Alignment = taCenter
                Title.Color = 4227327
                Width = 86
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Cod_Pessoa'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd. Pessoa'
                Title.Color = 4227327
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome_Pessoa'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Pessoa'
                Title.Color = 4227327
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1117
            Height = 34
            Align = alTop
            Color = clSilver
            TabOrder = 1
            object btnImp_Bloco_K: TNxButton
              Left = 7
              Top = 3
              Width = 145
              Height = 30
              Caption = 'Imprimir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              GlyphSpacing = 10
              ParentFont = False
              TabOrder = 0
              OnClick = btnImp_Bloco_KClick
            end
          end
        end
      end
    end
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = '.\'
    Delimitador = '|'
    ReplaceDelimitador = False
    TrimString = True
    CurMascara = '#0.00'
    Left = 44
    Top = 441
  end
end
