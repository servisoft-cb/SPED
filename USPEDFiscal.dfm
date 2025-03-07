object frmSPEDFiscal: TfrmSPEDFiscal
  Left = 48
  Top = 11
  Width = 1288
  Height = 704
  Caption = 'Gerar SPED Fiscal    (Vers'#227'o  07/03/2025  1.1.55) '
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
    Width = 1272
    Height = 665
    ActivePage = TS_Gerar_SPED
    ActivePageDefault = TS_Gerar_SPED
    Align = alClient
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    ParentColor = False
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
        1268
        642)
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
        Width = 1239
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
        Width = 1239
        Height = 278
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
        Left = 1043
        Top = 538
        Width = 100
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Gerar TXT Error'
        TabOrder = 2
        OnClick = btnErrorClick
      end
      object btnTXT: TButton
        Left = 1149
        Top = 538
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
        Width = 1268
        Height = 58
        Align = alTop
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 4
        DesignSize = (
          1264
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
          Width = 1264
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
          Width = 125
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          Text = 'ACBrSpedFiscal.txt'
          OnChange = edtFileChange
          OnExit = edtFileChange
        end
        object cbConcomitante: TCheckBox
          Left = 171
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
          Width = -112
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          Text = '2'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 58
        Width = 1268
        Height = 87
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        TabOrder = 5
        object Label4: TLabel
          Left = 1
          Top = 1
          Width = 450
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
        Left = 937
        Top = 538
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
        Width = 1268
        Height = 200
        Align = alTop
        TabOrder = 0
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
          Top = 120
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
        object Label16: TLabel
          Left = 39
          Top = 97
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Nota:'
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
          Width = 316
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME_INTERNO'
          LookupSource = DMSPEDFiscal.dsFilial
          TabOrder = 2
          OnExit = RxDBLookupCombo1Exit
        end
        object cbFinalidade: TComboBox
          Left = 91
          Top = 45
          Width = 316
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
          Top = 112
          Width = 316
          Height = 21
          NumGlyphs = 1
          TabOrder = 6
        end
        object ComboBox1: TComboBox
          Left = 91
          Top = 67
          Width = 238
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 4
          Text = 'Com Movimento'
          Items.Strings = (
            'Com Movimento'
            'Sem Movimento')
        end
        object gbxVendedor: TRzGroupBox
          Left = 413
          Top = 2
          Width = 545
          Height = 61
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
          TabOrder = 7
          VisualStyle = vsGradient
          object Label15: TLabel
            Left = 13
            Top = 18
            Width = 100
            Height = 13
            Alignment = taRightJustify
            Caption = 'Movito do Invent'#225'rio:'
          end
          object Label17: TLabel
            Left = 47
            Top = 45
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt. Invent'#225'rio:'
          end
          object ComboBox2: TComboBox
            Left = 115
            Top = 10
            Width = 424
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
          object DateEdit3: TDateEdit
            Left = 116
            Top = 36
            Width = 91
            Height = 21
            NumGlyphs = 2
            TabOrder = 1
          end
          object ckImobilizado: TCheckBox
            Left = 240
            Top = 38
            Width = 121
            Height = 17
            Caption = 'enviar Imobilizado'
            TabOrder = 2
            Visible = False
          end
          object NxButton1: TNxButton
            Left = 360
            Top = 33
            Width = 41
            Height = 25
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEAC1C1BE
              A19F9C9A98949A9894A1A09CC2C1BEEBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E0DF94
              938E96938FBAB7B5CBC8C7CECBCACECBCACBC8C7BAB7B596938F94938FE1E0DF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
              FEB1B0AD989692CBC8C7D1CECDD0CDCCD0CDCCD1CECDD0CDCCD0CDCCD1CECDD0
              CDCCCBC8C7989692B2B0AEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFEFEFEA3A29EB5B2B0D4D1D0D3D0CFD4D1D0C7B6A6C2AB95C3AC96C2AB
              95C2AB95C8B7A7D3D0CFD3D0CFD4D1D0B5B2B0A4A29FFEFEFEFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFB1B0ADB7B4B2D5D2D2D6D3D3D5D2D2D6D3D3B58B61
              A86D32A86D32A86D32A86D32B68C62D5D2D2D5D2D2D6D3D3D5D2D2B7B4B2B2B1
              AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E0DF9C9B97DAD7D6DAD7D6DAD7D6DA
              D7D6DAD7D6D6D0CBC5AA90A86D32A86D32C5AA90D6D0CBDAD7D6DAD7D6DAD7D6
              DAD7D6DAD7D69C9B97E2E1E0FFFFFFFFFFFFFFFFFFFFFFFF969591D7D5D3DBD9
              D8DBD9D8DCDAD9DBD9D8DCDAD9DBD9D8C8B19BA86D32A86D32C8B19BDCDAD9DB
              D9D8DBD9D8DCDAD9DBD9D8DBD9D8D7D5D3979691FFFFFFFFFFFFFFFFFFEDECEB
              9F9D99E0DDDCE0DDDCE0DDDCE0DDDCE0DDDCE0DDDCE0DDDCCBB49EA86D32A86D
              32CBB49EE0DDDCE0DDDCE0DDDCE0DDDCE0DDDCE0DDDCE0DDDC9F9D99EEEDEDFF
              FFFFFFFFFFC4C3C1CBC9C7E1DFDFE1DFDFE1DFDFE2E0E0E1DFDFE2E0E0E1DFDF
              CCB59FA86D32A86D32CCB59FE2E0E0E1DFDFE1DFDFE2E0E0E1DFDFE1DFDFE1DF
              DFCBC9C7C6C5C3FFFFFFFFFFFFA4A39FE2E0DFE4E2E2E4E2E2E4E2E2E5E3E3E4
              E2E2E5E3E3E4E2E2CEB7A1A86D32A86D32CEB7A1E5E3E3E4E2E2E4E2E2E5E3E3
              E4E2E2E4E2E2E4E2E2E2E0DFA6A4A1FFFFFFFFFFFF9F9D9AE8E6E5E8E6E5E8E6
              E5E9E7E6EBE9E8EDECEBEFEDEDF0EFEFDDCBBABF9367BF9367DDCBB9F0EFEEEF
              EEEDEDECEBEBE9E8E9E7E6E8E6E5E8E6E5E8E6E59F9E9AFFFFFFFFFFFF9F9E9A
              EBE9E8ECEAEAEFEEEDF2F1F0F3F3F2F2F2F1F3F3F2F2F2F1DECCBABD9063BC8F
              62DDCBB9F3F3F2F2F2F1F2F2F1F3F3F2F2F1F0EFEEEDECEAEAEBE9E8A09F9BFF
              FFFFFFFFFFA6A5A1F0EFEEF3F3F2F3F3F2F3F3F2F4F4F3F3F3F2F4F4F3E9E1D8
              D4BAA0BA8B5CB98A5BDDCBB8F4F4F3F3F3F2F3F3F2F4F4F3F3F3F2F3F3F2F3F3
              F2F0EFEEA8A6A3FFFFFFFFFFFFC7C6C4DEDCDBF6F4F4F6F4F4F6F4F4F6F4F4F6
              F4F4F6F4F4D4B89DC49C74C49C74C49C74E3D3C4F6F4F4F6F4F4F6F4F4F6F4F4
              F6F4F4F6F4F4F6F4F4DEDCDBC9C8C6FFFFFFFFFFFFEEEEEDAFAEAAF6F5F4F6F5
              F4F6F5F4F7F6F5F6F5F4F7F6F5F6F5F4F6F5F5F4F2F0F4F1EFF6F5F4F7F6F5F6
              F5F4F6F5F4F7F6F5F6F5F4F6F5F4F6F5F4AFAEAAF0EFEFFFFFFFFFFFFFFFFFFF
              9E9D99F2F2F1F7F7F6F7F7F6F8F8F7F7F7F6F8F8F7F7F7F6E5D8CAB88857B787
              56E5D8CAF8F8F7F7F7F6F7F7F6F8F8F7F7F7F6F7F7F6F2F2F19E9E9AFFFFFFFF
              FFFFFFFFFFFFFFFFE4E4E2B2B1ADFAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9
              C8A37EAF7841AF7841C8A37EFAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9B2B1
              AEE5E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B6B3D6D6D4FAFAFAFBFBFBFA
              FAFAFBFBFBFAFAFAD8BEA5AC733AAB7239D8BEA5FBFBFBFAFAFAFAFAFAFBFBFB
              FAFAFAD6D6D4B8B7B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEACAB
              A8D8D8D6FDFDFCFCFCFBFDFDFCFCFCFBFCFBFAE8D9C9E7D8C8FCFBFAFDFDFCFC
              FCFBFCFCFBFDFDFCD8D8D6ADACA8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEB8B8B4B5B4B1F9F8F8FEFEFEFEFDFDFEFDFDFEFEFEFEFD
              FDFEFDFDFEFEFEFEFDFDF9F8F8B5B4B1B9B8B5FEFEFEFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E4E4A1A09CB6B5B2E7E7E6
              FCFCFCFFFFFFFFFFFFFCFCFCE7E7E6B6B5B2A1A19CE5E5E4FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF0EFEFCACAC7ADABA8AAA9A6AAA9A6ADABA8CBCAC8F0F0EFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 3
            Transparent = True
            OnClick = NxButton1Click
          end
        end
        object RzCheckList1: TRzCheckList
          Left = 966
          Top = 2
          Width = 121
          Height = 129
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
          TabOrder = 12
          OnEnter = RzCheckList1Enter
        end
        object ck0600: TCheckBox
          Left = 544
          Top = 104
          Width = 209
          Height = 17
          Caption = 'Gerar Centro de Custo (Reg. 0600)'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
        object ckICMSH020: TCheckBox
          Left = 544
          Top = 120
          Width = 188
          Height = 17
          Caption = 'Produto Final (H020 ICMS Isento)'
          TabOrder = 10
        end
        object ckImp_BlocoK: TCheckBox
          Left = 741
          Top = 104
          Width = 122
          Height = 17
          Caption = 'Imprimir Bloco K'
          TabOrder = 11
        end
        object NxPanel1: TNxPanel
          Left = 1
          Top = 159
          Width = 1266
          Height = 40
          Align = alBottom
          UseDockManager = False
          ParentBackground = False
          TabOrder = 13
          object btnGerarSped: TNxButton
            Left = 424
            Top = 5
            Width = 195
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
            TabOrder = 0
            Transparent = True
            OnClick = btnGerarSpedClick
          end
          object btnEstoque: TNxButton
            Left = 227
            Top = 5
            Width = 195
            Height = 30
            Caption = 'Estoque'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0E1285A
              9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              C8D1E3285EA55BD3F977DBF426589F707B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFC8D2E52963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
              D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC7FE3FA44AFF1177F
              E41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D6EA2971C15CD5FC7EE3FA
              44AFF1177FE41F63BDC9D6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF7F6F7E7E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551
              C3F47EE3FA44AFEF177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
              F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFFE6C4FFEECDFFF5CC
              C0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2C9DBF1FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF5D56618E7753F2C18FFFCFA9FFD6B3FF
              E6C9FFEDD0FFF2D3FFF8D8FFFCDF97ACA6453B45726374C8C1CBE0EEFAD4E3F5
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC
              91F6BD91FFD8B6FFE8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CD
              C9CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
              DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
              F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FFE7CEFFEDD4FFF2DA
              FFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF706471C4905DDDA479D39A6FF8BF94FFD0ACFFDABCFF
              EBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8E1FFF9DEFFFAD75D525FF0F0F1FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA1
              76E5AC81FDC498FFDCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D
              7179D6D5D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
              D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
              D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FFDABDFFCBA3FFE6D1
              FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFA8A0ACA68053CB9267EBB287FFD9BBFFEADAFFF1E7FF
              DEC5F1B88DFFDBBFFFCCA3FED3AEFFD8B6FFDDC0D3C594796F7CFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC3
              98FFDCC2FFE5D2FFCCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BC
              B8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
              9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
              91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DDA479DBA277E3AA7F
              EAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAB2ABB598867DAD875AC38C5BBC
              8558C28B5DCF9967BA9668958475968F9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
              E4B7AFBA9D91A09F919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            GlyphSpacing = 10
            ParentFont = False
            TabOrder = 1
            Transparent = True
            OnClick = btnEstoqueClick
          end
          object btnVersao: TNxButton
            Left = 30
            Top = 5
            Width = 195
            Height = 30
            Caption = 'Vers'#227'o SPED'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            GlyphSpacing = 10
            ParentFont = False
            TabOrder = 2
            OnClick = btnVersaoClick
          end
        end
        object ComboBox3: TComboBox
          Left = 91
          Top = 89
          Width = 238
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = 'Ambas'
          Items.Strings = (
            'Ambas'
            'Entradas'
            'Saidas')
        end
        object chkResumo: TCheckBox
          Left = 741
          Top = 120
          Width = 122
          Height = 17
          Caption = 'Gravar resumo'
          TabOrder = 14
        end
        object ckGravarPrecoZerado: TCheckBox
          Left = 741
          Top = 136
          Width = 187
          Height = 17
          Caption = 'Bloco H, gravar pre'#231'o zerado'
          TabOrder = 15
        end
        object RzGroupBox1: TRzGroupBox
          Left = 413
          Top = 63
          Width = 545
          Height = 35
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Op'#231#245'es Bloco K  '
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
          TabOrder = 8
          VisualStyle = vsGradient
          object Label18: TLabel
            Left = 4
            Top = 18
            Width = 120
            Height = 13
            Alignment = taRightJustify
            Caption = 'Indicador Tipo de leiaute:'
          end
          object ComboBox4: TComboBox
            Left = 128
            Top = 10
            Width = 295
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 0
            Text = '1 - Leiaute completo'
            Items.Strings = (
              '0 - Leiaute simplificado'
              '1 - Leiaute completo'
              '2 - Leiaute restrito aos saldos de estoque')
          end
        end
        object ckC176: TCheckBox
          Left = 1136
          Top = 32
          Width = 65
          Height = 17
          Caption = 'C176'
          TabOrder = 16
        end
        object NxButton3: TNxButton
          Left = 1128
          Top = 8
          Width = 75
          Caption = 'Configura'
          TabOrder = 17
          OnClick = NxButton3Click
        end
      end
      object RzPageControl1: TRzPageControl
        Left = 0
        Top = 200
        Width = 1268
        Height = 442
        ActivePage = TS_SPED
        ActivePageDefault = TS_SPED
        Align = alClient
        ParentColor = False
        TabIndex = 0
        TabOrder = 1
        FixedDimension = 19
        object TS_SPED: TRzTabSheet
          Caption = 'SPED'
          object mSped: TMemo
            Left = 0
            Top = 0
            Width = 1264
            Height = 419
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
            Width = 1264
            Height = 419
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
            Width = 1264
            Height = 419
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
            Width = 1264
            Height = 385
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
            Width = 1264
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
        object TS_Produto_Sem_Custo: TRzTabSheet
          Caption = 'Produto Sem Custo'
          object SMDBGrid4: TSMDBGrid
            Left = 0
            Top = 41
            Width = 1264
            Height = 378
            Align = alClient
            Ctl3D = False
            DataSource = DMSPEDFiscal.dsmProdSemCusto
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
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'Codigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome_Produto'
                Width = 277
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome_Cor'
                Width = 318
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Qtd'
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1264
            Height = 41
            Align = alTop
            TabOrder = 1
            object NxButton2: TNxButton
              Left = 16
              Top = 10
              Width = 129
              Caption = 'Gerar Arquivo auxiliar'
              TabOrder = 0
              OnClick = NxButton2Click
            end
          end
        end
        object TabSheet1: TRzTabSheet
          Caption = 'TabSheet1'
          object Memo1: TMemo
            Left = 0
            Top = 0
            Width = 1264
            Height = 419
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
        object TabSheet2: TRzTabSheet
          Caption = 'TabSheet2'
          object Memo2: TMemo
            Left = 0
            Top = 0
            Width = 1264
            Height = 419
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
