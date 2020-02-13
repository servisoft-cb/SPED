object DMSPEDFiscal: TDMSPEDFiscal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 278
  Top = 131
  Height = 551
  Width = 1000
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, VERSAO_LEIAUTE_SPED, IMP_NFE_REF_PROD'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 56
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosVERSAO_LEIAUTE_SPED: TIntegerField
      FieldName = 'VERSAO_LEIAUTE_SPED'
    end
    object qParametrosIMP_NFE_REF_PROD: TStringField
      FieldName = 'IMP_NFE_REF_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 16
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 768
    Top = 16
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 808
    Top = 16
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object cdsFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsFilialID_CONTABILISTA: TIntegerField
      FieldName = 'ID_CONTABILISTA'
    end
    object cdsFilialINSCR_SUFRAMA: TStringField
      FieldName = 'INSCR_SUFRAMA'
      Size = 10
    end
    object cdsFilialSPED_PERFIL: TStringField
      FieldName = 'SPED_PERFIL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSPED_ATIVIDADE: TStringField
      FieldName = 'SPED_ATIVIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsFilialLICENCA_FEPAM: TStringField
      FieldName = 'LICENCA_FEPAM'
      Size = 15
    end
    object cdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object cdsFilialSPED_PERIODO_IPI: TStringField
      FieldName = 'SPED_PERIODO_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSPED_SOMA_IPI_CUSTO: TStringField
      FieldName = 'SPED_SOMA_IPI_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 844
    Top = 16
  end
  object qCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CIDADE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 104
    object qCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object qContabilista: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTABILISTA'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 152
    object qContabilistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qContabilistaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qContabilistaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object qContabilistaCRC: TStringField
      FieldName = 'CRC'
      Size = 15
    end
    object qContabilistaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object qContabilistaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qContabilistaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qContabilistaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qContabilistaNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 10
    end
    object qContabilistaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qContabilistaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object qContabilistaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qContabilistaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qContabilistaDDD_FONE: TStringField
      FieldName = 'DDD_FONE'
      Size = 2
    end
    object qContabilistaFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object qContabilistaDDD_FAX: TStringField
      FieldName = 'DDD_FAX'
      Size = 2
    end
    object qContabilistaFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object qContabilistaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object sdsMovimento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, PRO.unidade UNIDADE_PRODUTO_CAD, PRO.nome NOME_PRODU' +
      'TO_CAD, PRO.cod_barra COD_BARRA_CAD,'#13#10'PRO.sped_tipo_item, NCM.NC' +
      'M, CFOP.CODCFOP, CFOP.NOME NOME_CFOP, PES.usa_tamanho_agrupado_n' +
      'fe, pro.ncm_ex'#13#10'FROM MOVIMENTO M'#13#10'LEFT JOIN PRODUTO PRO'#13#10'ON M.id' +
      '_produto = PRO.ID'#13#10'LEFT JOIN PESSOA PES'#13#10'ON M.id_pessoa = PES.CO' +
      'DIGO'#13#10'LEFT JOIN TAB_NCM NCM'#13#10'ON PRO.ID_NCM = NCM.ID'#13#10'LEFT JOIN T' +
      'AB_CFOP CFOP'#13#10'ON M.ID_CFOP = CFOP.ID'#13#10'WHERE (M.dtentradasaida be' +
      'tween :DT_INICIAL AND :DT_FINAL)'#13#10'  and M.FILIAL = :FILIAL'#13#10'  an' +
      'd ((M.TIPO_REG = '#39'NTS'#39')'#13#10'    or (M.TIPO_REG = '#39'NSE'#39')'#13#10'    or (M.' +
      'TIPO_REG = '#39'NTE'#39')'#13#10'    or (M.TIPO_REG = '#39'CFI'#39'))'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 24
    object sdsMovimentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMovimentoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object sdsMovimentoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsMovimentoTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object sdsMovimentoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsMovimentoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsMovimentoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsMovimentoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsMovimentoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsMovimentoID_NOTAFISCAL: TIntegerField
      FieldName = 'ID_NOTAFISCAL'
    end
    object sdsMovimentoID_NOTASERVICO: TIntegerField
      FieldName = 'ID_NOTASERVICO'
    end
    object sdsMovimentoID_CUPOMFISCAL: TIntegerField
      FieldName = 'ID_CUPOMFISCAL'
    end
    object sdsMovimentoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsMovimentoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsMovimentoID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object sdsMovimentoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsMovimentoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsMovimentoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsMovimentoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsMovimentoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsMovimentoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsMovimentoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsMovimentoVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsMovimentoVLR_ISSQN: TFloatField
      FieldName = 'VLR_ISSQN'
    end
    object sdsMovimentoVLR_IR: TFloatField
      FieldName = 'VLR_IR'
    end
    object sdsMovimentoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsMovimentoVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
    end
    object sdsMovimentoVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsMovimentoVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsMovimentoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsMovimentoVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
    end
    object sdsMovimentoVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsMovimentoVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsMovimentoVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object sdsMovimentoVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsMovimentoBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object sdsMovimentoBASE_ISSQN: TFloatField
      FieldName = 'BASE_ISSQN'
    end
    object sdsMovimentoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsMovimentoBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsMovimentoBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsMovimentoVLR_ISSQN_RETIDO: TFloatField
      FieldName = 'VLR_ISSQN_RETIDO'
    end
    object sdsMovimentoVLR_CSRF: TFloatField
      FieldName = 'VLR_CSRF'
    end
    object sdsMovimentoVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object sdsMovimentoVLR_CUPOMFISCAL: TFloatField
      FieldName = 'VLR_CUPOMFISCAL'
    end
    object sdsMovimentoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoDENEGADA: TStringField
      FieldName = 'DENEGADA'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsMovimentoDTENTRADASAIDA: TDateField
      FieldName = 'DTENTRADASAIDA'
    end
    object sdsMovimentoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsMovimentoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsMovimentoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsMovimentoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsMovimentoPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsMovimentoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsMovimentoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsMovimentoPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object sdsMovimentoMOTIVO_CD: TStringField
      FieldName = 'MOTIVO_CD'
      Size = 200
    end
    object sdsMovimentoTP_SAIDA: TStringField
      FieldName = 'TP_SAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoTP_ENTRADA: TStringField
      FieldName = 'TP_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoTP_SERVICO: TStringField
      FieldName = 'TP_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoTP_CUPOMFISCAL: TStringField
      FieldName = 'TP_CUPOMFISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoNUM_RPS: TIntegerField
      FieldName = 'NUM_RPS'
    end
    object sdsMovimentoNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object sdsMovimentoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsMovimentoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsMovimentoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsMovimentoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoUNIDADE_PRODUTO_CAD: TStringField
      FieldName = 'UNIDADE_PRODUTO_CAD'
      Size = 3
    end
    object sdsMovimentoNOME_PRODUTO_CAD: TStringField
      FieldName = 'NOME_PRODUTO_CAD'
      Size = 100
    end
    object sdsMovimentoCOD_BARRA_CAD: TStringField
      FieldName = 'COD_BARRA_CAD'
      Size = 14
    end
    object sdsMovimentoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object sdsMovimentoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sdsMovimentoCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsMovimentoNOME_CFOP: TStringField
      FieldName = 'NOME_CFOP'
      Size = 50
    end
    object sdsMovimentoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsMovimentoUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
  end
  object dspMovimento: TDataSetProvider
    DataSet = sdsMovimento
    Left = 104
    Top = 24
  end
  object cdsMovimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimento'
    Left = 152
    Top = 24
    object cdsMovimentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMovimentoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsMovimentoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsMovimentoTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsMovimentoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsMovimentoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsMovimentoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsMovimentoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsMovimentoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsMovimentoID_NOTAFISCAL: TIntegerField
      FieldName = 'ID_NOTAFISCAL'
    end
    object cdsMovimentoID_NOTASERVICO: TIntegerField
      FieldName = 'ID_NOTASERVICO'
    end
    object cdsMovimentoID_CUPOMFISCAL: TIntegerField
      FieldName = 'ID_CUPOMFISCAL'
    end
    object cdsMovimentoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsMovimentoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsMovimentoID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsMovimentoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsMovimentoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsMovimentoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsMovimentoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsMovimentoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsMovimentoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsMovimentoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsMovimentoVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsMovimentoVLR_ISSQN: TFloatField
      FieldName = 'VLR_ISSQN'
    end
    object cdsMovimentoVLR_IR: TFloatField
      FieldName = 'VLR_IR'
    end
    object cdsMovimentoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsMovimentoVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
    end
    object cdsMovimentoVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsMovimentoVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsMovimentoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsMovimentoVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
    end
    object cdsMovimentoVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object cdsMovimentoVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object cdsMovimentoVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object cdsMovimentoVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object cdsMovimentoBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object cdsMovimentoBASE_ISSQN: TFloatField
      FieldName = 'BASE_ISSQN'
    end
    object cdsMovimentoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsMovimentoBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsMovimentoBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsMovimentoVLR_ISSQN_RETIDO: TFloatField
      FieldName = 'VLR_ISSQN_RETIDO'
    end
    object cdsMovimentoVLR_CSRF: TFloatField
      FieldName = 'VLR_CSRF'
    end
    object cdsMovimentoVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object cdsMovimentoVLR_CUPOMFISCAL: TFloatField
      FieldName = 'VLR_CUPOMFISCAL'
    end
    object cdsMovimentoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoDENEGADA: TStringField
      FieldName = 'DENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsMovimentoDTENTRADASAIDA: TDateField
      FieldName = 'DTENTRADASAIDA'
    end
    object cdsMovimentoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsMovimentoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsMovimentoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsMovimentoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsMovimentoPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsMovimentoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsMovimentoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsMovimentoPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object cdsMovimentoMOTIVO_CD: TStringField
      FieldName = 'MOTIVO_CD'
      Size = 200
    end
    object cdsMovimentoTP_SAIDA: TStringField
      FieldName = 'TP_SAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoTP_ENTRADA: TStringField
      FieldName = 'TP_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoTP_SERVICO: TStringField
      FieldName = 'TP_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoTP_CUPOMFISCAL: TStringField
      FieldName = 'TP_CUPOMFISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoNUM_RPS: TIntegerField
      FieldName = 'NUM_RPS'
    end
    object cdsMovimentoNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsMovimentoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMovimentoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsMovimentoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsMovimentoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoUNIDADE_PRODUTO_CAD: TStringField
      FieldName = 'UNIDADE_PRODUTO_CAD'
      Size = 3
    end
    object cdsMovimentoNOME_PRODUTO_CAD: TStringField
      FieldName = 'NOME_PRODUTO_CAD'
      Size = 100
    end
    object cdsMovimentoCOD_BARRA_CAD: TStringField
      FieldName = 'COD_BARRA_CAD'
      Size = 14
    end
    object cdsMovimentoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsMovimentoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsMovimentoCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsMovimentoNOME_CFOP: TStringField
      FieldName = 'NOME_CFOP'
      Size = 50
    end
    object cdsMovimentoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsMovimentoUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
  end
  object dsMovimento: TDataSource
    DataSet = cdsMovimento
    Left = 200
    Top = 24
  end
  object qPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT PES.*, PAIS.codpais, PAIS.nome NOME_PAIS, CID.codmunicipi' +
        'o, CID.NOME NOME_CIDADE, CID_ENT.CODMUNICIPIO CODMUNICIPIO_ENT'
      'FROM PESSOA PES'
      'INNER JOIN PAIS'
      'ON PES.ID_PAIS = PAIS.ID'
      'INNER JOIN CIDADE CID'
      'ON PES.id_cidade = CID.ID'
      'LEFT JOIN CIDADE CID_ENT'
      'ON PES.id_cidade_ENT = CID_ENT.ID'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 200
    object qPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object qPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object qPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object qPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object qPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object qPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object qPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object qPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object qPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object qPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object qPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object qPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object qPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object qPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object qPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object qPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object qPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object qPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object qPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object qPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object qPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object qPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object qPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object qPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object qPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object qPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object qPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object qPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object qPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object qPessoaEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object qPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object qPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object qPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object qPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object qPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object qPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object qPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object qPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object qPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object qPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object qPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object qPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object qPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object qPessoaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object qPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object qPessoaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object qPessoaDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object qPessoaPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object qPessoaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object qPessoaCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object qPessoaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object qPessoaINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object qPessoaUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object qPessoaCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
    object qPessoaCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object qPessoaNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
    object qPessoaNOME_PAIS: TStringField
      FieldName = 'NOME_PAIS'
      Size = 60
    end
    object qPessoaCODMUNICIPIO_ENT: TStringField
      FieldName = 'CODMUNICIPIO_ENT'
      Size = 7
    end
  end
  object mUnidade: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Unidade'
    Params = <>
    Left = 888
    Top = 16
    Data = {
      670000009619E0BD010000001800000003000000000003000000670007556E69
      646164650100490000000100055749445448020002000600044E6F6D65010049
      0000000100055749445448020002003C000F4661746F725F436F6E7665727361
      6F08000400000000000000}
    object mUnidadeUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mUnidadeNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object mUnidadeFator_Conversao: TFloatField
      FieldName = 'Fator_Conversao'
    end
  end
  object mProduto: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Cod_Produto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Cod_Barra'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Cod_Anterior'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Tipo_Item'
        DataType = ftInteger
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'EX_IPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COD_SERVICO'
        DataType = ftInteger
      end
      item
        Name = 'PERC_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'NCM_EX'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    IndexFieldNames = 'Cod_Produto'
    Params = <>
    StoreDefs = True
    Left = 888
    Top = 72
    Data = {
      5B0100009619E0BD01000000180000000D0000000000030000005B0102494404
      000100000000000B436F645F50726F6475746F01004900000001000557494454
      48020002003C000754616D616E686F0100490000000100055749445448020002
      000A00044E6F6D65010049000000010005574944544802000200640009436F64
      5F42617272610100490000000100055749445448020002001E000C436F645F41
      6E746572696F720100490000000100055749445448020002003C0007556E6964
      6164650100490000000100055749445448020002000600095469706F5F497465
      6D0400010000000000034E434D01004900000001000557494454480200020008
      000645585F49504901004900000001000557494454480200020003000B434F44
      5F5345525649434F040001000000000009504552435F49434D53080004000000
      0000064E434D5F455801004900000001000557494454480200020002000000}
    object mProdutoID: TIntegerField
      FieldName = 'ID'
    end
    object mProdutoCod_Produto: TStringField
      FieldName = 'Cod_Produto'
      Size = 60
    end
    object mProdutoTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mProdutoNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object mProdutoCod_Barra: TStringField
      FieldName = 'Cod_Barra'
      Size = 30
    end
    object mProdutoCod_Anterior: TStringField
      FieldName = 'Cod_Anterior'
      Size = 60
    end
    object mProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mProdutoTipo_Item: TIntegerField
      FieldName = 'Tipo_Item'
    end
    object mProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object mProdutoEX_IPI: TStringField
      FieldName = 'EX_IPI'
      Size = 3
    end
    object mProdutoCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
    end
    object mProdutoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object mProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
  end
  object mPessoa: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Codigo'
    Params = <>
    Left = 888
    Top = 128
    Data = {
      5D0100009619E0BD01000000180000000C0000000000030000005D0106436F64
      69676F0400010000000000044E6F6D6501004900000001000557494454480200
      0200640008436F645F50616973040001000000000004434E504A010049000000
      0100055749445448020002000E00034350460100490000000100055749445448
      020002000B000E496E7363725F457374616475616C0100490000000100055749
      445448020002000E000D436F645F4D756E69636970696F010049000000010005
      57494454480200020007000753756672616D6101004900000001000557494454
      4802000200090008456E64657265636F01004900000001000557494454480200
      02003C00074E756D5F456E640100490000000100055749445448020002000A00
      0F436F6D706C656D656E746F5F456E6401004900000001000557494454480200
      02003C000642616972726F0100490000000100055749445448020002003C0000
      00}
    object mPessoaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mPessoaNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object mPessoaCod_Pais: TIntegerField
      FieldName = 'Cod_Pais'
    end
    object mPessoaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object mPessoaCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object mPessoaInscr_Estadual: TStringField
      FieldName = 'Inscr_Estadual'
      Size = 14
    end
    object mPessoaCod_Municipio: TStringField
      FieldName = 'Cod_Municipio'
      Size = 7
    end
    object mPessoaSuframa: TStringField
      FieldName = 'Suframa'
      Size = 9
    end
    object mPessoaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object mPessoaNum_End: TStringField
      FieldName = 'Num_End'
      Size = 10
    end
    object mPessoaComplemento_End: TStringField
      FieldName = 'Complemento_End'
      Size = 60
    end
    object mPessoaBairro: TStringField
      FieldName = 'Bairro'
      Size = 60
    end
  end
  object qUnidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM UNIDADE'
      'WHERE UNIDADE = :UNIDADE')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 256
    object qUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object qUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object qUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object sdsAtivoImob: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.ID, PRO.NOME NOME_PRODUTO, PRO.REFERENCIA, PA.tipo_at' +
      'ivo, PA.id_plano_contas,'#13#10'PA.id_centro_custo, PL.codigo COD_PLAN' +
      'O_CONTAS, PL.nome NOME_PLANO, PA.num_parcela_bem,'#13#10'cc.descricao ' +
      'NOME_CENTRO_CUSTO, pa.funcao, pa.id_produto_principal, cc.codigo' +
      ' COD_CENTRO_CUSTO,'#13#10'pa.vida_util, pr.referencia REF_PRINCIPAL'#13#10'F' +
      'ROM PRODUTO PRO'#13#10'INNER JOIN PRODUTO_ATIVO PA'#13#10'ON PRO.id = PA.id'#13 +
      #10'LEFT join produto pr'#13#10'on pa.id_produto_principal = pr.id'#13#10'INNER' +
      ' JOIN PLANO_CONTAS PL'#13#10'ON PA.id_plano_contas = PL.id'#13#10'LEFT JOIN ' +
      'centrocusto CC'#13#10'ON PA.id_centro_custo = CC.ID'#13#10'WHERE PRO.sped_ti' +
      'po_item = '#39'08'#39#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 72
    object sdsAtivoImobID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAtivoImobNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsAtivoImobREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsAtivoImobTIPO_ATIVO: TStringField
      FieldName = 'TIPO_ATIVO'
      Size = 1
    end
    object sdsAtivoImobID_PLANO_CONTAS: TIntegerField
      FieldName = 'ID_PLANO_CONTAS'
    end
    object sdsAtivoImobID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
    end
    object sdsAtivoImobNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Size = 100
    end
    object sdsAtivoImobNUM_PARCELA_BEM: TIntegerField
      FieldName = 'NUM_PARCELA_BEM'
    end
    object sdsAtivoImobNOME_CENTRO_CUSTO: TStringField
      FieldName = 'NOME_CENTRO_CUSTO'
      Size = 50
    end
    object sdsAtivoImobFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 100
    end
    object sdsAtivoImobID_PRODUTO_PRINCIPAL: TIntegerField
      FieldName = 'ID_PRODUTO_PRINCIPAL'
    end
    object sdsAtivoImobCOD_PLANO_CONTAS: TStringField
      FieldName = 'COD_PLANO_CONTAS'
      Size = 60
    end
    object sdsAtivoImobCOD_CENTRO_CUSTO: TStringField
      FieldName = 'COD_CENTRO_CUSTO'
    end
    object sdsAtivoImobVIDA_UTIL: TIntegerField
      FieldName = 'VIDA_UTIL'
    end
    object sdsAtivoImobREF_PRINCIPAL: TStringField
      FieldName = 'REF_PRINCIPAL'
    end
  end
  object dspAtivoImob: TDataSetProvider
    DataSet = sdsAtivoImob
    Left = 104
    Top = 72
  end
  object cdsAtivoImob: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtivoImob'
    Left = 152
    Top = 72
    object cdsAtivoImobID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAtivoImobNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsAtivoImobREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsAtivoImobTIPO_ATIVO: TStringField
      FieldName = 'TIPO_ATIVO'
      Size = 1
    end
    object cdsAtivoImobID_PLANO_CONTAS: TIntegerField
      FieldName = 'ID_PLANO_CONTAS'
    end
    object cdsAtivoImobID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
    end
    object cdsAtivoImobNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Size = 100
    end
    object cdsAtivoImobNUM_PARCELA_BEM: TIntegerField
      FieldName = 'NUM_PARCELA_BEM'
    end
    object cdsAtivoImobNOME_CENTRO_CUSTO: TStringField
      FieldName = 'NOME_CENTRO_CUSTO'
      Size = 50
    end
    object cdsAtivoImobFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 100
    end
    object cdsAtivoImobID_PRODUTO_PRINCIPAL: TIntegerField
      FieldName = 'ID_PRODUTO_PRINCIPAL'
    end
    object cdsAtivoImobCOD_PLANO_CONTAS: TStringField
      FieldName = 'COD_PLANO_CONTAS'
      Size = 60
    end
    object cdsAtivoImobCOD_CENTRO_CUSTO: TStringField
      FieldName = 'COD_CENTRO_CUSTO'
    end
    object cdsAtivoImobVIDA_UTIL: TIntegerField
      FieldName = 'VIDA_UTIL'
    end
    object cdsAtivoImobREF_PRINCIPAL: TStringField
      FieldName = 'REF_PRINCIPAL'
    end
  end
  object dsAtivoImob: TDataSource
    DataSet = cdsAtivoImob
    Left = 200
    Top = 72
  end
  object mCentroCusto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 888
    Top = 184
    Data = {
      790000009619E0BD01000000180000000300000000000300000079000B447441
      6C7465726163616F040006000000000010436F645F43656E74726F5F43757374
      6F0100490000000100055749445448020002003C00114E6F6D655F43656E7472
      6F5F437573746F0100490000000100055749445448020002003C000000}
    object mCentroCustoDtAlteracao: TDateField
      FieldName = 'DtAlteracao'
    end
    object mCentroCustoCod_Centro_Custo: TStringField
      FieldName = 'Cod_Centro_Custo'
      Size = 60
    end
    object mCentroCustoNome_Centro_Custo: TStringField
      FieldName = 'Nome_Centro_Custo'
      Size = 60
    end
  end
  object mNatureza: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Cod_Natureza'
    Params = <>
    Left = 888
    Top = 240
    Data = {
      5D0000009619E0BD0100000018000000020000000000030000005D000C436F64
      5F4E61747572657A610100490000000100055749445448020002000A000D4E6F
      6D655F4E61747572657A61010049000000010005574944544802000200640000
      00}
    object mNaturezaCod_Natureza: TStringField
      FieldName = 'Cod_Natureza'
      Size = 10
    end
    object mNaturezaNome_Natureza: TStringField
      FieldName = 'Nome_Natureza'
      Size = 100
    end
  end
  object sdsPlano_Contas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PLANO_CONTAS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 120
    object sdsPlano_ContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPlano_ContasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object sdsPlano_ContasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsPlano_ContasDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object sdsPlano_ContasNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object sdsPlano_ContasTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPlano_ContasCOD_NATUREZA: TIntegerField
      FieldName = 'COD_NATUREZA'
    end
    object sdsPlano_ContasINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPlano_ContasSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object sdsPlano_ContasDT_INICIO_VALIDADE: TDateField
      FieldName = 'DT_INICIO_VALIDADE'
    end
    object sdsPlano_ContasDT_FINAL_VALIDADE: TDateField
      FieldName = 'DT_FINAL_VALIDADE'
    end
  end
  object dspPlano_Contas: TDataSetProvider
    DataSet = sdsPlano_Contas
    Left = 104
    Top = 120
  end
  object cdsPlano_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlano_Contas'
    Left = 152
    Top = 120
    object cdsPlano_ContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPlano_ContasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsPlano_ContasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPlano_ContasDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsPlano_ContasNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsPlano_ContasTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_ContasCOD_NATUREZA: TIntegerField
      FieldName = 'COD_NATUREZA'
    end
    object cdsPlano_ContasINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_ContasSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object cdsPlano_ContasDT_INICIO_VALIDADE: TDateField
      FieldName = 'DT_INICIO_VALIDADE'
    end
    object cdsPlano_ContasDT_FINAL_VALIDADE: TDateField
      FieldName = 'DT_FINAL_VALIDADE'
    end
  end
  object dsPlano_Contas: TDataSource
    DataSet = cdsPlano_Contas
    Left = 200
    Top = 120
  end
  object sdsCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CENTROCUSTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 169
    object sdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCentroCustoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsCentroCustoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object sdsCentroCustoAPROPRIACAO: TStringField
      FieldName = 'APROPRIACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCentroCustoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object sdsCentroCustoCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object sdsCentroCustoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = sdsCentroCusto
    Left = 104
    Top = 169
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 152
    Top = 169
    object cdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCentroCustoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsCentroCustoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsCentroCustoAPROPRIACAO: TStringField
      FieldName = 'APROPRIACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCentroCustoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsCentroCustoCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object cdsCentroCustoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = cdsCentroCusto
    Left = 200
    Top = 169
  end
  object m0450: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Obs'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 888
    Top = 296
    Data = {
      4D0000009619E0BD0100000018000000020000000000030000004D0006436F64
      69676F0100490000000100055749445448020002000600034F62730100490000
      00010005574944544802000200FA000000}
    object m0450Codigo: TStringField
      FieldName = 'Codigo'
      Size = 6
    end
    object m0450Obs: TStringField
      FieldName = 'Obs'
      Size = 250
    end
  end
  object m0460: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Obs'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 888
    Top = 344
    Data = {
      4D0000009619E0BD0100000018000000020000000000030000004D0006436F64
      69676F0100490000000100055749445448020002000600034F62730100490000
      00010005574944544802000200FA000000}
    object m0460Codigo: TStringField
      FieldName = 'Codigo'
      Size = 6
    end
    object m0460Obs: TStringField
      FieldName = 'Obs'
      Size = 250
    end
  end
  object sdsNotaFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.*'#13#10'FROM NOTAFISCAL N'#13#10'WHERE (((N.dtemissao between :DT_' +
      'INICIAL AND :DT_FINAL) AND (N.tipo_reg = '#39'NTS'#39'))'#13#10'       or ((N.' +
      'dtsaidaentrada between :DT_INICIAL AND :DT_FINAL ) AND (N.tipo_r' +
      'eg = '#39'NTE'#39')))'#13#10'  AND N.FILIAL = :FILIAL'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 17
    object sdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscalTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsNotaFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsNotaFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsNotaFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsNotaFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsNotaFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNotaFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsNotaFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsNotaFiscalVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object sdsNotaFiscalVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
    end
    object sdsNotaFiscalVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsNotaFiscalVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsNotaFiscalPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsNotaFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsNotaFiscalVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsNotaFiscalVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsNotaFiscalVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
    end
    object sdsNotaFiscalBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object sdsNotaFiscalPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object sdsNotaFiscalVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object sdsNotaFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsNotaFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsNotaFiscalVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object sdsNotaFiscalVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
    object sdsNotaFiscalBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsNotaFiscalVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsNotaFiscalPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsNotaFiscalVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsNotaFiscalBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsNotaFiscalVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsNotaFiscalBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
    end
    object sdsNotaFiscalVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
    end
    object sdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
    end
    object sdsNotaFiscalVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
    end
    object sdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
    end
    object sdsNotaFiscalPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object sdsNotaFiscalPERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
    end
    object sdsNotaFiscalQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object sdsNotaFiscalESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object sdsNotaFiscalMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsNotaFiscalNUMEROVOLUME: TStringField
      FieldName = 'NUMEROVOLUME'
      Size = 30
    end
    object sdsNotaFiscalPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsNotaFiscalPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsNotaFiscalPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsNotaFiscalUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object sdsNotaFiscalTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object sdsNotaFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsNotaFiscalID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsNotaFiscalTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object sdsNotaFiscalDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object sdsNotaFiscalHRSAIDAENTRADA: TTimeField
      FieldName = 'HRSAIDAENTRADA'
    end
    object sdsNotaFiscalID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsNotaFiscalLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object sdsNotaFiscalID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object sdsNotaFiscalDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object sdsNotaFiscalID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object sdsNotaFiscalQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object sdsNotaFiscalNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object sdsNotaFiscalNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object sdsNotaFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object sdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object sdsNotaFiscalTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object sdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object sdsNotaFiscalNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object sdsNotaFiscalNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object sdsNotaFiscalNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalNUMNOTACOPIADA: TIntegerField
      FieldName = 'NUMNOTACOPIADA'
    end
    object sdsNotaFiscalSERIECOPIADA: TStringField
      FieldName = 'SERIECOPIADA'
      Size = 3
    end
    object sdsNotaFiscalDTCONTINGENCIA: TDateField
      FieldName = 'DTCONTINGENCIA'
    end
    object sdsNotaFiscalHRCONTINGENCIA: TTimeField
      FieldName = 'HRCONTINGENCIA'
    end
    object sdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object sdsNotaFiscalNFEVERSAOEMISSAO: TStringField
      FieldName = 'NFEVERSAOEMISSAO'
    end
    object sdsNotaFiscalID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object sdsNotaFiscalRNTC: TStringField
      FieldName = 'RNTC'
    end
    object sdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField
      FieldName = 'VAGAOBALSA_IDENTIF'
    end
    object sdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField
      FieldName = 'VAGAOBALSA_TIPOIDENTIF'
      Size = 1
    end
    object sdsNotaFiscalUFEMBEXPORTACAO: TStringField
      FieldName = 'UFEMBEXPORTACAO'
      Size = 2
    end
    object sdsNotaFiscalLOCALEMBEXPORTACAO: TStringField
      FieldName = 'LOCALEMBEXPORTACAO'
      Size = 60
    end
    object sdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField
      FieldName = 'PISCOFINS_SOMAROUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object sdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField
      FieldName = 'GERARDUPL_OUTROSVALORES'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGERARDUPL_FRETE: TStringField
      FieldName = 'GERARDUPL_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGERARDUPL_SEGURO: TStringField
      FieldName = 'GERARDUPL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField
      FieldName = 'INFORMADO_NUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object sdsNotaFiscalDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscalDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object sdsNotaFiscalTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsNotaFiscalSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsNotaFiscalFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsNotaFiscalSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
    end
    object sdsNotaFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsNotaFiscalID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object sdsNotaFiscalCALCULAR_IMP_ITEM: TStringField
      FieldName = 'CALCULAR_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField
      FieldName = 'GRAVOU_DADOSADICIONAIS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object sdsNotaFiscalUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      Size = 1
    end
    object sdsNotaFiscalID_NOTACOPIADA: TIntegerField
      FieldName = 'ID_NOTACOPIADA'
    end
    object sdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsNotaFiscalNOTA_ESTORNO: TStringField
      FieldName = 'NOTA_ESTORNO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Size = 2
    end
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = sdsNotaFiscal
    Left = 392
    Top = 17
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 440
    Top = 17
    object cdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscalTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsNotaFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNotaFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsNotaFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsNotaFiscalVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsNotaFiscalVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
    end
    object cdsNotaFiscalVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsNotaFiscalVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsNotaFiscalPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsNotaFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsNotaFiscalVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsNotaFiscalVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object cdsNotaFiscalVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
    end
    object cdsNotaFiscalBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object cdsNotaFiscalPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsNotaFiscalVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object cdsNotaFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsNotaFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsNotaFiscalVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object cdsNotaFiscalVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
    object cdsNotaFiscalBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsNotaFiscalVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsNotaFiscalPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsNotaFiscalVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object cdsNotaFiscalBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsNotaFiscalVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsNotaFiscalBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
    end
    object cdsNotaFiscalVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
    end
    object cdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
    end
    object cdsNotaFiscalVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object cdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
    end
    object cdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
    end
    object cdsNotaFiscalPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object cdsNotaFiscalPERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
    end
    object cdsNotaFiscalQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object cdsNotaFiscalESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object cdsNotaFiscalMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsNotaFiscalNUMEROVOLUME: TStringField
      FieldName = 'NUMEROVOLUME'
      Size = 30
    end
    object cdsNotaFiscalPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsNotaFiscalPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsNotaFiscalPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsNotaFiscalUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object cdsNotaFiscalTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsNotaFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsNotaFiscalID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsNotaFiscalTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object cdsNotaFiscalDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsNotaFiscalHRSAIDAENTRADA: TTimeField
      FieldName = 'HRSAIDAENTRADA'
    end
    object cdsNotaFiscalID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsNotaFiscalLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object cdsNotaFiscalID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object cdsNotaFiscalDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object cdsNotaFiscalID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsNotaFiscalQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object cdsNotaFiscalNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaFiscalNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsNotaFiscalTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object cdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object cdsNotaFiscalNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsNotaFiscalNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsNotaFiscalNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalNUMNOTACOPIADA: TIntegerField
      FieldName = 'NUMNOTACOPIADA'
    end
    object cdsNotaFiscalSERIECOPIADA: TStringField
      FieldName = 'SERIECOPIADA'
      Size = 3
    end
    object cdsNotaFiscalDTCONTINGENCIA: TDateField
      FieldName = 'DTCONTINGENCIA'
    end
    object cdsNotaFiscalHRCONTINGENCIA: TTimeField
      FieldName = 'HRCONTINGENCIA'
    end
    object cdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object cdsNotaFiscalNFEVERSAOEMISSAO: TStringField
      FieldName = 'NFEVERSAOEMISSAO'
    end
    object cdsNotaFiscalID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object cdsNotaFiscalRNTC: TStringField
      FieldName = 'RNTC'
    end
    object cdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField
      FieldName = 'VAGAOBALSA_IDENTIF'
    end
    object cdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField
      FieldName = 'VAGAOBALSA_TIPOIDENTIF'
      Size = 1
    end
    object cdsNotaFiscalUFEMBEXPORTACAO: TStringField
      FieldName = 'UFEMBEXPORTACAO'
      Size = 2
    end
    object cdsNotaFiscalLOCALEMBEXPORTACAO: TStringField
      FieldName = 'LOCALEMBEXPORTACAO'
      Size = 60
    end
    object cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField
      FieldName = 'PISCOFINS_SOMAROUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object cdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField
      FieldName = 'GERARDUPL_OUTROSVALORES'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGERARDUPL_FRETE: TStringField
      FieldName = 'GERARDUPL_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGERARDUPL_SEGURO: TStringField
      FieldName = 'GERARDUPL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField
      FieldName = 'INFORMADO_NUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object cdsNotaFiscalDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscalDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsNotaFiscalTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsNotaFiscalSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsNotaFiscalFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsNotaFiscalSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
    end
    object cdsNotaFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsNotaFiscalID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsNotaFiscalCALCULAR_IMP_ITEM: TStringField
      FieldName = 'CALCULAR_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField
      FieldName = 'GRAVOU_DADOSADICIONAIS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object cdsNotaFiscalUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      Size = 1
    end
    object cdsNotaFiscalID_NOTACOPIADA: TIntegerField
      FieldName = 'ID_NOTACOPIADA'
    end
    object cdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsNotaFiscalNOTA_ESTORNO: TStringField
      FieldName = 'NOTA_ESTORNO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Size = 2
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 488
    Top = 17
  end
  object sdsNFe_Inutilizadas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.*'#13#10'FROM NFE_INUTILIZACAO N'#13#10'WHERE (N.DATA between :DT_I' +
      'NICIAL AND :DT_FINAL)'#13#10'  AND N.FILIAL = :FILIAL'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 65
    object sdsNFe_InutilizadasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNFe_InutilizadasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNFe_InutilizadasNUMPROTOCOLO: TStringField
      FieldName = 'NUMPROTOCOLO'
      Size = 44
    end
    object sdsNFe_InutilizadasDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsNFe_InutilizadasHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsNFe_InutilizadasMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object sdsNFe_InutilizadasNUMNOTA_INI: TIntegerField
      FieldName = 'NUMNOTA_INI'
    end
    object sdsNFe_InutilizadasNUMNOTA_FIN: TIntegerField
      FieldName = 'NUMNOTA_FIN'
    end
    object sdsNFe_InutilizadasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsNFe_InutilizadasDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsNFe_InutilizadasHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsNFe_InutilizadasMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object sdsNFe_InutilizadasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNFe_InutilizadasANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dspNFe_Inutilizadas: TDataSetProvider
    DataSet = sdsNFe_Inutilizadas
    Left = 392
    Top = 65
  end
  object cdsNFe_Inutilizadas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFe_Inutilizadas'
    Left = 440
    Top = 65
    object cdsNFe_InutilizadasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNFe_InutilizadasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNFe_InutilizadasNUMPROTOCOLO: TStringField
      FieldName = 'NUMPROTOCOLO'
      Size = 44
    end
    object cdsNFe_InutilizadasDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsNFe_InutilizadasHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsNFe_InutilizadasMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object cdsNFe_InutilizadasNUMNOTA_INI: TIntegerField
      FieldName = 'NUMNOTA_INI'
    end
    object cdsNFe_InutilizadasNUMNOTA_FIN: TIntegerField
      FieldName = 'NUMNOTA_FIN'
    end
    object cdsNFe_InutilizadasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsNFe_InutilizadasDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsNFe_InutilizadasHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsNFe_InutilizadasMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsNFe_InutilizadasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNFe_InutilizadasANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dsNFe_Inutilizadas: TDataSource
    DataSet = cdsNFe_Inutilizadas
    Left = 488
    Top = 65
  end
  object sdsNotaFiscal_Ref: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select NR.*, N.dtemissao, N.id_cliente, P.CODIGO COD_PESSOA, N.S' +
      'ERIE SERIE_NFE, N.numnota NUMNOTA_NFE'#13#10', N.dtemissao DTEMISSAO_N' +
      'FE'#13#10'from NOTAFISCAL_REF NR'#13#10'left join NOTAFISCAL N'#13#10'on NR.nfecha' +
      'veacesso_ref = N.nfechaveacesso'#13#10'left join PESSOA P'#13#10'on NR.CNPJ_' +
      'REF = P.CNPJ_CPF'#13#10'WHERE NR.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 113
    object sdsNotaFiscal_RefID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_RefITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_RefTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsNotaFiscal_RefID_NOTAREF: TIntegerField
      FieldName = 'ID_NOTAREF'
    end
    object sdsNotaFiscal_RefNUMNOTA_REF: TIntegerField
      FieldName = 'NUMNOTA_REF'
    end
    object sdsNotaFiscal_RefSERIE_REF: TStringField
      FieldName = 'SERIE_REF'
      Size = 3
    end
    object sdsNotaFiscal_RefUF_REF: TStringField
      FieldName = 'UF_REF'
      Size = 2
    end
    object sdsNotaFiscal_RefANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object sdsNotaFiscal_RefMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object sdsNotaFiscal_RefCNPJ_REF: TStringField
      FieldName = 'CNPJ_REF'
      Size = 18
    end
    object sdsNotaFiscal_RefMODELO_REF: TStringField
      FieldName = 'MODELO_REF'
      Size = 2
    end
    object sdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField
      FieldName = 'NFECHAVEACESSO_REF'
      Size = 44
    end
    object sdsNotaFiscal_RefID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsNotaFiscal_RefDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 15
    end
    object sdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField
      FieldName = 'CUPOM_NUMECF'
    end
    object sdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField
      FieldName = 'CUPOM_NUMCOO'
    end
    object sdsNotaFiscal_RefCUPOM_MODELO: TStringField
      FieldName = 'CUPOM_MODELO'
      Size = 2
    end
    object sdsNotaFiscal_RefINSCESTADUAL_REF: TStringField
      FieldName = 'INSCESTADUAL_REF'
      Size = 14
    end
    object sdsNotaFiscal_RefDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaFiscal_RefID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsNotaFiscal_RefCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object sdsNotaFiscal_RefSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Size = 3
    end
    object sdsNotaFiscal_RefNUMNOTA_NFE: TIntegerField
      FieldName = 'NUMNOTA_NFE'
    end
    object sdsNotaFiscal_RefDTEMISSAO_NFE: TDateField
      FieldName = 'DTEMISSAO_NFE'
    end
  end
  object dspNotaFiscal_Ref: TDataSetProvider
    DataSet = sdsNotaFiscal_Ref
    Left = 392
    Top = 113
  end
  object cdsNotaFiscal_Ref: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Ref'
    Left = 440
    Top = 113
    object cdsNotaFiscal_RefID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_RefITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_RefTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsNotaFiscal_RefID_NOTAREF: TIntegerField
      FieldName = 'ID_NOTAREF'
    end
    object cdsNotaFiscal_RefNUMNOTA_REF: TIntegerField
      FieldName = 'NUMNOTA_REF'
    end
    object cdsNotaFiscal_RefSERIE_REF: TStringField
      FieldName = 'SERIE_REF'
      Size = 3
    end
    object cdsNotaFiscal_RefUF_REF: TStringField
      FieldName = 'UF_REF'
      Size = 2
    end
    object cdsNotaFiscal_RefANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsNotaFiscal_RefMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsNotaFiscal_RefCNPJ_REF: TStringField
      FieldName = 'CNPJ_REF'
      Size = 18
    end
    object cdsNotaFiscal_RefMODELO_REF: TStringField
      FieldName = 'MODELO_REF'
      Size = 2
    end
    object cdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField
      FieldName = 'NFECHAVEACESSO_REF'
      Size = 44
    end
    object cdsNotaFiscal_RefID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsNotaFiscal_RefDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 15
    end
    object cdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField
      FieldName = 'CUPOM_NUMECF'
    end
    object cdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField
      FieldName = 'CUPOM_NUMCOO'
    end
    object cdsNotaFiscal_RefCUPOM_MODELO: TStringField
      FieldName = 'CUPOM_MODELO'
      Size = 2
    end
    object cdsNotaFiscal_RefINSCESTADUAL_REF: TStringField
      FieldName = 'INSCESTADUAL_REF'
      Size = 14
    end
    object cdsNotaFiscal_RefDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscal_RefID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscal_RefCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object cdsNotaFiscal_RefSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Size = 3
    end
    object cdsNotaFiscal_RefNUMNOTA_NFE: TIntegerField
      FieldName = 'NUMNOTA_NFE'
    end
    object cdsNotaFiscal_RefDTEMISSAO_NFE: TDateField
      FieldName = 'DTEMISSAO_NFE'
    end
  end
  object dsNotaFiscal_Ref: TDataSource
    DataSet = cdsNotaFiscal_Ref
    Left = 488
    Top = 113
  end
  object sdsNotaFiscal_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NP.*, TC.descontado, TC.deposito, TC.gerarboleto, TC.cart' +
      'aocredito, TC.cheque, TC.dinheiro'#13#10'FROM NOTAFISCAL_PARC NP'#13#10'LEFT' +
      ' JOIN TIPOCOBRANCA TC'#13#10'ON NP.id_tipocobranca = TC.id'#13#10'WHERE NP.I' +
      'D = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 161
    object sdsNotaFiscal_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object sdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsNotaFiscal_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsNotaFiscal_ParcDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ParcDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ParcGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ParcCARTAOCREDITO: TStringField
      FieldName = 'CARTAOCREDITO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ParcCHEQUE: TStringField
      FieldName = 'CHEQUE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ParcDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object dspNotaFiscal_Parc: TDataSetProvider
    DataSet = sdsNotaFiscal_Parc
    Left = 392
    Top = 161
  end
  object cdsNotaFiscal_Parc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_TIPOCOBRANCA'
    Params = <>
    ProviderName = 'dspNotaFiscal_Parc'
    Left = 440
    Top = 161
    object cdsNotaFiscal_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object cdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsNotaFiscal_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsNotaFiscal_ParcDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ParcDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ParcGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ParcCARTAOCREDITO: TStringField
      FieldName = 'CARTAOCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ParcCHEQUE: TStringField
      FieldName = 'CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ParcDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object dsNotaFiscal_Parc: TDataSource
    DataSet = cdsNotaFiscal_Parc
    Left = 488
    Top = 161
  end
  object sdsNotaFiscal_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.*, CFOP.codcfop, CFOP.nome NOME_CFOP, coalesce(ICMS.cod' +
      '_cst,0) CST_ICMS, coalesce(IPI.cod_ipi,0) CST_IPI,'#13#10'coalesce(PIS' +
      '.codigo,0) CST_PIS, coalesce(COFINS.codigo,0) CST_COFINS, coales' +
      'ce(TIPI.codigo,0) COD_ENQIPI'#13#10'FROM NOTAFISCAL_ITENS I'#13#10'INNER JOI' +
      'N TAB_CFOP CFOP'#13#10'ON I.id_cfop = CFOP.ID'#13#10'LEFT JOIN tab_csticms I' +
      'CMS'#13#10'ON I.id_csticms = ICMS.id'#13#10'LEFT JOIN tab_cstipi IPI'#13#10'ON I.i' +
      'd_cstipi = IPI.id'#13#10'LEFT JOIN tab_pis PIS'#13#10'ON I.id_pis = PIS.id'#13#10 +
      'LEFT JOIN tab_COFINS COFINS'#13#10'ON I.id_cofins = COFINS.id'#13#10'LEFT JO' +
      'IN tab_enqipi TIPI'#13#10'ON I.id_enqipi = TIPI.id'#13#10#13#10'WHERE I.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 209
    object sdsNotaFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsNotaFiscal_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsNotaFiscal_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsNotaFiscal_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsNotaFiscal_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsNotaFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsNotaFiscal_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsNotaFiscal_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsNotaFiscal_ItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsNotaFiscal_ItensID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsNotaFiscal_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsNotaFiscal_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsNotaFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsNotaFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsNotaFiscal_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsNotaFiscal_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsNotaFiscal_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNotaFiscal_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsNotaFiscal_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsNotaFiscal_ItensPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsNotaFiscal_ItensPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsNotaFiscal_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsNotaFiscal_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsNotaFiscal_ItensTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsNotaFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object sdsNotaFiscal_ItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object sdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsNotaFiscal_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsNotaFiscal_ItensQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object sdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object sdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField
      FieldName = 'SOMAR_TRANSF_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object sdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object sdsNotaFiscal_ItensVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
    end
    object sdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField
      FieldName = 'VLR_ICMSOUTRASDESPESAS'
    end
    object sdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object sdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
    end
    object sdsNotaFiscal_ItensQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object sdsNotaFiscal_ItensITEM_DEVOL: TStringField
      FieldName = 'ITEM_DEVOL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsNotaFiscal_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField
      FieldName = 'COD_PRODUTO_FORN'
    end
    object sdsNotaFiscal_ItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsNotaFiscal_ItensIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsNotaFiscal_ItensID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object sdsNotaFiscal_ItensITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object sdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
    end
    object sdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsNotaFiscal_ItensTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object sdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsNotaFiscal_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsNotaFiscal_ItensPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object sdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object sdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object sdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
    end
    object sdsNotaFiscal_ItensCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsNotaFiscal_ItensCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 3
    end
    object sdsNotaFiscal_ItensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 2
    end
    object sdsNotaFiscal_ItensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 2
    end
    object sdsNotaFiscal_ItensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 2
    end
    object sdsNotaFiscal_ItensCOD_ENQIPI: TStringField
      FieldName = 'COD_ENQIPI'
      Size = 3
    end
  end
  object dspNotaFiscal_Itens: TDataSetProvider
    DataSet = sdsNotaFiscal_Itens
    Left = 392
    Top = 209
  end
  object cdsNotaFiscal_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Itens'
    Left = 440
    Top = 209
    object cdsNotaFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsNotaFiscal_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsNotaFiscal_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsNotaFiscal_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsNotaFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaFiscal_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsNotaFiscal_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsNotaFiscal_ItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsNotaFiscal_ItensID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsNotaFiscal_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsNotaFiscal_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsNotaFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsNotaFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsNotaFiscal_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsNotaFiscal_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsNotaFiscal_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNotaFiscal_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsNotaFiscal_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsNotaFiscal_ItensPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsNotaFiscal_ItensPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsNotaFiscal_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsNotaFiscal_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsNotaFiscal_ItensTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsNotaFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object cdsNotaFiscal_ItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object cdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsNotaFiscal_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsNotaFiscal_ItensQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object cdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object cdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField
      FieldName = 'SOMAR_TRANSF_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object cdsNotaFiscal_ItensVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object cdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
    end
    object cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField
      FieldName = 'VLR_ICMSOUTRASDESPESAS'
    end
    object cdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object cdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object cdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
    end
    object cdsNotaFiscal_ItensQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object cdsNotaFiscal_ItensITEM_DEVOL: TStringField
      FieldName = 'ITEM_DEVOL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsNotaFiscal_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField
      FieldName = 'COD_PRODUTO_FORN'
    end
    object cdsNotaFiscal_ItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsNotaFiscal_ItensIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsNotaFiscal_ItensID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object cdsNotaFiscal_ItensITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object cdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
    end
    object cdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsNotaFiscal_ItensTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object cdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsNotaFiscal_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFiscal_ItensPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object cdsNotaFiscal_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object cdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
    end
    object cdsNotaFiscal_ItensCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsNotaFiscal_ItensCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 3
    end
    object cdsNotaFiscal_ItensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 2
    end
    object cdsNotaFiscal_ItensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 2
    end
    object cdsNotaFiscal_ItensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 2
    end
    object cdsNotaFiscal_ItensCOD_ENQIPI: TStringField
      FieldName = 'COD_ENQIPI'
      Size = 3
    end
  end
  object dsNotaFiscal_Itens: TDataSource
    DataSet = cdsNotaFiscal_Itens
    Left = 488
    Top = 209
  end
  object mC190: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CST_ICMS;Cod_CFOP;Perc_ICMS'
    Params = <>
    Left = 888
    Top = 400
    Data = {
      FC0000009619E0BD01000000180000000B000000000003000000FC0008435354
      5F49434D53040001000000000008436F645F43464F5004000100000000000950
      6572635F49434D5308000400000000000C566C725F4F7065726163616F080004
      00000000000D566C725F426173655F49434D53080004000000000008566C725F
      49434D53080004000000000010566C725F426173655F49434D535F5354080004
      00000000000B566C725F49434D535F5354080004000000000010566C725F5265
      647563616F5F49434D53080004000000000007566C725F495049080004000000
      000007436F645F4F425301004900000001000557494454480200020006000000}
    object mC190CST_ICMS: TIntegerField
      FieldName = 'CST_ICMS'
    end
    object mC190Cod_CFOP: TIntegerField
      FieldName = 'Cod_CFOP'
    end
    object mC190Perc_ICMS: TFloatField
      FieldName = 'Perc_ICMS'
    end
    object mC190Vlr_Operacao: TFloatField
      FieldName = 'Vlr_Operacao'
    end
    object mC190Vlr_Base_ICMS: TFloatField
      FieldName = 'Vlr_Base_ICMS'
    end
    object mC190Vlr_ICMS: TFloatField
      FieldName = 'Vlr_ICMS'
    end
    object mC190Vlr_Base_ICMS_ST: TFloatField
      FieldName = 'Vlr_Base_ICMS_ST'
    end
    object mC190Vlr_ICMS_ST: TFloatField
      FieldName = 'Vlr_ICMS_ST'
    end
    object mC190Vlr_Reducao_ICMS: TFloatField
      FieldName = 'Vlr_Reducao_ICMS'
    end
    object mC190Vlr_IPI: TFloatField
      FieldName = 'Vlr_IPI'
    end
    object mC190Cod_OBS: TStringField
      FieldName = 'Cod_OBS'
      Size = 6
    end
  end
  object qSped_Versao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT S.*'
      'FROM sped_versao S'
      'WHERE S.dtfinal = (SELECT MIN(S2.dtfinal) FROM sped_versao S2'
      '                      WHERE S2.dtfinal >= :DATA)')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 312
    object qSped_VersaoDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object qSped_VersaoDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object qSped_VersaoCOD_LEIAUTE: TIntegerField
      FieldName = 'COD_LEIAUTE'
    end
    object qSped_VersaoVERSAO_LEIAUTE: TStringField
      FieldName = 'VERSAO_LEIAUTE'
      Size = 5
    end
  end
  object qUF: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM UF'
      'WHERE UF.UF = :UF')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 376
    object qUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object qUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object qUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object qUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object qUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object qUFPERC_CP: TFloatField
      FieldName = 'PERC_CP'
    end
    object qUFQTD_DIGITOS_IE: TIntegerField
      FieldName = 'QTD_DIGITOS_IE'
    end
  end
  object sdsBalanco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AUX.*'#13#10'FROM ('#13#10'SELECT EM.ID_PRODUTO, EM.TAMANHO, SUM(EM.Q' +
      'TD2) QTD_ESTOQUE, PRO.REFERENCIA,'#13#10'PRO.NOME NOME_PRODUTO, PRO.UN' +
      'IDADE, EM.id_cor, COMB.NOME NOME_COMBINACAO, PRO.TIPO_REG, PRO.s' +
      'ped_tipo_item,'#13#10' (select SUM(ENT.QTD * ENT.VLR_UNITARIO) VLR_ENT' +
      'RADA '#13#10'  FROM estoque_mov ENT'#13#10'  WHERE ENT.tipo_es = '#39'E'#39#13#10'    AN' +
      'D ENT.gerar_custo = '#39'S'#39#13#10'    AND ENT.ID_PRODUTO = EM.ID_PRODUTO'#13 +
      #10'    AND ENT.tamanho = EM.TAMANHO'#13#10'    AND ENT.FILIAL = :FILIAL'#13 +
      #10'    AND ENT.DTMOVIMENTO <= :DTMOVIMENTO) VLR_ENTRADA,'#13#10' (select' +
      ' SUM(ENT.QTD) QTD_ENTRADA'#13#10'    FROM estoque_mov ENT'#13#10'     WHERE ' +
      'ENT.tipo_es = '#39'E'#39#13#10'       AND ENT.gerar_custo = '#39'S'#39#13#10'       AND ' +
      'ENT.ID_PRODUTO = EM.ID_PRODUTO'#13#10'       AND ENT.tamanho = EM.TAMA' +
      'NHO'#13#10'       AND ENT.FILIAL = :FILIAL'#13#10'       AND ENT.DTMOVIMENTO' +
      ' <= :DTMOVIMENTO) QTD_ENTRADA,'#13#10'SUM('#13#10'  CASE'#13#10'    WHEN coalesce(' +
      'EM.perc_ipi,0) > 0 and EM.tipo_es = '#39'E'#39' THEN ROUND(((EM.vlr_unit' +
      'ario * EM.perc_ipi / 100) * EM.qtd),3)'#13#10'    ELSE 0'#13#10'    END) VLR' +
      '_IPI'#13#10#13#10' FROM ESTOQUE_MOV EM'#13#10' INNER JOIN PRODUTO PRO'#13#10' ON EM.ID' +
      '_PRODUTO = PRO.ID'#13#10' LEFT JOIN COMBINACAO COMB'#13#10' ON EM.ID_COR = C' +
      'OMB.ID'#13#10' WHERE EM.FILIAL = :FILIAL'#13#10'   AND EM.DTMOVIMENTO <= :DT' +
      'MOVIMENTO'#13#10'   AND PRO.INATIVO = '#39'N'#39#13#10'   AND PRO.ESTOQUE = '#39'S'#39#13#10'G' +
      'ROUP BY EM.ID_PRODUTO, EM.TAMANHO, PRO.REFERENCIA, PRO.NOME, PRO' +
      '.UNIDADE, EM.id_cor, COMB.NOME, PRO.TIPO_REG, PRO.sped_tipo_item' +
      ')'#13#10'AUX'#13#10'WHERE QTD_ESTOQUE > 0'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 328
  end
  object dspBalanco: TDataSetProvider
    DataSet = sdsBalanco
    Left = 520
    Top = 328
  end
  object cdsBalanco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_PRODUTO'
    Params = <>
    ProviderName = 'dspBalanco'
    OnCalcFields = cdsBalancoCalcFields
    Left = 560
    Top = 328
    object cdsBalancoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsBalancoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsBalancoQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
      DisplayFormat = '0.000##'
    end
    object cdsBalancoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsBalancoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsBalancoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsBalancoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.000##'
    end
    object cdsBalancoQTD_ENTRADA: TFloatField
      FieldName = 'QTD_ENTRADA'
      DisplayFormat = '0.000##'
    end
    object cdsBalancoclPreco_Medio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPreco_Medio'
      DisplayFormat = '0.000##'
      Calculated = True
    end
    object cdsBalancoclVlr_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlr_Total'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsBalancoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsBalancoNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsBalancoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsBalancoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsBalancoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsBalancoclDesc_Tipo_Sped: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDesc_Tipo_Sped'
      Size = 30
      Calculated = True
    end
  end
  object dsBalanco: TDataSource
    DataSet = cdsBalanco
    Left = 600
    Top = 328
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.ID, P.REFERENCIA, P.NOME, P.cod_barra, P.sped_tipo_item' +
        ', P.ncm_ex, n.ncm,'
      'p.unidade'
      'from produto p'
      'inner join tab_ncm n'
      'on p.id_ncm = n.id'
      'where p.id = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 432
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object qProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object qProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object qProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object sdsPosseEstoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select aux.*,'#13#10'CASE'#13#10'  WHEN TIPO_EST = '#39'00'#39' THEN '#39'Pr'#243'prio'#39#13#10'  WH' +
      'EN TIPO_EST = '#39'1E'#39' THEN '#39'Em Terceiro'#39#13#10'  WHEN TIPO_EST = '#39'22'#39' TH' +
      'EN '#39'De Terceiro'#39#13#10'ELSE '#39#39#13#10'end DESC_TIPO_EST'#13#10#13#10'from('#13#10'SELECT EM' +
      '.id_produto, EM.filial, EM.ID_COR, sum(em.qtd2) QTD, C.NOME NOME' +
      '_COMBINACAO,'#13#10'P.NOME NOME_PRODUTO, P.REFERENCIA, 0 ID_PESSOA, '#39'0' +
      '0'#39' TIPO_EST, EM.TAMANHO,'#13#10'P.unidade, P.sped_tipo_item, P.ncm_ex,' +
      ' NCM.ncm, '#39#39' NOME_TERCEIRO'#13#10'FROM ESTOQUE_MOV EM'#13#10'INNER JOIN PROD' +
      'UTO P'#13#10'ON EM.ID_PRODUTO = P.ID'#13#10'LEFT JOIN TAB_NCM NCM'#13#10'ON P.ID_N' +
      'CM = NCM.ID'#13#10'LEFT JOIN operacao_nota ONOTA'#13#10'ON EM.ID_OPERACAO = ' +
      'ONOTA.ID'#13#10'LEFT JOIN COMBINACAO C'#13#10'ON EM.ID_COR = C.ID'#13#10'WHERE EM.' +
      'FILIAL = :FILIAL'#13#10'  AND P.POSSE_MATERIAL = '#39'E'#39#13#10'  AND P.INATIVO ' +
      '= '#39'N'#39#13#10'  AND ((P.SPED_TIPO_ITEM = '#39'00'#39')'#13#10'     or (P.SPED_TIPO_IT' +
      'EM = '#39'01'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'02'#39')'#13#10'     or (P.SPED_T' +
      'IPO_ITEM = '#39'03'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'04'#39')'#13#10'     or (P.' +
      'SPED_TIPO_ITEM = '#39'05'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'06'#39')'#13#10'     ' +
      'or (P.SPED_TIPO_ITEM = '#39'10'#39'))'#13#10'  AND EM.DTMOVIMENTO <= :DTMOVIME' +
      'NTO'#13#10'GROUP BY EM.id_produto, EM.filial, EM.ID_COR, C.NOME,'#13#10'P.NO' +
      'ME, P.REFERENCIA, ID_PESSOA, EM.TAMANHO,'#13#10'P.unidade, P.sped_tipo' +
      '_item, P.ncm_ex, NCM.ncm, NOME_TERCEIRO'#13#10#13#10'UNION'#13#10#13#10'SELECT ET.id' +
      '_produto, ET.filial, ET.id_cor, (sum(et.qtdrestante)) QTD, et.no' +
      'me_combinacao,'#13#10'et.NOME_PRODUTO, et.REFERENCIA, et.id_terceiro I' +
      'D_PESSOA , '#39'1E'#39' TIPO_EST, et.tamanho,'#13#10'et.unidade, et.sped_tipo_' +
      'item, p.ncm_ex, NCM.ncm, ET.nome_terceiro'#13#10'FROM vestoque_em_terc' +
      ' ET'#13#10'INNER JOIN PRODUTO P'#13#10'ON et.ID_PRODUTO = P.ID'#13#10'LEFT JOIN TA' +
      'B_NCM NCM'#13#10'ON P.ID_NCM = NCM.ID'#13#10'WHERE et.FILIAL = :FILIAL'#13#10'  AN' +
      'D ((et.SPED_TIPO_ITEM = '#39'00'#39')'#13#10'     or (et.SPED_TIPO_ITEM = '#39'01'#39 +
      ')'#13#10'     or (et.SPED_TIPO_ITEM = '#39'02'#39')'#13#10'     or (et.SPED_TIPO_ITE' +
      'M = '#39'03'#39')'#13#10'     or (et.SPED_TIPO_ITEM = '#39'04'#39')'#13#10'     or (et.SPED_' +
      'TIPO_ITEM = '#39'05'#39')'#13#10'     or (et.SPED_TIPO_ITEM = '#39'06'#39')'#13#10'     or (' +
      'et.SPED_TIPO_ITEM = '#39'10'#39'))'#13#10'  AND et.data <= :DTMOVIMENTO'#13#10'GROUP' +
      ' BY et.id_produto, et.filial, et.ID_COR, et.nome_combinacao,'#13#10'et' +
      '.nome_produto, et.referencia, et.id_terceiro, et.tamanho,'#13#10'et.un' +
      'idade, et.sped_tipo_item, P.ncm_ex, NCM.ncm, ET.nome_terceiro'#13#10#13 +
      #10'UNION'#13#10#13#10'SELECT DT.id_produto, DT.filial, DT.ID_COR, sum(DT.qtd' +
      'restante) QTD, DT.NOME_COMBINACAO,'#13#10'DT.NOME_PRODUTO, DT.REFERENC' +
      'IA, DT.id_terceiro ID_PESSOA , '#39'22'#39' TIPO_EST, DT.TAMANHO,'#13#10'DT.un' +
      'idade, DT.sped_tipo_item, P.ncm_ex, NCM.ncm, DT.nome_terceiro'#13#10'F' +
      'ROM vestoque_de_terc DT'#13#10'INNER JOIN PRODUTO P'#13#10'ON DT.ID_PRODUTO ' +
      '= P.ID'#13#10'LEFT JOIN TAB_NCM NCM'#13#10'ON P.ID_NCM = NCM.ID'#13#10'WHERE DT.FI' +
      'LIAL = :FILIAL'#13#10'  AND DT.data <= :DTMOVIMENTO'#13#10'  AND ((DT.SPED_T' +
      'IPO_ITEM = '#39'00'#39')'#13#10'     or (DT.SPED_TIPO_ITEM = '#39'01'#39')'#13#10'     or (D' +
      'T.SPED_TIPO_ITEM = '#39'02'#39')'#13#10'     or (DT.SPED_TIPO_ITEM = '#39'03'#39')'#13#10'  ' +
      '   or (DT.SPED_TIPO_ITEM = '#39'04'#39')'#13#10'     or (DT.SPED_TIPO_ITEM = '#39 +
      '05'#39')'#13#10'     or (DT.SPED_TIPO_ITEM = '#39'06'#39')'#13#10'     or (DT.SPED_TIPO_' +
      'ITEM = '#39'10'#39'))'#13#10'GROUP BY DT.id_produto, DT.filial, DT.ID_COR, DT.' +
      'nome_combinacao,'#13#10'DT.nome_produto, DT.REFERENCIA, DT.id_terceiro' +
      ', DT.TAMANHO,'#13#10'DT.unidade, DT.sped_tipo_item, P.ncm_ex, NCM.ncm,' +
      ' DT.nome_terceiro'#13#10') aux'#13#10'where aux.qtd > 0'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 376
  end
  object dspPosseEstoque: TDataSetProvider
    DataSet = sdsPosseEstoque
    Left = 520
    Top = 376
  end
  object cdsPosseEstoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'TIPO_EST;ID_PRODUTO;ID_COR'
    Params = <>
    ProviderName = 'dspPosseEstoque'
    OnCalcFields = cdsBalancoCalcFields
    Left = 560
    Top = 376
    object cdsPosseEstoqueID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPosseEstoqueFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPosseEstoqueID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsPosseEstoqueQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPosseEstoqueNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsPosseEstoqueNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPosseEstoqueREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPosseEstoqueID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsPosseEstoqueTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPosseEstoqueUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPosseEstoqueSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsPosseEstoqueNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object cdsPosseEstoqueNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsPosseEstoqueTIPO_EST: TStringField
      FieldName = 'TIPO_EST'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsPosseEstoqueNOME_TERCEIRO: TStringField
      FieldName = 'NOME_TERCEIRO'
      Size = 60
    end
    object cdsPosseEstoqueDESC_TIPO_EST: TStringField
      FieldName = 'DESC_TIPO_EST'
      Required = True
      FixedChar = True
      Size = 11
    end
  end
  object dsPosseEstoque: TDataSource
    DataSet = cdsPosseEstoque
    Left = 600
    Top = 376
  end
  object sdsIPI: TSQLDataSet
    CommandText = 
      'SELECT CFOP.CODCFOP, IPI.COD_IPI, SUM(I.vlr_total + coalesce(I.v' +
      'lr_frete,0)) VLR_TOTAL,'#13#10'SUM(I.BASE_IPI) BASE_IPI, SUM(I.VLR_IPI' +
      ') VLR_IPI'#13#10'FROM NOTAFISCAL N'#13#10'INNER JOIN NOTAFISCAL_ITENS I'#13#10'ON ' +
      'N.ID = I.ID'#13#10'INNER JOIN TAB_CFOP CFOP'#13#10'ON I.ID_CFOP = CFOP.ID'#13#10'I' +
      'NNER JOIN tab_cstipi IPI'#13#10'ON I.ID_CSTIPI = IPI.ID'#13#10'WHERE N.DTEMI' +
      'SSAO BETWEEN :DATA1 AND :DATA2'#13#10'  AND N.FILIAL = :FILIAL'#13#10'  AND ' +
      'N.TIPO_REG = '#39'NTS'#39#13#10'GROUP BY CFOP.CODCFOP, IPI.COD_IPI'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 224
  end
  object dspIPI: TDataSetProvider
    DataSet = sdsIPI
    Left = 104
    Top = 224
  end
  object cdsIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIPI'
    Left = 144
    Top = 224
    object cdsIPICODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsIPICOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsIPIVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsIPIBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object cdsIPIVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
  end
  object dsIPI: TDataSource
    DataSet = cdsIPI
    Left = 184
    Top = 224
  end
  object sdsPosseEstoque_NaoApagar: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select aux.*'#13#10'from('#13#10'SELECT EM.id_produto, EM.filial, EM.ID_COR,' +
      ' sum(em.qtd2) QTD, C.NOME NOME_COMBINACAO,'#13#10'P.NOME NOME_PRODUTO,' +
      ' P.REFERENCIA, 0 ID_PESSOA, '#39'00'#39' TIPO_EST, EM.TAMANHO,'#13#10'P.unidad' +
      'e, P.sped_tipo_item, P.ncm_ex, NCM.ncm'#13#10'FROM ESTOQUE_MOV EM'#13#10'INN' +
      'ER JOIN PRODUTO P'#13#10'ON EM.ID_PRODUTO = P.ID'#13#10'LEFT JOIN TAB_NCM NC' +
      'M'#13#10'ON P.ID_NCM = NCM.ID'#13#10'LEFT JOIN operacao_nota ONOTA'#13#10'ON EM.ID' +
      '_OPERACAO = ONOTA.ID'#13#10'LEFT JOIN COMBINACAO C'#13#10'ON EM.ID_COR = C.I' +
      'D'#13#10'WHERE EM.FILIAL = :FILIAL'#13#10'  AND P.POSSE_MATERIAL = '#39'E'#39#13#10'  AN' +
      'D P.INATIVO = '#39'N'#39#13#10'  AND ((P.SPED_TIPO_ITEM = '#39'00'#39')'#13#10'     or (P.' +
      'SPED_TIPO_ITEM = '#39'01'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'02'#39')'#13#10'     ' +
      'or (P.SPED_TIPO_ITEM = '#39'03'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'04'#39')'#13 +
      #10'     or (P.SPED_TIPO_ITEM = '#39'05'#39')'#13#10'     or (P.SPED_TIPO_ITEM = ' +
      #39'06'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'10'#39'))'#13#10'  AND EM.DTMOVIMENTO ' +
      '<= :DTMOVIMENTO'#13#10'  --AND coalesce(ONOTA.estoque_em_terceiro,'#39'N'#39')' +
      ' = '#39'S'#39#13#10'GROUP BY EM.id_produto, EM.filial, EM.ID_COR, C.NOME,'#13#10'P' +
      '.NOME, P.REFERENCIA, ID_PESSOA, EM.TAMANHO,'#13#10'P.unidade, P.sped_t' +
      'ipo_item, P.ncm_ex, NCM.ncm'#13#10#13#10'UNION'#13#10#13#10'SELECT EM.id_produto, EM' +
      '.filial, EM.ID_COR, (sum(em.qtd2) * -1) QTD, C.NOME NOME_COMBINA' +
      'CAO,'#13#10'P.NOME NOME_PRODUTO, P.REFERENCIA, EM.ID_PESSOA , '#39'1E'#39' TIP' +
      'O_EST, EM.TAMANHO,'#13#10'P.unidade, P.sped_tipo_item, P.ncm_ex, NCM.n' +
      'cm'#13#10'FROM ESTOQUE_MOV EM'#13#10'INNER JOIN PRODUTO P'#13#10'ON EM.ID_PRODUTO ' +
      '= P.ID'#13#10'LEFT JOIN TAB_NCM NCM'#13#10'ON P.ID_NCM = NCM.ID'#13#10'LEFT JOIN o' +
      'peracao_nota ONOTA'#13#10'ON EM.ID_OPERACAO = ONOTA.ID'#13#10'LEFT JOIN COMB' +
      'INACAO C'#13#10'ON EM.ID_COR = C.ID'#13#10'WHERE EM.FILIAL = :FILIAL'#13#10'  AND ' +
      'P.INATIVO = '#39'N'#39#13#10'  AND ((P.SPED_TIPO_ITEM = '#39'00'#39')'#13#10'     or (P.SP' +
      'ED_TIPO_ITEM = '#39'01'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'02'#39')'#13#10'     or' +
      ' (P.SPED_TIPO_ITEM = '#39'03'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'04'#39')'#13#10' ' +
      '    or (P.SPED_TIPO_ITEM = '#39'05'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'0' +
      '6'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'10'#39'))'#13#10'  AND coalesce(P.POSSE_' +
      'MATERIAL,'#39'E'#39') = '#39'E'#39#13#10'  AND (EM.TIPO_MOV = '#39'NTS'#39' or  EM.TIPO_MOV ' +
      '= '#39'NTE'#39')'#13#10'  AND EM.DTMOVIMENTO <= :DTMOVIMENTO'#13#10'  AND coalesce(O' +
      'NOTA.estoque_em_terceiro,'#39'N'#39') = '#39'S'#39#13#10'GROUP BY EM.id_produto, EM.' +
      'filial, EM.ID_COR, C.NOME,'#13#10'P.NOME, P.REFERENCIA, EM.ID_PESSOA, ' +
      'EM.TAMANHO,'#13#10'P.unidade, P.sped_tipo_item, P.ncm_ex, NCM.ncm'#13#10#13#10'U' +
      'NION'#13#10#13#10'SELECT MOV.id_produto, MOV.filial, MOV.ID_COR,'#13#10'SUM(CASE' +
      #13#10'  WHEN MOV.TIPO_ES = '#39'E'#39' THEN MOV.qtd * -1'#13#10'  WHEN MOV.TIPO_ES' +
      ' = '#39'S'#39' THEN MOV.qtd '#13#10'  END) QTD'#13#10' , C.NOME NOME_COMBINACAO,'#13#10'P.' +
      'NOME NOME_PRODUTO, P.REFERENCIA, MOV.ID_PESSOA , '#39'1M'#39' TIPO_EST, ' +
      'MOV.TAMANHO,'#13#10'P.unidade, P.sped_tipo_item, P.ncm_ex, NCM.ncm'#13#10'FR' +
      'OM MOVIMENTO MOV'#13#10'INNER JOIN PRODUTO P'#13#10'ON MOV.ID_PRODUTO = P.ID' +
      #13#10'LEFT JOIN TAB_NCM NCM'#13#10'ON P.ID_NCM = NCM.ID'#13#10'LEFT JOIN COMBINA' +
      'CAO C'#13#10'ON MOV.ID_COR = C.ID'#13#10'left join tab_cfop CFOP'#13#10'ON MOV.ID_' +
      'CFOP = CFOP.ID'#13#10'WHERE MOV.FILIAL = :FILIAL'#13#10'  AND MOV.dtentradas' +
      'aida <= :DTMOVIMENTO'#13#10'  AND MOV.CANCELADO = '#39'N'#39#13#10'  AND MOV.DENEG' +
      'ADA = '#39'N'#39#13#10'  AND CFOP.beneficiamento = '#39'S'#39#13#10'  AND P.POSSE_MATERI' +
      'AL = '#39'E'#39#13#10'  AND P.INATIVO = '#39'N'#39#13#10'  AND ((P.SPED_TIPO_ITEM = '#39'00'#39 +
      ')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'01'#39')'#13#10'     or (P.SPED_TIPO_ITEM ' +
      '= '#39'02'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'03'#39')'#13#10'     or (P.SPED_TIPO' +
      '_ITEM = '#39'04'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'05'#39')'#13#10'     or (P.SPE' +
      'D_TIPO_ITEM = '#39'06'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'10'#39'))'#13#10'GROUP B' +
      'Y MOV.id_produto, MOV.filial, MOV.ID_COR, C.NOME,'#13#10'P.NOME, P.REF' +
      'ERENCIA, MOV.ID_PESSOA, MOV.TAMANHO,'#13#10'P.unidade, P.sped_tipo_ite' +
      'm, P.ncm_ex, NCM.ncm'#13#10#13#10'UNION'#13#10#13#10'SELECT EM.id_produto, EM.filial' +
      ', EM.ID_COR, sum(em.qtd2) QTD, C.NOME NOME_COMBINACAO,'#13#10'P.NOME N' +
      'OME_PRODUTO, P.REFERENCIA, EM.ID_PESSOA , '#39'22'#39' TIPO_EST, EM.TAMA' +
      'NHO,'#13#10'P.unidade, P.sped_tipo_item, P.ncm_ex, NCM.ncm'#13#10'FROM ESTOQ' +
      'UE_MOV EM'#13#10'INNER JOIN PRODUTO P'#13#10'ON EM.ID_PRODUTO = P.ID'#13#10'LEFT J' +
      'OIN TAB_NCM NCM'#13#10'ON P.ID_NCM = NCM.ID'#13#10'LEFT JOIN operacao_nota O' +
      'NOTA'#13#10'ON EM.ID_OPERACAO = ONOTA.ID'#13#10'LEFT JOIN COMBINACAO C'#13#10'ON E' +
      'M.ID_COR = C.ID'#13#10'WHERE EM.FILIAL = :FILIAL'#13#10'  AND P.POSSE_MATERI' +
      'AL = '#39'T'#39#13#10'  AND EM.DTMOVIMENTO <= :DTMOVIMENTO'#13#10'  AND P.INATIVO ' +
      '= '#39'N'#39#13#10'  AND ((P.SPED_TIPO_ITEM = '#39'00'#39')'#13#10'     or (P.SPED_TIPO_IT' +
      'EM = '#39'01'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'02'#39')'#13#10'     or (P.SPED_T' +
      'IPO_ITEM = '#39'03'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'04'#39')'#13#10'     or (P.' +
      'SPED_TIPO_ITEM = '#39'05'#39')'#13#10'     or (P.SPED_TIPO_ITEM = '#39'06'#39')'#13#10'     ' +
      'or (P.SPED_TIPO_ITEM = '#39'10'#39'))'#13#10'  --AND ((EM.TIPO_MOV = '#39'NTS'#39' or ' +
      ' EM.TIPO_MOV = '#39'NTE'#39')'#13#10'  --AND coalesce(ONOTA.estoque_de_terceir' +
      'o,'#39'N'#39') = '#39'S'#39')'#13#10'GROUP BY EM.id_produto, EM.filial, EM.ID_COR, C.N' +
      'OME,'#13#10'P.NOME, P.REFERENCIA, EM.ID_PESSOA, EM.TAMANHO,'#13#10'P.unidade' +
      ', P.sped_tipo_item, P.ncm_ex, NCM.ncm'#13#10') aux'#13#10'where aux.qtd > 0'#13 +
      #10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 424
  end
  object dspPosseEstoque_NaoApagar: TDataSetProvider
    DataSet = sdsPosseEstoque_NaoApagar
    Left = 520
    Top = 424
  end
  object cdsPosseEstoque_NaoApagar: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'TIPO_EST;ID_PRODUTO;ID_COR'
    Params = <>
    ProviderName = 'dspPosseEstoque_NaoApagar'
    OnCalcFields = cdsBalancoCalcFields
    Left = 560
    Top = 424
    object IntegerField1: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'FILIAL'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_COR'
    end
    object FloatField1: TFloatField
      FieldName = 'QTD'
    end
    object StringField1: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'REFERENCIA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object StringField4: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object StringField6: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object StringField8: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object StringField9: TStringField
      FieldName = 'TIPO_EST'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object dsPosseEstoque_NaoApagar: TDataSource
    DataSet = cdsPosseEstoque_NaoApagar
    Left = 600
    Top = 424
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GERAR_REG_H020'
      'FROM PARAMETROS_EST')
    SQLConnection = dmDatabase.scoDados
    Left = 624
    Top = 96
    object qParametros_EstGERAR_REG_H020: TStringField
      FieldName = 'GERAR_REG_H020'
      FixedChar = True
      Size = 1
    end
  end
  object mAuxResumo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Bloco'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Registro'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Tipo_SPED'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Descricao_Sped'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Posse'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Desc_Posse'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mAuxResumoNewRecord
    Left = 240
    Top = 304
    Data = {
      E90000009619E0BD010000001800000008000000000003000000E90005426C6F
      636F010049000000010005574944544802000200020008526567697374726F01
      00490000000100055749445448020002000400095469706F5F53504544010049
      00000001000557494454480200020002000E44657363726963616F5F53706564
      0100490000000100055749445448020002001E00035174640800040000000000
      09566C725F546F74616C080004000000000005506F7373650100490000000100
      0557494454480200020002000A446573635F506F737365010049000000010005
      57494454480200020028000000}
    object mAuxResumoBloco: TStringField
      FieldName = 'Bloco'
      Size = 2
    end
    object mAuxResumoRegistro: TStringField
      FieldName = 'Registro'
      Size = 4
    end
    object mAuxResumoTipo_SPED: TStringField
      FieldName = 'Tipo_SPED'
      Size = 2
    end
    object mAuxResumoDescricao_Sped: TStringField
      FieldName = 'Descricao_Sped'
      Size = 30
    end
    object mAuxResumoQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.000#'
    end
    object mAuxResumoVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
      DisplayFormat = '0.00'
    end
    object mAuxResumoPosse: TStringField
      FieldName = 'Posse'
      Size = 2
    end
    object mAuxResumoDesc_Posse: TStringField
      FieldName = 'Desc_Posse'
      Size = 40
    end
  end
  object dsmAuxResumo: TDataSource
    DataSet = mAuxResumo
    Left = 272
    Top = 304
  end
end
