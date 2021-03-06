USE [AbogadosBD]
GO
/****** Object:  Table [dbo].[Abogado]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abogado](
	[IdAbogado] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](30) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[Identidad] [varchar](17) NOT NULL,
	[Telefono] [varchar](17) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Domicilio] [varchar](250) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[NumeroColegiado] [int] NOT NULL,
	[IdEstadoCivil] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [Abogado_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdAbogado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agenda]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agenda](
	[IdAgenda] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdCaso] [int] NULL,
 CONSTRAINT [Agenda_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdAgenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Caso]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caso](
	[IdCaso] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[TituloCaso] [varchar](30) NOT NULL,
	[IdTipoCaso] [int] NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Honorario] [decimal](11, 2) NOT NULL,
	[Estado] [bit] NULL,
	[IdJuzgado] [int] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[NumExpJuzgado] [int] NOT NULL,
	[NumExpDpi] [int] NULL,
	[NumExpMinPublico] [int] NULL,
 CONSTRAINT [Caso_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdCaso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasoAbogado]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasoAbogado](
	[IdCaso] [int] NULL,
	[IdAbogado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasoFiscal]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasoFiscal](
	[IdCaso] [int] NULL,
	[IdFiscal] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaAbogado]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaAbogado](
	[IdCategoriaAbogado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [CategoriaAbogado_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdCategoriaAbogado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](30) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[Identidad] [varchar](17) NOT NULL,
	[Telefono] [varchar](17) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Domicilio] [varchar](250) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[IdEstadoCivil] [int] NULL,
	[IdOcupacion] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [Cliente_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta](
	[IdConsulta] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[IdAbogado] [int] NULL,
	[FechaHora] [datetime] NOT NULL,
	[TipoConsulta] [int] NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [Consulta_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadAbogado]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadAbogado](
	[IdAbogado] [int] NULL,
	[IdCategoriaAbogado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[IdEstadoCivil] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [EstadoCivil_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoCivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evidencia]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evidencia](
	[IdEvidencia] [int] IDENTITY(1,1) NOT NULL,
	[Comentario] [varchar](250) NOT NULL,
	[UrlEvidencia] [varchar](250) NOT NULL,
	[IdTipoEvidencia] [int] NULL,
	[Fecha] [datetime] NOT NULL,
	[IdCaso] [int] NULL,
 CONSTRAINT [Evidencia_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdEvidencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fiscal]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fiscal](
	[IdFiscal] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](30) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[Identidad] [varchar](17) NOT NULL,
	[Telefono] [varchar](17) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[NumeroColegiado] [int] NOT NULL,
	[IdTipoFiscal] [int] NULL,
	[IdEstadoCivil] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [Fiscal_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdFiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gasto]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gasto](
	[IdGasto] [int] IDENTITY(1,1) NOT NULL,
	[Comentario] [varchar](250) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Monto] [decimal](11, 2) NOT NULL,
	[IdTipoGasto] [int] NULL,
 CONSTRAINT [Gasto_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdGasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GastoCaso]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GastoCaso](
	[IdCaso] [int] NULL,
	[IdGasto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indicio]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indicio](
	[IdIndicio] [int] IDENTITY(1,1) NOT NULL,
	[Comentario] [varchar](250) NOT NULL,
	[UrlIndicio] [varchar](250) NOT NULL,
	[IdTipoIndicio] [int] NULL,
	[Fecha] [datetime] NOT NULL,
	[IdCaso] [int] NULL,
 CONSTRAINT [Indicio_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdIndicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Juzgado]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Juzgado](
	[IdJuzgado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Ubicacion] [varchar](250) NOT NULL,
	[Telefono] [varchar](17) NOT NULL,
	[IdTipoJuzgado] [int] NULL,
 CONSTRAINT [Juzgado_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdJuzgado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ocupacion]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ocupacion](
	[IdOcupacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [Ocupacion_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdOcupacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[IdPago] [int] IDENTITY(1,1) NOT NULL,
	[Comentario] [varchar](250) NOT NULL,
	[Monto] [decimal](11, 2) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdTipoPago] [int] NULL,
 CONSTRAINT [Pago_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoCaso]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoCaso](
	[IdCaso] [int] NULL,
	[IdPago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoConsulta]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoConsulta](
	[IdConsulta] [int] NULL,
	[IdPago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoUsuario]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoUsuario](
	[IdPago] [int] NULL,
	[IdUsuario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [Rol_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testigo]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testigo](
	[IdTestigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](30) NULL,
	[Apellidos] [varchar](30) NULL,
	[Identidad] [varchar](17) NULL,
	[Telefono] [varchar](17) NULL,
	[Correo] [varchar](150) NULL,
	[Domicilio] [varchar](250) NULL,
	[FechaNacimiento] [datetime] NULL,
	[IdEstadoCivil] [int] NULL,
	[IdOcupacion] [int] NULL,
	[IdTipoTestigo] [int] NULL,
	[Estado] [bit] NULL,
	[idCaso] [int] NULL,
 CONSTRAINT [Testigo_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTestigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestigoCaso]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestigoCaso](
	[IdCaso] [int] NULL,
	[IdTestigo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCaso]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCaso](
	[IdTipoCaso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [TipoCaso_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoCaso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoConsulta]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoConsulta](
	[IdTipoConsulta] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [TipoConsulta_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoEvidencia]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEvidencia](
	[IdTipoEvidencia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [TipoEvidencia_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoEvidencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoFiscal]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFiscal](
	[IdTipoFiscal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [TipoFiscal_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoFiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoGasto]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoGasto](
	[IdTipoGasto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [TipoGasto_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoGasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoIndicio]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoIndicio](
	[IdTipoIndicio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [TipoIndicio_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoIndicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoJuzgado]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoJuzgado](
	[IdTipoJuzgado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
 CONSTRAINT [TipoJuzgado_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoJuzgado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPago](
	[IdTipoPago] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [TipoPago_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTestigo]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTestigo](
	[IdTipoTestigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [TipoTestigo_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoTestigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](30) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[Identidad] [varchar](17) NOT NULL,
	[Contrasenia] [varchar](30) NOT NULL,
	[IdRol] [int] NULL,
	[Estado] [bit] NULL,
	[Usuario] [varchar](30) NOT NULL,
 CONSTRAINT [Usuario_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Abogado] ON 

INSERT [dbo].[Abogado] ([IdAbogado], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [NumeroColegiado], [IdEstadoCivil], [Estado]) VALUES (2027, N'Jose Ramiro', N'Escobar Flores', N'0102198809678', N'97863412', N'escobarFlores@gmail.com', N'col. Miraflores', CAST(N'1988-11-11T00:00:00.000' AS DateTime), 12345, 4, 1)
INSERT [dbo].[Abogado] ([IdAbogado], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [NumeroColegiado], [IdEstadoCivil], [Estado]) VALUES (3028, N'Maria Jose', N'Torres Garcia', N'0101199819324', N'99234567', N'mariaJose@gmail.com', N'col. la pradera , calle 5', CAST(N'1998-12-10T00:00:00.000' AS DateTime), 12567, 3, 1)
INSERT [dbo].[Abogado] ([IdAbogado], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [NumeroColegiado], [IdEstadoCivil], [Estado]) VALUES (3029, N'Angel Wilfredo', N'Garcia Portillo', N'0202199909876', N'87645301', N'garciaPortillo@gmail.com', N'col sierra pina', CAST(N'1999-12-24T00:00:00.000' AS DateTime), 123432, 4, 1)
INSERT [dbo].[Abogado] ([IdAbogado], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [NumeroColegiado], [IdEstadoCivil], [Estado]) VALUES (3030, N'Jorge Brayan', N'Calix Chacon', N'010120004567', N'99886745', N'Brayan.chacon@gmail.com', N'col La esperanza', CAST(N'2000-12-21T00:00:00.000' AS DateTime), 18956, 1, 0)
SET IDENTITY_INSERT [dbo].[Abogado] OFF
GO
SET IDENTITY_INSERT [dbo].[Agenda] ON 

INSERT [dbo].[Agenda] ([IdAgenda], [Descripcion], [Fecha], [IdCaso]) VALUES (13, N'Inicializacion', CAST(N'2020-12-16T00:00:00.000' AS DateTime), 2013)
INSERT [dbo].[Agenda] ([IdAgenda], [Descripcion], [Fecha], [IdCaso]) VALUES (14, N'Inicio', CAST(N'2020-12-24T00:00:00.000' AS DateTime), 2013)
SET IDENTITY_INSERT [dbo].[Agenda] OFF
GO
SET IDENTITY_INSERT [dbo].[Caso] ON 

INSERT [dbo].[Caso] ([IdCaso], [IdCliente], [TituloCaso], [IdTipoCaso], [Descripcion], [Honorario], [Estado], [IdJuzgado], [FechaCreacion], [NumExpJuzgado], [NumExpDpi], [NumExpMinPublico]) VALUES (1003, 1010, N'Caso #001', 3, N'.', CAST(12345.00 AS Decimal(11, 2)), 1, 2, CAST(N'2020-12-01T00:00:00.000' AS DateTime), 0, 0, 0)
INSERT [dbo].[Caso] ([IdCaso], [IdCliente], [TituloCaso], [IdTipoCaso], [Descripcion], [Honorario], [Estado], [IdJuzgado], [FechaCreacion], [NumExpJuzgado], [NumExpDpi], [NumExpMinPublico]) VALUES (1004, 1, N'Caso #003', 1, N'.', CAST(54321.00 AS Decimal(11, 2)), 1, 1, CAST(N'2020-12-02T00:00:00.000' AS DateTime), 23232, 2232, 4343)
INSERT [dbo].[Caso] ([IdCaso], [IdCliente], [TituloCaso], [IdTipoCaso], [Descripcion], [Honorario], [Estado], [IdJuzgado], [FechaCreacion], [NumExpJuzgado], [NumExpDpi], [NumExpMinPublico]) VALUES (1005, 1, N'Caso #004', 3, N'Divorcio unilateral', CAST(1234.00 AS Decimal(11, 2)), 1, 2, CAST(N'2020-12-02T00:00:00.000' AS DateTime), 2321, 3432, 4543)
INSERT [dbo].[Caso] ([IdCaso], [IdCliente], [TituloCaso], [IdTipoCaso], [Descripcion], [Honorario], [Estado], [IdJuzgado], [FechaCreacion], [NumExpJuzgado], [NumExpDpi], [NumExpMinPublico]) VALUES (1006, 1, N'Caso #006', 4, N'.', CAST(12345.00 AS Decimal(11, 2)), 1, 1, CAST(N'2020-12-03T00:00:00.000' AS DateTime), 12, 32, 54)
INSERT [dbo].[Caso] ([IdCaso], [IdCliente], [TituloCaso], [IdTipoCaso], [Descripcion], [Honorario], [Estado], [IdJuzgado], [FechaCreacion], [NumExpJuzgado], [NumExpDpi], [NumExpMinPublico]) VALUES (1010, 1, N'Caso divorcio', 1, N'Divorcio de pareja, en disputas de viens', CAST(10000.00 AS Decimal(11, 2)), 1, 1, CAST(N'2020-12-05T00:00:00.000' AS DateTime), 0, 0, 0)
INSERT [dbo].[Caso] ([IdCaso], [IdCliente], [TituloCaso], [IdTipoCaso], [Descripcion], [Honorario], [Estado], [IdJuzgado], [FechaCreacion], [NumExpJuzgado], [NumExpDpi], [NumExpMinPublico]) VALUES (2010, 1, N'Caso #7', 3, N'divorcio', CAST(12999.00 AS Decimal(11, 2)), 1, 1, CAST(N'2020-12-07T00:00:00.000' AS DateTime), 0, 0, 0)
INSERT [dbo].[Caso] ([IdCaso], [IdCliente], [TituloCaso], [IdTipoCaso], [Descripcion], [Honorario], [Estado], [IdJuzgado], [FechaCreacion], [NumExpJuzgado], [NumExpDpi], [NumExpMinPublico]) VALUES (2011, 1, N'Caso #8', 1, N'divorcio unilateral', CAST(12000.00 AS Decimal(11, 2)), 1, 1, CAST(N'2020-12-07T00:00:00.000' AS DateTime), 0, 0, 0)
INSERT [dbo].[Caso] ([IdCaso], [IdCliente], [TituloCaso], [IdTipoCaso], [Descripcion], [Honorario], [Estado], [IdJuzgado], [FechaCreacion], [NumExpJuzgado], [NumExpDpi], [NumExpMinPublico]) VALUES (2012, 1, N'Caso #6', 1, N'divorcio unilateral', CAST(12000.00 AS Decimal(11, 2)), 1, 1, CAST(N'2020-12-07T00:00:00.000' AS DateTime), 0, 0, 0)
INSERT [dbo].[Caso] ([IdCaso], [IdCliente], [TituloCaso], [IdTipoCaso], [Descripcion], [Honorario], [Estado], [IdJuzgado], [FechaCreacion], [NumExpJuzgado], [NumExpDpi], [NumExpMinPublico]) VALUES (2013, 1, N'Caso #11', 1, N'Caso de divorcio', CAST(12000.00 AS Decimal(11, 2)), 1, 1, CAST(N'2020-12-07T00:00:00.000' AS DateTime), 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Caso] OFF
GO
INSERT [dbo].[CasoAbogado] ([IdCaso], [IdAbogado]) VALUES (2013, 2027)
INSERT [dbo].[CasoAbogado] ([IdCaso], [IdAbogado]) VALUES (1010, 2027)
INSERT [dbo].[CasoAbogado] ([IdCaso], [IdAbogado]) VALUES (2012, 2027)
GO
INSERT [dbo].[CasoFiscal] ([IdCaso], [IdFiscal]) VALUES (1006, 1)
INSERT [dbo].[CasoFiscal] ([IdCaso], [IdFiscal]) VALUES (1004, 1)
INSERT [dbo].[CasoFiscal] ([IdCaso], [IdFiscal]) VALUES (2011, 1)
INSERT [dbo].[CasoFiscal] ([IdCaso], [IdFiscal]) VALUES (2013, 1)
INSERT [dbo].[CasoFiscal] ([IdCaso], [IdFiscal]) VALUES (1003, 1)
INSERT [dbo].[CasoFiscal] ([IdCaso], [IdFiscal]) VALUES (2013, 2)
GO
SET IDENTITY_INSERT [dbo].[CategoriaAbogado] ON 

INSERT [dbo].[CategoriaAbogado] ([IdCategoriaAbogado], [Nombre], [Descripcion]) VALUES (1, N'Abogados penalistas', N'')
INSERT [dbo].[CategoriaAbogado] ([IdCategoriaAbogado], [Nombre], [Descripcion]) VALUES (2, N'Abogados civil', N'')
INSERT [dbo].[CategoriaAbogado] ([IdCategoriaAbogado], [Nombre], [Descripcion]) VALUES (3, N'Abogados de familia', N'')
INSERT [dbo].[CategoriaAbogado] ([IdCategoriaAbogado], [Nombre], [Descripcion]) VALUES (4, N'Abogados laboralista', N'')
INSERT [dbo].[CategoriaAbogado] ([IdCategoriaAbogado], [Nombre], [Descripcion]) VALUES (1002, N'Abogados administrativo', N'')
INSERT [dbo].[CategoriaAbogado] ([IdCategoriaAbogado], [Nombre], [Descripcion]) VALUES (1003, N'Abogados contador', N'')
INSERT [dbo].[CategoriaAbogado] ([IdCategoriaAbogado], [Nombre], [Descripcion]) VALUES (2002, N'Abogados Inmobiiliario', N'')
INSERT [dbo].[CategoriaAbogado] ([IdCategoriaAbogado], [Nombre], [Descripcion]) VALUES (2003, N'Abogados mercantilista', N'')
SET IDENTITY_INSERT [dbo].[CategoriaAbogado] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1, N'Angel Geovani', N'Licona Escobaroo', N'080520003620', N'00123123200', N'angel@', N'Cliente el cual necesita una consulta tecnica', CAST(N'1994-11-11T00:00:00.000' AS DateTime), 6, 3, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1002, N'Wilson Amilcar', N'Sambrano Oviedo', N'0205200400123', N'98564324', N'sambrano676@gmail.com', N'Bo. Mejia La Ceiba Atlantida', CAST(N'1995-12-15T00:00:00.000' AS DateTime), 1, 2, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1003, N'Darlin Emilson', N'Paz Barahona', N'1412197600123', N'98564732', N'barahona877@gmail.com', N'Col. Los maestros La ceiba Atlantida', CAST(N'1993-12-04T00:00:00.000' AS DateTime), 5, 1, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1004, N'Josue Maria', N'Flores Hernandez', N'0404199987654', N'99976534', N'JosueFL@gmail.com', N'col La suyapa', CAST(N'1999-12-12T00:00:00.000' AS DateTime), 6, 1, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1005, N'Maria Jose', N'Miraflores Garcia', N'0602200089734', N'88341732', N'Maria@gmail.com', N'col la pascua', CAST(N'2000-09-20T00:00:00.000' AS DateTime), 7, 3, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1006, N'Axel Daniel', N'Alvarenga Ordeñez', N'08051999052031', N'985012010', N'Alvarenga@gmail.com', N'Colonia Miraflores	', CAST(N'1999-12-19T00:00:00.000' AS DateTime), 6, 2, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1007, N'Stefany Jackeline', N'Garcia Portillo', N'0205200300124', N'98785643', N'stefany123@gmail.com', N'Tegucigalpa Honduras', CAST(N'1996-12-14T00:00:00.000' AS DateTime), 3, 3, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1008, N'Smith', N'Romario', N'010456798920', N'87657322', N'romario567@gmail.com', N'La ceiba Atlantida', CAST(N'1995-12-08T00:00:00.000' AS DateTime), 4, 2, 0)
INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1009, N'Gonzalo', N'Gonzales', N'20320202123', N'89343212', N'ah@gmai.com', N'La ceib', CAST(N'1998-12-04T00:00:00.000' AS DateTime), 1, 2, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [Estado]) VALUES (1010, N'Angel', N'Garcia', N'0205200400124', N'97646272', N'ah@gmail.com', N'La ceiba', CAST(N'1988-12-03T00:00:00.000' AS DateTime), 1, 2, 1)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Consulta] ON 

INSERT [dbo].[Consulta] ([IdConsulta], [IdCliente], [IdAbogado], [FechaHora], [TipoConsulta], [Descripcion]) VALUES (1, 1, 3028, CAST(N'2020-12-15T00:00:00.000' AS DateTime), 1, N'consulta por arrendamiento')
INSERT [dbo].[Consulta] ([IdConsulta], [IdCliente], [IdAbogado], [FechaHora], [TipoConsulta], [Descripcion]) VALUES (2, 1, 3028, CAST(N'2020-12-23T00:00:00.000' AS DateTime), 3, N'consulta por cuestion civil')
INSERT [dbo].[Consulta] ([IdConsulta], [IdCliente], [IdAbogado], [FechaHora], [TipoConsulta], [Descripcion]) VALUES (3, 1, 2027, CAST(N'2020-12-17T00:00:00.000' AS DateTime), 4, N'consulta por herencia de bienes')
INSERT [dbo].[Consulta] ([IdConsulta], [IdCliente], [IdAbogado], [FechaHora], [TipoConsulta], [Descripcion]) VALUES (4, 1, 3030, CAST(N'2020-12-21T00:00:00.000' AS DateTime), 2, N'Consulta por tema judicial')
INSERT [dbo].[Consulta] ([IdConsulta], [IdCliente], [IdAbogado], [FechaHora], [TipoConsulta], [Descripcion]) VALUES (5, 1002, 2027, CAST(N'2020-12-04T00:00:00.000' AS DateTime), 8, N'Consulta por problemas familiares')
INSERT [dbo].[Consulta] ([IdConsulta], [IdCliente], [IdAbogado], [FechaHora], [TipoConsulta], [Descripcion]) VALUES (6, 1002, 2027, CAST(N'2020-12-04T00:00:00.000' AS DateTime), 2, N'Consulta de Bienes')
INSERT [dbo].[Consulta] ([IdConsulta], [IdCliente], [IdAbogado], [FechaHora], [TipoConsulta], [Descripcion]) VALUES (7, 1002, 2027, CAST(N'2020-12-03T00:00:00.000' AS DateTime), 1, N'Consulta 1')
SET IDENTITY_INSERT [dbo].[Consulta] OFF
GO
INSERT [dbo].[EspecialidadAbogado] ([IdAbogado], [IdCategoriaAbogado]) VALUES (3030, 3)
INSERT [dbo].[EspecialidadAbogado] ([IdAbogado], [IdCategoriaAbogado]) VALUES (3029, 2)
INSERT [dbo].[EspecialidadAbogado] ([IdAbogado], [IdCategoriaAbogado]) VALUES (3028, 1)
INSERT [dbo].[EspecialidadAbogado] ([IdAbogado], [IdCategoriaAbogado]) VALUES (2027, 2)
INSERT [dbo].[EspecialidadAbogado] ([IdAbogado], [IdCategoriaAbogado]) VALUES (3028, 3)
INSERT [dbo].[EspecialidadAbogado] ([IdAbogado], [IdCategoriaAbogado]) VALUES (3028, 4)
GO
SET IDENTITY_INSERT [dbo].[EstadoCivil] ON 

INSERT [dbo].[EstadoCivil] ([IdEstadoCivil], [Nombre], [Descripcion]) VALUES (1, N'Soltero', NULL)
INSERT [dbo].[EstadoCivil] ([IdEstadoCivil], [Nombre], [Descripcion]) VALUES (3, N'Soltero/a', NULL)
INSERT [dbo].[EstadoCivil] ([IdEstadoCivil], [Nombre], [Descripcion]) VALUES (4, N'Casado/a', NULL)
INSERT [dbo].[EstadoCivil] ([IdEstadoCivil], [Nombre], [Descripcion]) VALUES (5, N'Unión libre o unión de hecho', NULL)
INSERT [dbo].[EstadoCivil] ([IdEstadoCivil], [Nombre], [Descripcion]) VALUES (6, N'Divorciado/a', NULL)
INSERT [dbo].[EstadoCivil] ([IdEstadoCivil], [Nombre], [Descripcion]) VALUES (7, N'Viudo/a.', NULL)
INSERT [dbo].[EstadoCivil] ([IdEstadoCivil], [Nombre], [Descripcion]) VALUES (8, N'separación en proceso judicial', NULL)
INSERT [dbo].[EstadoCivil] ([IdEstadoCivil], [Nombre], [Descripcion]) VALUES (9, N'Anonimo', NULL)
SET IDENTITY_INSERT [dbo].[EstadoCivil] OFF
GO
SET IDENTITY_INSERT [dbo].[Evidencia] ON 

INSERT [dbo].[Evidencia] ([IdEvidencia], [Comentario], [UrlEvidencia], [IdTipoEvidencia], [Fecha], [IdCaso]) VALUES (1, N'comendario', N'tareas de ruth wwwwwww.pdf', 1, CAST(N'2020-12-10T00:00:00.000' AS DateTime), 1003)
INSERT [dbo].[Evidencia] ([IdEvidencia], [Comentario], [UrlEvidencia], [IdTipoEvidencia], [Fecha], [IdCaso]) VALUES (2, N'domen', N'Dinamic consruccion.docx', 1, CAST(N'2020-12-20T00:00:00.000' AS DateTime), 1003)
INSERT [dbo].[Evidencia] ([IdEvidencia], [Comentario], [UrlEvidencia], [IdTipoEvidencia], [Fecha], [IdCaso]) VALUES (3, N'Esta evidencia pertenece al caso numero 3 el cual es una evidencia en cuanto a la gestion de un caso crimanlista', N'td4301.pdf', 1, CAST(N'2019-08-07T00:00:00.000' AS DateTime), 1004)
INSERT [dbo].[Evidencia] ([IdEvidencia], [Comentario], [UrlEvidencia], [IdTipoEvidencia], [Fecha], [IdCaso]) VALUES (4, N'La evidencia pertenece a un acto bandalico', N'Evidencia caso #001.docx', 1, CAST(N'2020-12-17T00:00:00.000' AS DateTime), 1005)
INSERT [dbo].[Evidencia] ([IdEvidencia], [Comentario], [UrlEvidencia], [IdTipoEvidencia], [Fecha], [IdCaso]) VALUES (5, N'La evidencia corresponde a un caso de un hecho criminal', N'td4301.pdf', 1, CAST(N'2019-08-09T00:00:00.000' AS DateTime), 1006)
SET IDENTITY_INSERT [dbo].[Evidencia] OFF
GO
SET IDENTITY_INSERT [dbo].[Fiscal] ON 

INSERT [dbo].[Fiscal] ([IdFiscal], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [NumeroColegiado], [IdTipoFiscal], [IdEstadoCivil], [Estado]) VALUES (1, N'Roger Jose', N'Rosales', N'0102199813234', N'89456712', N'rosales@gmail.com', 12487, 1, 9, 1)
INSERT [dbo].[Fiscal] ([IdFiscal], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [NumeroColegiado], [IdTipoFiscal], [IdEstadoCivil], [Estado]) VALUES (2, N'Juan Carlos', N'Sierra', N'1010197809876', N'99234561', N'sierra@gmail.com', 1034, 2, 4, 1)
SET IDENTITY_INSERT [dbo].[Fiscal] OFF
GO
SET IDENTITY_INSERT [dbo].[Gasto] ON 

INSERT [dbo].[Gasto] ([IdGasto], [Comentario], [Fecha], [Monto], [IdTipoGasto]) VALUES (1, N'Consumo de papeleria', CAST(N'2020-12-10T00:00:00.000' AS DateTime), CAST(100.00 AS Decimal(11, 2)), 5)
INSERT [dbo].[Gasto] ([IdGasto], [Comentario], [Fecha], [Monto], [IdTipoGasto]) VALUES (2, N'Transporte de las evidencias', CAST(N'2020-12-17T00:00:00.000' AS DateTime), CAST(1234.00 AS Decimal(11, 2)), 5)
INSERT [dbo].[Gasto] ([IdGasto], [Comentario], [Fecha], [Monto], [IdTipoGasto]) VALUES (3, N'Transporte / combustible', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(2000.00 AS Decimal(11, 2)), 5)
INSERT [dbo].[Gasto] ([IdGasto], [Comentario], [Fecha], [Monto], [IdTipoGasto]) VALUES (1003, N'Combustible abogado', CAST(N'2020-12-10T00:00:00.000' AS DateTime), CAST(2000.00 AS Decimal(11, 2)), 2)
SET IDENTITY_INSERT [dbo].[Gasto] OFF
GO
INSERT [dbo].[GastoCaso] ([IdCaso], [IdGasto]) VALUES (1003, 1)
INSERT [dbo].[GastoCaso] ([IdCaso], [IdGasto]) VALUES (1003, 2)
INSERT [dbo].[GastoCaso] ([IdCaso], [IdGasto]) VALUES (2010, 3)
INSERT [dbo].[GastoCaso] ([IdCaso], [IdGasto]) VALUES (1010, 1003)
GO
SET IDENTITY_INSERT [dbo].[Indicio] ON 

INSERT [dbo].[Indicio] ([IdIndicio], [Comentario], [UrlIndicio], [IdTipoIndicio], [Fecha], [IdCaso]) VALUES (1, N'comen', N'Microsoft Word - trabajo de ruth-1-1.pdf', 2, CAST(N'2020-12-31T00:00:00.000' AS DateTime), 1003)
INSERT [dbo].[Indicio] ([IdIndicio], [Comentario], [UrlIndicio], [IdTipoIndicio], [Fecha], [IdCaso]) VALUES (2, N'El indicio pertenece a un acto bandalico', N'Indicio Caso #002.jpg', 1, CAST(N'2020-12-04T00:00:00.000' AS DateTime), 1006)
SET IDENTITY_INSERT [dbo].[Indicio] OFF
GO
SET IDENTITY_INSERT [dbo].[Juzgado] ON 

INSERT [dbo].[Juzgado] ([IdJuzgado], [Nombre], [Ubicacion], [Telefono], [IdTipoJuzgado]) VALUES (1, N'Juzgado de la ninez', N'Bulevar del este', N'99234456', 4)
INSERT [dbo].[Juzgado] ([IdJuzgado], [Nombre], [Ubicacion], [Telefono], [IdTipoJuzgado]) VALUES (2, N'Juzgado de Justicia', N'Centro de la ciudad', N'24431534', 3)
INSERT [dbo].[Juzgado] ([IdJuzgado], [Nombre], [Ubicacion], [Telefono], [IdTipoJuzgado]) VALUES (3, N'Juzgado de pazn', N'dos cuadras adelande de la colonia pradera', N'26358765', 2)
INSERT [dbo].[Juzgado] ([IdJuzgado], [Nombre], [Ubicacion], [Telefono], [IdTipoJuzgado]) VALUES (4, N'Jusgado Penal', N'colonia el alomo', N'23458067', 1)
SET IDENTITY_INSERT [dbo].[Juzgado] OFF
GO
SET IDENTITY_INSERT [dbo].[Ocupacion] ON 

INSERT [dbo].[Ocupacion] ([IdOcupacion], [Nombre], [Descripcion]) VALUES (1, N'Ingeniero', N'Trabaja de tiempo como ingeniero en una empresa privada')
INSERT [dbo].[Ocupacion] ([IdOcupacion], [Nombre], [Descripcion]) VALUES (2, N'Doctor', N'Trabaja de Doctor tiene doble turno en dos clinicas privadas')
INSERT [dbo].[Ocupacion] ([IdOcupacion], [Nombre], [Descripcion]) VALUES (3, N'Psicologo', N'Consultas de psicologia en su clinica privada')
SET IDENTITY_INSERT [dbo].[Ocupacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Pago] ON 

INSERT [dbo].[Pago] ([IdPago], [Comentario], [Monto], [Fecha], [IdTipoPago]) VALUES (1, N'', CAST(1234.00 AS Decimal(11, 2)), CAST(N'2020-12-04T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Pago] ([IdPago], [Comentario], [Monto], [Fecha], [IdTipoPago]) VALUES (2, N'', CAST(345.00 AS Decimal(11, 2)), CAST(N'2020-12-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Pago] ([IdPago], [Comentario], [Monto], [Fecha], [IdTipoPago]) VALUES (3, N'Pago por gasto de papeleria', CAST(567.00 AS Decimal(11, 2)), CAST(N'2020-12-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Pago] ([IdPago], [Comentario], [Monto], [Fecha], [IdTipoPago]) VALUES (4, N'', CAST(1234.00 AS Decimal(11, 2)), CAST(N'2020-12-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Pago] ([IdPago], [Comentario], [Monto], [Fecha], [IdTipoPago]) VALUES (5, N'La realizacion del ultimo pago del caso #003 de violencia domestica porque ha sido su ultimo juicio', CAST(8000.00 AS Decimal(11, 2)), CAST(N'2020-12-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Pago] ([IdPago], [Comentario], [Monto], [Fecha], [IdTipoPago]) VALUES (6, N'pago de la consulta', CAST(1234.00 AS Decimal(11, 2)), CAST(N'2020-12-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Pago] ([IdPago], [Comentario], [Monto], [Fecha], [IdTipoPago]) VALUES (7, N'', CAST(123.00 AS Decimal(11, 2)), CAST(N'2020-12-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Pago] ([IdPago], [Comentario], [Monto], [Fecha], [IdTipoPago]) VALUES (8, N'Pago de la consulta', CAST(123.00 AS Decimal(11, 2)), CAST(N'2020-12-11T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Pago] OFF
GO
INSERT [dbo].[PagoCaso] ([IdCaso], [IdPago]) VALUES (1003, 2)
INSERT [dbo].[PagoCaso] ([IdCaso], [IdPago]) VALUES (1003, 3)
INSERT [dbo].[PagoCaso] ([IdCaso], [IdPago]) VALUES (1003, 4)
INSERT [dbo].[PagoCaso] ([IdCaso], [IdPago]) VALUES (1004, 5)
GO
INSERT [dbo].[PagoConsulta] ([IdConsulta], [IdPago]) VALUES (6, 6)
INSERT [dbo].[PagoConsulta] ([IdConsulta], [IdPago]) VALUES (7, 7)
INSERT [dbo].[PagoConsulta] ([IdConsulta], [IdPago]) VALUES (7, 8)
GO
INSERT [dbo].[PagoUsuario] ([IdPago], [IdUsuario]) VALUES (2, 2)
INSERT [dbo].[PagoUsuario] ([IdPago], [IdUsuario]) VALUES (3, 2)
INSERT [dbo].[PagoUsuario] ([IdPago], [IdUsuario]) VALUES (4, 2)
INSERT [dbo].[PagoUsuario] ([IdPago], [IdUsuario]) VALUES (5, 2)
INSERT [dbo].[PagoUsuario] ([IdPago], [IdUsuario]) VALUES (6, 2)
INSERT [dbo].[PagoUsuario] ([IdPago], [IdUsuario]) VALUES (7, 2)
INSERT [dbo].[PagoUsuario] ([IdPago], [IdUsuario]) VALUES (8, 2)
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([IdRol], [Nombre], [Descripcion]) VALUES (1, N'Secretaria', N'.')
INSERT [dbo].[Rol] ([IdRol], [Nombre], [Descripcion]) VALUES (2, N'Abogado', N'.')
INSERT [dbo].[Rol] ([IdRol], [Nombre], [Descripcion]) VALUES (3, N'Administrador', N'.')
INSERT [dbo].[Rol] ([IdRol], [Nombre], [Descripcion]) VALUES (4, N'Desarrollador', N'.')
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Testigo] ON 

INSERT [dbo].[Testigo] ([IdTestigo], [Nombres], [Apellidos], [Identidad], [Telefono], [Correo], [Domicilio], [FechaNacimiento], [IdEstadoCivil], [IdOcupacion], [IdTipoTestigo], [Estado], [idCaso]) VALUES (15, N'Jorge Juan', N'Ramirez Garcia', N'0101199109876', N'99234501', N'juan@gmail.com', N'Col la pradera , tercera calle ,segunda cuadra', CAST(N'1991-12-14T00:00:00.000' AS DateTime), 6, 1, 6, 1, 1010)
SET IDENTITY_INSERT [dbo].[Testigo] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoCaso] ON 

INSERT [dbo].[TipoCaso] ([IdTipoCaso], [Nombre], [Descripcion]) VALUES (1, N'De valor', N'')
INSERT [dbo].[TipoCaso] ([IdTipoCaso], [Nombre], [Descripcion]) VALUES (3, N'De incidente', N'')
INSERT [dbo].[TipoCaso] ([IdTipoCaso], [Nombre], [Descripcion]) VALUES (4, N'mentalizacion', N'')
INSERT [dbo].[TipoCaso] ([IdTipoCaso], [Nombre], [Descripcion]) VALUES (5, N'Tematico', N'')
SET IDENTITY_INSERT [dbo].[TipoCaso] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoConsulta] ON 

INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (1, N'Arrendamiento', NULL)
INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (2, N'Herencia', NULL)
INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (3, N'Cuestiones Civiles', NULL)
INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (4, N'Bienes', NULL)
INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (5, N'Legales', NULL)
INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (6, N'Sociedad Mercantiles', NULL)
INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (7, N'Judiciales', NULL)
INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (8, N'Familiar Social', NULL)
INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (9, N'Judicial Familiar', NULL)
INSERT [dbo].[TipoConsulta] ([IdTipoConsulta], [Nombre], [Descripcion]) VALUES (10, N'Bien', NULL)
SET IDENTITY_INSERT [dbo].[TipoConsulta] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoEvidencia] ON 

INSERT [dbo].[TipoEvidencia] ([IdTipoEvidencia], [Nombre], [Descripcion]) VALUES (1, N'Criminalista', N'')
INSERT [dbo].[TipoEvidencia] ([IdTipoEvidencia], [Nombre], [Descripcion]) VALUES (2, N'Analitica', N'')
INSERT [dbo].[TipoEvidencia] ([IdTipoEvidencia], [Nombre], [Descripcion]) VALUES (1004, N'Fisica', N'')
INSERT [dbo].[TipoEvidencia] ([IdTipoEvidencia], [Nombre], [Descripcion]) VALUES (1005, N'Documental', N'')
INSERT [dbo].[TipoEvidencia] ([IdTipoEvidencia], [Nombre], [Descripcion]) VALUES (1006, N'Testimonial', N'')
SET IDENTITY_INSERT [dbo].[TipoEvidencia] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoFiscal] ON 

INSERT [dbo].[TipoFiscal] ([IdTipoFiscal], [Nombre], [Descripcion]) VALUES (1, N'Fiscales de Sala del Tribunal', NULL)
INSERT [dbo].[TipoFiscal] ([IdTipoFiscal], [Nombre], [Descripcion]) VALUES (2, N'Fiscal/Magistrados', N'')
INSERT [dbo].[TipoFiscal] ([IdTipoFiscal], [Nombre], [Descripcion]) VALUES (3, N'Audiencia', NULL)
INSERT [dbo].[TipoFiscal] ([IdTipoFiscal], [Nombre], [Descripcion]) VALUES (1002, N'General', N'')
SET IDENTITY_INSERT [dbo].[TipoFiscal] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoGasto] ON 

INSERT [dbo].[TipoGasto] ([IdTipoGasto], [Nombre], [Descripcion]) VALUES (1, N'Fijos', N'')
INSERT [dbo].[TipoGasto] ([IdTipoGasto], [Nombre], [Descripcion]) VALUES (2, N'Variables', N'')
INSERT [dbo].[TipoGasto] ([IdTipoGasto], [Nombre], [Descripcion]) VALUES (5, N'Discrecionales', N'')
SET IDENTITY_INSERT [dbo].[TipoGasto] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoIndicio] ON 

INSERT [dbo].[TipoIndicio] ([IdTipoIndicio], [Nombre], [Descripcion]) VALUES (1, N'Criminalistico', N'')
INSERT [dbo].[TipoIndicio] ([IdTipoIndicio], [Nombre], [Descripcion]) VALUES (2, N'Personales', N'')
INSERT [dbo].[TipoIndicio] ([IdTipoIndicio], [Nombre], [Descripcion]) VALUES (1002, N'Consecuentes', N'')
INSERT [dbo].[TipoIndicio] ([IdTipoIndicio], [Nombre], [Descripcion]) VALUES (1003, N'Determinados', N'Indicios que con solo mirar evidencian la relación que guardan con la investigación de modo tal que no ameritan mayor intervención de conocimientos
')
INSERT [dbo].[TipoIndicio] ([IdTipoIndicio], [Nombre], [Descripcion]) VALUES (1004, N'Indeterminados', N'Son  aquellos cuyo aspecto resulta lo sumamente ambiguo ante la apreciación ocular de los investigadores
')
SET IDENTITY_INSERT [dbo].[TipoIndicio] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoJuzgado] ON 

INSERT [dbo].[TipoJuzgado] ([IdTipoJuzgado], [Nombre]) VALUES (1, N'De paz')
INSERT [dbo].[TipoJuzgado] ([IdTipoJuzgado], [Nombre]) VALUES (2, N'De letras')
INSERT [dbo].[TipoJuzgado] ([IdTipoJuzgado], [Nombre]) VALUES (3, N'Familia')
INSERT [dbo].[TipoJuzgado] ([IdTipoJuzgado], [Nombre]) VALUES (4, N'Niñez')
SET IDENTITY_INSERT [dbo].[TipoJuzgado] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPago] ON 

INSERT [dbo].[TipoPago] ([IdTipoPago], [Nombre], [Descripcion]) VALUES (1, N'Contado', N'Pago en efectivo')
INSERT [dbo].[TipoPago] ([IdTipoPago], [Nombre], [Descripcion]) VALUES (2, N'Tarjeta credito', N'Pago con tarjeta')
INSERT [dbo].[TipoPago] ([IdTipoPago], [Nombre], [Descripcion]) VALUES (3, N'Tarjeta debito', N'Pago con tarjeta')
SET IDENTITY_INSERT [dbo].[TipoPago] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoTestigo] ON 

INSERT [dbo].[TipoTestigo] ([IdTipoTestigo], [Nombre], [Descripcion]) VALUES (1, N'Presencial', N'')
INSERT [dbo].[TipoTestigo] ([IdTipoTestigo], [Nombre], [Descripcion]) VALUES (2, N'Indirecto', N'')
INSERT [dbo].[TipoTestigo] ([IdTipoTestigo], [Nombre], [Descripcion]) VALUES (3, N'anonimo', N'')
INSERT [dbo].[TipoTestigo] ([IdTipoTestigo], [Nombre], [Descripcion]) VALUES (4, N'Observador', N'')
INSERT [dbo].[TipoTestigo] ([IdTipoTestigo], [Nombre], [Descripcion]) VALUES (5, N'Erudito', N'')
INSERT [dbo].[TipoTestigo] ([IdTipoTestigo], [Nombre], [Descripcion]) VALUES (6, N'Imaginativo', N'')
SET IDENTITY_INSERT [dbo].[TipoTestigo] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Nombres], [Apellidos], [Identidad], [Contrasenia], [IdRol], [Estado], [Usuario]) VALUES (2, N'Luis Carlos', N'Lopez Altamira', N'0301199907654', N'123', 4, 1, N'luis')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombres], [Apellidos], [Identidad], [Contrasenia], [IdRol], [Estado], [Usuario]) VALUES (3, N'Emanuel', N'Licona', N'010120078989', N'admin', 3, 1, N'admin')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombres], [Apellidos], [Identidad], [Contrasenia], [IdRol], [Estado], [Usuario]) VALUES (4, N'Angela Maria', N'Lopez Castillo', N'0201199489642', N'123', 1, 1, N'angela143')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombres], [Apellidos], [Identidad], [Contrasenia], [IdRol], [Estado], [Usuario]) VALUES (5, N'Brayan', N'Alvares', N'0102199912345', N'123', 2, 1, N'abgBrayan')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [A_Correo_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Abogado] ADD  CONSTRAINT [A_Correo_U] UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [A_Identidad_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Abogado] ADD  CONSTRAINT [A_Identidad_U] UNIQUE NONCLUSTERED 
(
	[Identidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [A_NC_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Abogado] ADD  CONSTRAINT [A_NC_U] UNIQUE NONCLUSTERED 
(
	[NumeroColegiado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CA_Nombre_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[CategoriaAbogado] ADD  CONSTRAINT [CA_Nombre_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Cliente_Correo_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [Cliente_Correo_U] UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Cliente_Identidad_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [Cliente_Identidad_U] UNIQUE NONCLUSTERED 
(
	[Identidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [F_Correo_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Fiscal] ADD  CONSTRAINT [F_Correo_U] UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [F_Identidad_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Fiscal] ADD  CONSTRAINT [F_Identidad_U] UNIQUE NONCLUSTERED 
(
	[Identidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [F_NC_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Fiscal] ADD  CONSTRAINT [F_NC_U] UNIQUE NONCLUSTERED 
(
	[NumeroColegiado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Ocupacion_Nombre_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Ocupacion] ADD  CONSTRAINT [Ocupacion_Nombre_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Rol_Nombre_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Rol] ADD  CONSTRAINT [Rol_Nombre_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TCaso_Nombre_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[TipoCaso] ADD  CONSTRAINT [TCaso_Nombre_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TC_Nombre_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[TipoConsulta] ADD  CONSTRAINT [TC_Nombre_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TE_Identidad_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[TipoEvidencia] ADD  CONSTRAINT [TE_Identidad_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TG_Nombre_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[TipoGasto] ADD  CONSTRAINT [TG_Nombre_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TI_Nombre_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[TipoIndicio] ADD  CONSTRAINT [TI_Nombre_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TP_Nombre_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[TipoPago] ADD  CONSTRAINT [TP_Nombre_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TT_Nombre_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[TipoTestigo] ADD  CONSTRAINT [TT_Nombre_U] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Usuario_Identidad_U]    Script Date: 09/12/2020 12:46:49 ******/
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [Usuario_Identidad_U] UNIQUE NONCLUSTERED 
(
	[Identidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Abogado]  WITH CHECK ADD  CONSTRAINT [Abogado_EstadoCivil_FK] FOREIGN KEY([IdEstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([IdEstadoCivil])
GO
ALTER TABLE [dbo].[Abogado] CHECK CONSTRAINT [Abogado_EstadoCivil_FK]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [Agenda_IdCaso_FK] FOREIGN KEY([IdCaso])
REFERENCES [dbo].[Caso] ([IdCaso])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [Agenda_IdCaso_FK]
GO
ALTER TABLE [dbo].[Caso]  WITH CHECK ADD  CONSTRAINT [Caso_IdCliente_FK] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Caso] CHECK CONSTRAINT [Caso_IdCliente_FK]
GO
ALTER TABLE [dbo].[Caso]  WITH CHECK ADD  CONSTRAINT [Caso_Juzgado_FK] FOREIGN KEY([IdJuzgado])
REFERENCES [dbo].[Juzgado] ([IdJuzgado])
GO
ALTER TABLE [dbo].[Caso] CHECK CONSTRAINT [Caso_Juzgado_FK]
GO
ALTER TABLE [dbo].[Caso]  WITH CHECK ADD  CONSTRAINT [Caso_TipoCaso_FK] FOREIGN KEY([IdTipoCaso])
REFERENCES [dbo].[TipoCaso] ([IdTipoCaso])
GO
ALTER TABLE [dbo].[Caso] CHECK CONSTRAINT [Caso_TipoCaso_FK]
GO
ALTER TABLE [dbo].[CasoAbogado]  WITH CHECK ADD  CONSTRAINT [CasoAbogado_IdAbogado_FK] FOREIGN KEY([IdAbogado])
REFERENCES [dbo].[Abogado] ([IdAbogado])
GO
ALTER TABLE [dbo].[CasoAbogado] CHECK CONSTRAINT [CasoAbogado_IdAbogado_FK]
GO
ALTER TABLE [dbo].[CasoAbogado]  WITH CHECK ADD  CONSTRAINT [CasoAbogado_IdCaso_FK] FOREIGN KEY([IdCaso])
REFERENCES [dbo].[Caso] ([IdCaso])
GO
ALTER TABLE [dbo].[CasoAbogado] CHECK CONSTRAINT [CasoAbogado_IdCaso_FK]
GO
ALTER TABLE [dbo].[CasoFiscal]  WITH CHECK ADD  CONSTRAINT [CasoFiscal_IdCaso_FK] FOREIGN KEY([IdCaso])
REFERENCES [dbo].[Caso] ([IdCaso])
GO
ALTER TABLE [dbo].[CasoFiscal] CHECK CONSTRAINT [CasoFiscal_IdCaso_FK]
GO
ALTER TABLE [dbo].[CasoFiscal]  WITH CHECK ADD  CONSTRAINT [CasoFiscal_IdFiscal_FK] FOREIGN KEY([IdFiscal])
REFERENCES [dbo].[Fiscal] ([IdFiscal])
GO
ALTER TABLE [dbo].[CasoFiscal] CHECK CONSTRAINT [CasoFiscal_IdFiscal_FK]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [Cliente_EstadoCivil_FK] FOREIGN KEY([IdEstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([IdEstadoCivil])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [Cliente_EstadoCivil_FK]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [Cliente_Ocupacion_FK] FOREIGN KEY([IdOcupacion])
REFERENCES [dbo].[Ocupacion] ([IdOcupacion])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [Cliente_Ocupacion_FK]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [Consulta_IDAbogado_FK] FOREIGN KEY([IdAbogado])
REFERENCES [dbo].[Abogado] ([IdAbogado])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [Consulta_IDAbogado_FK]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [Consulta_IDCliente_FK] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [Consulta_IDCliente_FK]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [Consulta_TipoConsulta_FK] FOREIGN KEY([TipoConsulta])
REFERENCES [dbo].[TipoConsulta] ([IdTipoConsulta])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [Consulta_TipoConsulta_FK]
GO
ALTER TABLE [dbo].[EspecialidadAbogado]  WITH CHECK ADD  CONSTRAINT [Especialidad_IdAbogado_FK] FOREIGN KEY([IdAbogado])
REFERENCES [dbo].[Abogado] ([IdAbogado])
GO
ALTER TABLE [dbo].[EspecialidadAbogado] CHECK CONSTRAINT [Especialidad_IdAbogado_FK]
GO
ALTER TABLE [dbo].[EspecialidadAbogado]  WITH CHECK ADD  CONSTRAINT [Especialidad_IdCategoria_FK] FOREIGN KEY([IdCategoriaAbogado])
REFERENCES [dbo].[CategoriaAbogado] ([IdCategoriaAbogado])
GO
ALTER TABLE [dbo].[EspecialidadAbogado] CHECK CONSTRAINT [Especialidad_IdCategoria_FK]
GO
ALTER TABLE [dbo].[Evidencia]  WITH CHECK ADD  CONSTRAINT [Evidencia_IdCaso_FK] FOREIGN KEY([IdCaso])
REFERENCES [dbo].[Caso] ([IdCaso])
GO
ALTER TABLE [dbo].[Evidencia] CHECK CONSTRAINT [Evidencia_IdCaso_FK]
GO
ALTER TABLE [dbo].[Evidencia]  WITH CHECK ADD  CONSTRAINT [Evidencia_IdTipoEvidencia_FK] FOREIGN KEY([IdTipoEvidencia])
REFERENCES [dbo].[TipoEvidencia] ([IdTipoEvidencia])
GO
ALTER TABLE [dbo].[Evidencia] CHECK CONSTRAINT [Evidencia_IdTipoEvidencia_FK]
GO
ALTER TABLE [dbo].[Fiscal]  WITH CHECK ADD  CONSTRAINT [Fiscal_EstadoCivil_FK] FOREIGN KEY([IdEstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([IdEstadoCivil])
GO
ALTER TABLE [dbo].[Fiscal] CHECK CONSTRAINT [Fiscal_EstadoCivil_FK]
GO
ALTER TABLE [dbo].[Fiscal]  WITH CHECK ADD  CONSTRAINT [Fiscal_TipoFiscal_FK] FOREIGN KEY([IdTipoFiscal])
REFERENCES [dbo].[TipoFiscal] ([IdTipoFiscal])
GO
ALTER TABLE [dbo].[Fiscal] CHECK CONSTRAINT [Fiscal_TipoFiscal_FK]
GO
ALTER TABLE [dbo].[Gasto]  WITH CHECK ADD  CONSTRAINT [Gasto_IdTipoGasto_FK] FOREIGN KEY([IdTipoGasto])
REFERENCES [dbo].[TipoGasto] ([IdTipoGasto])
GO
ALTER TABLE [dbo].[Gasto] CHECK CONSTRAINT [Gasto_IdTipoGasto_FK]
GO
ALTER TABLE [dbo].[GastoCaso]  WITH CHECK ADD  CONSTRAINT [GastoCaso_IdCaso_FK] FOREIGN KEY([IdCaso])
REFERENCES [dbo].[Caso] ([IdCaso])
GO
ALTER TABLE [dbo].[GastoCaso] CHECK CONSTRAINT [GastoCaso_IdCaso_FK]
GO
ALTER TABLE [dbo].[GastoCaso]  WITH CHECK ADD  CONSTRAINT [GastoCaso_IdGasto_FK] FOREIGN KEY([IdGasto])
REFERENCES [dbo].[Gasto] ([IdGasto])
GO
ALTER TABLE [dbo].[GastoCaso] CHECK CONSTRAINT [GastoCaso_IdGasto_FK]
GO
ALTER TABLE [dbo].[Indicio]  WITH CHECK ADD  CONSTRAINT [Indicio_IdCaso_FK] FOREIGN KEY([IdCaso])
REFERENCES [dbo].[Caso] ([IdCaso])
GO
ALTER TABLE [dbo].[Indicio] CHECK CONSTRAINT [Indicio_IdCaso_FK]
GO
ALTER TABLE [dbo].[Indicio]  WITH CHECK ADD  CONSTRAINT [Indicio_IdTipoIndicio_FK] FOREIGN KEY([IdTipoIndicio])
REFERENCES [dbo].[TipoIndicio] ([IdTipoIndicio])
GO
ALTER TABLE [dbo].[Indicio] CHECK CONSTRAINT [Indicio_IdTipoIndicio_FK]
GO
ALTER TABLE [dbo].[Juzgado]  WITH CHECK ADD  CONSTRAINT [Juzgado_Tipo_NN] FOREIGN KEY([IdTipoJuzgado])
REFERENCES [dbo].[TipoJuzgado] ([IdTipoJuzgado])
GO
ALTER TABLE [dbo].[Juzgado] CHECK CONSTRAINT [Juzgado_Tipo_NN]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [Pago_IdTipoPago_FK] FOREIGN KEY([IdTipoPago])
REFERENCES [dbo].[TipoPago] ([IdTipoPago])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [Pago_IdTipoPago_FK]
GO
ALTER TABLE [dbo].[PagoCaso]  WITH CHECK ADD  CONSTRAINT [PagoCaso_IdCaso_FK] FOREIGN KEY([IdCaso])
REFERENCES [dbo].[Caso] ([IdCaso])
GO
ALTER TABLE [dbo].[PagoCaso] CHECK CONSTRAINT [PagoCaso_IdCaso_FK]
GO
ALTER TABLE [dbo].[PagoCaso]  WITH CHECK ADD  CONSTRAINT [PagoCaso_IdPago_FK] FOREIGN KEY([IdPago])
REFERENCES [dbo].[Pago] ([IdPago])
GO
ALTER TABLE [dbo].[PagoCaso] CHECK CONSTRAINT [PagoCaso_IdPago_FK]
GO
ALTER TABLE [dbo].[PagoConsulta]  WITH CHECK ADD  CONSTRAINT [PagoConsulta_IdConsulta_FK] FOREIGN KEY([IdConsulta])
REFERENCES [dbo].[Consulta] ([IdConsulta])
GO
ALTER TABLE [dbo].[PagoConsulta] CHECK CONSTRAINT [PagoConsulta_IdConsulta_FK]
GO
ALTER TABLE [dbo].[PagoConsulta]  WITH CHECK ADD  CONSTRAINT [PagoConsulta_IdPago_FK] FOREIGN KEY([IdPago])
REFERENCES [dbo].[Pago] ([IdPago])
GO
ALTER TABLE [dbo].[PagoConsulta] CHECK CONSTRAINT [PagoConsulta_IdPago_FK]
GO
ALTER TABLE [dbo].[PagoUsuario]  WITH CHECK ADD  CONSTRAINT [PagoUsuario_IdPago_FK] FOREIGN KEY([IdPago])
REFERENCES [dbo].[Pago] ([IdPago])
GO
ALTER TABLE [dbo].[PagoUsuario] CHECK CONSTRAINT [PagoUsuario_IdPago_FK]
GO
ALTER TABLE [dbo].[PagoUsuario]  WITH CHECK ADD  CONSTRAINT [PagoUsuario_IdUsuario_FK] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[PagoUsuario] CHECK CONSTRAINT [PagoUsuario_IdUsuario_FK]
GO
ALTER TABLE [dbo].[Testigo]  WITH CHECK ADD  CONSTRAINT [FK_Testigo_Caso] FOREIGN KEY([idCaso])
REFERENCES [dbo].[Caso] ([IdCaso])
GO
ALTER TABLE [dbo].[Testigo] CHECK CONSTRAINT [FK_Testigo_Caso]
GO
ALTER TABLE [dbo].[Testigo]  WITH CHECK ADD  CONSTRAINT [Testigo_EstadoCivil_FK] FOREIGN KEY([IdEstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([IdEstadoCivil])
GO
ALTER TABLE [dbo].[Testigo] CHECK CONSTRAINT [Testigo_EstadoCivil_FK]
GO
ALTER TABLE [dbo].[Testigo]  WITH CHECK ADD  CONSTRAINT [Testigo_Ocupacion_FK] FOREIGN KEY([IdOcupacion])
REFERENCES [dbo].[Ocupacion] ([IdOcupacion])
GO
ALTER TABLE [dbo].[Testigo] CHECK CONSTRAINT [Testigo_Ocupacion_FK]
GO
ALTER TABLE [dbo].[Testigo]  WITH CHECK ADD  CONSTRAINT [Testigo_TipoTestigo_FK] FOREIGN KEY([IdTipoTestigo])
REFERENCES [dbo].[TipoTestigo] ([IdTipoTestigo])
GO
ALTER TABLE [dbo].[Testigo] CHECK CONSTRAINT [Testigo_TipoTestigo_FK]
GO
ALTER TABLE [dbo].[TestigoCaso]  WITH CHECK ADD  CONSTRAINT [TestigoCaso_IdCaso_FK] FOREIGN KEY([IdCaso])
REFERENCES [dbo].[Caso] ([IdCaso])
GO
ALTER TABLE [dbo].[TestigoCaso] CHECK CONSTRAINT [TestigoCaso_IdCaso_FK]
GO
ALTER TABLE [dbo].[TestigoCaso]  WITH CHECK ADD  CONSTRAINT [TestigoCaso_IdTestigo_FK] FOREIGN KEY([IdTestigo])
REFERENCES [dbo].[Testigo] ([IdTestigo])
GO
ALTER TABLE [dbo].[TestigoCaso] CHECK CONSTRAINT [TestigoCaso_IdTestigo_FK]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [Usuario_IdRol_FK] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [Usuario_IdRol_FK]
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_AGENDA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_AGENDA]
@ID INT,
@DESCRIPCION VARCHAR(250),
@FECHA DATETIME,
@ERROR INT OUTPUT,
@DESCRIPCION_E VARCHAR(250) OUTPUT
AS 
--BEGIN TRAN TCATEGORIA 
	BEGIN TRY
		IF @DESCRIPCION = ''
			BEGIN
				SET @DESCRIPCION_E = 'DESCRIPCION VACIO'
				SET @ERROR = 1
			END
		ELSE IF @DESCRIPCION IS NULL
			BEGIN
				SET @DESCRIPCION_E = 'DESCRIPCION NULO'
				SET @ERROR = 1
			END
		ELSE IF @FECHA IS NULL
			BEGIN
				SET @DESCRIPCION_E = 'FECHA NULO'
				SET @ERROR = 1
			END
		ELSE
			BEGIN 
				UPDATE Agenda SET Descripcion = @DESCRIPCION,
				Fecha = @FECHA
				WHERE IdAgenda = @ID
			IF @ERROR = 0
				BEGIN 
				
				--COMMIT TRANSACTION
					SET @ERROR = 0;
					SET @ID = @@IDENTITY	
					SET @DESCRIPCION_E ='REGISTRADO'
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION_E ='ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
		--ROLLBACK TRANSACTION
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ACTUALIZAR_CASO]
@ID INT,
@IDCLIENTE INT ,
@TITULO VARCHAR(30),
@IDTIPO INT,
@DESCRIPCION VARCHAR(250),
@HONORARIO DECIMAL,
@ESTADO BIT,
@IDJUZGADO INT,
@FECHA_CREACION DATETIME,
@EXP_JUZGADO INT,
@EXP_DPI INT,
@EXP_MIN_PU INT,
@ERROR INT OUTPUT,
@DESCRIPCION_E VARCHAR(250) OUTPUT
AS 
BEGIN TRAN TCATEGORIA 
	BEGIN TRY
		IF @TITULO = ''
			BEGIN
				SET @DESCRIPCION_E = 'TITULO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @TITULO IS NULL
			BEGIN
				SET @DESCRIPCION_E = 'TITULO NULO'
				SET @ERROR = 1
			END
		ELSE IF @DESCRIPCION = ''
			BEGIN
				SET @DESCRIPCION_E = 'DESCRIPCION VACIO'
				SET @ERROR = 1
			END
		ELSE IF @DESCRIPCION IS NULL
			BEGIN
				SET @DESCRIPCION_E = 'DESCRIPCION NULO'
				SET @ERROR = 1
			END
		ELSE IF @HONORARIO = 0
			BEGIN
				SET @DESCRIPCION_E = 'HONORARIO 0'
				SET @ERROR = 1
			END
		ELSE IF @IDCLIENTE = 0
			BEGIN
				SET @DESCRIPCION_E = 'CLIENTE NO VALIDO'
				SET @ERROR = 1
			END
		ELSE IF @IDTIPO = 0
			BEGIN
				SET @DESCRIPCION_E = 'TIPO NO VALIDO'
				SET @ERROR = 1
			END
		ELSE IF @IDJUZGADO = 0
			BEGIN
				SET @DESCRIPCION_E = 'JUZGADO NO VALIDO'
				SET @ERROR = 1
			END
		ELSE
			BEGIN 
				Update Caso SET IdCliente= @IDCLIENTE,
								TituloCaso = @TITULO,
								IdTipoCaso = @IDTIPO,
								Descripcion = @DESCRIPCION,
								Honorario = @HONORARIO,
								Estado = @ESTADO,
								IdJuzgado = @IDJUZGADO,
								FechaCreacion = @FECHA_CREACION,
								NumExpJuzgado = @EXP_JUZGADO,
								NumExpDpi = @EXP_DPI,
								NumExpMinPublico = @EXP_MIN_PU
						WHERE IdCaso = @ID
			IF @@ERROR = 0
				BEGIN 
				COMMIT TRANSACTION
					SET @DESCRIPCION_E =  'REGISTRADO'
					SET @ERROR = 0;
					SET @ID = @@IDENTITY	
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION_E =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		ROLLBACK TRANSACTION
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_CLIENTE]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_CLIENTE]
@ID INT,
@NOMBRE VARCHAR(30),
@APELLIDO VARCHAR(30),
@IDENTIDAD VARCHAR(17),
@TELEFONO VARCHAR(17),
@CORREO VARCHAR(100),
@DOMICILIO VARCHAR(250),
@FECHA_NACIMIENTO DATETIME,
@ESTADO_CIVIL INT,
@OCUPACION INT,
@ESTADO BIT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
--BEGIN TRAN TCATEGORIA 
	BEGIN TRY
		IF @NOMBRE = ''
			BEGIN
				SET @DESCRIPCION = 'NOMBRE VACIO'
				SET @ERROR = 1
			END
		ELSE IF @NOMBRE IS NULL
			BEGIN
				SET @DESCRIPCION = 'NOMBRE NULO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO = ''
			BEGIN
				SET @DESCRIPCION = 'APELLIDO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO IS NULL
			BEGIN
				SET @DESCRIPCION = 'APELLIDO NULO'
				SET @ERROR = 1
			END
			ELSE IF @IDENTIDAD = ''
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD VACIO'
				SET @ERROR = 1
			END
		ELSE IF @IDENTIDAD IS NULL
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD NULO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO = ''
			BEGIN
				SET @DESCRIPCION = 'TELEFONO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO IS NULL
			BEGIN
				SET @DESCRIPCION = 'TELEFONO NULO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO = ''
			BEGIN
				SET @DESCRIPCION = 'CORREO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO IS NULL
			BEGIN
				SET @DESCRIPCION = 'CORREO NULO'
				SET @ERROR = 1
			END

		ELSE IF @DOMICILIO = ''
			BEGIN
				SET @DESCRIPCION = 'DOMICILIO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @DOMICILIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'DOMICILIO NULO'
				SET @ERROR = 1
			END

		ELSE IF YEAR(GETDATE()-@FECHA_NACIMIENTO)<18 
			BEGIN
				SET @DESCRIPCION = 'FECHA NO VALIDA'
				SET @ERROR = 1
			END
		ELSE IF @FECHA_NACIMIENTO IS NULL
			BEGIN
				SET @DESCRIPCION = 'FECHA NULO'
				SET @ERROR = 1
			END
		
		ELSE IF @ESTADO_CIVIL IS NULL
			BEGIN
				SET @DESCRIPCION = 'ESTADO CIVIL NULO'
				SET @ERROR = 1
			END
		ELSE IF @OCUPACION = 0
			BEGIN
				SET @DESCRIPCION = 'OCUPACION NULO'
				SET @ERROR = 1
			END
		ELSE
			BEGIN
				UPDATE Cliente SET Nombres = @NOMBRE,
					 Apellidos =@APELLIDO,
					 Identidad =@IDENTIDAD,
					 Telefono =@TELEFONO,
					 Correo =@CORREO,
					 Domicilio =@DOMICILIO,
					 FechaNacimiento =@FECHA_NACIMIENTO,
					 IdEstadoCivil =@ESTADO_CIVIL,
					 IdOcupacion = @OCUPACION,
					 Estado =@ESTADO
				WHERE IdCliente = @ID

				IF @@ERROR = 0
					BEGIN 
						--COMMIT TRAN 
						SET @DESCRIPCION =  'REGISTRADO'
						SET @ID = @@IDENTITY;
						SET @ERROR = 0;	
					END
				END
			END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
		--ROLLBACK 
	END CATCH

GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_CONSULTAS]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_CONSULTAS]
@CONSULTAID INT,
@IDCLIENTE INT,
@IDABOGADO INT,
@FECHA DATETIME,
@TIPOCONSULTA INT,
@DESCRIPCION VARCHAR(250),
@ERROR INT OUTPUT,
@DESERROR VARCHAR(250) OUTPUT
AS 
	BEGIN TRY
		IF @DESCRIPCION = ''
			BEGIN
				SET @DESERROR = 'DESCRIPCION VACIA'
				SET @ERROR = 1
			END
		ELSE IF @FECHA IS NULL
			BEGIN
				SET @DESERROR = 'FECHA NULO'
				SET @ERROR = 1
			END
		ELSE IF @FECHA =''
			BEGIN
				SET @DESERROR = 'FECHA VACIA'
				SET @ERROR = 1
			END
		ELSE IF @IDCLIENTE IS NULL
			BEGIN
				SET @DESERROR = 'CLIENTE NULO'
				SET @ERROR = 1
			END
		ELSE IF @IDCLIENTE=''
			BEGIN
				SET @DESERROR = 'CLIENTE VACIO'
				SET @ERROR = 1
			END
		ELSE IF @IDABOGADO IS NULL
			BEGIN
				SET @DESERROR = 'ABOGADO NULO'
				SET @ERROR = 1
			END
		ELSE IF @IDABOGADO = ''
			BEGIN
				SET @DESERROR = 'ABOGADO VACIO'
				SET @ERROR = 1
			END
		ELSE
			BEGIN 
				UPDATE Consulta SET IdCliente = @IDCLIENTE,
				IdAbogado = @IDABOGADO,
				FechaHora =@FECHA,
				TipoConsulta= @TIPOCONSULTA,
				Descripcion = @DESCRIPCION
				WHERE IdConsulta = @CONSULTAID


			IF @@ERROR = 0
				BEGIN 
					SET @DESERROR =  'ACTUALIZADO'
					SET @ERROR = 0;
					--SET @CONSULTAID = @@IDENTITY	
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESERROR =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
		--ROLLBACK TRAN 
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_GASTO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MERGE PARA INSERTAR Y ACTUALIZAR PAGO
CREATE PROCEDURE [dbo].[ACTUALIZAR_GASTO]
@IDGASTO INT,
@COMENTARIO VARCHAR(250),
@MONTO DECIMAL(11,2),
@FECHA DATETIME,
@IDTIPOGASTO INT,
@IDCASO INT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
	BEGIN TRY
		IF @COMENTARIO = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
				SET @ERROR = 1 
			END
		ELSE IF  @COMENTARIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
				SET @ERROR = 1 
			END
		ELSE IF @MONTO = 0 
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar el monto de pago'
				SET @ERROR = 1 
			END
		ELSE IF @MONTO IS NULL
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar el monto de pago'
				SET @ERROR = 1 
			END
		ELSE IF @FECHA IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar una fecha'
				SET @ERROR = 1 
			END
		ELSE
				UPDATE Gasto
				SET Comentario = @COMENTARIO, Monto = @MONTO, Fecha = @FECHA, IdTipoGasto = @IDTIPOGASTO
				WHERE IdGasto = @IDGASTO
				UPDATE GastoCaso
				SET IdCaso = @IDCASO, IdGasto = @IDGASTO, @DESCRIPCION = 'Actualizado Correctamente' 
				WHERE IdGasto = @IDGASTO
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		ROLLBACK TRANSACTION
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_JUZGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_JUZGADO]
@IDJUZGADO INT,
@NOMBRE VARCHAR(50),
@UBICACION VARCHAR(250),
@TELEFONO VARCHAR(17),
@ID_TIPOJUZGADO INT
AS
	UPDATE Juzgado
		SET Nombre = @NOMBRE, Ubicacion = @UBICACION, Telefono = @TELEFONO, IdTipoJuzgado = @ID_TIPOJUZGADO
    WHERE IdJuzgado = @IDJUZGADO
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_OCUPACION]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_OCUPACION]
@ID_OCUPACION INT,
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250)
AS
UPDATE Ocupacion 
	SET Nombre = @NOMBRE, Descripcion = @DESCRIPCION
  WHERE IdOcupacion = @ID_OCUPACION
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_ROL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_ROL]
@IDROL INT,
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250)
AS
UPDATE Rol 
	SET Nombre = @NOMBRE, 
	Descripcion = @DESCRIPCION
