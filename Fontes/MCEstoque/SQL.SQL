CREATE TABLE tbtribnfestado (
  CodTributacaoNotaFiscal int NOT NULL,
  CodUF char(2) NOT NULL,
  BaseContrib decimal(3,2),
  AliquotaContrib decimal(3,2),
  BaseNContrib decimal(3,2),
  AliquotaNContrib decimal(3,2),
  BaseEntrada decimal(3,2),
  AliquotaEntrada decimal(3,2),
  BaseTransf decimal(3,2),
  AliquotaTransf decimal(3,2),
  BaseSubTrib decimal(3,2),
  AliquotaSubTrib decimal(3,2),
  BaseProdRural decimal(3,2) NOT NULL,
  AliquotaProdRural decimal(3,2) NOT NULL
);
ALTER TABLE tbtribnfestado FK_CodTributacaoNotaFiscal_NFUF FOREIGN KEY (CodTributacaoNotaFiscal) REFERENCES tbtributacaonotafiscal(CodTributacaoNotaFiscal);
ALTER TABLE tbtribnfestado FK_CodUF_NFUF FOREIGN KEY (CODUF) REFERENCES TBUF(CodUF);

