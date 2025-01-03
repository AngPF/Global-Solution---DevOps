/****** Object:  Table [dbo].[tb_snw_clientes]    Script Date: 20/11/2024 22:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_snw_clientes](
	[id] [bigint] NOT NULL,
	[email] [varchar](255) NOT NULL,
	[endereco] [varchar](255) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[telefone] [varchar](255) NOT NULL,
	[usuario_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_snw_projetos]    Script Date: 20/11/2024 22:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_snw_projetos](
	[id] [bigint] NOT NULL,
	[co2evitado10anos] [float] NOT NULL,
	[consumo_energetico] [float] NOT NULL,
	[economia10anos] [float] NOT NULL,
	[economia_mensal] [float] NOT NULL,
	[impacto_ambiental] [varchar](255) NULL,
	[orcamento] [float] NOT NULL,
	[retorno_em_anos] [varchar](255) NULL,
	[tarifa_mensal] [float] NOT NULL,
	[tempo_retorno_investimento_meses] [int] NOT NULL,
	[usuario_id] [bigint] NOT NULL,
	[cliente_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_snw_usuarios]    Script Date: 20/11/2024 22:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_snw_usuarios](
	[id] [bigint] NOT NULL,
	[email] [varchar](255) NOT NULL,
	[nome_empresa] [varchar](255) NOT NULL,
	[senha] [varchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_snw_projetos]  WITH CHECK ADD  CONSTRAINT [FKpqwxsiag6afoub28e5a34i86b] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[tb_snw_clientes] ([id])
GO
ALTER TABLE [dbo].[tb_snw_projetos] CHECK CONSTRAINT [FKpqwxsiag6afoub28e5a34i86b]
GO