WHERE IdRol = @IDROL
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_TESTIGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_TESTIGO]@IDTESTIGO INT,@NOMBRE VARCHAR(30),@APELLIDO VARCHAR(30),@IDENTIDAD VARCHAR(17),@TELEFONO VARCHAR(17),@CORREO VARCHAR (150),@DOMICILIO VARCHAR(250),@FECHANAC DATETIME,@IDESTADOC INT,@IDOCUPACION INT,@IDTPTESTIGO INT,@IDCASO INTASUPDATE Testigo	SET	Nombres = @NOMBRE, Apellidos = @APELLIDO, Identidad = @IDENTIDAD,		Telefono = @TELEFONO, Correo = @CORREO, Domicilio = @DOMICILIO,		FechaNacimiento = @FECHANAC, IdEstadoCivil = @IDESTADOC,		IdOcupacion = @IDOCUPACION, IdTipoTestigo = @IDTPTESTIGO, idCaso = @IDCASO	WHERE IdTestigo = @IDTESTIGO
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_TIPO_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ACTUALIZAR_TIPO_ABOGADO]
@ID INT,
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIERROR VARCHAR(250) OUTPUT
AS

BEGIN TRY
	IF @NOMBRE IS NULL
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE ES NULO'
		END
	ELSE IF @NOMBRE = ''
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE VACIO'
		END
	ELSE IF @NOMBRE IN (SELECT Nombre FROM CategoriaAbogado WHERE IdCategoriaAbogado<>(@ID))
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'CATEGORIA YA EXISTE'
		END
	ELSE
		BEGIN 
			UPDATE CategoriaAbogado SET Nombre = @NOMBRE, Descripcion = @DESCRIPCION
				WHERE IdCategoriaAbogado = @ID
		IF @@ERROR = 0
					BEGIN 
						--COMMIT TRAN TCATEGORIA
						SET @DESCRIERROR =  'REGISTRADO'
						SET @ERROR = 0;	
				END
		END
