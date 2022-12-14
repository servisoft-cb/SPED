object DMImportar: TDMImportar
  OldCreateOrder = False
  Left = 376
  Top = 231
  Height = 288
  Width = 603
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select ID, REFERENCIA, NOME, PESOLIQUIDO, PESOBRUTO, INATIVO, ID' +
      '_CSTIPI, PERC_IPI, PRECO_CUSTO, PRECO_VENDA, TIPO_REG,'#13#10'       P' +
      'OSSE_MATERIAL, ESTOQUE, MATERIAL_OUTROS, USUARIO, DTCAD, HRCAD, ' +
      'CA, COMPLEMENTO, ID_NCM, ORIGEM_PROD, OBS,'#13#10'       CODSITCF, PER' +
      'C_REDUCAOICMS, TIPO_VENDA, PERC_MARGEMLUCRO, UNIDADE, DT_ALTPREC' +
      'O, LOCALIZACAO, ID_GRUPO,'#13#10'       ID_SUBGRUPO, ID_MARCA, ID_FORN' +
      'ECEDOR, COD_BARRA, PERC_IMPORTACAO, COD_ANT, PERC_REDUCAOICMSSUB' +
      'ST, USA_GRADE,'#13#10'       ID_GRADE, USA_PERC_IMP_INTERESTADUAL, IMP' +
      'RIMIR_ETIQUETA_NAV, CARIMBO, PERC_QUEBRAMAT, SPED_TIPO_ITEM,'#13#10'  ' +
      '     QTD_ESTOQUE_MIN, PERC_PIS, PERC_COFINS, PERC_ICMS_IMP, PERC' +
      '_IPI_IMP, REFERENCIA_PADRAO, NUM_FCI, PERC_USADO_FCI,'#13#10'       NC' +
      'M_EX, ID_SITTRIB_CF, ID_CLIENTE, PRECO_REVENDA, PRECO_INDUSTRIAL' +
      'IZACAO, PRECO_CONSUMO, FOTO, REFERENCIA_SEQ,'#13#10'       ID_COR, CAL' +
      'CULAR_2_LADOS, PERC_VIDRO, ID_LINHA, ID_CFOP_NFCE, USA_PRECO_COR' +
      ', USA_COR, TRANSFER,'#13#10'       PRECO_CUSTO_TOTAL, ID_CONTA_ORCAMEN' +
      'TO, ID_LOCAL_ESTOQUE_PROD, PERC_COMISSAO, ID_ENQIPI, LANCA_LOTE_' +
      'CONTROLE,'#13#10'       COD_CEST, PICTOGRAMA, PICTO_CABEDAL, PICTO_INT' +
      'ERIOR, PICTO_SOLA, COD_PRODUTO_CLI, FILIAL, BAIXA_ESTOQUE_MAT,'#13#10 +
      '       COD_JUSTNEW, NOME_ORIGINAL, IMP_ROTULO, NUM_MS, IMP_CONSU' +
      'MO_NFE, GERAR_FCI, MEDIDA, QTD_EMBALAGEM,'#13#10'       DT_ALT_PRECOCU' +
      'STO, USA_CARIMBO_OC, USA_NA_BALANCA, MENSAGEM, PERC_DESC_MAX, ID' +
      '_CSTICMS_BRED, TIPO_MAT,'#13#10'       ID_PROCESSO_GRUPO, TIPO_PRODUCA' +
      'O, CRIADO_OS, ID_MATERIAL_CRU, ID_FORMA, TAMANHO, TESTE, PRECO_L' +
      'IQ, USA_CLIQ,'#13#10'       QTD_PECA_EMB, LARGURA, ALTURA, ESPESSURA, ' +
      'MULTIPLICADOR, REF2, FATOR_CALCULO, REF_ORD, GERAR_WEB, TAM_CALC' +
      ','#13#10'       COD_BARRA2, POSSUE_LADO, UNIDADE2, CAIXINHA, SEPARA_CO' +
      'R, VALIDADE, ID_CSTICMS, NOME_MODELO, DESC_MAXIMO,'#13#10'       QTD_P' +
      'OR_ROTULO, PERC_ICMS_NFCE, TIPO_ALGODAO, CALCULAR_ST, PRECO_CUST' +
      'O_ANT, TMP, COD_BENEF, TIPO_PRODUTO,'#13#10'       ID_PRODUTO_EST, IND' +
      'EXADOR_PRECO, ANP_ID, PRECO_VAREJO, TIPO_BALANCA, CODIGO_BALANCA' +
      ', PERC_IMPOSTO, QTD_COTADA,'#13#10'       APLICAR_ITEM_MINIMO, VLR_MIN' +
      'IMO, PRECO_PROCESSO, PESO_EM_GRAMA, PRECO_KG, ID_SERVICO_INT, PR' +
      'AZO_ENTREGA,'#13#10'       QTD_ESTOQUE_MAX, RMS, OBS_CONSUMO, DENSIDAD' +
      'E, MOSTRAR_PROCESSO, ID_TIPO_MATERIAL, TIPO_REDONDO_CHATO,'#13#10'    ' +
      '   DTAJUSTEIPI, DESCRICAO_WEB, FUSO, QTD_CARGA, DTCONSUMO_ALT, H' +
      'RCONSUMO_ALT, USUARIO_CONSUMO_ALT, PERC_CONSUMO_ALT,'#13#10'       TIP' +
      'O_CONSUMO_ALT, NOME2, PERC_ICMS, QTD_ETIQUETA_EST, COD_PRODUTO_C' +
      'LI_NOME'#13#10'from PRODUTO'#13#10'WHERE REFERENCIA = :REFERENCIA'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'REFERENCIA'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 16
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object sdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object sdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object sdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object sdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object sdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object sdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object sdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsProdutoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
    end
    object sdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object sdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 30
    end
    object sdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
    end
    object sdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object sdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField
      FieldName = 'USA_PERC_IMP_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField
      FieldName = 'IMPRIMIR_ETIQUETA_NAV'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 50
    end
    object sdsProdutoPERC_QUEBRAMAT: TFloatField
      FieldName = 'PERC_QUEBRAMAT'
    end
    object sdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object sdsProdutoQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
    end
    object sdsProdutoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsProdutoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsProdutoPERC_ICMS_IMP: TFloatField
      FieldName = 'PERC_ICMS_IMP'
    end
    object sdsProdutoPERC_IPI_IMP: TFloatField
      FieldName = 'PERC_IPI_IMP'
    end
    object sdsProdutoREFERENCIA_PADRAO: TStringField
      FieldName = 'REFERENCIA_PADRAO'
    end
    object sdsProdutoNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object sdsProdutoPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
    object sdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object sdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object sdsProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsProdutoPRECO_REVENDA: TFMTBCDField
      FieldName = 'PRECO_REVENDA'
      Precision = 15
      Size = 10
    end
    object sdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField
      FieldName = 'PRECO_INDUSTRIALIZACAO'
      Precision = 15
      Size = 10
    end
    object sdsProdutoPRECO_CONSUMO: TFMTBCDField
      FieldName = 'PRECO_CONSUMO'
      Precision = 15
      Size = 10
    end
    object sdsProdutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object sdsProdutoREFERENCIA_SEQ: TIntegerField
      FieldName = 'REFERENCIA_SEQ'
    end
    object sdsProdutoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProdutoCALCULAR_2_LADOS: TStringField
      FieldName = 'CALCULAR_2_LADOS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_VIDRO: TFloatField
      FieldName = 'PERC_VIDRO'
    end
    object sdsProdutoID_LINHA: TIntegerField
      FieldName = 'ID_LINHA'
    end
    object sdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object sdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsProdutoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object sdsProdutoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsProdutoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsProdutoLANCA_LOTE_CONTROLE: TStringField
      FieldName = 'LANCA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object sdsProdutoPICTOGRAMA: TStringField
      FieldName = 'PICTOGRAMA'
      Size = 150
    end
    object sdsProdutoPICTO_CABEDAL: TStringField
      FieldName = 'PICTO_CABEDAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPICTO_INTERIOR: TStringField
      FieldName = 'PICTO_INTERIOR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPICTO_SOLA: TStringField
      FieldName = 'PICTO_SOLA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCOD_PRODUTO_CLI: TStringField
      FieldName = 'COD_PRODUTO_CLI'
      Size = 15
    end
    object sdsProdutoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsProdutoBAIXA_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXA_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCOD_JUSTNEW: TIntegerField
      FieldName = 'COD_JUSTNEW'
    end
    object sdsProdutoNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object sdsProdutoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoNUM_MS: TStringField
      FieldName = 'NUM_MS'
    end
    object sdsProdutoIMP_CONSUMO_NFE: TStringField
      FieldName = 'IMP_CONSUMO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoGERAR_FCI: TStringField
      FieldName = 'GERAR_FCI'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMEDIDA: TStringField
      FieldName = 'MEDIDA'
    end
    object sdsProdutoQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object sdsProdutoDT_ALT_PRECOCUSTO: TDateField
      FieldName = 'DT_ALT_PRECOCUSTO'
    end
    object sdsProdutoUSA_CARIMBO_OC: TStringField
      FieldName = 'USA_CARIMBO_OC'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSA_NA_BALANCA: TStringField
      FieldName = 'USA_NA_BALANCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 250
    end
    object sdsProdutoPERC_DESC_MAX: TFloatField
      FieldName = 'PERC_DESC_MAX'
    end
    object sdsProdutoID_CSTICMS_BRED: TIntegerField
      FieldName = 'ID_CSTICMS_BRED'
    end
    object sdsProdutoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      Size = 1
    end
    object sdsProdutoID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object sdsProdutoTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      Size = 1
    end
    object sdsProdutoCRIADO_OS: TStringField
      FieldName = 'CRIADO_OS'
      Size = 1
    end
    object sdsProdutoID_MATERIAL_CRU: TIntegerField
      FieldName = 'ID_MATERIAL_CRU'
    end
    object sdsProdutoID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
    end
    object sdsProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsProdutoTESTE: TStringField
      FieldName = 'TESTE'
      Size = 15
    end
    object sdsProdutoPRECO_LIQ: TFloatField
      FieldName = 'PRECO_LIQ'
    end
    object sdsProdutoUSA_CLIQ: TStringField
      FieldName = 'USA_CLIQ'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoQTD_PECA_EMB: TIntegerField
      FieldName = 'QTD_PECA_EMB'
    end
    object sdsProdutoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsProdutoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object sdsProdutoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object sdsProdutoMULTIPLICADOR: TFloatField
      FieldName = 'MULTIPLICADOR'
    end
    object sdsProdutoREF2: TStringField
      FieldName = 'REF2'
    end
    object sdsProdutoFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
    object sdsProdutoREF_ORD: TStringField
      FieldName = 'REF_ORD'
    end
    object sdsProdutoGERAR_WEB: TStringField
      FieldName = 'GERAR_WEB'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoTAM_CALC: TFloatField
      FieldName = 'TAM_CALC'
    end
    object sdsProdutoCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object sdsProdutoPOSSUE_LADO: TStringField
      FieldName = 'POSSUE_LADO'
      Size = 1
    end
    object sdsProdutoUNIDADE2: TStringField
      FieldName = 'UNIDADE2'
      Size = 6
    end
    object sdsProdutoCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object sdsProdutoSEPARA_COR: TStringField
      FieldName = 'SEPARA_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoVALIDADE: TSmallintField
      FieldName = 'VALIDADE'
    end
    object sdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsProdutoNOME_MODELO: TStringField
      FieldName = 'NOME_MODELO'
      Size = 100
    end
    object sdsProdutoDESC_MAXIMO: TFloatField
      FieldName = 'DESC_MAXIMO'
    end
    object sdsProdutoQTD_POR_ROTULO: TFloatField
      FieldName = 'QTD_POR_ROTULO'
    end
    object sdsProdutoPERC_ICMS_NFCE: TFloatField
      FieldName = 'PERC_ICMS_NFCE'
    end
    object sdsProdutoTIPO_ALGODAO: TStringField
      FieldName = 'TIPO_ALGODAO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECO_CUSTO_ANT: TFloatField
      FieldName = 'PRECO_CUSTO_ANT'
    end
    object sdsProdutoTMP: TIntegerField
      FieldName = 'TMP'
    end
    object sdsProdutoCOD_BENEF: TStringField
      FieldName = 'COD_BENEF'
      Size = 8
    end
    object sdsProdutoTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 4
    end
    object sdsProdutoID_PRODUTO_EST: TIntegerField
      FieldName = 'ID_PRODUTO_EST'
    end
    object sdsProdutoINDEXADOR_PRECO: TFloatField
      FieldName = 'INDEXADOR_PRECO'
    end
    object sdsProdutoANP_ID: TIntegerField
      FieldName = 'ANP_ID'
    end
    object sdsProdutoPRECO_VAREJO: TFloatField
      FieldName = 'PRECO_VAREJO'
    end
    object sdsProdutoTIPO_BALANCA: TStringField
      FieldName = 'TIPO_BALANCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCODIGO_BALANCA: TIntegerField
      FieldName = 'CODIGO_BALANCA'
    end
    object sdsProdutoPERC_IMPOSTO: TFloatField
      FieldName = 'PERC_IMPOSTO'
    end
    object sdsProdutoQTD_COTADA: TFloatField
      FieldName = 'QTD_COTADA'
    end
    object sdsProdutoAPLICAR_ITEM_MINIMO: TStringField
      FieldName = 'APLICAR_ITEM_MINIMO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoVLR_MINIMO: TFloatField
      FieldName = 'VLR_MINIMO'
    end
    object sdsProdutoPRECO_PROCESSO: TFloatField
      FieldName = 'PRECO_PROCESSO'
    end
    object sdsProdutoPESO_EM_GRAMA: TFloatField
      FieldName = 'PESO_EM_GRAMA'
    end
    object sdsProdutoPRECO_KG: TFloatField
      FieldName = 'PRECO_KG'
    end
    object sdsProdutoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsProdutoPRAZO_ENTREGA: TIntegerField
      FieldName = 'PRAZO_ENTREGA'
    end
    object sdsProdutoQTD_ESTOQUE_MAX: TFloatField
      FieldName = 'QTD_ESTOQUE_MAX'
    end
    object sdsProdutoRMS: TStringField
      FieldName = 'RMS'
      Size = 25
    end
    object sdsProdutoOBS_CONSUMO: TMemoField
      FieldName = 'OBS_CONSUMO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object sdsProdutoMOSTRAR_PROCESSO: TStringField
      FieldName = 'MOSTRAR_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object sdsProdutoTIPO_REDONDO_CHATO: TStringField
      FieldName = 'TIPO_REDONDO_CHATO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoDTAJUSTEIPI: TDateField
      FieldName = 'DTAJUSTEIPI'
    end
    object sdsProdutoDESCRICAO_WEB: TMemoField
      FieldName = 'DESCRICAO_WEB'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoFUSO: TIntegerField
      FieldName = 'FUSO'
    end
    object sdsProdutoQTD_CARGA: TFloatField
      FieldName = 'QTD_CARGA'
    end
    object sdsProdutoDTCONSUMO_ALT: TDateField
      FieldName = 'DTCONSUMO_ALT'
    end
    object sdsProdutoHRCONSUMO_ALT: TDateField
      FieldName = 'HRCONSUMO_ALT'
    end
    object sdsProdutoUSUARIO_CONSUMO_ALT: TStringField
      FieldName = 'USUARIO_CONSUMO_ALT'
      Size = 15
    end
    object sdsProdutoPERC_CONSUMO_ALT: TFloatField
      FieldName = 'PERC_CONSUMO_ALT'
    end
    object sdsProdutoTIPO_CONSUMO_ALT: TStringField
      FieldName = 'TIPO_CONSUMO_ALT'
      Size = 1
    end
    object sdsProdutoNOME2: TStringField
      FieldName = 'NOME2'
      Size = 100
    end
    object sdsProdutoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsProdutoQTD_ETIQUETA_EST: TFloatField
      FieldName = 'QTD_ETIQUETA_EST'
    end
    object sdsProdutoCOD_PRODUTO_CLI_NOME: TStringField
      FieldName = 'COD_PRODUTO_CLI_NOME'
      Size = 30
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 16
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 112
    Top = 16
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsProdutoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
    end
    object cdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 30
    end
    object cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField
      FieldName = 'USA_PERC_IMP_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField
      FieldName = 'IMPRIMIR_ETIQUETA_NAV'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 50
    end
    object cdsProdutoPERC_QUEBRAMAT: TFloatField
      FieldName = 'PERC_QUEBRAMAT'
    end
    object cdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsProdutoQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
    end
    object cdsProdutoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsProdutoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsProdutoPERC_ICMS_IMP: TFloatField
      FieldName = 'PERC_ICMS_IMP'
    end
    object cdsProdutoPERC_IPI_IMP: TFloatField
      FieldName = 'PERC_IPI_IMP'
    end
    object cdsProdutoREFERENCIA_PADRAO: TStringField
      FieldName = 'REFERENCIA_PADRAO'
    end
    object cdsProdutoNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object cdsProdutoPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
    object cdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object cdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object cdsProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsProdutoPRECO_REVENDA: TFMTBCDField
      FieldName = 'PRECO_REVENDA'
      Precision = 15
      Size = 10
    end
    object cdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField
      FieldName = 'PRECO_INDUSTRIALIZACAO'
      Precision = 15
      Size = 10
    end
    object cdsProdutoPRECO_CONSUMO: TFMTBCDField
      FieldName = 'PRECO_CONSUMO'
      Precision = 15
      Size = 10
    end
    object cdsProdutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object cdsProdutoREFERENCIA_SEQ: TIntegerField
      FieldName = 'REFERENCIA_SEQ'
    end
    object cdsProdutoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProdutoCALCULAR_2_LADOS: TStringField
      FieldName = 'CALCULAR_2_LADOS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_VIDRO: TFloatField
      FieldName = 'PERC_VIDRO'
    end
    object cdsProdutoID_LINHA: TIntegerField
      FieldName = 'ID_LINHA'
    end
    object cdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsProdutoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object cdsProdutoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsProdutoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsProdutoLANCA_LOTE_CONTROLE: TStringField
      FieldName = 'LANCA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsProdutoPICTOGRAMA: TStringField
      FieldName = 'PICTOGRAMA'
      Size = 150
    end
    object cdsProdutoPICTO_CABEDAL: TStringField
      FieldName = 'PICTO_CABEDAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPICTO_INTERIOR: TStringField
      FieldName = 'PICTO_INTERIOR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPICTO_SOLA: TStringField
      FieldName = 'PICTO_SOLA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOD_PRODUTO_CLI: TStringField
      FieldName = 'COD_PRODUTO_CLI'
      Size = 15
    end
    object cdsProdutoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsProdutoBAIXA_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXA_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOD_JUSTNEW: TIntegerField
      FieldName = 'COD_JUSTNEW'
    end
    object cdsProdutoNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object cdsProdutoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoNUM_MS: TStringField
      FieldName = 'NUM_MS'
    end
    object cdsProdutoIMP_CONSUMO_NFE: TStringField
      FieldName = 'IMP_CONSUMO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoGERAR_FCI: TStringField
      FieldName = 'GERAR_FCI'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMEDIDA: TStringField
      FieldName = 'MEDIDA'
    end
    object cdsProdutoQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object cdsProdutoDT_ALT_PRECOCUSTO: TDateField
      FieldName = 'DT_ALT_PRECOCUSTO'
    end
    object cdsProdutoUSA_CARIMBO_OC: TStringField
      FieldName = 'USA_CARIMBO_OC'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSA_NA_BALANCA: TStringField
      FieldName = 'USA_NA_BALANCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 250
    end
    object cdsProdutoPERC_DESC_MAX: TFloatField
      FieldName = 'PERC_DESC_MAX'
    end
    object cdsProdutoID_CSTICMS_BRED: TIntegerField
      FieldName = 'ID_CSTICMS_BRED'
    end
    object cdsProdutoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      Size = 1
    end
    object cdsProdutoID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object cdsProdutoTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      Size = 1
    end
    object cdsProdutoCRIADO_OS: TStringField
      FieldName = 'CRIADO_OS'
      Size = 1
    end
    object cdsProdutoID_MATERIAL_CRU: TIntegerField
      FieldName = 'ID_MATERIAL_CRU'
    end
    object cdsProdutoID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
    end
    object cdsProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsProdutoTESTE: TStringField
      FieldName = 'TESTE'
      Size = 15
    end
    object cdsProdutoPRECO_LIQ: TFloatField
      FieldName = 'PRECO_LIQ'
    end
    object cdsProdutoUSA_CLIQ: TStringField
      FieldName = 'USA_CLIQ'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoQTD_PECA_EMB: TIntegerField
      FieldName = 'QTD_PECA_EMB'
    end
    object cdsProdutoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsProdutoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsProdutoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsProdutoMULTIPLICADOR: TFloatField
      FieldName = 'MULTIPLICADOR'
    end
    object cdsProdutoREF2: TStringField
      FieldName = 'REF2'
    end
    object cdsProdutoFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
    object cdsProdutoREF_ORD: TStringField
      FieldName = 'REF_ORD'
    end
    object cdsProdutoGERAR_WEB: TStringField
      FieldName = 'GERAR_WEB'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoTAM_CALC: TFloatField
      FieldName = 'TAM_CALC'
    end
    object cdsProdutoCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object cdsProdutoPOSSUE_LADO: TStringField
      FieldName = 'POSSUE_LADO'
      Size = 1
    end
    object cdsProdutoUNIDADE2: TStringField
      FieldName = 'UNIDADE2'
      Size = 6
    end
    object cdsProdutoCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object cdsProdutoSEPARA_COR: TStringField
      FieldName = 'SEPARA_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoVALIDADE: TSmallintField
      FieldName = 'VALIDADE'
    end
    object cdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsProdutoNOME_MODELO: TStringField
      FieldName = 'NOME_MODELO'
      Size = 100
    end
    object cdsProdutoDESC_MAXIMO: TFloatField
      FieldName = 'DESC_MAXIMO'
    end
    object cdsProdutoQTD_POR_ROTULO: TFloatField
      FieldName = 'QTD_POR_ROTULO'
    end
    object cdsProdutoPERC_ICMS_NFCE: TFloatField
      FieldName = 'PERC_ICMS_NFCE'
    end
    object cdsProdutoTIPO_ALGODAO: TStringField
      FieldName = 'TIPO_ALGODAO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECO_CUSTO_ANT: TFloatField
      FieldName = 'PRECO_CUSTO_ANT'
    end
    object cdsProdutoTMP: TIntegerField
      FieldName = 'TMP'
    end
    object cdsProdutoCOD_BENEF: TStringField
      FieldName = 'COD_BENEF'
      Size = 8
    end
    object cdsProdutoTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 4
    end
    object cdsProdutoID_PRODUTO_EST: TIntegerField
      FieldName = 'ID_PRODUTO_EST'
    end
    object cdsProdutoINDEXADOR_PRECO: TFloatField
      FieldName = 'INDEXADOR_PRECO'
    end
    object cdsProdutoANP_ID: TIntegerField
      FieldName = 'ANP_ID'
    end
    object cdsProdutoPRECO_VAREJO: TFloatField
      FieldName = 'PRECO_VAREJO'
    end
    object cdsProdutoTIPO_BALANCA: TStringField
      FieldName = 'TIPO_BALANCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCODIGO_BALANCA: TIntegerField
      FieldName = 'CODIGO_BALANCA'
    end
    object cdsProdutoPERC_IMPOSTO: TFloatField
      FieldName = 'PERC_IMPOSTO'
    end
    object cdsProdutoQTD_COTADA: TFloatField
      FieldName = 'QTD_COTADA'
    end
    object cdsProdutoAPLICAR_ITEM_MINIMO: TStringField
      FieldName = 'APLICAR_ITEM_MINIMO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoVLR_MINIMO: TFloatField
      FieldName = 'VLR_MINIMO'
    end
    object cdsProdutoPRECO_PROCESSO: TFloatField
      FieldName = 'PRECO_PROCESSO'
    end
    object cdsProdutoPESO_EM_GRAMA: TFloatField
      FieldName = 'PESO_EM_GRAMA'
    end
    object cdsProdutoPRECO_KG: TFloatField
      FieldName = 'PRECO_KG'
    end
    object cdsProdutoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsProdutoPRAZO_ENTREGA: TIntegerField
      FieldName = 'PRAZO_ENTREGA'
    end
    object cdsProdutoQTD_ESTOQUE_MAX: TFloatField
      FieldName = 'QTD_ESTOQUE_MAX'
    end
    object cdsProdutoRMS: TStringField
      FieldName = 'RMS'
      Size = 25
    end
    object cdsProdutoOBS_CONSUMO: TMemoField
      FieldName = 'OBS_CONSUMO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object cdsProdutoMOSTRAR_PROCESSO: TStringField
      FieldName = 'MOSTRAR_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object cdsProdutoTIPO_REDONDO_CHATO: TStringField
      FieldName = 'TIPO_REDONDO_CHATO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoDTAJUSTEIPI: TDateField
      FieldName = 'DTAJUSTEIPI'
    end
    object cdsProdutoDESCRICAO_WEB: TMemoField
      FieldName = 'DESCRICAO_WEB'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoFUSO: TIntegerField
      FieldName = 'FUSO'
    end
    object cdsProdutoQTD_CARGA: TFloatField
      FieldName = 'QTD_CARGA'
    end
    object cdsProdutoDTCONSUMO_ALT: TDateField
      FieldName = 'DTCONSUMO_ALT'
    end
    object cdsProdutoHRCONSUMO_ALT: TDateField
      FieldName = 'HRCONSUMO_ALT'
    end
    object cdsProdutoUSUARIO_CONSUMO_ALT: TStringField
      FieldName = 'USUARIO_CONSUMO_ALT'
      Size = 15
    end
    object cdsProdutoPERC_CONSUMO_ALT: TFloatField
      FieldName = 'PERC_CONSUMO_ALT'
    end
    object cdsProdutoTIPO_CONSUMO_ALT: TStringField
      FieldName = 'TIPO_CONSUMO_ALT'
      Size = 1
    end
    object cdsProdutoNOME2: TStringField
      FieldName = 'NOME2'
      Size = 100
    end
    object cdsProdutoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsProdutoQTD_ETIQUETA_EST: TFloatField
      FieldName = 'QTD_ETIQUETA_EST'
    end
    object cdsProdutoCOD_PRODUTO_CLI_NOME: TStringField
      FieldName = 'COD_PRODUTO_CLI_NOME'
      Size = 30
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 144
    Top = 16
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select ID, NCM, NOME, PERC_RED_STRIB, GERAR_ST, INATIVO, TIPO_AS' +
      ', COD_PRINCIPAL, USAR_MVA_UF_DESTINO, COD_CEST,'#13#10'       UNIDADE_' +
      'TRIB, ID_CFOP, ID_PIS, ID_COFINS, ID_CST_ICMS, PERC_PIS, PERC_CO' +
      'FINS, PERC_BASE_ICMS, ID_OBS_LEI,'#13#10'       PERC_ICMS, PERC_IPI, I' +
      'D_CSTIPI, TIPO_ESCALA, CALCULA_FCP, IBPT_INATIVO, COD_BENEF, ALT' +
      'ERADO'#13#10'from TAB_NCM  '#13#10'WHERE NCM = :NCM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NCM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 96
    object sdsNCMID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object sdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object sdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsNCMINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsNCMTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object sdsNCMCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 2
    end
    object sdsNCMUSAR_MVA_UF_DESTINO: TStringField
      FieldName = 'USAR_MVA_UF_DESTINO'
      FixedChar = True
      Size = 1
    end
    object sdsNCMCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object sdsNCMUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object sdsNCMID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsNCMID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsNCMID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsNCMID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object sdsNCMPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsNCMPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsNCMPERC_BASE_ICMS: TFloatField
      FieldName = 'PERC_BASE_ICMS'
    end
    object sdsNCMID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object sdsNCMPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsNCMPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsNCMID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsNCMTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      FixedChar = True
      Size = 1
    end
    object sdsNCMCALCULA_FCP: TStringField
      FieldName = 'CALCULA_FCP'
      FixedChar = True
      Size = 1
    end
    object sdsNCMIBPT_INATIVO: TStringField
      FieldName = 'IBPT_INATIVO'
      Size = 1
    end
    object sdsNCMCOD_BENEF: TStringField
      FieldName = 'COD_BENEF'
      Size = 8
    end
    object sdsNCMALTERADO: TStringField
      FieldName = 'ALTERADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 96
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCM'
    Left = 112
    Top = 96
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object cdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsNCMINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsNCMTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsNCMCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 2
    end
    object cdsNCMUSAR_MVA_UF_DESTINO: TStringField
      FieldName = 'USAR_MVA_UF_DESTINO'
      FixedChar = True
      Size = 1
    end
    object cdsNCMCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsNCMUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object cdsNCMID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNCMID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsNCMID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsNCMID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object cdsNCMPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsNCMPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsNCMPERC_BASE_ICMS: TFloatField
      FieldName = 'PERC_BASE_ICMS'
    end
    object cdsNCMID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object cdsNCMPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsNCMPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsNCMID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsNCMTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      FixedChar = True
      Size = 1
    end
    object cdsNCMCALCULA_FCP: TStringField
      FieldName = 'CALCULA_FCP'
      FixedChar = True
      Size = 1
    end
    object cdsNCMIBPT_INATIVO: TStringField
      FieldName = 'IBPT_INATIVO'
      Size = 1
    end
    object cdsNCMCOD_BENEF: TStringField
      FieldName = 'COD_BENEF'
      Size = 8
    end
    object cdsNCMALTERADO: TStringField
      FieldName = 'ALTERADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 144
    Top = 96
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select UNIDADE, CONVERSOR, NOME, EXPORTACAO, FRACIONAVEL, FATOR_' +
      'CALCULO, MOSTRAR_GROSA, INATIVA'#13#10'from UNIDADE  '#13#10'WHERE UNIDADE =' +
      ' :UNIDADE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 168
    object sdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object sdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object sdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsUnidadeEXPORTACAO: TStringField
      FieldName = 'EXPORTACAO'
      FixedChar = True
      Size = 1
    end
    object sdsUnidadeFRACIONAVEL: TStringField
      FieldName = 'FRACIONAVEL'
      FixedChar = True
      Size = 1
    end
    object sdsUnidadeFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
    object sdsUnidadeMOSTRAR_GROSA: TStringField
      FieldName = 'MOSTRAR_GROSA'
      FixedChar = True
      Size = 1
    end
    object sdsUnidadeINATIVA: TStringField
      FieldName = 'INATIVA'
      FixedChar = True
      Size = 1
    end
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 168
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 112
    Top = 168
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsUnidadeEXPORTACAO: TStringField
      FieldName = 'EXPORTACAO'
      FixedChar = True
      Size = 1
    end
    object cdsUnidadeFRACIONAVEL: TStringField
      FieldName = 'FRACIONAVEL'
      FixedChar = True
      Size = 1
    end
    object cdsUnidadeFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
    object cdsUnidadeMOSTRAR_GROSA: TStringField
      FieldName = 'MOSTRAR_GROSA'
      FixedChar = True
      Size = 1
    end
    object cdsUnidadeINATIVA: TStringField
      FieldName = 'INATIVA'
      FixedChar = True
      Size = 1
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 144
    Top = 168
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select CODIGO, NOME, FANTASIA, ENDERECO, COMPLEMENTO_END, NUM_EN' +
      'D, BAIRRO, ID_CIDADE, CIDADE, UF, CEP, DDDFONE1,'#13#10'       TELEFON' +
      'E1, DDDFONE2, TELEFONE2, DDDFAX, FAX, PESSOA, CNPJ_CPF, INSCR_ES' +
      'T, ENDERECO_ENT, COMPLEMENTO_END_ENT,'#13#10'       NUM_END_ENT, BAIRR' +
      'O_ENT, ID_CIDADE_ENT, CIDADE_ENT, CEP_ENT, UF_ENT, PESSOA_ENT, C' +
      'NPJ_CPF_ENT, INSC_EST_ENT,'#13#10'       ENDERECO_PGTO, COMPLEMENTO_EN' +
      'D_PGTO, NUM_END_PGTO, BAIRRO_PGTO, ID_CIDADE_PGTO, CIDADE_PGTO, ' +
      'CEP_PGTO, UF_PGTO,'#13#10'       USUARIO, DTCADASTRO, HRCADASTRO, OBS,' +
      ' CAIXAPOSTAL, RG, ID_VENDEDOR, ID_CONDPGTO, ID_CONTABOLETO,'#13#10'   ' +
      '    ID_TRANSPORTADORA, ID_TIPOCOBRANCA, ID_REDESPACHO, ID_PAIS, ' +
      'ID_REGIME_TRIB, PERC_COMISSAO, DDD_ENT, FONE_ENT,'#13#10'       DDD_PG' +
      'TO, FONE_PGTO, INATIVO, HOMEPAGE, TIPO_FRETE, NOME_ENTREGA, EMAI' +
      'L_NFE, EMAIL_PGTO, EMAIL_NFE2, PESSOA_PGTO,'#13#10'       CNPJ_CPG_PGT' +
      'O, INSC_EST_PGTO, UF_PLACA, PLACA, TP_CLIENTE, TP_FORNECEDOR, TP' +
      '_TRANSPORTADORA, TP_VENDEDOR,'#13#10'       TIPO_ICMS, ID_TAB_PRECO, T' +
      'P_ATELIER, TIPO_COMISSAO, PERC_COMISSAO_VEND, NOME_CONTATO, INSC' +
      '_MUNICIPAL,'#13#10'       DT_CONTRATO_INI, DT_CONTRATO_FIN, ID_SERVICO' +
      ', ID_SERVICO_INT, VLR_SERVICO, CLIENTE_CONTA_ID, FORNECEDOR_CONT' +
      'A_ID,'#13#10'       VENDEDOR_CONTA_ID, TRANSPORTADORA_CONTA_ID, ATELIE' +
      'R_CONTA_ID, RETEM_ISS, RETEM_CSLL, RETEM_PISCOFINS, RETEM_INSS,'#13 +
      #10'       EMAIL_COMPRAS, CONTATO_COMPRAS, ORGAO_PUBLICO, ID_NATURE' +
      'ZA, DIMINUIR_RETENCAO, PERC_REDUCAO_INSS, USA_TRANSFICMS,'#13#10'     ' +
      '  CLIENTE_ESTOQUE, USA_TAMANHO_AGRUPADO_NFE, COD_ANT, ID_EDI, PA' +
      'I_NOME, MAE_NOME, TP_ALUNO, COBRAR_TAXA_BANCO,'#13#10'       VLR_LIMIT' +
      'E_CREDITO, INSC_EST_ST, UF_ST, TIPO_CONSUMIDOR, TIPO_CONTRIBUINT' +
      'E, INSC_SUFRAMA, COD_ALFA, TP_PREPOSTO,'#13#10'       TP_EXPORTACAO, C' +
      'ARIMBO, DTPEDIDO, DTNOTA, PERC_DESC_SUFRAMA, VLR_LIMITE_COMPRA, ' +
      'ID_GRUPO, TP_FUNCIONARIO,'#13#10'       IMP_COD_PRODUTO_CLI, FILIAL, V' +
      'LR_ULT_FATURAMENTO, QTD_ULT_FATURAMENTO, COD_CONTABIL_CLIENTE,'#13#10 +
      '       COD_CONTABIL_FORNECEDOR, ID_REGIAO_VENDA, TIPO_CREDITO, U' +
      'SUARIO_LOG, PROTESTAR, ID_CARTEIRA, CELULAR, DDDCELULAR,'#13#10'      ' +
      ' CONT_CUSTO_LIQ, USA_OC_XML, IMP_COR_CLIENTE, OBS_AVISO, MOSTRAR' +
      '_AVISO, ID_ROTA, MDIA1, MDIA2, ASSOCIAR_PROD,'#13#10'       FUNCIONARI' +
      'O_CONTA_ID, BAIXAR_ETIQ_PREFAT, CAIXINHA, IPI_PAGO_FILIAL, IMP_N' +
      'OMEPROD_CLIENTE, SENHA_PEDIDO,'#13#10'       DESC_MAXIMO, IMP_ETIQUETA' +
      '_ROT, GERAR_PROTESTO, ID_VENDEDOR_INT, PERC_COMISSAO_INT, IMP_TA' +
      'MANHO_FINAL,'#13#10'       USA_TAMANHO_EDI_COD, USA_PRECO_VAREJO, INFA' +
      'DI_DESC_CPROD, INFADI_DESC_OS, QTD_DIAS_PROTESTO, TIPO_PROTESTO,' +
      #13#10'       TIPO_PAGTO_COMISSAO, TP_PRODUTOR_RURAL, LOGO_DANFE, ENV' +
      'IAR_CODCORFORN, TIPO_PHOSPITALAR, AUX_ALTERADO,'#13#10'       TP_INTER' +
      'MEDIADOR, ID_INSTITUICAO_PAGTO, NOME_IDENTIFICADOR, TP_INSTITUIC' +
      'AO_PAGTO, GERADO_WEB, CONFERIDO,'#13#10'       IMP_FABRICA_NFE, ID_FUN' +
      'CIONARIO, COD_CLIENTE_PROD, AGENCIA, NUMCONTA, ID_BANCO, PIX, DI' +
      'GITO_SEPARADO_TAM,'#13#10'       USAR_COD_CLIENTE_PROD'#13#10'from PESSOA'#13#10'w' +
      'here NOME = :NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 32
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object sdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object sdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object sdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object sdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object sdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object sdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object sdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object sdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object sdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object sdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object sdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object sdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object sdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object sdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object sdsPessoaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object sdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object sdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object sdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object sdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object sdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object sdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object sdsPessoaEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object sdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object sdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object sdsPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sdsPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object sdsPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object sdsPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object sdsPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object sdsPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object sdsPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object sdsPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object sdsPessoaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object sdsPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object sdsPessoaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object sdsPessoaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object sdsPessoaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsPessoaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsPessoaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object sdsPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object sdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object sdsPessoaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object sdsPessoaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object sdsPessoaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object sdsPessoaORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object sdsPessoaDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object sdsPessoaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object sdsPessoaID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object sdsPessoaPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object sdsPessoaMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object sdsPessoaTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object sdsPessoaINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object sdsPessoaUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object sdsPessoaTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object sdsPessoaTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object sdsPessoaINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object sdsPessoaCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object sdsPessoaTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object sdsPessoaTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object sdsPessoaCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 50
    end
    object sdsPessoaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object sdsPessoaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object sdsPessoaPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object sdsPessoaVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object sdsPessoaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsPessoaTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaIMP_COD_PRODUTO_CLI: TStringField
      FieldName = 'IMP_COD_PRODUTO_CLI'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsPessoaVLR_ULT_FATURAMENTO: TFloatField
      FieldName = 'VLR_ULT_FATURAMENTO'
    end
    object sdsPessoaQTD_ULT_FATURAMENTO: TFloatField
      FieldName = 'QTD_ULT_FATURAMENTO'
    end
    object sdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField
      FieldName = 'COD_CONTABIL_CLIENTE'
    end
    object sdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField
      FieldName = 'COD_CONTABIL_FORNECEDOR'
    end
    object sdsPessoaID_REGIAO_VENDA: TIntegerField
      FieldName = 'ID_REGIAO_VENDA'
    end
    object sdsPessoaTIPO_CREDITO: TStringField
      FieldName = 'TIPO_CREDITO'
      Size = 1
    end
    object sdsPessoaUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Size = 15
    end
    object sdsPessoaPROTESTAR: TStringField
      FieldName = 'PROTESTAR'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object sdsPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object sdsPessoaDDDCELULAR: TIntegerField
      FieldName = 'DDDCELULAR'
    end
    object sdsPessoaCONT_CUSTO_LIQ: TStringField
      FieldName = 'CONT_CUSTO_LIQ'
      Size = 1
    end
    object sdsPessoaUSA_OC_XML: TStringField
      FieldName = 'USA_OC_XML'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaIMP_COR_CLIENTE: TStringField
      FieldName = 'IMP_COR_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
    end
    object sdsPessoaMOSTRAR_AVISO: TStringField
      FieldName = 'MOSTRAR_AVISO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_ROTA: TIntegerField
      FieldName = 'ID_ROTA'
    end
    object sdsPessoaMDIA1: TIntegerField
      FieldName = 'MDIA1'
    end
    object sdsPessoaMDIA2: TIntegerField
      FieldName = 'MDIA2'
    end
    object sdsPessoaASSOCIAR_PROD: TStringField
      FieldName = 'ASSOCIAR_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaFUNCIONARIO_CONTA_ID: TIntegerField
      FieldName = 'FUNCIONARIO_CONTA_ID'
    end
    object sdsPessoaBAIXAR_ETIQ_PREFAT: TStringField
      FieldName = 'BAIXAR_ETIQ_PREFAT'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object sdsPessoaIPI_PAGO_FILIAL: TStringField
      FieldName = 'IPI_PAGO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaIMP_NOMEPROD_CLIENTE: TStringField
      FieldName = 'IMP_NOMEPROD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 25
    end
    object sdsPessoaDESC_MAXIMO: TFloatField
      FieldName = 'DESC_MAXIMO'
    end
    object sdsPessoaIMP_ETIQUETA_ROT: TStringField
      FieldName = 'IMP_ETIQUETA_ROT'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaGERAR_PROTESTO: TStringField
      FieldName = 'GERAR_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_VENDEDOR_INT: TIntegerField
      FieldName = 'ID_VENDEDOR_INT'
    end
    object sdsPessoaPERC_COMISSAO_INT: TFloatField
      FieldName = 'PERC_COMISSAO_INT'
    end
    object sdsPessoaIMP_TAMANHO_FINAL: TStringField
      FieldName = 'IMP_TAMANHO_FINAL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaUSA_TAMANHO_EDI_COD: TStringField
      FieldName = 'USA_TAMANHO_EDI_COD'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaUSA_PRECO_VAREJO: TStringField
      FieldName = 'USA_PRECO_VAREJO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaINFADI_DESC_CPROD: TStringField
      FieldName = 'INFADI_DESC_CPROD'
    end
    object sdsPessoaINFADI_DESC_OS: TStringField
      FieldName = 'INFADI_DESC_OS'
    end
    object sdsPessoaQTD_DIAS_PROTESTO: TIntegerField
      FieldName = 'QTD_DIAS_PROTESTO'
    end
    object sdsPessoaTIPO_PROTESTO: TStringField
      FieldName = 'TIPO_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaTIPO_PAGTO_COMISSAO: TStringField
      FieldName = 'TIPO_PAGTO_COMISSAO'
      FixedChar = True
      Size = 3
    end
    object sdsPessoaTP_PRODUTOR_RURAL: TStringField
      FieldName = 'TP_PRODUTOR_RURAL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaLOGO_DANFE: TStringField
      FieldName = 'LOGO_DANFE'
      Size = 200
    end
    object sdsPessoaENVIAR_CODCORFORN: TStringField
      FieldName = 'ENVIAR_CODCORFORN'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaTIPO_PHOSPITALAR: TStringField
      FieldName = 'TIPO_PHOSPITALAR'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaAUX_ALTERADO: TStringField
      FieldName = 'AUX_ALTERADO'
    end
    object sdsPessoaTP_INTERMEDIADOR: TStringField
      FieldName = 'TP_INTERMEDIADOR'
      Size = 1
    end
    object sdsPessoaID_INSTITUICAO_PAGTO: TIntegerField
      FieldName = 'ID_INSTITUICAO_PAGTO'
    end
    object sdsPessoaNOME_IDENTIFICADOR: TStringField
      FieldName = 'NOME_IDENTIFICADOR'
      Size = 60
    end
    object sdsPessoaTP_INSTITUICAO_PAGTO: TStringField
      FieldName = 'TP_INSTITUICAO_PAGTO'
      Size = 1
    end
    object sdsPessoaGERADO_WEB: TStringField
      FieldName = 'GERADO_WEB'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaIMP_FABRICA_NFE: TStringField
      FieldName = 'IMP_FABRICA_NFE'
      Size = 1
    end
    object sdsPessoaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsPessoaCOD_CLIENTE_PROD: TIntegerField
      FieldName = 'COD_CLIENTE_PROD'
    end
    object sdsPessoaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object sdsPessoaNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object sdsPessoaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsPessoaPIX: TStringField
      FieldName = 'PIX'
      Size = 200
    end
    object sdsPessoaDIGITO_SEPARADO_TAM: TStringField
      FieldName = 'DIGITO_SEPARADO_TAM'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaUSAR_COD_CLIENTE_PROD: TStringField
      FieldName = 'USAR_COD_CLIENTE_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    UpdateMode = upWhereKeyOnly
    Left = 360
    Top = 32
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 392
    Top = 32
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsPessoaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object cdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsPessoaEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object cdsPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object cdsPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object cdsPessoaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cdsPessoaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object cdsPessoaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object cdsPessoaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsPessoaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPessoaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object cdsPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object cdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object cdsPessoaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object cdsPessoaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object cdsPessoaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object cdsPessoaORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsPessoaDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object cdsPessoaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object cdsPessoaID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object cdsPessoaPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object cdsPessoaMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object cdsPessoaTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsPessoaINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object cdsPessoaUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object cdsPessoaTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsPessoaTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsPessoaINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object cdsPessoaCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object cdsPessoaTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object cdsPessoaTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object cdsPessoaCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 50
    end
    object cdsPessoaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object cdsPessoaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object cdsPessoaPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object cdsPessoaVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object cdsPessoaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsPessoaTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaIMP_COD_PRODUTO_CLI: TStringField
      FieldName = 'IMP_COD_PRODUTO_CLI'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPessoaVLR_ULT_FATURAMENTO: TFloatField
      FieldName = 'VLR_ULT_FATURAMENTO'
    end
    object cdsPessoaQTD_ULT_FATURAMENTO: TFloatField
      FieldName = 'QTD_ULT_FATURAMENTO'
    end
    object cdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField
      FieldName = 'COD_CONTABIL_CLIENTE'
    end
    object cdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField
      FieldName = 'COD_CONTABIL_FORNECEDOR'
    end
    object cdsPessoaID_REGIAO_VENDA: TIntegerField
      FieldName = 'ID_REGIAO_VENDA'
    end
    object cdsPessoaTIPO_CREDITO: TStringField
      FieldName = 'TIPO_CREDITO'
      Size = 1
    end
    object cdsPessoaUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Size = 15
    end
    object cdsPessoaPROTESTAR: TStringField
      FieldName = 'PROTESTAR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object cdsPessoaDDDCELULAR: TIntegerField
      FieldName = 'DDDCELULAR'
    end
    object cdsPessoaCONT_CUSTO_LIQ: TStringField
      FieldName = 'CONT_CUSTO_LIQ'
      Size = 1
    end
    object cdsPessoaUSA_OC_XML: TStringField
      FieldName = 'USA_OC_XML'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaIMP_COR_CLIENTE: TStringField
      FieldName = 'IMP_COR_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
    end
    object cdsPessoaMOSTRAR_AVISO: TStringField
      FieldName = 'MOSTRAR_AVISO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_ROTA: TIntegerField
      FieldName = 'ID_ROTA'
    end
    object cdsPessoaMDIA1: TIntegerField
      FieldName = 'MDIA1'
    end
    object cdsPessoaMDIA2: TIntegerField
      FieldName = 'MDIA2'
    end
    object cdsPessoaASSOCIAR_PROD: TStringField
      FieldName = 'ASSOCIAR_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaFUNCIONARIO_CONTA_ID: TIntegerField
      FieldName = 'FUNCIONARIO_CONTA_ID'
    end
    object cdsPessoaBAIXAR_ETIQ_PREFAT: TStringField
      FieldName = 'BAIXAR_ETIQ_PREFAT'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object cdsPessoaIPI_PAGO_FILIAL: TStringField
      FieldName = 'IPI_PAGO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaIMP_NOMEPROD_CLIENTE: TStringField
      FieldName = 'IMP_NOMEPROD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 25
    end
    object cdsPessoaDESC_MAXIMO: TFloatField
      FieldName = 'DESC_MAXIMO'
    end
    object cdsPessoaIMP_ETIQUETA_ROT: TStringField
      FieldName = 'IMP_ETIQUETA_ROT'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaGERAR_PROTESTO: TStringField
      FieldName = 'GERAR_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_VENDEDOR_INT: TIntegerField
      FieldName = 'ID_VENDEDOR_INT'
    end
    object cdsPessoaPERC_COMISSAO_INT: TFloatField
      FieldName = 'PERC_COMISSAO_INT'
    end
    object cdsPessoaIMP_TAMANHO_FINAL: TStringField
      FieldName = 'IMP_TAMANHO_FINAL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaUSA_TAMANHO_EDI_COD: TStringField
      FieldName = 'USA_TAMANHO_EDI_COD'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaUSA_PRECO_VAREJO: TStringField
      FieldName = 'USA_PRECO_VAREJO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaINFADI_DESC_CPROD: TStringField
      FieldName = 'INFADI_DESC_CPROD'
    end
    object cdsPessoaINFADI_DESC_OS: TStringField
      FieldName = 'INFADI_DESC_OS'
    end
    object cdsPessoaQTD_DIAS_PROTESTO: TIntegerField
      FieldName = 'QTD_DIAS_PROTESTO'
    end
    object cdsPessoaTIPO_PROTESTO: TStringField
      FieldName = 'TIPO_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaTIPO_PAGTO_COMISSAO: TStringField
      FieldName = 'TIPO_PAGTO_COMISSAO'
      FixedChar = True
      Size = 3
    end
    object cdsPessoaTP_PRODUTOR_RURAL: TStringField
      FieldName = 'TP_PRODUTOR_RURAL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaLOGO_DANFE: TStringField
      FieldName = 'LOGO_DANFE'
      Size = 200
    end
    object cdsPessoaENVIAR_CODCORFORN: TStringField
      FieldName = 'ENVIAR_CODCORFORN'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaTIPO_PHOSPITALAR: TStringField
      FieldName = 'TIPO_PHOSPITALAR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaAUX_ALTERADO: TStringField
      FieldName = 'AUX_ALTERADO'
    end
    object cdsPessoaTP_INTERMEDIADOR: TStringField
      FieldName = 'TP_INTERMEDIADOR'
      Size = 1
    end
    object cdsPessoaID_INSTITUICAO_PAGTO: TIntegerField
      FieldName = 'ID_INSTITUICAO_PAGTO'
    end
    object cdsPessoaNOME_IDENTIFICADOR: TStringField
      FieldName = 'NOME_IDENTIFICADOR'
      Size = 60
    end
    object cdsPessoaTP_INSTITUICAO_PAGTO: TStringField
      FieldName = 'TP_INSTITUICAO_PAGTO'
      Size = 1
    end
    object cdsPessoaGERADO_WEB: TStringField
      FieldName = 'GERADO_WEB'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaIMP_FABRICA_NFE: TStringField
      FieldName = 'IMP_FABRICA_NFE'
      Size = 1
    end
    object cdsPessoaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsPessoaCOD_CLIENTE_PROD: TIntegerField
      FieldName = 'COD_CLIENTE_PROD'
    end
    object cdsPessoaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsPessoaNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object cdsPessoaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsPessoaPIX: TStringField
      FieldName = 'PIX'
      Size = 200
    end
    object cdsPessoaDIGITO_SEPARADO_TAM: TStringField
      FieldName = 'DIGITO_SEPARADO_TAM'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaUSAR_COD_CLIENTE_PROD: TStringField
      FieldName = 'USAR_COD_CLIENTE_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 424
    Top = 32
  end
  object sdsEstoque_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select ID, FILIAL, ID_PRODUTO, ID_COR, DTMOVIMENTO, TIPO_ES, TIP' +
      'O_MOV, NUMNOTA, ID_PESSOA, VLR_UNITARIO, QTD, PERC_ICMS,'#13#10'      ' +
      ' PERC_IPI, VLR_DESCONTO, UNIDADE, QTD2, TAMANHO, PERC_TRIBUTACAO' +
      ', VLR_FRETE, ID_CFOP, ID_NOTA, SERIE,'#13#10'       UNIDADE_ORIG, VLR_' +
      'UNITARIOORIG, QTD_ORIG, VLR_DESCONTOORIG, MERCADO, ID_CENTROCUST' +
      'O, QTD_ENT, QTD_SAI, TESTE,'#13#10'       ID_CUPOM, ID_LOCAL_ESTOQUE, ' +
      'NUM_LOTE_CONTROLE, GERAR_CUSTO, PRECO_CUSTO_TOTAL, VLR_AJUSTE_CU' +
      'STO, ID_OPERACAO,'#13#10'       REF_PROD_FORNECEDOR, LARGURA, COMPRIME' +
      'NTO, ESPESSURA, ID_PRODUTO_ORIG, ID_PEDIDO, ID_PEDIDO_RESERVA, I' +
      'TEM_PEDIDO,'#13#10'       LOCALIZACAO, USUARIO, VLR_ICMS_ST_RETIDO, VL' +
      'R_ICMS_ST_SUBSTITUTO'#13#10'from ESTOQUE_MOV'#13#10'where ID = :ID   '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 96
    object sdsEstoque_MovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEstoque_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsEstoque_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsEstoque_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsEstoque_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsEstoque_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsEstoque_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object sdsEstoque_MovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsEstoque_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsEstoque_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsEstoque_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsEstoque_MovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsEstoque_MovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsEstoque_MovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsEstoque_MovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsEstoque_MovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object sdsEstoque_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsEstoque_MovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object sdsEstoque_MovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsEstoque_MovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsEstoque_MovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsEstoque_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsEstoque_MovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object sdsEstoque_MovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object sdsEstoque_MovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object sdsEstoque_MovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object sdsEstoque_MovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object sdsEstoque_MovID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object sdsEstoque_MovQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object sdsEstoque_MovQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object sdsEstoque_MovTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
    object sdsEstoque_MovID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object sdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsEstoque_MovNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsEstoque_MovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsEstoque_MovPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsEstoque_MovVLR_AJUSTE_CUSTO: TFloatField
      FieldName = 'VLR_AJUSTE_CUSTO'
    end
    object sdsEstoque_MovID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object sdsEstoque_MovREF_PROD_FORNECEDOR: TStringField
      FieldName = 'REF_PROD_FORNECEDOR'
    end
    object sdsEstoque_MovLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsEstoque_MovCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object sdsEstoque_MovESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object sdsEstoque_MovID_PRODUTO_ORIG: TIntegerField
      FieldName = 'ID_PRODUTO_ORIG'
    end
    object sdsEstoque_MovID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsEstoque_MovID_PEDIDO_RESERVA: TIntegerField
      FieldName = 'ID_PEDIDO_RESERVA'
    end
    object sdsEstoque_MovITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsEstoque_MovLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object sdsEstoque_MovUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsEstoque_MovVLR_ICMS_ST_RETIDO: TFloatField
      FieldName = 'VLR_ICMS_ST_RETIDO'
    end
    object sdsEstoque_MovVLR_ICMS_ST_SUBSTITUTO: TFloatField
      FieldName = 'VLR_ICMS_ST_SUBSTITUTO'
    end
  end
  object dspEstoque_Mov: TDataSetProvider
    DataSet = sdsEstoque_Mov
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 96
  end
  object cdsEstoque_Mov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Mov'
    Left = 400
    Top = 96
    object cdsEstoque_MovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEstoque_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoque_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object cdsEstoque_MovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsEstoque_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsEstoque_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_MovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsEstoque_MovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsEstoque_MovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsEstoque_MovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoque_MovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object cdsEstoque_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_MovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object cdsEstoque_MovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsEstoque_MovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsEstoque_MovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsEstoque_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEstoque_MovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object cdsEstoque_MovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object cdsEstoque_MovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object cdsEstoque_MovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object cdsEstoque_MovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object cdsEstoque_MovID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsEstoque_MovQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object cdsEstoque_MovQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object cdsEstoque_MovTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
    object cdsEstoque_MovID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoque_MovNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEstoque_MovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MovPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsEstoque_MovVLR_AJUSTE_CUSTO: TFloatField
      FieldName = 'VLR_AJUSTE_CUSTO'
    end
    object cdsEstoque_MovID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object cdsEstoque_MovREF_PROD_FORNECEDOR: TStringField
      FieldName = 'REF_PROD_FORNECEDOR'
    end
    object cdsEstoque_MovLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsEstoque_MovCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsEstoque_MovESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsEstoque_MovID_PRODUTO_ORIG: TIntegerField
      FieldName = 'ID_PRODUTO_ORIG'
    end
    object cdsEstoque_MovID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsEstoque_MovID_PEDIDO_RESERVA: TIntegerField
      FieldName = 'ID_PEDIDO_RESERVA'
    end
    object cdsEstoque_MovITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsEstoque_MovLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsEstoque_MovUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsEstoque_MovVLR_ICMS_ST_RETIDO: TFloatField
      FieldName = 'VLR_ICMS_ST_RETIDO'
    end
    object cdsEstoque_MovVLR_ICMS_ST_SUBSTITUTO: TFloatField
      FieldName = 'VLR_ICMS_ST_SUBSTITUTO'
    end
  end
  object dsEstoque_Mov: TDataSource
    DataSet = cdsEstoque_Mov
    Left = 432
    Top = 96
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select F.ID, F.NOME, F.NOME_INTERNO, F.CNPJ_CPF'
      'from FILIAL F  ')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 160
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
end
