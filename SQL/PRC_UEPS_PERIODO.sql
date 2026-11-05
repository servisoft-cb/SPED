/* Copia da PRC_UEPS: a original permanece intacta.
   Aplicar antes de executar o SPED atualizado.
   Exemplo: periodo 2026-10-01 ate 2026-10-31.
   Saidas selecionadas: 2026-09-01 ate 2026-10-31 (inclusive).
   Entradas: historico com saldo ate a data de cada saida.
*/
SET SQL DIALECT 3;
SET TERM ^ ;

CREATE PROCEDURE PRC_UEPS_PERIODO (
    P_FILIAL INTEGER,
    P_DATA_INICIAL DATE,
    P_DATA_FINAL DATE)
AS
declare variable VDATA_INICIAL date;
declare variable VID_NOTA integer;

declare variable VSALDO double precision;

declare variable VITEM integer;

declare variable VID_PRODUTO integer;

declare variable VID_COR integer;

declare variable VTAMANHO varchar(10);

declare variable VUF_CLIENTE varchar(2);

declare variable VQTD_SAIDA double precision;

declare variable VDATA date;

declare variable VICMSSUBST double precision;

declare variable VICMSSUBST_RET double precision;

declare variable VQTD_ORIGINAL double precision;

declare variable VVLR_ICMS double precision;

declare variable VQTDAUX double precision;

declare variable VIDAUX integer;

declare variable VID_DOCSAIDA integer;

declare variable VITEM_DOCSAIDA integer;

declare variable VTIPO_SAIDA varchar(5);

declare variable VHREMISSAO time;

declare variable VNUM_DOC_SAIDA integer;

declare variable VSERIE_DOC_SAIDA varchar(3);

declare variable VID_CLIENTE integer;

declare variable VID_FORNECEDOR integer;

declare variable VNUM_NOTA_ENT integer;

declare variable VSERIE_NOTA_ENT varchar(3);

declare variable VVLR_UNITARIO double precision;

declare variable VUF char(2);

declare variable VPERC_MVA double precision;

declare variable VQTD_PACOTE double precision;

declare variable VVLR_DESCONTO double precision;