END TRY
BEGIN CATCH
	SET @DESCRIERROR =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_TIPO_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_TIPO_CASO]
@ID INT,
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIERROR VARCHAR(250) OUTPUT
AS

BEGIN TRY
	IF @NOMBRE IS NULL
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE ES NULO'
		END
	ELSE IF @NOMBRE = ''
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE VACIO'
		END
	ELSE IF @NOMBRE IN (SELECT Nombre FROM TipoCaso WHERE IdTipoCaso<>(@ID))
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'TIPO YA EXISTE'
		END
	ELSE
		BEGIN 
			UPDATE TipoCaso SET Nombre = @NOMBRE, Descripcion = @DESCRIPCION
				WHERE IdTipoCaso = @ID
		IF @@ERROR = 0
					BEGIN 
						--COMMIT TRAN TCATEGORIA
						SET @DESCRIERROR =  'REGISTRADO'
						SET @ERROR = 0;	
				END
		END
END TRY
BEGIN CATCH
	SET @DESCRIERROR =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_TIPO_CONSULTA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_TIPO_CONSULTA]
@ID_TIPOCONSULTA INT,
@NOMBRE VARCHAR(50)
AS
UPDATE TipoConsulta 
	SET Nombre = @NOMBRE
  WHERE IdTipoConsulta = @ID_TIPOCONSULTA
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_TIPO_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ACTUALIZAR_TIPO_FISCAL]
@ID INT,
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIERROR VARCHAR(250) OUTPUT
AS

