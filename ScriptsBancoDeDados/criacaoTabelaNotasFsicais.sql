SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NOTAS_FISCAIS_ENTRADAS](
	[NF_ENTRADA] [varchar](10) NOT NULL,
	[SERIE_NF_ENTRADA] [varchar](2) NOT NULL,
	[FORNECEDOR] [varchar](50) NOT NULL,
	[EMISSAO] [date] NULL,
	[VALOR_MERCADORIAS] [numeric](14, 2) NULL,
	[VALOR_DESCONTO] [numeric](14, 2) NULL,
	[VALOR_FRETE] [numeric](14, 2) NULL,
	[VALOR_TOTAL] [numeric](14, 2) NULL,
	[STATUS] [varchar](1) NULL,
 CONSTRAINT [PK_NOTAS_FISCAIS_ENTRADAS] PRIMARY KEY CLUSTERED 
(
	[NF_ENTRADA] ASC,
	[SERIE_NF_ENTRADA] ASC,
	[FORNECEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT INTO NOTAS_FISCAIS_ENTRADAS
(
NF_ENTRADA,
SERIE_NF_ENTRADA,
FORNECEDOR,
EMISSAO,
VALOR_MERCADORIAS,
VALOR_DESCONTO,
VALOR_FRETE,
VALOR_TOTAL,
STATUS
)
VALUES
(
'00000001',
'01',
'CASA DAS PEDRAS LTDA',
'20230110',
10,
0,
1.50,
11.50,
'P'
)


INSERT INTO NOTAS_FISCAIS_ENTRADAS
(
NF_ENTRADA,
SERIE_NF_ENTRADA,
FORNECEDOR,
EMISSAO,
VALOR_MERCADORIAS,
VALOR_DESCONTO,
VALOR_FRETE,
VALOR_TOTAL,
STATUS
)
VALUES
(
'00000015',
'01',
'LOJA DE FERRAGENS 25 MARCO LTDA',
'20230110',
1500,
50,
4.50,
1454.50,
'P'
)

INSERT INTO NOTAS_FISCAIS_ENTRADAS
(
NF_ENTRADA,
SERIE_NF_ENTRADA,
FORNECEDOR,
EMISSAO,
VALOR_MERCADORIAS,
VALOR_DESCONTO,
VALOR_FRETE,
VALOR_TOTAL,
STATUS
)
VALUES
(
'00000405',
'01',
'JULIANA ARTIGOS PARA CONSTRUCAO LTDA',
'20230115',
10300,
0,
0,
10300,
'P'
)


INSERT INTO NOTAS_FISCAIS_ENTRADAS
(
NF_ENTRADA,
SERIE_NF_ENTRADA,
FORNECEDOR,
EMISSAO,
VALOR_MERCADORIAS,
VALOR_DESCONTO,
VALOR_FRETE,
VALOR_TOTAL,
STATUS
)
VALUES
(
'00000325',
'01',
'A CACULA PNEUS LTDA',
'20230103',
60000,
6000,
350,
54350,
'P'
)



