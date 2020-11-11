USE [sifco_db]
GO
/****** Object:  Table [dbo].[Anexo]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anexo](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[observacion] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Anexo] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[hora_inicio] [time] NOT NULL,
	[hora_fin] [time] NOT NULL,
 CONSTRAINT [PK_Consulta] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_anexo]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_anexo](
	[anexo] [int] NOT NULL,
	[foto] [int] NULL,
	[medicamento] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_consulta]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_consulta](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[consulta] [int] NOT NULL,
	[paciente] [int] NOT NULL,
	[medico] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[proxima_consulta] [int] NULL,
	[anexo] [int] NULL,
 CONSTRAINT [PK_Detalle_consulta] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_especialidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_especialidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fotografia]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fotografia](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[foto] [image] NOT NULL,
 CONSTRAINT [PK_Fotografia] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamento](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_medicamento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Medicamento] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_completo] [varchar](150) NOT NULL,
	[colegiado] [int] NOT NULL,
	[sexo] [varchar](1) NOT NULL,
	[nacimiento] [date] NOT NULL,
	[especialidad] [int] NOT NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 11/11/20 12:23:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_completo] [varchar](50) NOT NULL,
	[nacimiento] [date] NOT NULL,
	[sexo] [varchar](1) NOT NULL,
	[dpi] [bigint] NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Detalle_anexo]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_anexo_Anexo] FOREIGN KEY([anexo])
REFERENCES [dbo].[Anexo] ([codigo])
GO
ALTER TABLE [dbo].[Detalle_anexo] CHECK CONSTRAINT [FK_Detalle_anexo_Anexo]
GO
ALTER TABLE [dbo].[Detalle_anexo]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_anexo_Fotografia] FOREIGN KEY([foto])
REFERENCES [dbo].[Fotografia] ([codigo])
GO
ALTER TABLE [dbo].[Detalle_anexo] CHECK CONSTRAINT [FK_Detalle_anexo_Fotografia]
GO
ALTER TABLE [dbo].[Detalle_anexo]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_anexo_Medicamento] FOREIGN KEY([medicamento])
REFERENCES [dbo].[Medicamento] ([codigo])
GO
ALTER TABLE [dbo].[Detalle_anexo] CHECK CONSTRAINT [FK_Detalle_anexo_Medicamento]
GO
ALTER TABLE [dbo].[Detalle_consulta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_consulta_Anexo] FOREIGN KEY([anexo])
REFERENCES [dbo].[Anexo] ([codigo])
GO
ALTER TABLE [dbo].[Detalle_consulta] CHECK CONSTRAINT [FK_Detalle_consulta_Anexo]
GO
ALTER TABLE [dbo].[Detalle_consulta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_consulta_Consulta] FOREIGN KEY([consulta])
REFERENCES [dbo].[Consulta] ([codigo])
GO
ALTER TABLE [dbo].[Detalle_consulta] CHECK CONSTRAINT [FK_Detalle_consulta_Consulta]
GO
ALTER TABLE [dbo].[Detalle_consulta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_consulta_Estado] FOREIGN KEY([estado])
REFERENCES [dbo].[Estado] ([codigo])
GO
ALTER TABLE [dbo].[Detalle_consulta] CHECK CONSTRAINT [FK_Detalle_consulta_Estado]
GO
ALTER TABLE [dbo].[Detalle_consulta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_consulta_Medico] FOREIGN KEY([medico])
REFERENCES [dbo].[Medico] ([codigo])
GO
ALTER TABLE [dbo].[Detalle_consulta] CHECK CONSTRAINT [FK_Detalle_consulta_Medico]
GO
ALTER TABLE [dbo].[Detalle_consulta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_consulta_Paciente] FOREIGN KEY([paciente])
REFERENCES [dbo].[Paciente] ([codigo])
GO
ALTER TABLE [dbo].[Detalle_consulta] CHECK CONSTRAINT [FK_Detalle_consulta_Paciente]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Especialidad] FOREIGN KEY([especialidad])
REFERENCES [dbo].[Especialidad] ([codigo])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Especialidad]
GO