BEGIN TRY
	IF @NOMBRE IS NULL
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE ES NULO'
		END
	ELSE IF @NOMBRE = ''
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE VACIO'
		END
	ELSE IF @NOMBRE IN (SELECT Nombre FROM TipoFiscal WHERE IdTipoFiscal<>(@ID))
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'CATEGORIA YA EXISTE'
		END
	ELSE
		BEGIN 
			UPDATE TipoFiscal SET Nombre = @NOMBRE, Descripcion = @DESCRIPCION
				WHERE IdTipoFiscal = @ID
		IF @@ERROR = 0
					BEGIN 
						--COMMIT TRAN TCATEGORIA
						SET @DESCRIERROR =  'REGISTRADO'
						SET @ERROR = 0;	
				END
		END
END TRY
BEGIN CATCH
	SET @DESCRIERROR =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_TIPO_JUZGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_TIPO_JUZGADO]
@ID_TIPOJUZGADO INT,
@NOMBRE VARCHAR(50)
AS
UPDATE TipoJuzgado 
	SET Nombre = @NOMBRE
  WHERE IdTipoJuzgado = @ID_TIPOJUZGADO
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_TP_TESTIGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_TP_TESTIGO]
@ID_TIPOTESTIGO INT,
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250)
AS
UPDATE TipoTestigo 
	SET Nombre = @NOMBRE, Descripcion = @DESCRIPCION
  WHERE IdTipoTestigo = @ID_TIPOTESTIGO
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_USUARIO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_USUARIO]
@IDUSUARIO INT,
@NOMBRES VARCHAR(30),
@APELLIDOS VARCHAR(30),
@IDENTIDAD VARCHAR(17),
@CONTRASENIA VARCHAR(30),
@IDROL INT,
@USUARIO VARCHAR(30)
AS
UPDATE Usuario 
	SET Nombres = @NOMBRES, Apellidos = @APELLIDOS, Identidad = @IDENTIDAD,
		Contrasenia = @CONTRASENIA, IdRol = @IDROL, Usuario = @USUARIO
  WHERE IdUsuario = @IDUSUARIO
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BUSCAR_ABOGADO] 
@ID INT
AS
SELECT IdAbogado,Nombres
	FROM Abogado
WHERE IdAbogado = @ID
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
creaTE PROCEDURE [dbo].[BUSCAR_CASO]
@ID INT
AS
SELECT IdCaso,TituloCaso
	FROM Caso
WHERE IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_CLIENTE]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SP ADD CLIENTE EN CONSULTAS
create PROCEDURE [dbo].[BUSCAR_CLIENTE] 
@ID INT
AS
SELECT IdCliente,Nombres
	FROM Cliente
WHERE IdCliente = @ID
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_CONSULTA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BUSCAR_CONSULTA]
@ID INT
AS
SELECT C.IdConsulta,CL.Nombres
	FROM Consulta C INNER JOIN Cliente CL ON CL.IdCliente = C.IdCliente 