begin
  VDATA_INICIAL = dateadd(-1 month to P_DATA_INICIAL);

  select coalesce(F.UF, 'RS') UF

  from FILIAL F

  where F.ID = :P_FILIAL

  into :VUF;



  for select AUX.QTD, AUX.UF, AUX.ID_PRODUTO, coalesce(AUX.ID_COR, 0), AUX.TAMANHO, AUX.DTEMISSAO, AUX.ID, AUX.ITEM,

             AUX.HREMISSAO, AUX.TIPO_SAIDA, AUX.NUMNOTA, AUX.SERIE, AUX.ID_CLIENTE

      from (select I.QTD, CLI.UF, I.ID_PRODUTO, I.ID_COR, I.TAMANHO, N.DTEMISSAO, N.ID, I.ITEM, N.HREMISSAO,

                   'NTS' TIPO_SAIDA, N.NUMNOTA, N.SERIE, N.ID_CLIENTE

            from NOTAFISCAL N

            inner join NOTAFISCAL_ITENS I on I.ID = N.ID

            inner join PESSOA CLI on CLI.CODIGO = N.ID_CLIENTE

            where N.TIPO_REG = 'NTS' and

                  N.TIPO_NOTA = 'S' and

                  N.CANCELADA = 'N' and

                  N.NFEDENEGADA = 'N' and

                  N.DTEMISSAO between :VDATA_INICIAL and :P_DATA_FINAL and

                  N.FILIAL = :P_FILIAL and

                  not exists(select 1

                             from UEPS_ESTOQUE P

                             where P.ID_DOC_SAIDA = N.ID and

                                   P.ITEM_DOC_SAIDA = I.ITEM and

                                   P.TIPO_DOC_SAIDA = 'NTS')



            union all



            select IC.QTD, 'RS', IC.ID_PRODUTO, coalesce(IC.ID_COR_COMBINACO, 0), IC.TAMANHO, C.DTEMISSAO, C.ID,

                   IC.ITEM, C.HREMISSAO, 'CFI' TIPO_SAIDA, C.NUMCUPOM, C.SERIE, C.ID_CLIENTE

            from CUPOMFISCAL C

            inner join CUPOMFISCAL_ITENS IC on IC.ID = C.ID

            inner join PESSOA CLI2 on CLI2.CODIGO = C.ID_CLIENTE

            where C.TIPO = 'NFC' and

                  C.CANCELADO = 'N' and

                  C.NFEDENEGADA = 'N' and

                  C.DTEMISSAO between :VDATA_INICIAL and :P_DATA_FINAL and

                  C.FILIAL = :P_FILIAL and

                  not exists(select 1

                             from UEPS_ESTOQUE P2

                             where P2.ID_DOC_SAIDA = C.ID and

                                   P2.ITEM_DOC_SAIDA = IC.ITEM and

                                   P2.TIPO_DOC_SAIDA = 'CFI')) AUX

      order by AUX.DTEMISSAO, AUX.HREMISSAO

      into :VQTD_SAIDA, :VUF_CLIENTE, :VID_PRODUTO, :VID_COR, :VTAMANHO, :VDATA, :VID_DOCSAIDA, :VITEM_DOCSAIDA,

           :VHREMISSAO, :VTIPO_SAIDA, :VNUM_DOC_SAIDA, :VSERIE_DOC_SAIDA, :VID_CLIENTE

  do

  begin

    for select N.ID, I.ITEM, E.SALDO, I.QTD, I.VLR_ICMSSUBST, I.VLR_ICMSSUBST_RET, N.NUMNOTA, N.SERIE, N.ID_CLIENTE,

               I.VLR_UNITARIO, I.PERC_MVA, I.VLR_DESCONTO, iif(I.QTD_PACOTE = 0, 1, I.QTD_PACOTE) QTD_PACOTE

        from NOTAFISCAL N

        inner join NOTAFISCAL_ITENS I on N.ID = I.ID

        inner join NOTAFISCAL_ITENS_EST_UEPS E on I.ID = E.ID and

              I.ITEM = E.ITEM

        where N.TIPO_REG = 'NTE' and

              N.CANCELADA = 'N' and

              I.ID_PRODUTO = :VID_PRODUTO and

              I.ID_COR = :VID_COR and

              I.TAMANHO = :VTAMANHO and

              N.DTSAIDAENTRADA <= :VDATA and

              N.FILIAL = :P_FILIAL and

              E.SALDO > 0

        order by N.DTSAIDAENTRADA desc, N.ID desc -- <<--- UEPS: entradas mais recentes primeiro

        into :VID_NOTA, :VITEM, :VSALDO, :VQTD_ORIGINAL, :VICMSSUBST, :VICMSSUBST_RET, :VNUM_NOTA_ENT, :VSERIE_NOTA_ENT,

             :VID_FORNECEDOR, :VVLR_UNITARIO, :VPERC_MVA, :VVLR_DESCONTO, :VQTD_PACOTE

    do

    begin

      VVLR_ICMS = 0;

      if (VUF_CLIENTE <> :VUF) then

      begin

        if (VICMSSUBST > 0) then

          VVLR_ICMS = round(VICMSSUBST / VQTD_ORIGINAL, 2);

        if (VICMSSUBST_RET > 0) then

          VVLR_ICMS = round(VICMSSUBST_RET / VQTD_ORIGINAL, 2);

      end



      if (VSALDO > VQTD_SAIDA) then

        VQTDAUX = VQTD_SAIDA;

      else

        VQTDAUX = VSALDO;



      select gen_id(GEN_UEPS_ESTOQUE, 1)

      from RDB$DATABASE

      into :VIDAUX;



      insert into UEPS_ESTOQUE (ID, DTMOV, ID_PRODUTO, ID_COR, TAMANHO, TIPO_ES, QTD, ID_NOTA_ENT, ITEM_NOTA_ENT,

                                PERC_ICMS, VLR_UNITARIO, BASE_ICMS, VLR_ICMS, UF, ID_DOC_SAIDA, ITEM_DOC_SAIDA,

                                TIPO_DOC_SAIDA, DEVOLUCAO, NUM_DOC_SAIDA, SERIE_DOC_SAIDA, ID_CLIENTE, ID_FORNECEDOR,

                                NUM_NOTA_ENT, SERIE_NOTA_ENT, FILIAL, PERC_MVA, VLR_DESCONTO, QTDE_NOTA, QTDE_PACOTE)

      values (:VIDAUX, :VDATA, :VID_PRODUTO, :VID_COR, :VTAMANHO, 'S', :VQTDAUX, :VID_NOTA, :VITEM, 0, :VVLR_UNITARIO,

              0, :VVLR_ICMS, :VUF_CLIENTE, :VID_DOCSAIDA, :VITEM_DOCSAIDA, :VTIPO_SAIDA, 'N', :VNUM_DOC_SAIDA,

              :VSERIE_DOC_SAIDA, :VID_CLIENTE, :VID_FORNECEDOR, :VNUM_NOTA_ENT, :VSERIE_NOTA_ENT, :P_FILIAL, :VPERC_MVA,

              :VVLR_DESCONTO, :VQTD_ORIGINAL, :VQTD_PACOTE);



      VQTD_SAIDA = round(VQTD_SAIDA - VQTDAUX, 4);

      if (round(VQTD_SAIDA, 4) <= 0) then

        leave;

    end

  end

end
^

SET TERM ; ^
COMMIT;