WHERE C.IdConsulta = @ID
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_CONSULTA2]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BUSCAR_CONSULTA2]@ID INTASSELECT C.IdConsulta,CL.Nombres	FROM Consulta C INNER JOIN Cliente CL ON CL.IdCliente = C.IdCliente WHERE C.IdConsulta = @ID
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_GASTO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--BUSCAR GASTO POR FECHA
CREATE PROCEDURE [dbo].[BUSCAR_GASTO]
@FECHAINICIAL DATETIME,
@FECHAFINAL DATETIME
AS
	SELECT G.IdGasto, G.Comentario, G.Fecha, G.Monto, G.IdTipoGasto, TG.Nombre
		FROM Gasto G INNER JOIN TipoGasto TG ON TG.IdTipoGasto = G.IdTipoGasto
	WHERE Fecha BETWEEN @FECHAINICIAL AND @FECHAFINAL
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_PAGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BUSCAR_PAGO]@FECHAINICIAL DATETIME,@FECHAFINAL DATETIMEAS	SELECT P.IdPago, TP.Nombre, P.Monto, P.Fecha, P.Comentario, P.IdTipoPago		FROM Pago P INNER JOIN TipoPago TP ON TP.IdTipoPago = P.IdTipoPago	WHERE Fecha BETWEEN @FECHAINICIAL AND @FECHAFINAL
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_CASO_EVIDENCIA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[COMBOBOX_CASO_EVIDENCIA]
AS
 SELECT IdCaso, TituloCaso
	FROM Caso 
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_DE_ROLES]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[COMBOBOX_DE_ROLES]
AS
 SELECT R.IdRol, R.Nombre
	FROM Rol R
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_ESTADOCIVIL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[COMBOBOX_ESTADOCIVIL]
AS
 SELECT IdEstadoCivil, Nombre
	FROM EstadoCivil 
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_INDICIO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[COMBOBOX_INDICIO]
AS
 SELECT IdTipoIndicio, Nombre
	FROM TipoIndicio 
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_OCUPACION]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[COMBOBOX_OCUPACION]
AS
 SELECT IdOcupacion, Nombre
	FROM Ocupacion 
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_TIPO_CONSULTA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--SP PARA COMBOBOX TIPO CONSULTA
CREATE PROCEDURE [dbo].[COMBOBOX_TIPO_CONSULTA]
AS
 SELECT IdTipoConsulta, Nombre
	FROM TipoConsulta 
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_TIPO_EVIDENCIA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[COMBOBOX_TIPO_EVIDENCIA]
AS
 SELECT IdTipoEvidencia, Nombre
	FROM TipoEvidencia 
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_TIPO_GASTO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--LLENANDO COMBOBOX TIPOGASTO
CREATE PROCEDURE [dbo].[COMBOBOX_TIPO_GASTO]
AS
 SELECT IdTipoGasto, Nombre
	FROM TipoGasto 
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_TIPO_JUZGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SP PARA COMBOBOX TIPO JUZGADO
CREATE PROCEDURE [dbo].[COMBOBOX_TIPO_JUZGADO]
AS
 SELECT IdTipoJuzgado, Nombre
	FROM TipoJuzgado 
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_TIPO_TESTIGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[COMBOBOX_TIPO_TESTIGO]
AS
 SELECT IdTipoTestigo, Nombre
	FROM TipoTestigo 
GO
/****** Object:  StoredProcedure [dbo].[COMBOBOX_TP_PAGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[COMBOBOX_TP_PAGO]
AS
 SELECT IdTipoPago, Nombre
	FROM TipoPago 
GO
/****** Object:  StoredProcedure [dbo].[EDITAR_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[EDITAR_ABOGADO]
@ID INT,
@NOMBRE VARCHAR(30),
@APELLIDO VARCHAR(30),
@IDENTIDAD VARCHAR(17),
@TELEFONO VARCHAR(17),
@CORREO VARCHAR(100),
@DOMICILIO VARCHAR(250),
@FECHA_NACIMIENTO DATETIME,
@NUMERO_COLEGIADO INT,
@ESTADO_CIVIL INT,
@ESTADO BIT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
--BEGIN TRAN TCATEGORIA 
	BEGIN TRY
		IF @NOMBRE = ''
			BEGIN
				SET @DESCRIPCION = 'NOMBRE VACIO'
				SET @ERROR = 1
			END
		ELSE IF @NOMBRE IS NULL
			BEGIN
				SET @DESCRIPCION = 'NOMBRE NULO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO = ''
			BEGIN
				SET @DESCRIPCION = 'APELLIDO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO IS NULL
			BEGIN
				SET @DESCRIPCION = 'APELLIDO NULO'
				SET @ERROR = 1
			END
			ELSE IF @IDENTIDAD = ''
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD VACIO'
				SET @ERROR = 1
			END
		ELSE IF @IDENTIDAD IS NULL
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD NULO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO = ''
			BEGIN
				SET @DESCRIPCION = 'TELEFONO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO IS NULL
			BEGIN
				SET @DESCRIPCION = 'TELEFONO NULO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO = ''
			BEGIN
				SET @DESCRIPCION = 'CORREO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO IS NULL
			BEGIN
				SET @DESCRIPCION = 'CORREO NULO'
				SET @ERROR = 1
			END

		ELSE IF @DOMICILIO = ''
			BEGIN
				SET @DESCRIPCION = 'DOMICILIO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @DOMICILIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'DOMICILIO NULO'
				SET @ERROR = 1
			END

		ELSE IF YEAR(GETDATE()-@FECHA_NACIMIENTO)<18 
			BEGIN
				SET @DESCRIPCION = 'FECHA NO VALIDA'
				SET @ERROR = 1
			END
		ELSE IF @FECHA_NACIMIENTO IS NULL
			BEGIN
				SET @DESCRIPCION = 'FECHA NULO'
				SET @ERROR = 1
			END
		ELSE IF @NUMERO_COLEGIADO = 0
			BEGIN
				SET @DESCRIPCION = 'COLEGIADO NULO'
				SET @ERROR = 1
			END
		ELSE IF @ESTADO_CIVIL IS NULL
			BEGIN
				SET @DESCRIPCION = 'ESTADO CIVIL NULO'
				SET @ERROR = 1
			END

		ELSE
			BEGIN
				UPDATE Abogado SET Nombres = @NOMBRE,
					 Apellidos =@APELLIDO,
					 Identidad =@IDENTIDAD,
					 Telefono =@TELEFONO,
					 Correo =@CORREO,
					 Domicilio =@DOMICILIO,
					 FechaNacimiento =@FECHA_NACIMIENTO,
					 NumeroColegiado =@NUMERO_COLEGIADO,
					 IdEstadoCivil =@ESTADO_CIVIL,
					 Estado =@ESTADO
				WHERE idAbogado = @ID

				IF @@ERROR = 0
					BEGIN 
						--COMMIT TRAN TCATEGORIA
						SET @DESCRIPCION =  'REGISTRADO'
						SET @ERROR = 0;	
					END
				END
			END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[EDITAR_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EDITAR_FISCAL]
@ID INT,
@NOMBRE VARCHAR(30),
@APELLIDO VARCHAR(30),
@IDENTIDAD VARCHAR(17),
@TELEFONO VARCHAR(17),
@CORREO VARCHAR(100),
@NUMERO_COLEGIADO INT,
@TIPO INT,
@ESTADO_CIVIL INT,
@ESTADO BIT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
BEGIN TRY
		IF @NOMBRE = ''
			BEGIN
				SET @DESCRIPCION = 'NOMBRE VACIO'
				SET @ERROR = 1
			END
		ELSE IF @NOMBRE IS NULL
			BEGIN
				SET @DESCRIPCION = 'NOMBRE NULO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO = ''
			BEGIN
				SET @DESCRIPCION = 'APELLIDO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO IS NULL
			BEGIN
				SET @DESCRIPCION = 'APELLIDO NULO'
				SET @ERROR = 1
			END
			ELSE IF @IDENTIDAD = ''
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD VACIO'
				SET @ERROR = 1
			END
		ELSE IF @IDENTIDAD IS NULL
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD NULO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO = ''
			BEGIN
				SET @DESCRIPCION = 'TELEFONO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO IS NULL
			BEGIN
				SET @DESCRIPCION = 'TELEFONO NULO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO = ''
			BEGIN
				SET @DESCRIPCION = 'CORREO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO IS NULL
			BEGIN
				SET @DESCRIPCION = 'CORREO NULO'
				SET @ERROR = 1
			END
		ELSE IF @NUMERO_COLEGIADO = 0
			BEGIN
				SET @DESCRIPCION = 'COLEGIADO NULO'
				SET @ERROR = 1
			END
		ELSE IF @ESTADO_CIVIL IS NULL
			BEGIN
				SET @DESCRIPCION = 'ESTADO CIVIL NULO'
				SET @ERROR = 1
			END

		ELSE
			BEGIN 
				UPDATE Fiscal SET 
				 Nombres = @NOMBRE,
				 Apellidos =@APELLIDO,
				 Identidad =@IDENTIDAD,
				 Telefono =@TELEFONO,
				 Correo =@CORREO,
				 NumeroColegiado =@NUMERO_COLEGIADO,
				 idTipoFiscal = @TIPO,
				 IdEstadoCivil =@ESTADO_CIVIL,
				 Estado =@ESTADO
				WHERE idFiscal = @ID

			IF @@ERROR = 0
				BEGIN 
					--COMMIT TRAN TCATEGORIA
					SET @DESCRIPCION =  'REGISTRADO'
					SET @ERROR = 0;
					SET @ID = @@IDENTITY	
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ELIMINAR_CASO_ABOGADO_POR_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELIMINAR_CASO_ABOGADO_POR_CASO]
@ID INT
AS
	DELETE CasoAbogado WHERE IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[ELIMINAR_CASO_FISCAL_POR_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELIMINAR_CASO_FISCAL_POR_CASO]
@ID INT
AS
	DELETE CasoFiscal WHERE IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[ELIMINAR_ESPECIALIDAD_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELIMINAR_ESPECIALIDAD_ABOGADO]
@ID INT
AS
	DELETE FROM EspecialidadAbogado WHERE IdAbogado = @ID;
GO
/****** Object:  StoredProcedure [dbo].[ESTADO_TESTIGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTADO_TESTIGO]
@IDTESTIGO INT,
@ESTADO BIT
AS 
 UPDATE Testigo 
	SET Estado = @ESTADO
 WHERE IdTestigo = @IDTESTIGO
GO
/****** Object:  StoredProcedure [dbo].[ESTADO_USUARIO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTADO_USUARIO]
@IDUSUARIO INT,
@ESTADO BIT
AS 
 UPDATE Usuario 
	SET Estado = @ESTADO
 WHERE IdUsuario = @IDUSUARIO
GO
/****** Object:  StoredProcedure [dbo].[EXISTE_CATEGORIA_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EXISTE_CATEGORIA_ABOGADO]
@NOMBRE VARCHAR(30)
AS
	SELECT *
	FROM categoriaAbogado WHERE Nombre = @NOMBRE;
GO
/****** Object:  StoredProcedure [dbo].[EXISTE_OCUPACION]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EXISTE_OCUPACION]
@NOMBRE VARCHAR(30)
AS
 SELECT Nombre
	FROM Ocupacion 
  WHERE Nombre = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[EXISTE_ROL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EXISTE_ROL]
@NOMBRE VARCHAR(30)
AS
 SELECT R.Nombre
	FROM Rol R
  WHERE R.Nombre = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[EXISTE_TIPO_CONSULTA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--VALIDACION DE LA EXISTENCIA DE UN TIPO DE CONSULTA
CREATE PROCEDURE [dbo].[EXISTE_TIPO_CONSULTA]
@NOMBRE VARCHAR(50)
AS
 SELECT Nombre
	FROM TipoConsulta
  WHERE Nombre = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[EXISTE_TIPO_JUZGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EXISTE_TIPO_JUZGADO]
@NOMBRE VARCHAR(50)
AS
 SELECT Nombre
	FROM TipoJuzgado 
  WHERE Nombre = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[EXISTE_TPTESTIGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EXISTE_TPTESTIGO]
@NOMBRE VARCHAR(30)
AS
 SELECT Nombre
	FROM TipoTestigo 
  WHERE Nombre = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[EXISTE_USUARIO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EXISTE_USUARIO]
@USUARIO VARCHAR(30)
AS
SELECT R.Usuario
	FROM Usuario R
	WHERE R.Usuario = @USUARIO
GO
/****** Object:  StoredProcedure [dbo].[INS_CASO_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INS_CASO_ABOGADO]
	@IDCASO INT,
	@IDABOGADO INT 
AS
	INSERT INTO CasoAbogado(IdCaso,IdAbogado)VALUES(@IDCASO,@IDABOGADO)
GO
/****** Object:  StoredProcedure [dbo].[INS_CASO_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INS_CASO_FISCAL]
	@IDCASO INT,
	@IDFISCAL INT 
AS
	INSERT INTO CasoFiscal(IdCaso,IdFiscal)VALUES(@IDCASO,@IDFISCAL)
GO
/****** Object:  StoredProcedure [dbo].[INS_GASTO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--SP INSERTAR PAGO
CREATE PROCEDURE [dbo].[INS_GASTO]
@COMENTARIO VARCHAR(250),
@MONTO DECIMAL(11,2),
@FECHA DATETIME,
@IDTIPOGASTO INT,
@IDCASO INT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @COMENTARIO = '' 
				BEGIN
					SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
					SET @ERROR = 1 
				END
			ELSE IF  @COMENTARIO IS NULL
				BEGIN
					SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
					SET @ERROR = 1 
				END
			ELSE IF @MONTO = 0 
				BEGIN 
					SET @DESCRIPCION = 'Asegurate de ingresar el monto de pago'
					SET @ERROR = 1 
				END
			ELSE IF @MONTO IS NULL
				BEGIN 
					SET @DESCRIPCION = 'Asegurate de ingresar el monto de pago'
					SET @ERROR = 1 
				END
			ELSE IF @FECHA IS NULL 
				BEGIN
					SET @DESCRIPCION = 'Asegurate de ingresar una fecha'
					SET @ERROR = 1 
				END
			ELSE
				DECLARE @IDGENERADO INT
				INSERT INTO Gasto(Comentario,Monto, Fecha, IdTipoGasto) VALUES(@COMENTARIO, @MONTO,@FECHA, @IDTIPOGASTO)
				SELECT @IDGENERADO = SCOPE_IDENTITY()
				INSERT INTO GastoCaso(IdCaso,IdGasto) VALUES(@IDCASO,@IDGENERADO)
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0 
					BEGIN
						SET @ERROR = 0;
				END
		END TRY
	BEGIN CATCH
		SET @DESCRIPCION = 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		ROLLBACK TRANSACTION
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INS_PAGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INS_PAGO]
--@IDPAGO INT OUTPUT,
@COMENTARIO VARCHAR(250),
@MONTO DECIMAL(11,2),
@FECHA DATETIME,
@IDTIPOPAGO INT,
@IDCASO INT,
@IDCONSULTA INT,
@IDUSUARIO INT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @COMENTARIO = '' 
				BEGIN
					SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
					SET @ERROR = 1 
				END
			ELSE IF  @COMENTARIO IS NULL
				BEGIN
					SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
					SET @ERROR = 1 
				END
			ELSE IF @MONTO = 0 
				BEGIN 
					SET @DESCRIPCION = 'Asegurate de ingresar el monto de pago'
					SET @ERROR = 1 
				END
			ELSE IF @MONTO IS NULL
				BEGIN 
					SET @DESCRIPCION = 'Asegurate de ingresar el monto de pago'
					SET @ERROR = 1 
				END
			ELSE IF @FECHA IS NULL 
				BEGIN
					SET @DESCRIPCION = 'Asegurate de ingresar una fecha'
					SET @ERROR = 1 
				END
			ELSE
				BEGIN
					DECLARE @IDGENERADO INT
				INSERT INTO Pago(Comentario,Monto, Fecha, IdTipoPago) VALUES(@COMENTARIO, @MONTO,@FECHA, @IDTIPOPAGO)
				SELECT @IDGENERADO = SCOPE_IDENTITY()
				INSERT INTO PagoUsuario(IdPago,IdUsuario) VALUES(@IDGENERADO, @IDUSUARIO)
				IF @IDCASO <> 0
					INSERT INTO PagoCaso(IdCaso,IdPago) VALUES(@IDCASO,@IDGENERADO)
				IF @IDCONSULTA <> 0
						INSERT INTO PagoConsulta(IdConsulta,IdPago)	VALUES(@IDCONSULTA, @IDGENERADO)

				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0 
					BEGIN
						--SET @IDPAGO = @@IDENTITY
						SET @ERROR = 0;
				END
				END			
		END TRY
	BEGIN CATCH
		SET @DESCRIPCION = 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		ROLLBACK TRANSACTION
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[INSERTAR_ABOGADO]
@NOMBRE VARCHAR(30),
@APELLIDO VARCHAR(30),
@IDENTIDAD VARCHAR(17),
@TELEFONO VARCHAR(17),
@CORREO VARCHAR(100),
@DOMICILIO VARCHAR(250),
@FECHA_NACIMIENTO DATETIME,
@NUMERO_COLEGIADO INT,
@ESTADO_CIVIL INT,
@ESTADO BIT,
@ID INT OUTPUT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS 
--BEGIN TRAN TCATEGORIA 
	BEGIN TRY
		IF @NOMBRE = ''
			BEGIN
				SET @DESCRIPCION = 'NOMBRE VACIO'
				SET @ERROR = 1
			END
		ELSE IF @NOMBRE IS NULL
			BEGIN
				SET @DESCRIPCION = 'NOMBRE NULO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO = ''
			BEGIN
				SET @DESCRIPCION = 'APELLIDO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO IS NULL
			BEGIN
				SET @DESCRIPCION = 'APELLIDO NULO'
				SET @ERROR = 1
			END
			ELSE IF @IDENTIDAD = ''
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD VACIO'
				SET @ERROR = 1
			END
		ELSE IF @IDENTIDAD IS NULL
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD NULO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO = ''
			BEGIN
				SET @DESCRIPCION = 'TELEFONO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO IS NULL
			BEGIN
				SET @DESCRIPCION = 'TELEFONO NULO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO = ''
			BEGIN
				SET @DESCRIPCION = 'CORREO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO IS NULL
			BEGIN
				SET @DESCRIPCION = 'CORREO NULO'
				SET @ERROR = 1
			END

		ELSE IF @DOMICILIO = ''
			BEGIN
				SET @DESCRIPCION = 'DOMICILIO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @DOMICILIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'DOMICILIO NULO'
				SET @ERROR = 1
			END

		ELSE IF YEAR(GETDATE()-@FECHA_NACIMIENTO)<18 
			BEGIN
				SET @DESCRIPCION = 'FECHA NO VALIDA'
				SET @ERROR = 1
			END
		ELSE IF @FECHA_NACIMIENTO IS NULL
			BEGIN
				SET @DESCRIPCION = 'FECHA NULO'
				SET @ERROR = 1
			END
		ELSE IF @NUMERO_COLEGIADO = 0
			BEGIN
				SET @DESCRIPCION = 'COLEGIADO NULO'
				SET @ERROR = 1
			END
		ELSE IF @ESTADO_CIVIL IS NULL
			BEGIN
				SET @DESCRIPCION = 'ESTADO CIVIL NULO'
				SET @ERROR = 1
			END

		ELSE
			BEGIN 
				INSERT INTO Abogado(Nombres,Apellidos,Identidad,Telefono,Correo,Domicilio,FechaNacimiento,NumeroColegiado,IdEstadoCivil,Estado) 
				 VALUES (@NOMBRE,@APELLIDO,@IDENTIDAD,@TELEFONO,@CORREO,@DOMICILIO,@FECHA_NACIMIENTO,@NUMERO_COLEGIADO,@ESTADO_CIVIL,@ESTADO)

			IF @@ERROR = 0
				BEGIN 
					--COMMIT TRAN TCATEGORIA
					SET @DESCRIPCION =  'REGISTRADO'
					SET @ERROR = 0;
					SET @ID = @@IDENTITY	
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_ABOGADO_ESPECIALIDAD]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_ABOGADO_ESPECIALIDAD]
@ABOGADO INT,
@CATEGORIA INT
AS
INSERT INTO EspecialidadAbogado(IdAbogado,IdCategoriaAbogado) 
	   VALUES (@ABOGADO,@CATEGORIA)
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_AGENDA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERTAR_AGENDA]
@IDCASO INT,
@DESCRIPCION VARCHAR(250),
@FECHA DATETIME,
@ID INT OUTPUT,
@ERROR INT OUTPUT,
@DESCRIPCION_E VARCHAR(250) OUTPUT
AS 
--BEGIN TRAN TCATEGORIA 
	BEGIN TRY
		IF @DESCRIPCION = ''
			BEGIN
				SET @DESCRIPCION_E = 'DESCRIPCION VACIO'
				SET @ERROR = 1
			END
		ELSE IF @DESCRIPCION IS NULL
			BEGIN
				SET @DESCRIPCION_E = 'DESCRIPCION NULO'
				SET @ERROR = 1
			END
		ELSE IF @FECHA IS NULL
			BEGIN
				SET @DESCRIPCION_E = 'FECHA NULO'
				SET @ERROR = 1
			END
		ELSE
			BEGIN 
				INSERT INTO Agenda(Descripcion,Fecha,IdCaso)
				VALUES (@DESCRIPCION, @FECHA, @IDCASO)

			IF @ERROR = 0
				BEGIN 
				--COMMIT TRANSACTION
					SET @ERROR = 0;
					SET @ID = @@IDENTITY	
					SET @DESCRIPCION_E ='REGISTRADO'
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION_E ='ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
		--ROLLBACK TRANSACTION
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_CASO]
@IDCLIENTE INT ,
@TITULO VARCHAR(30),
@IDTIPO INT,
@DESCRIPCION VARCHAR(250),
@HONORARIO DECIMAL,
@ESTADO BIT,
@IDJUZGADO INT,
@FECHA_CREACION DATETIME,
@EXP_JUZGADO INT,
@EXP_DPI INT,
@EXP_MIN_PU INT,
@ID INT OUTPUT,
@ERROR INT OUTPUT,
@DESCRIPCION_E VARCHAR(250) OUTPUT
AS 
--BEGIN TRAN TCATEGORIA 
	BEGIN TRY
		IF @TITULO = ''
			BEGIN
				SET @DESCRIPCION_E = 'TITULO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @TITULO IS NULL
			BEGIN
				SET @DESCRIPCION_E = 'TITULO NULO'
				SET @ERROR = 1
			END
		ELSE IF @DESCRIPCION = ''
			BEGIN
				SET @DESCRIPCION_E = 'DESCRIPCION VACIO'
				SET @ERROR = 1
			END
		ELSE IF @DESCRIPCION IS NULL
			BEGIN
				SET @DESCRIPCION_E = 'DESCRIPCION NULO'
				SET @ERROR = 1
			END
		ELSE IF @HONORARIO = 0
			BEGIN
				SET @DESCRIPCION_E = 'HONORARIO 0'
				SET @ERROR = 1
			END
		ELSE IF @IDCLIENTE = 0
			BEGIN
				SET @DESCRIPCION_E = 'CLIENTE NO VALIDO'
				SET @ERROR = 1
			END
		ELSE IF @IDTIPO = 0
			BEGIN
				SET @DESCRIPCION_E = 'TIPO NO VALIDO'
				SET @ERROR = 1
			END
		ELSE IF @IDJUZGADO = 0
			BEGIN
				SET @DESCRIPCION_E = 'JUZGADO NO VALIDO'
				SET @ERROR = 1
			END
		ELSE
			BEGIN 
				INSERT INTO Caso(IdCliente,TituloCaso,IdTipoCaso,Descripcion,Honorario,Estado,IdJuzgado,FechaCreacion,NumExpJuzgado,NumExpDpi,NumExpMinPublico)
				VALUES (@IDCLIENTE, @TITULO,@IDTIPO, @DESCRIPCION,@HONORARIO,@ESTADO,@IDJUZGADO,@FECHA_CREACION,@EXP_JUZGADO,@EXP_DPI,@EXP_MIN_PU)

			IF @ERROR = 0
				BEGIN 
				COMMIT TRANSACTION
					SET @DESCRIPCION_E =  'REGISTRADO'
					SET @ERROR = 0;
					SET @ID = @@IDENTITY	
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION_E =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRANSACTION
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_CLIENTE]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_CLIENTE]
@NOMBRE VARCHAR(30),
@APELLIDO VARCHAR(30),
@IDENTIDAD VARCHAR(17),
@TELEFONO VARCHAR(17),
@CORREO VARCHAR(100),
@DOMICILIO VARCHAR(250),
@FECHA_NACIMIENTO DATETIME,
@ESTADO_CIVIL INT,
@OCUPACION INT,
@ESTADO BIT,
@CLIENTEID INT OUTPUT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT

AS 

	BEGIN TRY
		IF @NOMBRE = ''
			BEGIN
				SET @DESCRIPCION = 'NOMBRE VACIO'
				SET @ERROR = 1
			END
		ELSE IF @NOMBRE IS NULL
			BEGIN
				SET @DESCRIPCION = 'NOMBRE NULO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO = ''
			BEGIN
				SET @DESCRIPCION = 'APELLIDO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO IS NULL
			BEGIN
				SET @DESCRIPCION = 'APELLIDO NULO'
				SET @ERROR = 1
			END
			ELSE IF @IDENTIDAD = ''
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD VACIO'
				SET @ERROR = 1
			END
		ELSE IF @IDENTIDAD IS NULL
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD NULO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO = ''
			BEGIN
				SET @DESCRIPCION = 'TELEFONO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO IS NULL
			BEGIN
				SET @DESCRIPCION = 'TELEFONO NULO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO = ''
			BEGIN
				SET @DESCRIPCION = 'CORREO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO IS NULL
			BEGIN
				SET @DESCRIPCION = 'CORREO NULO'
				SET @ERROR = 1
			END

		ELSE IF @DOMICILIO = ''
			BEGIN
				SET @DESCRIPCION = 'DOMICILIO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @DOMICILIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'DOMICILIO NULO'
				SET @ERROR = 1
			END

		ELSE IF YEAR(GETDATE()-@FECHA_NACIMIENTO)<18 
			BEGIN
				SET @DESCRIPCION = 'FECHA NO VALIDA'
				SET @ERROR = 1
			END
		ELSE IF @FECHA_NACIMIENTO IS NULL
			BEGIN
				SET @DESCRIPCION = 'FECHA NULO'
				SET @ERROR = 1
			END
		ELSE IF @OCUPACION IS NULL
			BEGIN
				SET @DESCRIPCION = 'OCUPACION NULO'
				SET @ERROR = 1
			END
		ELSE IF @ESTADO_CIVIL IS NULL
			BEGIN
				SET @DESCRIPCION = 'ESTADO CIVIL NULO'
				SET @ERROR = 1
			END

		ELSE
			BEGIN 
				INSERT INTO Cliente(Nombres,Apellidos,Identidad,Telefono,Correo,Domicilio,FechaNacimiento,IdEstadoCivil,IdOcupacion,Estado) 
				 VALUES (@NOMBRE,@APELLIDO,@IDENTIDAD,@TELEFONO,@CORREO,@DOMICILIO,@FECHA_NACIMIENTO,@ESTADO_CIVIL,@OCUPACION,@ESTADO)

			IF @@ERROR = 0
				BEGIN 
					SET @DESCRIPCION =  'REGISTRADO'
					SET @ERROR = 0;
					SET @CLIENTEID = @@IDENTITY	
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
		--ROLLBACK TRAN 
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_CONSULTAS]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_CONSULTAS]
@IDCLIENTE INT,
@IDABOGADO INT,
@FECHA DATETIME,
@TIPOCONSULTA INT,
@DESCRIPCION VARCHAR(250),
@CONSULTAID INT OUTPUT,
@ERROR INT OUTPUT,
@DESERROR VARCHAR(250) OUTPUT
AS 
	BEGIN TRY
		IF @DESCRIPCION = ''
			BEGIN
				SET @DESERROR = 'DESCRIPCION VACIA'
				SET @ERROR = 1
			END
		ELSE IF @FECHA IS NULL
			BEGIN
				SET @DESERROR = 'FECHA NULO'
				SET @ERROR = 1
			END
		ELSE IF @FECHA =''
			BEGIN
				SET @DESERROR = 'FECHA VACIA'
				SET @ERROR = 1
			END
		ELSE IF @IDCLIENTE IS NULL
			BEGIN
				SET @DESERROR = 'CLIENTE NULO'
				SET @ERROR = 1
			END
		ELSE IF @IDCLIENTE=''
			BEGIN
				SET @DESERROR = 'CLIENTE VACIO'
				SET @ERROR = 1
			END
		ELSE IF @IDABOGADO IS NULL
			BEGIN
				SET @DESERROR = 'ABOGADO NULO'
				SET @ERROR = 1
			END
		ELSE IF @IDABOGADO = ''
			BEGIN
				SET @DESERROR = 'ABOGADO VACIO'
				SET @ERROR = 1
			END
		ELSE
			BEGIN 
				INSERT INTO Consulta(IdCliente,IdAbogado,FechaHora,TipoConsulta,Descripcion) 
				 VALUES (@IDCLIENTE,@IDABOGADO,@FECHA,@TIPOCONSULTA,@DESCRIPCION)

			IF @@ERROR = 0
				BEGIN 
					SET @DESERROR =  'REGISTRADO'
					SET @ERROR = 0;
					SET @CONSULTAID = @@IDENTITY	
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESERROR =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
		--ROLLBACK TRAN 
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_FISCAL]
@NOMBRE VARCHAR(30),
@APELLIDO VARCHAR(30),
@IDENTIDAD VARCHAR(17),
@TELEFONO VARCHAR(17),
@CORREO VARCHAR(100),
@NUMERO_COLEGIADO INT,
@ID_TIPO INT,
@ESTADO_CIVIL INT,
@ESTADO BIT,
@ID INT OUTPUT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
BEGIN TRY
		IF @NOMBRE = ''
			BEGIN
				SET @DESCRIPCION = 'NOMBRE VACIO'
				SET @ERROR = 1
			END
		ELSE IF @NOMBRE IS NULL
			BEGIN
				SET @DESCRIPCION = 'NOMBRE NULO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO = ''
			BEGIN
				SET @DESCRIPCION = 'APELLIDO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @APELLIDO IS NULL
			BEGIN
				SET @DESCRIPCION = 'APELLIDO NULO'
				SET @ERROR = 1
			END
			ELSE IF @IDENTIDAD = ''
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD VACIO'
				SET @ERROR = 1
			END
		ELSE IF @IDENTIDAD IS NULL
			BEGIN
				SET @DESCRIPCION = 'IDENTIDAD NULO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO = ''
			BEGIN
				SET @DESCRIPCION = 'TELEFONO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @TELEFONO IS NULL
			BEGIN
				SET @DESCRIPCION = 'TELEFONO NULO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO = ''
			BEGIN
				SET @DESCRIPCION = 'CORREO VACIO'
				SET @ERROR = 1
			END
		ELSE IF @CORREO IS NULL
			BEGIN
				SET @DESCRIPCION = 'CORREO NULO'
				SET @ERROR = 1
			END
		ELSE IF @NUMERO_COLEGIADO = 0
			BEGIN
				SET @DESCRIPCION = 'COLEGIADO NULO'
				SET @ERROR = 1
			END
		ELSE IF @ESTADO_CIVIL IS NULL
			BEGIN
				SET @DESCRIPCION = 'ESTADO CIVIL NULO'
				SET @ERROR = 1
			END

		ELSE
			BEGIN 
				INSERT INTO Fiscal(Nombres,Apellidos,Identidad,Telefono,Correo,NumeroColegiado,IdTipoFiscal,IdEstadoCivil,Estado) 
			 VALUES (@NOMBRE,@APELLIDO,@IDENTIDAD,@TELEFONO,@CORREO,@NUMERO_COLEGIADO,@ID_TIPO,@ESTADO_CIVIL,@ESTADO)

			IF @@ERROR = 0
				BEGIN 
					--COMMIT TRAN TCATEGORIA
					SET @DESCRIPCION =  'REGISTRADO'
					SET @ERROR = 0;
					SET @ID = @@IDENTITY	
				END
			END
			
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_JUZGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_JUZGADO]
@NOMBRE VARCHAR(50), 
@UBICACION VARCHAR(250),
@TELEFONO VARCHAR(17),
@ID_TIPOJUZGADO INT
AS
	INSERT INTO Juzgado(Nombre,Ubicacion,Telefono,IdTipoJuzgado)
		    VALUES(@NOMBRE,@UBICACION,@TELEFONO,@ID_TIPOJUZGADO)
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_OCUPACION]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_OCUPACION]
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250)
AS
INSERT INTO Ocupacion(Nombre,Descripcion)
VALUES (@NOMBRE,@DESCRIPCION)
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_PAGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_PAGO]
@ID_PAGO INT OUTPUT,
@COMENTARIO VARCHAR(250),
@MONTO DECIMAL(11,2),
@FECHA DATETIME,
@ID_TIPO_PAGO INT
AS
	INSERT INTO Pago(Comentario,Monto,Fecha,IdTipoPago)
	VALUES (@COMENTARIO,@MONTO,@FECHA,@ID_TIPO_PAGO)
	SET @ID_PAGO = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_ROL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_ROL]
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250)
AS
INSERT INTO Rol (Nombre,Descripcion)
VALUES (@NOMBRE,@DESCRIPCION)
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_TESTIGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_TESTIGO]
@IDTESTIGO INT OUTPUT,
@NOMBRE VARCHAR(30)=NULL, 
@APELLIDO VARCHAR(30)=NULL,
@IDENTIDAD VARCHAR(17)=NULL, 
@TELEFONO VARCHAR(17)=NULL,
@CORREO VARCHAR(150)=NULL, 
@DOMICILIO VARCHAR(250)=NULL,
@FECHANACIMEINTO DATETIME=NULL, 
@ID_ESTADOCIVIL INT=NULL,
@ID_OCUPACION INT=NULL, 
@ID_TPTESTIGO INT=NULL, 
@ESTADO BIT=NULL,
@IDCASO INT=NULL
AS
INSERT INTO Testigo(Nombres,Apellidos,Identidad,Telefono,Correo,Domicilio,FechaNacimiento,
					IdEstadoCivil,IdOcupacion,IdTipoTestigo,Estado,idCaso) 
	   VALUES (@NOMBRE,@APELLIDO,@IDENTIDAD,@TELEFONO,@CORREO,@DOMICILIO,@FECHANACIMEINTO,
			   @ID_ESTADOCIVIL,@ID_OCUPACION,@ID_TPTESTIGO,@ESTADO,@IDCASO);
SET @IDTESTIGO = @@IDENTITY

GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_TESTIGO2]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[INSERTAR_TESTIGO2]
@IDTESTIGO int output,
@ID_TPTESTIGO INT, 
@IDCASO INT
AS
INSERT INTO Testigo(IdTipoTestigo,idCaso) 
	   VALUES (@ID_TPTESTIGO,@IDCASO)
SET @IDTESTIGO = @@IDENTITY

GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_TIPO_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERTAR_TIPO_ABOGADO]
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIERROR VARCHAR(250) OUTPUT,
@ID INT OUTPUT
AS
BEGIN TRY
	IF @NOMBRE IS NULL
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE ES NULO'
		END
	ELSE IF @NOMBRE = ''
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE VACIO'
		END
	ELSE IF @NOMBRE IN (SELECT Nombre FROM CategoriaAbogado)
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'CATEGORIA YA EXISTE'
		END
	ELSE
		BEGIN
			INSERT INTO CategoriaAbogado  VALUES (@NOMBRE,@DESCRIPCION)

				IF @@ERROR = 0
					BEGIN 
						--COMMIT TRAN TCATEGORIA
						SET @DESCRIERROR =  'REGISTRADO'
						SET @ERROR = 0;	
						SET @ID = @@IDENTITY
				END
		END
END TRY
BEGIN CATCH
	SET @DESCRIERROR =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_TIPO_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_TIPO_CASO]
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIERROR VARCHAR(250) OUTPUT,
@ID INT OUTPUT
AS
BEGIN TRY
	IF @NOMBRE IS NULL
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE ES NULO'
		END
	ELSE IF @NOMBRE = ''
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE VACIO'
		END
	ELSE IF @NOMBRE IN (SELECT Nombre FROM CategoriaAbogado)
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'CATEGORIA YA EXISTE'
		END
	ELSE
		BEGIN
			INSERT INTO TipoCaso VALUES (@NOMBRE,@DESCRIPCION)

				IF @@ERROR = 0
					BEGIN 
						--COMMIT TRAN TCATEGORIA
						SET @DESCRIERROR =  'REGISTRADO'
						SET @ERROR = 0;	
				END
		END
END TRY
BEGIN CATCH
	SET @DESCRIERROR =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_TIPO_CONSULTA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_TIPO_CONSULTA]
@NOMBRE VARCHAR(50)
AS
INSERT INTO TipoConsulta(Nombre)
	   VALUES (@NOMBRE)
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_TIPO_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_TIPO_FISCAL]
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIERROR VARCHAR(250) OUTPUT,
@ID INT OUTPUT
AS
BEGIN TRY
	IF @NOMBRE IS NULL
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE ES NULO'
		END
	ELSE IF @NOMBRE = ''
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'NOMBRE VACIO'
		END
	ELSE IF @NOMBRE IN (SELECT Nombre FROM CategoriaAbogado)
		BEGIN
			SET @ERROR = 1
			SET @DESCRIERROR = 'CATEGORIA YA EXISTE'
		END
	ELSE
		BEGIN
			INSERT INTO TipoFiscal VALUES (@NOMBRE,@DESCRIPCION)

				IF @@ERROR = 0
					BEGIN 
						--COMMIT TRAN TCATEGORIA
						SET @DESCRIERROR =  'REGISTRADO'
						SET @ERROR = 0;	
				END
		END
END TRY
BEGIN CATCH
	SET @DESCRIERROR =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--PRINT 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		--RAISERROR('ENVIE UN NOMBRE', 16, 1)
		SET @ERROR = 1;
		--ROLLBACK TRAN TCATEGORIA
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_TIPO_JUZGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_TIPO_JUZGADO]
@NOMBRE VARCHAR(50)
AS
INSERT INTO TipoJuzgado(Nombre)
	   VALUES (@NOMBRE)
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_TPTESTIGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_TPTESTIGO]
@NOMBRE VARCHAR(30),
@DESCRIPCION VARCHAR(250)
AS
INSERT INTO TipoTestigo(Nombre,Descripcion)
VALUES (@NOMBRE,@DESCRIPCION)
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_USUARIO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_USUARIO]
@NOMBRE VARCHAR(30),
@APELLIDO VARCHAR(30),
@IDENTIDAD VARCHAR(17),
@CONTRASENIA VARCHAR(30),
@ROLID INT,
@ESTADO BIT,
@USUARIO VARCHAR(30)
AS
INSERT INTO Usuario(Nombres,Apellidos,Identidad,Contrasenia,IdRol,Estado,Usuario) 
	   VALUES (@NOMBRE,@APELLIDO,@IDENTIDAD,@CONTRASENIA,@ROLID,@ESTADO,@USUARIO)
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_CATEGORIA_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_CATEGORIA_ABOGADO]
AS
SELECT *
	FROM CategoriaAbogado
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_CATEGORIA_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LISTANDO_CATEGORIA_FISCAL]
AS
SELECT *
	FROM CategoriaFiscal
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_ESTADOS_CIVILES]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_ESTADOS_CIVILES]
AS
SELECT *
	FROM EstadoCivil
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_REGISTROS_ABOGADOS]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_REGISTROS_ABOGADOS]
AS
SELECT *
	FROM Abogado
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_REGISTROS_ABOGADOS_NOMBRE]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_REGISTROS_ABOGADOS_NOMBRE]
@NOMBRE VARCHAR(30)
AS
SELECT *
	FROM Abogado
	WHERE Nombres LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_REGISTROS_CLIENTES]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_REGISTROS_CLIENTES]
AS
SELECT *
	FROM Cliente
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_REGISTROS_CLIENTES_NOMBRE]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[LISTANDO_REGISTROS_CLIENTES_NOMBRE]
@NOMBRE VARCHAR(50)
as
	select * from Cliente Where Nombres LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_REGISTROS_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_REGISTROS_FISCAL]
AS
SELECT *
	FROM Fiscal
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_REGISTROS_FISCAL_NOMBRE]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_REGISTROS_FISCAL_NOMBRE]
@NOMBRE VARCHAR(30)
AS
SELECT *
	FROM Fiscal
	WHERE Nombres LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_TIPO_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LISTANDO_TIPO_CASO]
AS
	SELECT *
	FROM TipoCaso
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_TIPO_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_TIPO_FISCAL]
AS
SELECT *
	FROM TipoFiscal
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_TODOS_CASOS]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[LISTANDO_TODOS_CASOS]
AS
	SELECT * FROM Caso
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_ULTIMO_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_ULTIMO_ABOGADO]
AS
SELECT TOP 1 *
	FROM Abogado
	ORDER BY 1 DESC
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_ULTIMO_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LISTANDO_ULTIMO_CASO]
AS
SELECT TOP 1 IdCaso
	FROM Caso
	ORDER BY 1 DESC
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_ULTIMO_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_ULTIMO_FISCAL]
AS
SELECT TOP 1 *
	FROM Fiscal
	ORDER BY 1 DESC
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_UN_REGISTRO_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_UN_REGISTRO_ABOGADO]
@ID INT
AS
SELECT *
	FROM Abogado WHERE IdAbogado = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_UN_REGISTRO_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_UN_REGISTRO_FISCAL]
@ID INT
AS
SELECT *
	FROM Fiscal WHERE IdFiscal = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_UN_REGISTRO_JUZGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_UN_REGISTRO_JUZGADO]
@ID INT
AS
	SELECT *
	FROM Juzgado WHERE IdJuzgado = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_UN_REGISTRO_TIPO_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LISTANDO_UN_REGISTRO_TIPO_CASO]
@ID INT
AS
	SELECT *
	FROM TipoCaso WHERE IdTipoCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_UN_REGISTRO_TIPO_FISCAL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_UN_REGISTRO_TIPO_FISCAL]
@ID INT
AS
SELECT *
	FROM TipoFiscal WHERE IdTipoFiscal = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_UN_REGISTROS_CLIENTES]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LISTANDO_UN_REGISTROS_CLIENTES]
@ID INT
AS
SELECT *
	FROM Cliente WHERE IdCliente = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTANDO_UN_REGISTROS_CONSULTAS]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTANDO_UN_REGISTROS_CONSULTAS]
@ID INT
AS
SELECT *
	FROM Consulta WHERE IdConsulta = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_AGENDA_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_AGENDA_CASO]
@ID INT 
AS
	SELECT * FROM Agenda WHERE IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_CASO_ABOGADO_POR_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_CASO_ABOGADO_POR_CASO]
@ID INT
AS
	SELECT * FROM CasoAbogado WHERE IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_CASO_FISCAL_POR_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_CASO_FISCAL_POR_CASO]
@ID INT
AS
	SELECT * FROM CasoFiscal WHERE IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_CASO_GASTO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_CASO_GASTO]
@ID_GASTO INT
AS 
	SELECT TOP 1 T.IdCaso,T.TituloCaso FROM Caso T INNER JOIN GastoCaso G ON T.IdCaso = G.IdCaso
	WHERE G.IdGasto = @ID_GASTO
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_CASO_TESTIGO_POR_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_CASO_TESTIGO_POR_CASO]
@ID INT
AS
	SELECT IdTestigo FROM Testigo WHERE IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_CASOS]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LISTAR_CASOS]
@NOMBRE VARCHAR(50)
AS
	SELECT * FROM Caso WHERE TituloCaso LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_CONSULTA_NOMBRE]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_CONSULTA_NOMBRE]
@NOMBRE VARCHAR(30)
AS
  SELECT * 
	FROM Consulta
  WHERE IdConsulta LIKE @NOMBRE

GO
/****** Object:  StoredProcedure [dbo].[LISTAR_CONSULTAS]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LISTAR_CONSULTAS]

AS
SELECT *
	FROM Consulta
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_ESPECIALIDAD_ABOGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_ESPECIALIDAD_ABOGADO]
@ID INT
AS
	SELECT idCategoriaAbogado
	FROM EspecialidadAbogado WHERE IdAbogado = @ID;
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_ESTADOCIVIL]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_ESTADOCIVIL]
@ESTADO VARCHAR(30)
AS
  SELECT * 
	FROM EstadoCivil
  WHERE Nombre LIKE @ESTADO
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_EVIDENCIA]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_EVIDENCIA]
@TITULOCASO VARCHAR(30)
AS
SELECT E.IdEvidencia, C.TituloCaso, TE.Nombre, E.Comentario, E.UrlEvidencia, E.Fecha, E.IdTipoEvidencia, E.IdCaso
	FROM Evidencia E INNER JOIN TipoEvidencia TE ON TE.IdTipoEvidencia = E.IdTipoEvidencia
	INNER JOIN Caso C ON C.IdCaso = E.IdCaso
	WHERE C.TituloCaso LIKE @TITULOCASO
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_EVIDENCIA_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[LISTAR_EVIDENCIA_CASO]
@IDCASO INT 
AS 
	SELECT E.IdEvidencia, C.TituloCaso, TE.Nombre, E.Comentario, E.UrlEvidencia, E.Fecha, E.IdTipoEvidencia, E.IdCaso
	FROM Evidencia E INNER JOIN TipoEvidencia TE ON TE.IdTipoEvidencia = E.IdTipoEvidencia
	INNER JOIN Caso C ON C.IdCaso = E.IdCaso
	WHERE C.IdCaso =  @IDCASO
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_GASTO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--LISTAR GASTO
CREATE PROCEDURE [dbo].[LISTAR_GASTO]
AS
	SELECT G.IdGasto, G.Comentario, G.Fecha, G.Monto, G.IdTipoGasto, TG.Nombre
		FROM Gasto G INNER JOIN TipoGasto TG ON TG.IdTipoGasto = G.IdTipoGasto
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_GASTO_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_GASTO_CASO]
@ID INT
AS
	SELECT G.IdGasto, G.Comentario, G.Fecha, G.Monto, G.IdTipoGasto, TG.Nombre
		FROM Gasto G INNER JOIN TipoGasto TG ON TG.IdTipoGasto = G.IdTipoGasto
	WHERE G.IdGasto = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_IDGASTO_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LISTAR_IDGASTO_CASO]
@ID INT
AS
	SELECT * FROM GastoCaso  where IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_IDPAGO_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_IDPAGO_CASO]
@ID INT
AS
	SELECT * FROM PagoCaso where IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_INDICIO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_INDICIO]
@TITULOCASO VARCHAR(30)
AS
SELECT I.IdIndicio, C.TituloCaso, TE.Nombre, I.Comentario, I.UrlIndicio, I.Fecha, I.IdTipoIndicio, I.IdCaso
	FROM Indicio I INNER JOIN TipoIndicio TE ON TE.IdTipoIndicio = I.IdTipoIndicio
	INNER JOIN Caso C ON C.IdCaso = I.IdCaso
	WHERE C.TituloCaso LIKE @TITULOCASO
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_INDICIO_CASO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[LISTAR_INDICIO_CASO]
@IDCASO INT 
AS 
	SELECT E.IdIndicio, C.TituloCaso, TE.Nombre, E.Comentario, E.UrlIndicio, E.Fecha, E.IdTipoIndicio, E.IdCaso
	FROM Indicio E INNER JOIN TipoIndicio TE ON TE.IdTipoIndicio = E.IdTipoIndicio
	INNER JOIN Caso C ON C.IdCaso = E.IdCaso
	WHERE C.IdCaso =  @IDCASO
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_JUZGADO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_JUZGADO]
@NOMBRE VARCHAR(50)
AS
SELECT J.IdJuzgado, TP.Nombre, J.Nombre, J.Ubicacion, J.Telefono, J.IdTipoJuzgado 
	FROM Juzgado J INNER JOIN TipoJuzgado TP ON TP.IdTipoJuzgado = J.IdTipoJuzgado
WHERE J.Nombre LIKE @NOMBRE	
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_OCUPACION]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_OCUPACION]
@NOMBRE VARCHAR(30)
AS
  SELECT * 
	FROM Ocupacion
  WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_PAGO]    Script Date: 09/12/2020 12:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--INSERTAR PAGO

--LISTAR PAGO
CREATE PROCEDURE [dbo].[LISTAR_PAGO]
AS
	SELECT P.IdPago, TP.Nombre, P.Monto, P.Fecha, P.Comentario, P.IdTipoPago
		FROM Pago P INNER JOIN TipoPago TP ON TP.IdTipoPago = P.IdTipoPago
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_PAGO_CASO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[LISTAR_PAGO_CASO]
@ID int
AS
	SELECT P.IdPago, TP.Nombre, P.Monto, P.Fecha, P.Comentario, P.IdTipoPago
		FROM Pago P INNER JOIN TipoPago TP ON TP.IdTipoPago = P.IdTipoPago
		where p.IdPago = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_REGISTRO_CATEGORIA_ABOGADO_NOMBRE]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_REGISTRO_CATEGORIA_ABOGADO_NOMBRE]
@NOMBRE VARCHAR(30)
AS
	SELECT *
	FROM categoriaAbogado WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_REGISTRO_TIPO_CASO_NOMBRE]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[LISTAR_REGISTRO_TIPO_CASO_NOMBRE]
@NOMBRE VARCHAR(30)
AS
	SELECT *
	FROM TipoCaso WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_REGISTRO_TIPO_FISCAL_NOMBRE]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[LISTAR_REGISTRO_TIPO_FISCAL_NOMBRE]
@NOMBRE VARCHAR(30)
AS
	SELECT *
	FROM TipoFiscal WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_ROL]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_ROL]
@NOMBRE VARCHAR(30)
AS
  SELECT * 
	FROM Rol
  WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_TESTIGO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_TESTIGO]
@NOMBRE VARCHAR(30)
AS
SELECT T.IdTestigo, T.Nombres, T.Apellidos, T.Identidad, T.Telefono,EC.Nombre,T.idCaso, C.TituloCaso, O.Nombre, TP.Nombre, 
	   T.Correo, T.Domicilio, T.FechaNacimiento, T.IdEstadoCivil, T.IdOcupacion,T.IdTipoTestigo, T.Estado
	FROM Testigo T INNER JOIN EstadoCivil EC ON EC.IdEstadoCivil = T.IdEstadoCivil
	INNER JOIN Ocupacion O ON O.IdOcupacion = T.IdOcupacion
	INNER JOIN TipoTestigo TP ON TP.IdTipoTestigo = T.IdTipoTestigo
	INNER JOIN Caso C ON  C.IdCaso = T.idCaso
  WHERE T.Nombres LIKE @NOMBRE or T.Nombres is null

GO
/****** Object:  StoredProcedure [dbo].[LISTAR_TIPO_CONSULTA]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_TIPO_CONSULTA]
@NOMBRE VARCHAR(50)
AS
  SELECT * 
	FROM TipoConsulta
  WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_TIPO_EVIDENCIA]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_TIPO_EVIDENCIA]
@NOMBRE VARCHAR(30)
AS
  SELECT * 
	FROM TipoEvidencia
  WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_TIPO_GASTO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--LISTAR TIPO GASTO
CREATE PROCEDURE [dbo].[LISTAR_TIPO_GASTO]
@NOMBRE VARCHAR(30)
AS
  SELECT * 
	FROM TipoGasto
  WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_TIPO_INDICIO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_TIPO_INDICIO]
@NOMBRE VARCHAR(30)
AS
  SELECT * 
	FROM TipoIndicio
  WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_TIPO_JUZGADO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_TIPO_JUZGADO]
@NOMBRE VARCHAR(50)
AS
  SELECT * 
	FROM TipoJuzgado
  WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_TIPO_PAGO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[LISTAR_TIPO_PAGO]
AS
  SELECT * 
	FROM TipoPago
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_TIPOTESTIGO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_TIPOTESTIGO]
@NOMBRE VARCHAR(30)
AS
  SELECT * 
	FROM TipoTestigo
  WHERE Nombre LIKE @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_ULTIMOPAGO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LISTAR_ULTIMOPAGO]
AS
SELECT TOP 1 IdPAgo
	FROM Pago
	ORDER BY 1 DESC
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_UN_AGENDA_CASO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_UN_AGENDA_CASO]
@ID INT 
AS
	SELECT * FROM Agenda WHERE IdAgenda = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_UN_REGISTRO_CASO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[LISTAR_UN_REGISTRO_CASO]
@ID INT 
AS
	SELECT * FROM Caso WHERE IdCaso = @ID
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_UN_REGISTRO_CATEGORIA_ABOGADO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_UN_REGISTRO_CATEGORIA_ABOGADO]
@ID INT
AS
	SELECT *
	FROM categoriaAbogado WHERE IdCategoriaAbogado = @ID;
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_UN_TESTIGO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[LISTAR_UN_TESTIGO]@ID INTAS	SELECT [IdTestigo]
      ,[Nombres]
      ,[Apellidos]
      ,[Identidad]
      ,[Telefono]
      ,[Correo]
      ,[Domicilio]
      ,[FechaNacimiento]
      ,[IdEstadoCivil]
      ,[IdOcupacion]
      ,tt.Nombre
      ,[Estado]
      ,[idCaso]
  FROM [Testigo] t inner join TipoTestigo tt on t.IdTipoTestigo = tt.IdTipoTestigo  where t.IdTestigo = @id
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_USUARIOS2]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTAR_USUARIOS2]
@NOMBRE VARCHAR(30),
@NUMEROPAGINA INT,
@TOTALPAGINAR INT
AS
SELECT U.IdUsuario, R.Nombre, U.Nombres, U.Apellidos, U.Identidad, U.Contrasenia, U.IdRol, U.Estado, U.Usuario 
	FROM Usuario U INNER JOIN Rol R ON R.IdRol = U.IdRol
  WHERE U.Nombres LIKE @NOMBRE   
  ORDER BY U.IdUsuario ASC
  OFFSET @NUMEROPAGINA ROWS FETCH NEXT @TOTALPAGINAR ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[LOGIN_BUFETE]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LOGIN_BUFETE]
@NOMBREUSUARIO VARCHAR(30),
@CLAVE VARCHAR(30)
AS
 SELECT U.IdUsuario, U.IdRol, R.Nombre, U.Nombres, U.Apellidos, U.Identidad,U.Estado
	FROM Usuario U INNER JOIN Rol R ON U.IdUsuario = R.IdRol
 WHERE U.Usuario = @NOMBREUSUARIO 
	   AND U.Contrasenia = 	@CLAVE
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDA_TIPOEVIENCIA]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MERGE INSERTAR TIPO EVIDENCIA Y ACTUALIZARLO
CREATE PROCEDURE [dbo].[MER_GUARDA_TIPOEVIENCIA]
@ID_TP_EVIDENCIA INT OUTPUT,
@NOMBRE VARCHAR(30),
@DESCRIPCIONTP VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @NOMBRE = ''  
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF @NOMBRE IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE
			MERGE TipoEvidencia AS TARGET
				USING 
				(SELECT @ID_TP_EVIDENCIA,@NOMBRE,@DESCRIPCIONTP) AS SOURCE
					(IdTipoEvidencia, Nombre, Descripcion)
				ON (TARGET.IdTipoEvidencia = SOURCE.IdTipoEvidencia)
			WHEN MATCHED THEN
				UPDATE 
				SET Nombre = @NOMBRE, Descripcion = @DESCRIPCIONTP, @DESCRIPCION = 'Actualizado Correctamente',@MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Nombre,Descripcion) 
				VALUES (@NOMBRE,@DESCRIPCIONTP);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @ID_TP_EVIDENCIA = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDA_TIPOGASTO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MER_GUARDA_TIPOGASTO]
@ID_TIPO_GASTO INT OUTPUT,
@NOMBRE VARCHAR(30),
@DESCRIPCIONTP VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @NOMBRE = ''  
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF @NOMBRE IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE
			MERGE TipoGasto AS TARGET
				USING 
				(SELECT @ID_TIPO_GASTO,@NOMBRE,@DESCRIPCIONTP) AS SOURCE
					(IdTipoGasto, Nombre, Descripcion)
				ON (TARGET.IdTipoGasto = SOURCE.IdTipoGasto)
			WHEN MATCHED THEN
				UPDATE 
				SET Nombre = @NOMBRE, Descripcion = @DESCRIPCIONTP, @DESCRIPCION = 'Actualizado Correctamente',@MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Nombre,Descripcion) 
				VALUES (@NOMBRE,@DESCRIPCIONTP);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @ID_TIPO_GASTO = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDA_TIPOINDICIO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MERGE INSERTAR TIPO INDICIO Y ACTUALIZARLO
CREATE PROCEDURE [dbo].[MER_GUARDA_TIPOINDICIO]
@ID_INDICIO INT OUTPUT,
@NOMBRE VARCHAR(30),
@DESCRIPCIONTP VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @NOMBRE = ''  
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF @NOMBRE IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE
			MERGE TipoIndicio AS TARGET
				USING 
				(SELECT @ID_INDICIO,@NOMBRE,@DESCRIPCIONTP) AS SOURCE
					(IdTipoIndicio, Nombre, Descripcion)
				ON (TARGET.IdTipoIndicio = SOURCE.IdTipoIndicio)
			WHEN MATCHED THEN
				UPDATE 
				SET Nombre = @NOMBRE, Descripcion = @DESCRIPCIONTP, @DESCRIPCION = 'Actualizado Correctamente',@MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Nombre,Descripcion) 
				VALUES (@NOMBRE,@DESCRIPCIONTP);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @ID_INDICIO = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDA_TIPOJUZGADO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MERGE PARA INSERTAR Y ACTUALIZAR TIPO JUZGADO
CREATE PROCEDURE [dbo].[MER_GUARDA_TIPOJUZGADO]
@ID_TIPO_JUZGADO INT OUTPUT,
@NOMBRE VARCHAR(50),
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @NOMBRE = ''  
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF @NOMBRE IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE
			MERGE TipoJuzgado AS TARGET
				USING 
				(SELECT @ID_TIPO_JUZGADO,@NOMBRE) AS SOURCE
					(IdTipoJuzgado, Nombre)
				ON (TARGET.IdTipoJuzgado = SOURCE.IdTipoJuzgado)
			WHEN MATCHED THEN
				UPDATE 
				SET Nombre = @NOMBRE,  @DESCRIPCION = 'Actualizado Correctamente',@MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Nombre) 
				VALUES (@NOMBRE);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @ID_TIPO_JUZGADO = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDA_TIPOTESTIGO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MERGE INSERTAR TIPO TESTIGO Y ACTUALIZARLO
CREATE PROCEDURE [dbo].[MER_GUARDA_TIPOTESTIGO]
@ID_TIPO_TESTIGO INT OUTPUT,
@NOMBRE VARCHAR(30),
@DESCRIPCIONTP VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @NOMBRE = ''  
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF @NOMBRE IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE
			MERGE TipoTestigo AS TARGET
				USING 
				(SELECT @ID_TIPO_TESTIGO,@NOMBRE,@DESCRIPCIONTP) AS SOURCE
					(IdTipoTestigo, Nombre, Descripcion)
				ON (TARGET.IdTipoTestigo = SOURCE.IdTipoTestigo)
			WHEN MATCHED THEN
				UPDATE 
				SET Nombre = @NOMBRE, Descripcion = @DESCRIPCIONTP, @DESCRIPCION = 'Actualizado Correctamente', @MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Nombre,Descripcion) 
				VALUES (@NOMBRE,@DESCRIPCIONTP);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @ERROR = 0;
						SET @ID_TIPO_TESTIGO = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDAEVIDENCIA]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------//HICE CAMBIOS EN ESTOS DOS, ALTERARLOS\\----------
CREATE PROCEDURE [dbo].[MER_GUARDAEVIDENCIA]
@IDEVIDENCIA INT OUTPUT,
@COMENTARIO VARCHAR(250),
@URLEVIDENCIA VARCHAR(150),
@ID_TIPOEVIDENCIA INT, 
@FECHA DATETIME, 
@ID_CASO INT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @COMENTARIO = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
				SET @ERROR = 1 
			END
		ELSE IF  @COMENTARIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
				SET @ERROR = 1 
			END
		ELSE IF @FECHA IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar la fecha'
				SET @ERROR = 1 
			END
		ELSE
			MERGE Evidencia AS TARGET
				USING 
				(SELECT @IDEVIDENCIA,@COMENTARIO,@URLEVIDENCIA,@ID_TIPOEVIDENCIA,@FECHA,@ID_CASO) AS SOURCE
					(IdEvidencia, Comentario, UrlEvidencia, IdTipoEvidencia, fecha, IdCaso)
				ON (TARGET.IdEvidencia = SOURCE.IdEvidencia)
			WHEN MATCHED THEN
				UPDATE 
				SET Comentario = @COMENTARIO, UrlEvidencia = @URLEVIDENCIA, IdTipoEvidencia = @ID_TIPOEVIDENCIA,
					fecha = @FECHA, IdCaso = @ID_CASO, @DESCRIPCION = 'Actualizado Correctamente',@MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Comentario, UrlEvidencia, IdTipoEvidencia, fecha, IdCaso) 
				VALUES (@COMENTARIO,@URLEVIDENCIA,@ID_TIPOEVIDENCIA,@FECHA,@ID_CASO);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @IDEVIDENCIA = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDAINDICIO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MERGE PARA INSERTAR Y ACTUALIZAR INDICIO
CREATE PROCEDURE [dbo].[MER_GUARDAINDICIO]
@ID_INDICIO INT OUTPUT,
@COMENTARIO VARCHAR(250),
@URLINDICIO VARCHAR(150),
@ID_TIPO_INDICIO INT, 
@FECHA DATETIME, 
@ID_CASO INT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @COMENTARIO = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
				SET @ERROR = 1 
			END
		ELSE IF  @COMENTARIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
				SET @ERROR = 1 
			END
		ELSE IF @FECHA IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar la fecha'
				SET @ERROR = 1 
			END
		ELSE
			MERGE Indicio AS TARGET
				USING 
				(SELECT @ID_INDICIO,@COMENTARIO,@URLINDICIO,@ID_TIPO_INDICIO,@FECHA,@ID_CASO) AS SOURCE
					(IdIndicio, Comentario, UrlIndicio, IdTipoIndicio, fecha, IdCaso)
				ON (TARGET.IdIndicio = SOURCE.IdIndicio)
			WHEN MATCHED THEN
				UPDATE 
				SET Comentario = @COMENTARIO, UrlIndicio = @URLINDICIO, IdTipoIndicio = @ID_TIPO_INDICIO,
					fecha = @FECHA, IdCaso = @ID_CASO, @DESCRIPCION = 'Actualizado Correctamente',@MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Comentario, UrlIndicio, IdTipoIndicio, fecha, IdCaso) 
				VALUES (@COMENTARIO,@URLINDICIO,@ID_TIPO_INDICIO,@FECHA,@ID_CASO);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @ID_INDICIO = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDAJUZGADO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MERGE PARA INSERTAR Y ACTUALIZAR JUZGADO
CREATE PROCEDURE [dbo].[MER_GUARDAJUZGADO]
@IDJUZGADO INT OUTPUT,
@NOMBRE VARCHAR(50), 
@UBICACION VARCHAR(250),
@TELEFONO VARCHAR(17),
@ID_TIPOJUZGADO INT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @NOMBRE = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF  @NOMBRE IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF @UBICACION = '' 
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar la ubicacion'
				SET @ERROR = 1 
			END
		ELSE IF @UBICACION IS NULL
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar la ubicacion'
				SET @ERROR = 1 
			END
		ELSE IF @TELEFONO = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el numero de telefono'
				SET @ERROR = 1 
			END
		ELSE IF @TELEFONO IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el numero de telefono'
				SET @ERROR = 1 
			END
		ELSE
			MERGE Juzgado AS TARGET
				USING 
				(SELECT @IDJUZGADO,@NOMBRE,@UBICACION,@TELEFONO,@ID_TIPOJUZGADO) AS SOURCE
					(IdJuzgado, Nombre, Ubicacion, Telefono, IdTipoJuzgado)
				ON (TARGET.IdJuzgado = SOURCE.IdJuzgado)
			WHEN MATCHED THEN
				UPDATE 
				SET Nombre = @NOMBRE, Ubicacion = @UBICACION, Telefono = @TELEFONO, IdTipoJuzgado = @ID_TIPOJUZGADO,
					@DESCRIPCION = 'Actualizado Correctamente',@MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Nombre, Ubicacion, Telefono, IdTipoJuzgado) 
				VALUES (@NOMBRE,@UBICACION,@TELEFONO,@ID_TIPOJUZGADO);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @IDJUZGADO = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDAOCUPACION]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MERGE PARA INSERTAR Y ACTUALIZAR OCUPACION
CREATE PROCEDURE [dbo].[MER_GUARDAOCUPACION]
@ID_OCUPACION INT OUTPUT,
@NOMBRE VARCHAR(30),
@DESCRIPCIONTP VARCHAR(250),
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @NOMBRE = ''  
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF @NOMBRE IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE
			MERGE Ocupacion AS TARGET
				USING 
				(SELECT @ID_OCUPACION,@NOMBRE,@DESCRIPCIONTP) AS SOURCE
					(IdOcupacion, Nombre, Descripcion)
				ON (TARGET.IdOcupacion = SOURCE.IdOcupacion)
			WHEN MATCHED THEN
				UPDATE 
				SET Nombre = @NOMBRE, Descripcion = @DESCRIPCIONTP, @DESCRIPCION = 'Actualizado Correctamente',@MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Nombre,Descripcion) 
				VALUES (@NOMBRE,@DESCRIPCIONTP);
					IF @MENSAJE = 0
						SET @DESCRIPCION = 'Registrado Exitosamente'
					IF @ERROR = 0
					BEGIN 						
						SET @ERROR = 0;
						SET @ID_OCUPACION = @@IDENTITY					
					END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION = 'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDAPAGO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MERGE PARA INSERTAR Y ACTUALIZAR PAGO
CREATE PROCEDURE [dbo].[MER_GUARDAPAGO]
@ID_PAGO INT OUTPUT,
@COMENTARIO VARCHAR(250),
@MONTO DECIMAL(11,2),
@FECHA DATETIME,
@ID_TIPO_PAGO INT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @COMENTARIO = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
				SET @ERROR = 1 
			END
		ELSE IF  @COMENTARIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un comentario'
				SET @ERROR = 1 
			END
		ELSE IF @MONTO = 0 
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar el monto de pago'
				SET @ERROR = 1 
			END
		ELSE IF @MONTO IS NULL
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar el monto de pago'
				SET @ERROR = 1 
			END
		ELSE IF @FECHA IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar una fecha'
				SET @ERROR = 1 
			END
		ELSE
			MERGE Pago AS TARGET
				USING 
				(SELECT @ID_PAGO,@COMENTARIO,@MONTO,@FECHA,@ID_TIPO_PAGO) AS SOURCE
					(IdPago, Comentario, Monto, Fecha, IdTipoPago)
				ON (TARGET.IdPago = SOURCE.IdPago)
			WHEN MATCHED THEN
				UPDATE 
				SET Comentario = @COMENTARIO, Monto = @MONTO, Fecha = @FECHA, IdTipoPago = @ID_TIPO_PAGO,
					@DESCRIPCION = 'Actualizado Correctamente',@MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Comentario, Monto, Fecha, IdTipoPago) 
				VALUES (@COMENTARIO,@MONTO,@FECHA,@ID_TIPO_PAGO);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @ID_PAGO = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDATESTIGO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MER_GUARDATESTIGO]
@IDTESTIGO INT OUTPUT,
@NOMBRE VARCHAR(30), 
@APELLIDO VARCHAR(30),
@IDENTIDAD VARCHAR(17), 
@TELEFONO VARCHAR(17),
@CORREO VARCHAR(150), 
@DOMICILIO VARCHAR(250),
@FECHANACIMEINTO DATETIME, 
@ID_ESTADOCIVIL INT,
@ID_OCUPACION INT, 
@ID_TPTESTIGO INT, 
@ESTADO BIT,
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @NOMBRE = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF  @NOMBRE IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF @APELLIDO = '' 
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar un apellido'
				SET @ERROR = 1 
			END
		ELSE IF @APELLIDO IS NULL
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar un apellido'
				SET @ERROR = 1 
			END
		ELSE IF @IDENTIDAD = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el numero de identidad'
				SET @ERROR = 1 
			END
		ELSE IF @IDENTIDAD IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el numero de identidad'
				SET @ERROR = 1 
			END
		ELSE IF @TELEFONO = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un numero de telefono'
				SET @ERROR = 1 
			END
		ELSE IF @TELEFONO IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un numero de telefono'
				SET @ERROR = 1 
			END
		ELSE IF @CORREO = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un correo electronico'
				SET @ERROR = 1 
			END
		ELSE IF @CORREO IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un correo electronico'
				SET @ERROR = 1 
			END
		ELSE IF @DOMICILIO = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un domicilio'
				SET @ERROR = 1 
			END
		ELSE IF @DOMICILIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un domicilio'
				SET @ERROR = 1 
			END
		ELSE IF @FECHANACIMEINTO IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar una fecha de nacimiento'
				SET @ERROR = 1 
			END		
		ELSE
			MERGE Testigo AS TARGET
				USING 
				(SELECT @IDTESTIGO,@NOMBRE,@APELLIDO,@IDENTIDAD,@TELEFONO,@CORREO,@DOMICILIO,@FECHANACIMEINTO,@ID_ESTADOCIVIL,@ID_OCUPACION,@ID_TPTESTIGO, @ESTADO) AS SOURCE
					(IdTestigo, Nombres, Apellidos, Identidad, Telefono, Correo, Domicilio, FechaNacimiento,IdEstadoCivil,IdOcupacion,IdTipoTestigo,Estado)
				ON (TARGET.IdTestigo = SOURCE.IdTestigo)
			WHEN MATCHED THEN
				UPDATE 
				SET Nombres = @NOMBRE, Apellidos = @APELLIDO, Identidad = @IDENTIDAD,
					Telefono = @TELEFONO, Correo = @CORREO, Domicilio = @DOMICILIO, FechaNacimiento = @FECHANACIMEINTO,
					IdEstadoCivil = @ID_ESTADOCIVIL, IdOcupacion = @ID_OCUPACION,IdTipoTestigo = @ID_TPTESTIGO,
					@DESCRIPCION = 'Actualizado Correctamente', @MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Nombres, Apellidos, Identidad, Telefono, Correo, Domicilio, FechaNacimiento,IdEstadoCivil,IdOcupacion,IdTipoTestigo,Estado) 
				VALUES (@NOMBRE,@APELLIDO,@IDENTIDAD,@TELEFONO,@CORREO,@DOMICILIO,@FECHANACIMEINTO,@ID_ESTADOCIVIL,@ID_OCUPACION,@ID_TPTESTIGO, @ESTADO);
				IF @MENSAJE = 0
					SET @DESCRIPCION = 'Registrado Exitosamente'
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @IDTESTIGO = @@IDENTITY					
				END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[MER_GUARDAUSUARIO]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---MERGE CREAR Y ACTUALIZAR USUARIO
CREATE PROCEDURE [dbo].[MER_GUARDAUSUARIO]
@IDUSUARIO INT OUTPUT,
@NOMBRE VARCHAR(30),
@APELLIDO VARCHAR(30),
@IDENTIDAD VARCHAR(17),
@CONTRASENIA VARCHAR(30),
@ROLID INT,
@ESTADO BIT,
@USUARIO VARCHAR(30),
@ERROR INT OUTPUT,
@DESCRIPCION VARCHAR(250) OUTPUT
AS
DECLARE @MENSAJE INT = 0
	BEGIN TRY
		IF @NOMBRE = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF  @NOMBRE IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar un nombre'
				SET @ERROR = 1 
			END
		ELSE IF @APELLIDO = '' 
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar un apellido'
				SET @ERROR = 1 
			END
		ELSE IF @APELLIDO IS NULL
			BEGIN 
				SET @DESCRIPCION = 'Asegurate de ingresar un apellido'
				SET @ERROR = 1 
			END
		ELSE IF @IDENTIDAD = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el numero de identidad'
				SET @ERROR = 1 
			END
		ELSE IF @IDENTIDAD IS NULL 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el numero de identidad'
				SET @ERROR = 1 
			END
		ELSE IF @CONTRASENIA = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar una contraseña'
				SET @ERROR = 1 
			END
		ELSE IF @CONTRASENIA IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar una contraseña'
				SET @ERROR = 1 
			END
		ELSE IF @ROLID = 0 OR @ROLID IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el rol'
				SET @ERROR = 1 
			END
		ELSE IF @ROLID IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el rol'
				SET @ERROR = 1 
			END
		ELSE IF @USUARIO = '' 
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el usuario'
				SET @ERROR = 1 
			END
		ELSE IF @USUARIO IS NULL
			BEGIN
				SET @DESCRIPCION = 'Asegurate de ingresar el usuario'
				SET @ERROR = 1 
			END
		ELSE
			MERGE Usuario AS TARGET
				USING 
				(SELECT @IDUSUARIO,@NOMBRE,@APELLIDO,@IDENTIDAD,@CONTRASENIA, @ROLID, @ESTADO,@USUARIO) AS SOURCE
					(IdUsuario, Nombres, Apellidos, Identidad, Contrasenia, IdRol, Estado, Usuario)
				ON (TARGET.IdUsuario = SOURCE.IdUsuario)
			WHEN MATCHED THEN
				UPDATE 
				SET Nombres = @NOMBRE, Apellidos = @APELLIDO, Identidad = @IDENTIDAD,
					Contrasenia = @CONTRASENIA, IdRol = @ROLID, Usuario = @USUARIO, @DESCRIPCION = 'Actualizado Correctamente', @MENSAJE = 1			
			WHEN NOT MATCHED THEN
				INSERT (Nombres,Apellidos,Identidad,Contrasenia,IdRol,Estado,Usuario) 
				VALUES (@NOMBRE,@APELLIDO,@IDENTIDAD,@CONTRASENIA,@ROLID,@ESTADO,@USUARIO);
				IF @MENSAJE = 0
						SET @DESCRIPCION = 'Registrado Exitosamente'					
				IF @ERROR = 0
					BEGIN 
						SET @DESCRIPCION = 'Registrado Exitosamente'
						SET @ERROR = 0;
						SET @IDUSUARIO = @@IDENTITY					
					END
	END TRY
	BEGIN CATCH
		SET @DESCRIPCION =  'ERROR: '+STR(@@ERROR)+SPACE(5)+ERROR_MESSAGE()
		SET @ERROR = 1;
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--SP LOGIN
CREATE PROCEDURE [dbo].[SP_LOGIN]
@USUARIO VARCHAR(30),
@CONTRASENIA VARCHAR(30)
AS
SELECT U.IdUsuario, R.Nombre, U.Nombres, U.Apellidos, U.Identidad, U.IdRol, U.Estado, U.Usuario 
	FROM Usuario U INNER JOIN Rol R ON R.IdRol = U.IdRol
  WHERE U.Usuario = @USUARIO AND U.Contrasenia = @CONTRASENIA   
GO
/****** Object:  StoredProcedure [dbo].[TOTAL_REGISTROS_ROL]    Script Date: 09/12/2020 12:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TOTAL_REGISTROS_ROL]
@IDROL INT
AS
SELECT @IDROL = COUNT(IdRol)
	FROM Rol
GO
