USE [master]
GO
/****** Object:  Database [SISCONT]    Script Date: 25/07/2020 10:01:06 ******/
CREATE DATABASE [SISCONT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SISCONT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SISCONT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SISCONT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SISCONT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SISCONT] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SISCONT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SISCONT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SISCONT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SISCONT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SISCONT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SISCONT] SET ARITHABORT OFF 
GO
ALTER DATABASE [SISCONT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SISCONT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SISCONT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SISCONT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SISCONT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SISCONT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SISCONT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SISCONT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SISCONT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SISCONT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SISCONT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SISCONT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SISCONT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SISCONT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SISCONT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SISCONT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SISCONT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SISCONT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SISCONT] SET  MULTI_USER 
GO
ALTER DATABASE [SISCONT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SISCONT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SISCONT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SISCONT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SISCONT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SISCONT] SET QUERY_STORE = OFF
GO
USE [SISCONT]
GO
/****** Object:  Table [dbo].[tblPermisos]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermisos](
	[idPermiso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermisosRoles]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermisosRoles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RolId] [int] NOT NULL,
	[PermisoId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPlanContable]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPlanContable](
	[idPlanContable] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](150) NULL,
	[Cuenta] [text] NULL,
 CONSTRAINT [PK_tblPlanContable] PRIMARY KEY CLUSTERED 
(
	[idPlanContable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProveedores]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProveedores](
	[idProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Ruc] [varchar](11) NULL,
	[RazonSocial] [text] NULL,
 CONSTRAINT [PK_tblProveedores] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRegistroCompras]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegistroCompras](
	[idLibroCompras] [int] IDENTITY(1,1) NOT NULL,
	[Mes] [int] NULL,
	[NReg] [text] NULL,
	[FechaEmision] [text] NULL,
	[FechaPago] [text] NULL,
	[CTipo] [text] NULL,
	[CSerie] [text] NULL,
	[CNDocumento] [text] NULL,
	[PTipo] [text] NULL,
	[PNumero] [text] NULL,
	[PDocumento] [text] NULL,
	[PNombreRazonSocial] [text] NULL,
	[Cuenta] [text] NULL,
	[Descripcion] [text] NULL,
	[BaseImponible] [decimal](18, 2) NULL,
	[IGV] [decimal](18, 2) NULL,
	[NoGravada] [decimal](18, 2) NULL,
	[Descuentos] [decimal](18, 2) NULL,
	[ImporteTotal] [decimal](18, 2) NULL,
	[Dolares] [decimal](18, 2) NULL,
	[TipoCambio] [decimal](18, 2) NULL,
	[Percepcion] [decimal](18, 2) NULL,
	[Destino] [text] NULL,
	[DescripcionDestino] [text] NULL,
	[CuentaDestino] [text] NULL,
	[Pgo] [text] NULL,
	[Codigo] [text] NULL,
	[ConstanciaNumero] [text] NULL,
	[ConstanciaFechaPago] [date] NULL,
	[ConstanciaMonto] [decimal](18, 2) NULL,
	[ConstanciaReferencia] [text] NULL,
 CONSTRAINT [PK_tblRegistroCompras] PRIMARY KEY CLUSTERED 
(
	[idLibroCompras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRegistroVentas]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegistroVentas](
	[idLibroVentas] [int] IDENTITY(1,1) NOT NULL,
	[Mes] [int] NULL,
	[NReg] [text] NULL,
	[FechaEmision] [date] NULL,
	[FechaPago] [date] NULL,
	[CTipo] [text] NULL,
	[CSerie] [text] NULL,
	[CNDocumento] [text] NULL,
	[PTipo] [text] NULL,
	[PNumero] [text] NULL,
	[PNombreRazonSocial] [text] NULL,
	[Cuenta] [text] NULL,
	[Descripcion] [text] NULL,
	[ValorExportacion] [decimal](18, 2) NULL,
	[BaseImponible] [decimal](18, 2) NULL,
	[ImporteTotalExonerada] [decimal](18, 2) NULL,
	[ImporteTotalInafecta] [decimal](18, 2) NULL,
	[IGV] [decimal](18, 2) NULL,
	[ImporteTotal] [decimal](18, 2) NULL,
	[TC] [decimal](18, 2) NULL,
	[Dolares] [decimal](18, 2) NULL,
	[IgvRetencion] [decimal](18, 2) NULL,
	[CuentaDestino] [text] NULL,
	[Pago] [text] NULL,
	[ReferenciaFecha] [date] NULL,
	[ReferenciaTipo] [text] NULL,
	[ReferenciaSerie] [text] NULL,
	[ReferenciaNumeroDocumento] [text] NULL,
	[Codigo] [text] NULL,
	[ConstanciaNumero] [text] NULL,
	[ConstanciaFechaPago] [date] NULL,
	[DetraccionSoles] [decimal](18, 2) NULL,
	[Referencia] [text] NULL,
	[Observacion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLibroVentas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoComprobante]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoComprobante](
	[idTipoComprobante] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [text] NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_tblTipoComprobante] PRIMARY KEY CLUSTERED 
(
	[idTipoComprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuarios]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](150) NOT NULL,
	[Contrasenia] [varchar](255) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[RolId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblPermisos] ON 

INSERT [dbo].[tblPermisos] ([idPermiso], [Nombre]) VALUES (1, N'proveedores')
INSERT [dbo].[tblPermisos] ([idPermiso], [Nombre]) VALUES (2, N'compras')
INSERT [dbo].[tblPermisos] ([idPermiso], [Nombre]) VALUES (3, N'ventas')
INSERT [dbo].[tblPermisos] ([idPermiso], [Nombre]) VALUES (4, N'otro')
SET IDENTITY_INSERT [dbo].[tblPermisos] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPermisosRoles] ON 

INSERT [dbo].[tblPermisosRoles] ([id], [RolId], [PermisoId]) VALUES (1, 1, 1)
INSERT [dbo].[tblPermisosRoles] ([id], [RolId], [PermisoId]) VALUES (2, 1, 2)
INSERT [dbo].[tblPermisosRoles] ([id], [RolId], [PermisoId]) VALUES (3, 1, 3)
INSERT [dbo].[tblPermisosRoles] ([id], [RolId], [PermisoId]) VALUES (4, 1, 4)
INSERT [dbo].[tblPermisosRoles] ([id], [RolId], [PermisoId]) VALUES (5, 2, 1)
INSERT [dbo].[tblPermisosRoles] ([id], [RolId], [PermisoId]) VALUES (6, 2, 2)
SET IDENTITY_INSERT [dbo].[tblPermisosRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPlanContable] ON 

INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1, N'10', N'EFECTIVO Y EQUIVALENTES DE EFECTIVO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (2, N'101', N'CAJA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (3, N'1011', N'CAJA - SOLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (4, N'1012', N'CAJA - DOLARES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (5, N'102', N'FONDOS FIJOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (6, N'103', N'EFECTIVO EN TRÁNSITO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (7, N'104', N'CUENTAS CORRIENTES EN INSTITUCIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (8, N'1041', N'CUENTAS CORRIENTES OPERATIVAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (9, N'1042', N'CUENTAS CORRIENTES PARA FINES ESPECÍFICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (10, N'105', N'OTROS EQUIVALENTES DE EFECTIVO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (11, N'1051', N'OTROS EQUIVALENTES DE EFECTIVO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (12, N'106', N'DEPÓSITOS EN INSTITUCIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (13, N'1061', N'DEPÓSITOS DE AHORRO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (14, N'1062', N'DEPÓSITOS A PLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (15, N'107', N'FONDOS SUJETOS A RESTRICCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (16, N'1071', N'FONDOS SUJETOS A RESTRICCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (17, N'11', N'INVERSIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (18, N'111', N'INVERSIONES MANTENIDAS PARA NEGOCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (19, N'1111', N'VALORES EMITIDOS O GARANTIZADOS POR EL ESTADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (20, N'11111', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (21, N'11112', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (22, N'1112', N'VALORES EMITIDOS POR EL SISTEMA FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (23, N'11121', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (24, N'11122', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (25, N'1113', N'VALORES EMITIDOS POR EMPRESAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (26, N'11131', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (27, N'11132', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (28, N'1114', N'OTROS TÍTULOS REPRESENTATIVOS DE DEUDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (29, N'11141', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (30, N'11142', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (31, N'1115', N'PARTICIPACIONES EN ENTIDADES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (32, N'11151', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (33, N'11152', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (34, N'112', N'INVERSIONES DISPONIBLES PARA LA VENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (35, N'1121', N'VALORES EMITIDOS O GARANTIZADOS POR EL ESTADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (36, N'11211', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (37, N'11212', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (38, N'1122', N'VALORES EMITIDOS POR EL SISTEMA FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (39, N'11221', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (40, N'11222', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (41, N'1123', N'VALORES EMITIDOS POR EMPRESAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (42, N'11231', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (43, N'11232', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (44, N'1124', N'OTROS TÍTULOS REPRESENTATIVOS DE DEUDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (45, N'11241', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (46, N'11242', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (47, N'113', N'ACTIVOS FINANCIEROS – ACUERDO DE COMPRA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (48, N'1131', N'INVERSIONES MANTENIDAS PARA NEGOCIACION - ACUERDO DE COMPRA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (49, N'11311', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (50, N'11312', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (51, N'1132', N'INVERSIONES DISPONIBLES PARA LA VENTA - ACUERDO DE COMPRA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (52, N'11321', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (53, N'11322', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (54, N'12', N'CUENTAS POR COBRAR COMERCIALES – TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (55, N'121', N'FACTURAS, BOLETAS Y OTROS COMPROBANTES POR COBRAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (56, N'1211', N'NO EMITIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (57, N'1212', N'EMITIDAS EN CARTERA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (58, N'1213', N'EN COBRANZA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (59, N'1214', N'EN DESCUENTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (60, N'1221', N'ANTICIPOS DE CLIENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (61, N'123', N'LETRAS POR COBRAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (62, N'1231', N'EN CARTERA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (63, N'1232', N'EN COBRANZA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (64, N'1233', N'EN DESCUENTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (65, N'13', N'CUENTAS POR COBRAR COMERCIALES – RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (66, N'131', N'FACTURAS, BOLETAS Y OTROS COMPROBANTES POR COBRAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (67, N'1311', N'NO EMITIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (68, N'13111', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (69, N'13112', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (70, N'13113', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (71, N'13114', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (72, N'13115', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (73, N'1312', N'EMITIDAS EN CARTERA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (74, N'13121', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (75, N'13122', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (76, N'13123', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (77, N'13124', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (78, N'1313', N'EN COBRANZA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (79, N'13131', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (80, N'13132', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (81, N'13133', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (82, N'13134', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (83, N'13135', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (84, N'1314', N'EN DESCUENTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (85, N'13141', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (86, N'13142', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (87, N'13143', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (88, N'13144', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (89, N'13145', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (90, N'132', N'ANTICIPOS RECIBIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (91, N'1321', N'ANTICIPOS RECIBIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (92, N'13211', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (93, N'13212', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (94, N'13213', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (95, N'13214', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (96, N'13215', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (97, N'133', N'LETRAS POR COBRAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (98, N'1331', N'EN CARTERA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (99, N'13311', N'MATRIZ')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (100, N'13312', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (101, N'13313', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (102, N'13314', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (103, N'13315', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (104, N'1332', N'EN COBRANZA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (105, N'13321', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (106, N'13322', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (107, N'13323', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (108, N'13324', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (109, N'13325', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (110, N'1333', N'EN DESCUENTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (111, N'13331', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (112, N'13332', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (113, N'13333', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (114, N'13334', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (115, N'13335', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (116, N'14', N'CUENTAS POR COBRAR AL PERSONAL, A LOS ACCIONISTAS (SOCIOS), DIRECTORES Y GERENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (117, N'141', N'PERSONAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (118, N'1411', N'PRÉSTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (119, N'1412', N'ADELANTO DE REMUNERACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (120, N'1413', N'ENTREGAS A RENDIR CUENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (121, N'1419', N'OTRAS CUENTAS POR COBRAR AL PERSONAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (122, N'142', N'ACCIONISTAS (O SOCIOS)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (123, N'1421', N'SUSCRIPCIONES POR COBRAR A SOCIOS O ACCIONISTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (124, N'1422', N'PRÉSTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (125, N'143', N'DIRECTORES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (126, N'1431', N'PRÉSTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (127, N'1432', N'ADELANTO DE DIETAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (128, N'1433', N'ENTREGAS A RENDIR CUENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (129, N'144', N'GERENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (130, N'1441', N'PRÉSTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (131, N'1442', N'ADELANTO DE REMUNERACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (132, N'1443', N'ENTREGAS A RENDIR CUENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (133, N'148', N'DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (134, N'16', N'CUENTAS POR COBRAR DIVERSAS - TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (135, N'161', N'PRÉSTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (136, N'1611', N'CON GARANTÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (137, N'1612', N'SIN GARANTÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (138, N'162', N'RECLAMACIONES A TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (139, N'1621', N'COMPAÑÍAS ASEGURADORAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (140, N'1622', N'TRANSPORTADORAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (141, N'1623', N'SERVICIOS PÚBLICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (142, N'1624', N'TRIBUTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (143, N'1629', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (144, N'163', N'INTERESES, REGALÍAS Y DIVIDENDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (145, N'1631', N'INTERESES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (146, N'1632', N'REGALÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (147, N'1633', N'DIVIDENDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (148, N'164', N'DEPÓSITOS OTORGADOS EN GARANTÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (149, N'1641', N'PRÉSTAMOS DE INSTITUCIONES NO FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (150, N'1642', N'PRÉSTAMOS DE INSTITUCIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (151, N'1644', N'DEPÓSITO EN GARANTÍA POR ALQUILERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (152, N'1649', N'OTROS DEPÓSITOS EN GARANTÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (153, N'165', N'VENTA DE ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (154, N'1651', N'INVERSIÓN MOBILIARIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (155, N'1652', N'INVERSIÓN INMOBILIARIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (156, N'1653', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (157, N'1654', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (158, N'1655', N'ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (159, N'166', N'ACTIVOS POR INSTRUMENTOS FINANCIEROS DERIVADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (160, N'1661', N'INSTRUMENTOS FINANCIEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (161, N'1662', N'INSTRUMENTOS FINANCIEROS DERIVADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (162, N'16621', N'CARTERA DE NEGOCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (163, N'16622', N'INSTRUMENTOS DE COBERTURA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (164, N'168', N'OTRAS CUENTAS POR COBRAR DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (165, N'1681', N'ENTREGAS A RENDIR CUENTA A TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (166, N'1682', N'OTRAS CUENTAS POR COBRAR DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (167, N'17', N'CUENTAS POR COBRAR DIVERSAS - RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (168, N'171', N'PRÉSTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (169, N'1711', N'CON GARANTÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (170, N'17111', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (171, N'17112', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (172, N'17113', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (173, N'17114', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (174, N'17115', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (175, N'1712', N'SIN GARANTÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (176, N'17121', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (177, N'17122', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (178, N'17123', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (179, N'17124', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (180, N'17125', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (181, N'173', N'INTERESES, REGALÍAS Y DIVIDENDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (182, N'1731', N'INTERESES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (183, N'17311', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (184, N'17312', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (185, N'17313', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (186, N'17314', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (187, N'17315', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (188, N'1732', N'REGALÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (189, N'17321', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (190, N'17322', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (191, N'17323', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (192, N'17324', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (193, N'17325', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (194, N'1733', N'DIVIDENDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (195, N'17331', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (196, N'17332', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (197, N'17333', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (198, N'17334', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (199, N'174', N'DEPÓSITOS OTORGADOS EN GARANTÍA')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (200, N'175', N'VENTA DE ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (201, N'1751', N'INVERSIÓN MOBILIARIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (202, N'1752', N'INVERSIÓN INMOBILIARIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (203, N'1753', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (204, N'1754', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (205, N'1755', N'ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (206, N'176', N'ACTIVOS POR INSTRUMENTOS FINANCIEROS DERIVADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (207, N'178', N'OTRAS CUENTAS POR COBRAR DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (208, N'18', N'SERVICIOS Y OTROS CONTRATADOS POR ANTICIPADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (209, N'181', N'COSTOS FINANCIEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (210, N'182', N'SEGUROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (211, N'1821', N'SEGUROS PAGADOS POR ADELANTADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (212, N'183', N'ALQUILERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (213, N'1831', N'ALQUILERES PAGADOS POR ADELANTADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (214, N'184', N'PRIMAS PAGADAS POR OPCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (215, N'185', N'MANTENIMIENTO DE ACTIVOS INMOVILIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (216, N'189', N'OTROS GASTOS CONTRATADOS POR ANTICIPADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (217, N'19', N'ESTIMACIÓN DE CUENTAS DE COBRANZA DUDOSA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (218, N'191', N'CUENTAS POR COBRAR COMERCIALES - TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (219, N'1911', N'FACTURAS, BOLETAS Y OTROS COMPROBANTES POR COBRAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (220, N'1913', N'LETRAS POR COBRAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (221, N'192', N'CUENTAS POR COBRAR COMERCIALES - RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (222, N'1921', N'FACTURAS, BOLETAS Y OTROS COMPROBANTES POR COBRAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (223, N'1922', N'LETRAS POR COBRAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (224, N'193', N'CUENTAS POR COBRAR AL PERSONAL, A LOS ACCIONISTAS (SOCIOS), DIRECTORES Y GERENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (225, N'1931', N'PERSONAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (226, N'1932', N'ACCIONISTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (227, N'1933', N'DIRECTORES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (228, N'1934', N'GERENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (229, N'1938', N'DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (230, N'194', N'CUENTAS POR COBRAR DIVERSAS- TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (231, N'1941', N'PRESTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (232, N'1942', N'RECLAMACIONES A TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (233, N'1943', N'INTERESES REGALIAS Y DIVIDENDOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (234, N'1944', N'DEPOSITOS OTORGADOS EN GARANTIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (235, N'1945', N'VENTA DE ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (236, N'1946', N'ACTIVOS POR INSTRUMENTOS FINANCIEROS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (237, N'1949', N'OTRAS CUENTAS POR COBRAR DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (238, N'195', N'CUENTAS POR COBRAR DIVERSAS - RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (239, N'1951', N'PRESTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (240, N'1953', N'INTERESES REGALIAS Y DIVIDENDOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (241, N'1954', N'DEPOSITOS OTORGADOS EN GARANTIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (242, N'1955', N'VENTA DE ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (243, N'1956', N'ACTIVOS POR INSTRUMENTOS FINANCIEROS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (244, N'1958', N'OTRAS CUENTAS POR COBRAR DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (245, N'20', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (246, N'201', N'MERCADERÍAS MANUFACTURADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (247, N'2011', N'MERCADERÍAS MANUFACTURADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (248, N'20111', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (249, N'20112', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (250, N'202', N'MERCADERÍAS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (251, N'2021', N'MERCADERÍAS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (252, N'203', N'MERCADERÍAS AGROPECUARIAS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (253, N'2031', N'DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (254, N'2032', N'DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (255, N'204', N'MERCADERÍAS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (256, N'2041', N'MERCADERÍAS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (257, N'208', N'OTRAS MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (258, N'21', N'PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (259, N'211', N'PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (260, N'2111', N'PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (261, N'212', N'PRODUCTOS DE EXTRACCIÓN TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (262, N'2121', N'PRODUCTOS DE EXTRACCIÓN TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (263, N'213', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (264, N'2131', N'DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (265, N'21311', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (266, N'21312', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (267, N'2132', N'DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (268, N'21321', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (269, N'21322', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (270, N'214', N'PRODUCTOS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (271, N'2141', N'PRODUCTOS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (272, N'215', N'EXISTENCIAS DE SERVICIOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (273, N'2151', N'EXISTENCIAS DE SERVICIOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (274, N'217', N'OTROS PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (275, N'218', N'COSTOS DE FINANCIACIÓN – PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (276, N'22', N'SUBPRODUCTOS, DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (277, N'221', N'SUBPRODUCTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (278, N'222', N'DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (279, N'2221', N'DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (280, N'23', N'PRODUCTOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (281, N'231', N'PRODUCTOS EN PROCESO DE MANUFACTURA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (282, N'2311', N'PRODUCTOS EN PROCESO DE MANUFACTURA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (283, N'232', N'PRODUCTOS EXTRAÍDOS EN PROCESO DE TRANSFORMACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (284, N'2321', N'PRODUCTOS EXTRAÍDOS EN PROCESO DE TRANSFORMACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (285, N'233', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (286, N'2331', N'DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (287, N'23311', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (288, N'23312', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (289, N'2332', N'DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (290, N'23321', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (291, N'23322', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (292, N'234', N'PRODUCTOS INMUEBLES EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (293, N'2341', N'PRODUCTOS INMUEBLES EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (294, N'235', N'EXISTENCIAS DE SERVICIOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (295, N'237', N'OTROS PRODUCTOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (296, N'238', N'COSTOS DE FINANCIACIÓN – PRODUCTOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (297, N'24', N'MATERIAS PRIMAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (298, N'241', N'MATERIAS PRIMAS PARA PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (299, N'2411', N'MATERIAS PRIMAS PARA PRODUCTOS MANUFACTURADOS')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (300, N'242', N'MATERIAS PRIMAS PARA PRODUCTOS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (301, N'2421', N'MATERIAS PRIMAS PARA PRODUCTOS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (302, N'243', N'MATERIAS PRIMAS PARA PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (303, N'244', N'MATERIAS PRIMAS PARA PRODUCTOS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (304, N'2441', N'MATERIAS PRIMAS PARA PRODUCTOS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (305, N'25', N'MATERIALES AUXILIARES, SUMINISTROS Y REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (306, N'2511', N'MATERIALES AUXILIARES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (307, N'252', N'SUMINISTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (308, N'2521', N'COMBUSTIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (309, N'2522', N'LUBRICANTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (310, N'2523', N'ENERGÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (311, N'2524', N'OTROS SUMINISTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (312, N'253', N'REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (313, N'2531', N'REPUESTOS EN GENERAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (314, N'26', N'ENVASES Y EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (315, N'261', N'ENVASES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (316, N'2611', N'ENVASES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (317, N'262', N'EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (318, N'2621', N'EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (319, N'27', N'ACTIVOS NO CORRIENTES MANTENIDOS PARA LA VENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (320, N'271', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (321, N'2711', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (322, N'27111', N'VOLOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (323, N'27112', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (324, N'27113', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (325, N'2712', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (326, N'27121', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (327, N'27122', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (328, N'27123', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (329, N'27124', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (330, N'272', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (331, N'2721', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (332, N'27211', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (333, N'27212', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (334, N'27213', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (335, N'2722', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (336, N'27221', N'COSTO DE ADQUISICION O CONSTRUCCION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (337, N'27222', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (338, N'27223', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (339, N'2723', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (340, N'27231', N'COSTO DE ADQUISICION O CONSTRUCCION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (341, N'27232', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (342, N'27233', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (343, N'2724', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (344, N'27241', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (345, N'27242', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (346, N'2725', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (347, N'27251', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (348, N'27252', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (349, N'2726', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (350, N'27261', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (351, N'27262', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (352, N'2727', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (353, N'27271', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (354, N'27272', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (355, N'273', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (356, N'2731', N'CONCESIONES, LICENCIAS Y DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (357, N'27311', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (358, N'27312', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (359, N'2732', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (360, N'27321', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (361, N'27322', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (362, N'2733', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (363, N'27331', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (364, N'27332', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (365, N'2734', N'COSTO DE EXPLORACION Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (366, N'27341', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (367, N'27342', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (368, N'2735', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (369, N'27351', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (370, N'27352', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (371, N'2736', N'RESERVAS DE RECURSOS EXTRAÍBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (372, N'27361', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (373, N'37362', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (374, N'2739', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (375, N'27391', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (376, N'37392', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (377, N'274', N'ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (378, N'2741', N'ACTIVOS BIOLÓGICOS EN PRODUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (379, N'27411', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (380, N'27412', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (381, N'27413', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (382, N'2742', N'ACTIVOS BIOLÓGICOS EN DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (383, N'27421', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (384, N'27422', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (385, N'27423', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (386, N'275', N'DEPRECIAION ACUMULADA - INVERSION INMOBILIARIA ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (387, N'2752', N'EDIFICACIONES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (388, N'27521', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (389, N'27522', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (390, N'27523', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (391, N'276', N'DEPRECIAION ACUMULADA - INMUEBLE  MAQUINARIA Y EQUIPO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (392, N'2762', N'EDIFICACIONES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (393, N'27621', N'COSTO DE ADQUISICION O CONSTRUCCION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (394, N'27622', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (395, N'27623', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (396, N'2763', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (397, N'27631', N'COSTO DE ADQUISICION O CONSTRUCCION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (398, N'27632', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (399, N'27633', N'COSTO DE FINANCIACION')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (400, N'2764', N'EQUIPOS E TRANSPORTE ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (401, N'27641', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (402, N'27642', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (403, N'2765', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (404, N'27651', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (405, N'27652', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (406, N'2766', N'EQUIPOS DIVERSOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (407, N'27661', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (408, N'27662', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (409, N'2767', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (410, N'27671', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (411, N'27672', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (412, N'277', N'AMORTIZACION ACUMULADA - INTANGIBLES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (413, N'2771', N'CONCESIONES, LICENCIAS Y DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (414, N'27711', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (415, N'27712', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (416, N'2772', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (417, N'27711', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (418, N'27712', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (419, N'2773', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (420, N'27721', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (421, N'27722', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (422, N'2774', N'COSTO DE EXPLORACION Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (423, N'27741', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (424, N'27742', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (425, N'2775', N'FORMULAS DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (426, N'27751', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (427, N'27752', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (428, N'2776', N'RESERVAS DE RECURSOS EXTRAIBLES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (429, N'27761', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (430, N'27662', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (431, N'2779', N'OTROS ACTIVOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (432, N'27791', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (433, N'27792', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (434, N'278', N'DEPRECIACION ACUMULADA - ACTIVOS BIOLOGICOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (435, N'2781', N'ACTIVOS BIOLOGICOS EN PRODUCCION ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (436, N'27812', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (437, N'2782', N'ACTIVOS BIOLOGICOS EN DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (438, N'27822', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (439, N'279', N'DESVALORIZACION ACUMULADA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (440, N'2791', N'INVERSION INMOBILIARIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (441, N'27911', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (442, N'27912', N'EDIFICACIONES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (443, N'2793', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (444, N'27931', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (445, N'27932', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (446, N'27933', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (447, N'27934', N'EQUIPOS DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (448, N'27935', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (449, N'27936', N'EQUIPOS DIVERSOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (450, N'27937', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (451, N'2794', N'INTANGIBLES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (452, N'27941', N'CONCESIONES, LICENCIAS Y DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (453, N'27942', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (454, N'27943', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (455, N'27944', N'COSTO DE EXPLORACION Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (456, N'27945', N'FORMULAS DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (457, N'27946', N'RESERVAS DE RECURSOS EXTRAIBLES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (458, N'2795', N'ACTIVOS BIOLOGICOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (459, N'27951', N'ACTIVOS BIOLOGICOS EN PRODUCCION ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (460, N'27952', N'ACTIVOS BIOLOGICOS ES DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (461, N'28', N'EXISTENCIAS POR RECIBIR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (462, N'281', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (463, N'284', N'MATERIAS PRIMAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (464, N'2841', N'MATERIAS PRIMAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (465, N'285', N'MATERIALES AUXILIARES, SUMINISTROS Y REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (466, N'286', N'ENVASES Y EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (467, N'29', N'DESVALORIZACIÓN DE EXISTENCIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (468, N'291', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (469, N'2911', N'MERCADERÍAS MANUFACTURADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (470, N'2912', N'MERCADERÍAS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (471, N'2913', N'MERCADERÍAS AGROPECUARIAS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (472, N'2914', N'MERCADERÍAS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (473, N'2918', N'OTRAS MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (474, N'292', N'PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (475, N'2921', N'PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (476, N'2922', N'PRODUCTOS DE EXTRACCIÓN TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (477, N'2923', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (478, N'2924', N'PRODUCTOS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (479, N'2925', N'EXISTENCIAS DE SERVICIOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (480, N'2927', N'OTROS PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (481, N'2928', N'COSTOS DE FINANCIACIÓN – PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (482, N'293', N'SUBPRODUCTOS, DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (483, N'2931', N'SUBPRODUCTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (484, N'2932', N'DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (485, N'294', N'PRODUCTOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (486, N'2941', N'PRODUCTOS EN PROCESO DE MANUFACTURA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (487, N'2942', N'PRODUCTOS EXTRAÍDOS EN PROCESO DE TRANSFORMACIÓN ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (488, N'2943', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (489, N'2944', N'PRODUCTOS INMUEBLES EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (490, N'2945', N'EXISTENCIAS DE SERVICIOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (491, N'2947', N'OTROS PRODUCTOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (492, N'2948', N'COSTOS DE FINANCIACIÓN – PRODUCTOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (493, N'295', N'MATERIAS PRIMAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (494, N'2951', N'MATERIAS PRIMAS PARA PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (495, N'2952', N'MATERIAS PRIMAS PARA PRODUCTOS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (496, N'2953', N'MATERIAS PRIMAS PARA PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (497, N'2954', N'MATERIAS PRIMAS PARA PRODUCTOS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (498, N'296', N'MATERIALES AUXILIARES, SUMINISTROS Y REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (499, N'2961', N'MATERIALES AUXILIARES')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (500, N'2962', N'SUMINISTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (501, N'2963', N'REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (502, N'297', N'ENVASES Y EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (503, N'2971', N'ENVASES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (504, N'2972', N'EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (505, N'298', N'EXISTENCIAS POR RECIBIR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (506, N'2981', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (507, N'2982', N'MATERIAS PRIMAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (508, N'2983', N'MATERIALES AUXILIARES, SUMINISTROS Y REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (509, N'2984', N'ENVASES Y EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (510, N'30', N'INVERSIONES MOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (511, N'301', N'INVERSIONES A SER MANTENIDAS HASTA EL VENCIMIENTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (512, N'3011', N'INSTRUMENTOS FINANCIEROS REPRESENTATIVOS DE DEUDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (513, N'30111', N'VALORES EMITIDOS O GARANTIZADOS POR EL ESTADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (514, N'30112', N'VALORES EMITIDOS POR EL SISTEMA FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (515, N'30113', N'VALORES EMITIDOS POR LAS EMPRESAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (516, N'30114', N'OTROS TÍTULOS REPRESENTATIVOS DE DEUDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (517, N'302', N'INSTRUMENTOS FINANCIEROS REPRESENTATIVOS DE DERECHO PATRIMONIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (518, N'3021', N'CERTIFICADOS DE SUSCRIPCIÓN PREFERENTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (519, N'3022', N'ACCIONES REPRESENTATIVAS DE CAPITAL SOCIAL - COMUNES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (520, N'30221', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (521, N'30222', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (522, N'30223', N'PARTICIPACION PATRIMONIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (523, N'3023', N'ACCIONES REPRESENTATIVAS DE CAPITAL SOCIAL - PREFERENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (524, N'30231', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (525, N'30232', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (526, N'30233', N'PARTICIPACION PATRIMONIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (527, N'3024', N'ACCIONES DE INVERSION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (528, N'30241', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (529, N'30242', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (530, N'30243', N'PARTICIPACION PATRIMONIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (531, N'3025', N'CERTIFICADOS DE PARTICIPACIÓN DE FONDOS DE INVERSION ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (532, N'30251', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (533, N'30242', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (534, N'3026', N'CERTIFICADO DE PARTICIPACION EN FONDOS MUTUOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (535, N'30261', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (536, N'30262', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (537, N'3027', N'PARTICIPACIONES EN ASOCIACIONES EN PARTICIPACION Y CONSORCIOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (538, N'30271', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (539, N'30272', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (540, N'30273', N'PARTICIPACION PATRIMONIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (541, N'3028', N'OTROS TÍTULOS REPRESENTATIVOS DE PATRIMONIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (542, N'30281', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (543, N'30282', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (544, N'308', N'INVERSIONES MOVILIARIAS - ACUERDO DE COMPRA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (545, N'3081', N'INVERSIONES A SER MANTENIDAS HASTA EL VENCIMIENTO - ACUERDO DE COMPRA ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (546, N'3082', N'INSTRUMENTOS FINANCIEROS REPRESENTATIVOS DE DERECHO PATRIMONIAL - ACUERDO DE COMPRA ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (547, N'31', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (548, N'311', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (549, N'3111', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (550, N'31111', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (551, N'31112', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (552, N'31113', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (553, N'3112', N'RURALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (554, N'31121', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (555, N'31122', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (556, N'31123', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (557, N'312', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (558, N'3121', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (559, N'31211', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (560, N'31212', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (561, N'31213', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (562, N'31214', N'COSTOS DE FINANCIACIÓN – INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (563, N'32', N'ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (564, N'321', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (565, N'3211', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (566, N'3212', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (567, N'322', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (568, N'3221', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (569, N'3222', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (570, N'3223', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (571, N'3224', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (572, N'3225', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (573, N'3226', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (574, N'3227', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (575, N'33', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (576, N'331', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (577, N'3311', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (578, N'33111', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (579, N'33112', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (580, N'332', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (581, N'3321', N'EDIFICACIONES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (582, N'33211', N'COSTO DE ADQUISICIÓN O CONSTRUCCION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (583, N'33212', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (584, N'33213', N'COSTO DE FINANCIACIÓN - EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (585, N'3322', N'ALMACENES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (586, N'33221', N'COSTO DE ADQUISICIÓN O CONSTRUCCION ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (587, N'33222', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (588, N'33223', N'COSTO DE FINANCIACIÓN - ALMACENES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (589, N'3323', N'EDIFICACIONES PARA PRODUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (590, N'33231', N'COSTO DE ADQUISICIÓN O CONTRUCCION ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (591, N'33232', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (592, N'33233', N'COSTO DE FINANCIACIÓN – EDIFICACIONES PARA PRODUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (593, N'3324', N'INSTALACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (594, N'33241', N'COSTO DE ADQUISICIÓN O CONTRUCCION ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (595, N'33242', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (596, N'33243', N'COSTO DE FINANCIACIÓN – INSTALACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (597, N'333', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (598, N'3331', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (599, N'33311', N'COSTO DE ADQUISICIÓN O CONSTRUCCION ')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (600, N'33312', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (601, N'33313', N'COSTO DE FINANCIACIÓN – MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (602, N'334', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (603, N'3341', N'VEHÍCULOS MOTORIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (604, N'33411', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (605, N'3341,2', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (606, N'3342', N'VEHÍCULOS NO MOTORIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (607, N'33421', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (608, N'33422', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (609, N'335', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (610, N'3351', N'MUEBLES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (611, N'33511', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (612, N'33512', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (613, N'3352', N'ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (614, N'33521', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (615, N'33522', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (616, N'336', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (617, N'3361', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (618, N'33611', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (619, N'33612', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (620, N'3362', N'EQUIPO DE COMUNICACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (621, N'33621', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (622, N'33622', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (623, N'3363', N'EQUIPO DE SEGURIDAD')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (624, N'33631', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (625, N'33632', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (626, N'3369', N'OTROS EQUIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (627, N'33691', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (628, N'33692', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (629, N'337', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (630, N'3371', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (631, N'33711', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (632, N'33712', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (633, N'3372', N'UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (634, N'33721', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (635, N'33722', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (636, N'338', N'UNIDADES POR RECIBIR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (637, N'3381', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (638, N'3382', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (639, N'3383', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (640, N'3386', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (641, N'3387', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (642, N'339', N'CONSTRUCCIONES Y OBRAS EN CURSO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (643, N'3391', N'ADAPTACIÓN DE TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (644, N'3392', N'CONSTRUCCIONES EN CURSO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (645, N'3393', N'MAQUINARIA EN MONTAJE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (646, N'3394', N'INVERSIÓN INMOBILIARIA EN CURSO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (647, N'3397', N'COSTO DE FINANCIACIÓN – INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (648, N'33971', N'COSTO DE FINANCIACIÓN - EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (649, N'3398', N'COSTO DE FINANCIACIÓN – INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (650, N'33981', N'COSTO DE FINANCIACIÓN – EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (651, N'33982', N'COSTO DE FINANCIACIÓN – MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (652, N'3399', N'OTROS ACTIVOS EN CURSO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (653, N'34', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (654, N'341', N'CONCESIONES, LICENCIAS Y OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (655, N'3411', N'CONCESIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (656, N'34111', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (657, N'34112', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (658, N'3412', N'LICENCIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (659, N'34121', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (660, N'34122', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (661, N'3419', N'OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (662, N'34191', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (663, N'34192', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (664, N'342', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (665, N'3421', N'PATENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (666, N'34211', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (667, N'34212', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (668, N'3422', N'MARCAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (669, N'34221', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (670, N'34222', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (671, N'343', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (672, N'3431', N'APLICACIONES INFORMÁTICAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (673, N'34311', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (674, N'34312', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (675, N'344', N'COSTOS DE EXPLORACIÓN Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (676, N'3441', N'COSTOS DE EXPLORACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (677, N'34411', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (678, N'34412', N'REVALUACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (679, N'34413', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (680, N'3442', N'COSTOS DE DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (681, N'34421', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (682, N'34422', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (683, N'34423', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (684, N'345', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (685, N'3451', N'FÓRMULAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (686, N'34511', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (687, N'34512', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (688, N'3452', N'DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (689, N'34521', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (690, N'34522', N'REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (691, N'346', N'RESERVAS DE RECURSOS EXTRAÍBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (692, N'3461', N'MINERALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (693, N'34611', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (694, N'34612', N'REVALUACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (695, N'3462', N'PETRÓLEO Y GAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (696, N'34621', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (697, N'34622', N'REVALUACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (698, N'3463', N'MADERA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (699, N'34631', N'COSTO ')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (700, N'34632', N'REVALUACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (701, N'3469', N'OTROS RECURSOS EXTRAÍBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (702, N'34691', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (703, N'34692', N'REVALUACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (704, N'347', N'PLUSVALÍA MERCANTIL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (705, N'3471', N'PLUSVALÍA MERCANTIL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (706, N'349', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (707, N'3491', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (708, N'34911', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (709, N'34912', N'REVALUACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (710, N'35', N'ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (711, N'351', N'ACTIVOS BIOLÓGICOS EN PRODUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (712, N'3511', N'DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (713, N'35111', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (714, N'35112', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (715, N'35113', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (716, N'3512', N'DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (717, N'35121', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (718, N'35122', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (719, N'35123', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (720, N'352', N'ACTIVOS BIOLÓGICOS EN DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (721, N'3521', N'DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (722, N'35211', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (723, N'35212', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (724, N'35213', N'COSTO DE FINANCIACIÓN ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (725, N'3522', N'DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (726, N'35221', N'VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (727, N'35222', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (728, N'35223', N'COSTO DE FINANCIACIÓN ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (729, N'36', N'DESVALORIZACIÓN DE ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (730, N'361', N' DESVALORIZACION DE INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (731, N'3611', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (732, N'3612', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (733, N'36121', N'EDIFICACIONES - COSTO DE DE ADQUISICION O CONSTRUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (734, N'36122', N'EDIFICACIONES - COSTO DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (735, N'363', N'DESVALORIZACION DE INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (736, N'3631', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (737, N'3632', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (738, N'36321', N'EDIFICACIONES - COSTO DE ADQUISICION O CONSTRUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (739, N'36322', N'EDIFICACIONES - COSTO DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (740, N'3633', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (741, N'36331', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN - COSTO DE ADQUISICION O CONSTRUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (742, N'36332', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN - COSTO DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (743, N'3634', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (744, N'3635', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (745, N'3636', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (746, N'3637', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (747, N'364', N'DESVALORIZAACION DE INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (748, N'3641', N'CONCESIONES, LICENCIAS Y OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (749, N'3642', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (750, N'3643', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (751, N'3644', N'COSTOS DE EXPLORACIÓN Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (752, N'36441', N'COSTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (753, N'36442', N'COSTO DE FINANCIACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (754, N'3645', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (755, N'3647', N'PLUSVALÍA MERCANTIL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (756, N'3649', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (757, N'365', N'DESVALORIZACION DE ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (758, N'3651', N'ACTIVOS BIOLÓGICOS EN PRODUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (759, N'3652', N'ACTIVOS BIOLÓGICOS EN DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (760, N'36521', N'COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (761, N'36522', N'COSTO DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (762, N'366', N'DESVALORIZACION DE INVERSIONES INMOBOLIARIAS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (763, N'3661', N'INVERSIONES A SER MANTENIDAS HASTA EL VENCIMIENTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (764, N'3662', N'INVERSIONES FINANCERAS REPRESENTATIVAS DE DERECHO PATRIMONIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (765, N'37', N'ACTIVO DIFERIDO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (766, N'371', N'IMPUESTO A LA RENTA DIFERIDO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (767, N'3711', N'IMPUESTO A LA RENTA DIFERIDO - PATRIMONIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (768, N'3712', N'IMPUESTO A LA RENTA DIFERIDO - RESULTADOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (769, N'372', N'PARTICIPACIONES DE LOS TRABAJADORES DIFERIDAS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (770, N'3721', N'PARTICIPACIONES DE LOS TRABAJADORES DIFERIDAS - PATRIMONIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (771, N'3722', N'PARTICIPACIONES DE LOS TRABAJADORES DIFERIDAS - RESULTADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (772, N'373', N'INTERESES DIFERIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (773, N'3731', N'INTERESES NO DEVENGADOS EN TRANSACCIONES CON TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (774, N'3732', N'INTERESES NO DEVENGADOS EN MEDICIÓN A VALOR DESCONTADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (775, N'38', N'OTROS ACTIVOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (776, N'381', N'BIENES DE ARTE Y CULTURA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (777, N'3811', N'OBRAS DE ARTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (778, N'3812', N'BIBLIOTECA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (779, N'3813', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (780, N'382', N'DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (781, N'3821', N'MONEDAS Y JOYAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (782, N'3822', N'BIENES ENTREGADOS EN COMODATO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (783, N'3823', N'BIENES RECIBIDOS EN PAGO (ADJUDICADOS Y REALIZABLES)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (784, N'3829', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (785, N'39', N'DEPRECIACIÓN, AMORTIZACIÓN Y AGOTAMIENTO ACUMULADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (786, N'391', N'DEPRECIACIÓN ACUMULADA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (787, N'3911', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (788, N'3911,1', N'EDIFICACIONES - COSTO DE ADQUISICIÓN O CONSTRUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (789, N'39112', N'EDIFICACIONES - REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (790, N'39113', N'EDIFICACIONES - COSTO DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (791, N'3912', N'ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (792, N'3912,1', N'INVERSIONES INMOBILIARIAS - EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (793, N'3912,2', N'INMUEBLES, MAQUINARIA Y EQUIPO - EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (794, N'3912,3', N'INMUEBLES, MAQUINARIA Y EQUIPO - MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (795, N'3912,4', N'INMUEBLES, MAQUINARIA Y EQUIPO - EQUIPOS DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (796, N'3912,6', N'INMUEBLES, MAQUINARIA Y EQUIPO - EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (797, N'3913', N'INMUEBLES, MAQUINARIA Y EQUIPO - COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (798, N'3913,1', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (799, N'3913,2', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (800, N'3913,3', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (801, N'3913,4', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (802, N'3913,5', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (803, N'3913,6', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (804, N'3914', N'INMUEBLES, MAQUINARIA Y EQUIPO - REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (805, N'39141', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (806, N'39142', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (807, N'39143', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (808, N'39144', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (809, N'39145', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (810, N'39146', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (811, N'3915', N'INMUEBLES, MAQUINARIA Y EQUIPO – COSTO DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (812, N'39151', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (813, N'39152', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (814, N'3916', N'ACTIVOS BIOLÓGICOS EN PRODUCCIÓN – COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (815, N'39161', N'ACTIVOS BIOLÓGICOS DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (816, N'39162', N'ACTIVOS BIOLÓGICOS DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (817, N'3917', N'ACTIVOS BIOLÓGICOS EN PRODUCCIÓN – COSTO DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (818, N'39171', N'ACTIVOS BIOLÓGICOS DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (819, N'39172', N'ACTIVOS BIOLÓGICOS DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (820, N'392', N'AMORTIZACIÓN ACUMULADA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (821, N'3921', N'INTANGIBLES - COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (822, N'3921,1', N'CONCESIONES, LICENCIAS Y OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (823, N'39212', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (824, N'3921,3', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (825, N'39214', N'COSTOS DE EXPLORACIÓN Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (826, N'39215', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (827, N'39219', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (828, N'3922', N'INTANGIBLES - REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (829, N'3922,1', N'CONCESIONES, LICENCIAS Y OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (830, N'39222', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (831, N'39223', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (832, N'39224', N'COSTO DE EXPLORACION Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (833, N'39225', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (834, N'39229', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (835, N'3923', N'INTAGIBLES - COSTO DE FINANCIACION ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (836, N'39234', N'COSTO DE EXPLORACION Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (837, N'393', N'AGOTAMIENTO ACUMULADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (838, N'3931', N'AGOTAMIENTO DE RESERVAS DE RECURSOS EXTRAÍBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (839, N'40', N'TRIBUTOS Y APORTES AL SISTEMA DE PENSIONES Y DE SALUD POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (840, N'401', N'GOBIERNO CENTRAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (841, N'4011', N'IMPUESTO GENERAL A LAS VENTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (842, N'4011,1', N'IGV - CUENTA PROPIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (843, N'4011,2', N'IGV - SERVICIOS PRESTADOS POR NO DOMICILIADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (844, N'4011,3', N'IGV - RÉGIMEN DE PERCEPCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (845, N'4011,4', N'IGV - RÉGIMEN DE RETENCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (846, N'4011,5', N'IGV - POR APLICAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (847, N'4011,6', N'IGV - REG. PROVEEDOR - RETENCIONES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (848, N'4012', N'IMPUESTO SELECTIVO AL CONSUMO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (849, N'4015', N'DERECHOS ADUANEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (850, N'4015,1', N'DERECHOS ARANCELARIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (851, N'40152', N'DERECHOS ADUANEROS POR VENTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (852, N'4017', N'IMPUESTO A LA RENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (853, N'4017,1', N'RENTA DE TERCERA CATEGORÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (854, N'4017,2', N'RENTA DE CUARTA CATEGORÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (855, N'4017,3', N'RENTA DE QUINTA CATEGORÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (856, N'40174', N'RENTA DE NO DOMICILIADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (857, N'4017,5', N'OTRAS RETENCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (858, N'4017,12', N'IMPUESTO A LA RENTA ANUAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (859, N'4018', N'OTROS IMPUESTOS Y CONTARPRESTACIONE ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (860, N'4018,1', N'IMPUESTO A LAS TRANSACCIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (861, N'4018,2', N'IMPUESTO A LOS JUEGOS DE CASINO Y TRAGAMONEDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (862, N'4018,3', N'TASAS POR LA PRESTACIÓN DE SERVICIOS PÚBLICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (863, N'4018,4', N'REGALÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (864, N'4018,5', N'IMPUESTO A LOS DIVIDENDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (865, N'4018,6', N'IMPUESTO TEMPORAL A LOS ACTIVOS NETOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (866, N'4018,9', N'OTROS IMPUESTOS    ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (867, N'402', N'CERTIFICADOS TRIBUTARIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (868, N'403', N'INSTITUCIONES PÚBLICAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (869, N'4031', N'ESSALUD')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (870, N'4032', N'ONP')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (871, N'4033', N'CONTRIBUCIÓN AL SENATI')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (872, N'4034', N'CONTRIBUCIÓN AL SENCICO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (873, N'4035', N'ESSALUD + VIDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (874, N'4039', N'OTRAS INSTITUCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (875, N'405', N'GOBIERNOS REGIONALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (876, N'406', N'GOBIERNOS LOCALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (877, N'4061', N'IMPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (878, N'4061,1', N'IMPUESTO AL PATRIMONIO VEHICULAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (879, N'4061,2', N'IMPUESTO A LAS APUESTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (880, N'40613', N'IMPUESTO A LOS JUEGOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (881, N'4061,4', N'IMPUESTO DE ALCABALA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (882, N'4061,5', N'IMPUESTO PREDIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (883, N'40616', N'IMPUESTO A LOS ESPECTÁCULOS PÚBLICOS NO DEPORTIVOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (884, N'4062', N'CONTRIBUCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (885, N'4063', N'TASAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (886, N'4063,1', N'LICENCIA DE APERTURA DE ESTABLECIMIENTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (887, N'40632', N'TRANSPORTE PÚBLICO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (888, N'40633', N'ESTACIONAMIENTO DE VEHÍCULOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (889, N'4063,4', N'SERVICIOS PÚBLICOS O ARBITRIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (890, N'40635', N'SERVICIOS ADMINISTRATIVOS O DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (891, N'407', N'ADMINISTRADORAS DE FONDOS DE PENSIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (892, N'4071', N'SISTEMA PRIVADO DE PENSIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (893, N'408', N'EMPRESAS PRESTADORAS DE SERVICIOS DE SALUD')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (894, N'4081', N'CUENTA PROPIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (895, N'4082', N'CUENTA DE TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (896, N'409', N'OTROS COSTOS ADMINISTRATIVOS E INTERESES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (897, N'4091', N'FRACCIONAMIENTO TRIBUTARIO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (898, N'4092', N'INTERES DE FRACCIONAMIENTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (899, N'4093', N'INTERESES TRIBUTARIOS ')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (900, N'4094', N'INTERESES DE AFPs')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (901, N'41', N'REMUNERACIONES Y PARTICIPACIONES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (902, N'411', N'REMUNERACIONES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (903, N'4111', N'SUELDOS Y SALARIOS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (904, N'4112', N'COMISIONES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (905, N'4113', N'REMUNERACIONES EN ESPECIE POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (906, N'4114', N'GRATIFICACIONES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (907, N'4115', N'VACACIONES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (908, N'413', N'PARTICIPACIÓN DE LOS TRABAJADORES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (909, N'415', N'BENEFICIOS SOCIALES DE LOS TRABAJADORES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (910, N'4151', N'COMPENSACIÓN POR TIEMPO DE SERVICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (911, N'4152', N'ADELANTO DE COMPENSACIÓN POR TIEMPO DE SERVICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (912, N'4153', N'PENSIONES Y JUBILACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (913, N'419', N'OTRAS REMUNERACIONES Y PARTICIPACIONES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (914, N'42', N'CUENTAS POR PAGAR COMERCIALES – TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (915, N'421', N'FACTURAS, BOLETAS Y OTROS COMPROBANTES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (916, N'4211', N'NO EMITIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (917, N'4212', N'EMITIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (918, N'422', N'ANTICIPOS A PROVEEDORES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (919, N'4221', N'ANTICIPOS A PROVEEDORES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (920, N'423', N'LETRAS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (921, N'4231', N'LETRAS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (922, N'424', N'HONORARIOS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (923, N'4241', N'HONORARIOS POR SERVICIOS PRESTADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (924, N'43', N'CUENTAS POR PAGAR COMERCIALES – RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (925, N'431', N'FACTURAS, BOLETAS Y OTROS COMPROBANTES POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (926, N'4311', N'NO EMITIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (927, N'43111', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (928, N'43112', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (929, N'43113', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (930, N'43114', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (931, N'43115', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (932, N'4312', N'EMITIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (933, N'43121', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (934, N'43122', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (935, N'43123', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (936, N'43124', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (937, N'43125', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (938, N'432', N'ANTICIPOS OTORGADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (939, N'4321', N'ANTCIPOS OTORGADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (940, N'43211', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (941, N'43212', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (942, N'43213', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (943, N'43214', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (944, N'43215', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (945, N'433', N'LETRAS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (946, N'4331', N'LETRAS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (947, N'43311', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (948, N'43312', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (949, N'43313', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (950, N'43314', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (951, N'43315', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (952, N'434', N'HONORARIOS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (953, N'4341', N'HONORARIOS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (954, N'43411', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (955, N'43412', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (956, N'43413', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (957, N'43414', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (958, N'43415', N'OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (959, N'44', N'CUENTAS POR PAGAR A LOS ACCIONISTAS, DIRECTORES Y GERENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (960, N'441', N'ACCIONISTAS (O SOCIOS)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (961, N'4411', N'PRÉSTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (962, N'4412', N'DIVIDENDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (963, N'4419', N'OTRAS CUENTAS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (964, N'442', N'DIRECTORES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (965, N'4421', N'DIETAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (966, N'4429', N'OTRAS CUENTAS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (967, N'443', N'GERENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (968, N'45', N'OBLIGACIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (969, N'451', N'PRÉSTAMOS DE INSTITUCIONES FINANCIERAS Y OTRAS ENTIDADES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (970, N'4511', N'INSTITUCIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (971, N'4512', N'OTRAS ENTIDADES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (972, N'452', N'CONTRATOS DE ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (973, N'4521', N'LEASING')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (974, N'453', N'OBLIGACIONES EMITIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (975, N'4531', N'BONOS EMITIDOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (976, N'4532', N'BONOS TITULIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (977, N'4533', N'PAPELES COMERCIALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (978, N'4539', N'OTRAS OBLIGACIONES   ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (979, N'454', N'OTROS INSTRUMENTOS FINANCIEROS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (980, N'4541', N'LETRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (981, N'4542', N'PAPELES COMERCIALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (982, N'4543', N'BONOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (983, N'4544', N'PAGARÉS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (984, N'4545', N'FACTURAS CONFORMADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (985, N'4549', N'OTRAS OBLIGACIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (986, N'455', N'COSTOS DE FINANCIACIÓN POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (987, N'4551', N'PRÉSTAMOS DE INSTITUCIONES FINANCIERAS Y OTRAS ENTIDADES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (988, N'45511', N'INSTITUCIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (989, N'45512', N'OTRAS ENTIDADES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (990, N'4552', N'CONTRATOS DE ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (991, N'4553', N'OBLIGACIONES EMITIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (992, N'45531', N'BONOS EMITIDOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (993, N'45532', N'BONOS TITULIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (994, N'45533', N'PAPELES COMERCIALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (995, N'45539', N'OTRAS OBLIGACIONES   ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (996, N'4554', N'OTROS INSTRUMENTOS FINANCIEROS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (997, N'45541', N'LETRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (998, N'45542', N'PAPELES COMERCIALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (999, N'45543', N'BONOS')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1000, N'45544', N'PAGARÉS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1001, N'45545', N'FACTURAS CONFORMADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1002, N'45549', N'OTRAS OBLIGACIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1003, N'456', N'PRÉSTAMOS CON COMPROMISOS DE RECOMPRA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1004, N'46', N'CUENTAS POR PAGAR DIVERSAS – TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1005, N'4611', N'RECLAMACIONES DE TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1006, N'464', N'PASIVOS POR INSTRUMENTOS FINANCIEROS DERIVADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1007, N'4641', N'INSTRUMENTOS FINANCEROS PRIMARIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1008, N'4642', N'INSTRUMENTOS FIANNCIEROS DERIVADOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1009, N'46421', N'CARTERA DE NEGOCIACION  ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1010, N'46422', N'INSTRUMENTOS DE COERTURA ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1011, N'465', N'PASIVOS POR COMPRA DE ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1012, N'4651', N'INVESIONES MOVILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1013, N'4652', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1014, N'4653', N'ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1015, N'4654', N'INMUEBLE MAQUINARIAS Y EQUIPOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1016, N'4655', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1017, N'4656', N'ACTIVOS BIOLOGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1018, N'4671', N'DEPÓSITOS RECIBIDOS EN GARANTÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1019, N'469', N'OTRAS CUENTAS POR PAGAR DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1020, N'4691', N'SUBSIDIOS GUBERNAMENTALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1021, N'4692', N'DONACIONES CONDICIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1022, N'4693', N'CONTRATO MUTUO DE DINERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1023, N'4699', N'OTRAS CUENTAS POR PAGAR ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1024, N'47', N'CUENTAS POR PAGAR DIVERSAS – RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1025, N'471', N'PRÉSTAMOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1026, N'4711', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1027, N'4712', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1028, N'4713', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1029, N'4714', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1030, N'4715', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1031, N'472', N'COSTOS DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1032, N'4721', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1033, N'4722', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1034, N'4723', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1035, N'4724', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1036, N'4725', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1037, N'473', N'ANTICIPOS RECIBIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1038, N'4731', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1039, N'4732', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1040, N'4733', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1041, N'4734', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1042, N'4734', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1043, N'474', N'REGALÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1044, N'4741', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1045, N'4742', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1046, N'4743', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1047, N'4744', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1048, N'4745', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1049, N'475', N'DIVIDENDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1050, N'4751', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1051, N'4752', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1052, N'4753', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1053, N'4754', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1054, N'4755', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1055, N'477', N'PASIVO POR COMPRA DE ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1056, N'4771', N'INVERSIONES MOBILIARIAS   ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1057, N'47711', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1058, N'47712', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1059, N'47713', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1060, N'47714', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1061, N'47715', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1062, N'4772', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1063, N'47721', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1064, N'47722', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1065, N'47723', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1066, N'47724', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1067, N'47725', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1068, N'4773', N'ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1069, N'47731', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1070, N'47732', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1071, N'47733', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1072, N'47734', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1073, N'47735', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1074, N'4774', N'INMUEBLE MAQUINARIAS Y EQUIPOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1075, N'47741', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1076, N'47742', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1077, N'47743', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1078, N'47744', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1079, N'47745', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1080, N'4775', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1081, N'47751', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1082, N'47752', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1083, N'47753', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1084, N'47754', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1085, N'47755', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1086, N'4776', N'ACTIVOS BIOLOGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1087, N'47761', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1088, N'47762', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1089, N'47763', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1090, N'47764', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1091, N'47765', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1092, N'479', N'OTRAS CUENTAS POR PAGAR DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1093, N'4791', N'OTRAS CUENTAS POR PAGAR DIVERSAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1094, N'47911', N'MATRIZ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1095, N'47912', N'SUBSIDIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1096, N'47913', N'ASOCIADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1097, N'47914', N'SUCURSALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1098, N'47915', N'OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1099, N'48', N'PROVISIONES')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1100, N'481', N'PROVISIÓN PARA LITIGIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1101, N'482', N'PROVISIÓN POR DESMANTELAMIENTO, RETIRO O REHABILITACIÓN DEL INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1102, N'483', N'PROVISIÓN PARA REESTRUCTURACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1103, N'484', N'PROVISIÓN PARA PROTECCIÓN Y REMEDIACIÓN DEL MEDIO AMBIENTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1104, N'485', N'PROVISIÓN PARA GASTOS DE RESPONSABILIDAD SOCIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1105, N'489', N'OTRAS PROVISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1106, N'49', N'PASIVO DIFERIDO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1107, N'491', N'IMPUESTO A LA RENTA DIFERIDO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1108, N'4911', N'IMPUESTO A LA RENTA DIFERIDO - PATRIMONIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1109, N'4912', N'IMPUESTO A LA RENTA DIFERIDO - RESULTADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1110, N'492', N'PARTICIPACIONES DE LOS TRABAJADORES DIFERIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1111, N'4921', N'PARTICIPACIONES DE LOS TRABAJADORES DIFERIDAS - PATRIMONIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1112, N'4922', N'PARTICIPACIONES DE LOS TRABAJADORES DIFERIDAS - RESULTADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1113, N'493', N'INTERESES DIFERIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1114, N'4931', N'INTERESES NO DEVENGADOS EN TRANSACCIONES CON TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1115, N'4932', N'INTERESES NO DEVENGADOS EN MEDICIÓN A VALOR DESCONTADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1116, N'494', N'GANANCIA EN VENTA CON ARRENDAMIENTO FINANCIERO PARALELO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1117, N'495', N'SUBSIDIOS RECIBIDOS DIFERIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1118, N'496', N'INGRESOS DIFERIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1119, N'497', N'COSTOS DIFERIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1120, N'50', N'CAPITAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1121, N'501', N'CAPITAL SOCIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1122, N'5011', N'ACCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1123, N'5012', N'PARTICIPACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1124, N'502', N'ACCIONES EN TESORERÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1125, N'51', N'ACCIONES DE INVERSIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1126, N'511', N'ACCIONES DE INVERSIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1127, N'512', N'ACCIONES DE INVERSIÓN EN TESORERÍA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1128, N'52', N'CAPITAL ADICIONAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1129, N'521', N'PRIMAS (DESCUENTO) DE ACCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1130, N'522', N'CAPITALIZACIONES EN TRÁMITE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1131, N'5221', N'APORTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1132, N'5222', N'RESERVAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1133, N'5223', N'ACREENCIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1134, N'5224', N'UTILIDADES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1135, N'523', N'REDUCCIONES DE CAPITAL PENDIENTES DE FORMALIZACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1136, N'56', N'RESULTADOS NO REALIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1137, N'561', N'DIFERENCIA EN CAMBIO DE INVERSIONES PERMANENTES EN ENTIDADES EXTRANJERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1138, N'562', N'INSTRUMENTOS FINANCIEROS – COBERTURA DE FLUJO DE EFECTIVO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1139, N'563', N'GANANCIA O PÉRDIDA EN ACTIVOS O PASIVOS FINANCIEROS DISPONIBLES PARA LA VENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1140, N'5631', N'GANANCIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1141, N'5632', N'PÉRDIDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1142, N'564', N'GANANCIA O PÉRDIDA EN ACTIVOS O PASIVOS FINANCIEROS DISPONIBLES PARA LA VENTA - COMPRA O VENTA CONVENCIONAL FECHA DE LIQUIDACION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1143, N'5641', N'GANANCIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1144, N'5642', N'PÉRDIDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1145, N'57', N'EXCEDENTE DE REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1146, N'571', N'EXCEDENTE DE REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1147, N'5711', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1148, N'5712', N'INMUEBLES, MAQUINARIA Y EQUIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1149, N'5713', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1150, N'572', N'EXCEDENTE DE REVALUACIÓN – ACCIONES LIBERADAS RECIBIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1151, N'573', N'PARTICIPACIÓN EN EXCEDENTE DE REVALUACIÓN – INVERSIONES EN ENTIDADES RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1152, N'58', N'RESERVAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1153, N'581', N'REINVERSIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1154, N'582', N'LEGAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1155, N'583', N'CONTRACTUALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1156, N'584', N'ESTATUTARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1157, N'585', N'FACULTATIVAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1158, N'589', N'OTRAS RESERVAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1159, N'59', N'RESULTADOS ACUMULADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1160, N'591', N'UTILIDADES NO DISTRIBUIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1161, N'5911', N'UTILIDADES ACUMULADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1162, N'5912', N'INGRESOS DE AÑOS ANTERIORES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1163, N'592', N'PÉRDIDAS ACUMULADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1164, N'5921', N'PÉRDIDAS ACUMULADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1165, N'5922', N'GASTOS DE AÑOS ANTERIORES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1166, N'60', N'COMPRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1167, N'601', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1168, N'6011', N'MERCADERÍAS MANUFACTURADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1169, N'6012', N'MERCADERÍAS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1170, N'6013', N'MERCADERÍAS AGROPECUARIAS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1171, N'6014', N'MERCADERÍAS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1172, N'6018', N'OTRAS MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1173, N'602', N'MATERIAS PRIMAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1174, N'6021', N'MATERIAS PRIMAS PARA PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1175, N'6022', N'MATERIAS PRIMAS PARA PRODUCTOS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1176, N'6023', N'MATERIAS PRIMAS PARA PRODUCTOS PARA PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1177, N'6024', N'MATERIAS PRIMAS PARA PRODUCTOS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1178, N'603', N'MATERIALES AUXILIARES, SUMINISTROS Y REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1179, N'6031', N'MATERIALES AUXILIARES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1180, N'6032', N'SUMINISTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1181, N'6033', N'REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1182, N'604', N'ENVASES Y EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1183, N'6041', N'ENVASES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1184, N'6042', N'EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1185, N'609', N'COSTOS VINCULADOS CON LAS COMPRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1186, N'6091', N'COSTOS VINCULADOS CON LAS COMPRAS DE MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1187, N'6091,1', N'TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1188, N'6091,2', N'SEGUROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1189, N'6091,3', N'DERECHOS ADUANEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1190, N'6091,4', N'COMISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1191, N'6091,5', N'ESTIBAJE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1192, N'6091,9', N'OTROS COSTOS VINCULADOS CON LAS COMPRAS DE MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1193, N'6092', N'COSTOS VINCULADOS CON LAS COMPRAS DE MATERIAS PRIMAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1194, N'6092,1', N'TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1195, N'6092,2', N'SEGUROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1196, N'6092,3', N'DERECHOS ADUANEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1197, N'6092,4', N'COMISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1198, N'6092,5', N'OTROS COSTOS VINCULADOS CON LAS COMPRAS DE MATERIALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1199, N'6093', N'COSTOS VINCULADOS CON LAS COMPRAS DE MATERIALES, SUMINISTROS Y REPUESTOS')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1200, N'6093,1', N'TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1201, N'6093,2', N'SEGUROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1202, N'6093,3', N'DRECHOS ADUANEROS   ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1203, N'6093,4', N'COMISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1204, N'6093,5', N'OTROS COSTOS VINCULADOS CON LAS COMPRAS DE MATERIALES, SUMINISTROS Y REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1205, N'6094', N'COSTOS VINCULADOS CON LAS COMPRAS DE ENVASES Y EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1206, N'6094,1', N'TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1207, N'6094,2', N'SEGUROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1208, N'6094,3', N'DRECHOS ADUANEROS   ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1209, N'6094,4', N'COMISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1210, N'6094,5', N'OTROS COSTOS VINCULADOS CON LAS COMPRAS DE MATERIALES, SUMINISTROS Y REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1211, N'61', N'VARIACIÓN DE EXISTENCIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1212, N'611', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1213, N'6111', N'MERCADERÍAS MANUFACTURADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1214, N'6112', N'MERCADERÍAS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1215, N'6113', N'MERCADERÍAS AGROPECUARIAS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1216, N'6114', N'MERCADERÍAS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1217, N'6115', N'OTRAS MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1218, N'612', N'MATERIAS PRIMAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1219, N'6121', N'MATERIAS PRIMAS PARA PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1220, N'6122', N'MATERIAS PRIMAS PARA PRODUCTOS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1221, N'6123', N'MATERIAS PRIMAS PARA PRODUCTOS PARA PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1222, N'6124', N'MATERIAS PRIMAS PARA PRODUCTOS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1223, N'613', N'MATERIALES AUXILIARES, SUMINISTROS Y REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1224, N'6131', N'MATERIALES AUXILIARES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1225, N'6132', N'SUMINISTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1226, N'6133', N'REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1227, N'614', N'ENVASES Y EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1228, N'6141', N'ENVASES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1229, N'6142', N'EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1230, N'62', N'GASTOS DE PERSONAL, DIRECTORES Y GERENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1231, N'621', N'REMUNERACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1232, N'6211', N'SUELDOS Y SALARIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1233, N'6212', N'COMISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1234, N'6213', N'REMUNERACIONES EN ESPECIE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1235, N'6214', N'GRATIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1236, N'6215', N'VACACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1237, N'622', N'OTRAS REMUNERACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1238, N'623', N'INDEMNIZACIONES AL PERSONAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1239, N'6241', N'CAPACITACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1240, N'625', N'ATENCIÓN AL PERSONAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1241, N'626', N'GERENTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1242, N'627', N'SEGURIDAD Y PREVISIÓN SOCIAL Y OTRAS CONTRIBUCIONES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1243, N'6271', N'RÉGIMEN DE PRESTACIONES DE SALUD')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1244, N'6272', N'RÉGIMEN DE PENSIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1245, N'6273', N'SEGURO COMPLEMENTARIO DE TRABAJO DE RIESGO, ACCIDENTES DE TRABAJO Y ENFERMEDADES PROFESIONALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1246, N'6274', N'SEGURO DE VIDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1247, N'6275', N'SEGUROS PARTICULARES DE PRESTACIONES DE SALUD - EPS Y OTROS PARTICULARES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1248, N'6276', N'CAJA DE BENEFICIOS DE SEGURIDAD SOCIAL DEL PESCADOR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1249, N'6277', N'CONTRIBUCIONES A SENCICO Y SENATI')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1250, N'628', N'REMUNERACIONES AL DIRECTORIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1251, N'629', N'BENEFICIOS SOCIALES DE LOS TRABAJADORES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1252, N'6291', N'COMPENSACIÓN POR TIEMPO DE SERVICIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1253, N'6292', N'PENSIONES Y JUBILACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1254, N'6293', N'OTROS BENEFICIOS POST-EMPLEO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1255, N'6294', N'BOTIQUIN, MEDICINAS, CONSULTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1256, N'6295', N'UNIFORMES DEL PERSONAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1257, N'63', N'GASTOS DE SERVICIOS PRESTADOS POR TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1258, N'631', N'TRANSPORTE, CORREOS Y GASTOS DE VIAJE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1259, N'6311', N'TRANSPORTE, CORREOS Y GASTOS DE VIAJE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1260, N'63111', N'DE CARGA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1261, N'63112', N'DE PASAJEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1262, N'6312', N'CORREOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1263, N'6313', N'ALOJAMIENTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1264, N'6314', N'ALIMENTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1265, N'6315', N'OTROS GASTOS DE VIAJE ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1266, N'632', N'ASESORIA Y CONSULTORIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1267, N'6321', N'ADMINISTRATIVA ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1268, N'6322', N'LEGAL Y TRIBUTARIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1269, N'6323', N'AUDITORIA Y CONTABLE ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1270, N'6324', N'MERCADOTECNIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1271, N'6325', N'MEDIOAMBIENTAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1272, N'6326', N'INVESTIGACIOON Y DESARROLLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1273, N'6327', N'PRODUCCION')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1274, N'6329', N'OTROS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1275, N'633', N'PRODUCCIÓN ENCARGADA A TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1276, N'6331', N'PRODUCCIÓN ENCARGADA A TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1277, N'634', N'MANTENIMIENTO Y REPARACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1278, N'6341', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1279, N'6342', N'ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1280, N'6343', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1281, N'6344', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1282, N'6345', N'ACTIVOS BIOLOGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1283, N'635', N'ALQUILERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1284, N'6351', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1285, N'6352', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1286, N'6353', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1287, N'6354', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1288, N'6356', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1289, N'636', N'SERVICIOS BÁSICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1290, N'6361', N'ENERGÍA ELÉCTRICA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1291, N'6362', N'GAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1292, N'6363', N'AGUA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1293, N'6364', N'TELÉFONO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1294, N'6365', N'INTERNET')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1295, N'6366', N'RADIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1296, N'6367', N'CABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1297, N'6368', N'GPS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1298, N'6369', N'VIGILANCIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1299, N'637', N'PUBLICIDAD, PUBLICACIONES, RELACIONES PÚBLICAS')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1300, N'6371', N'PUBLICIDAD  ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1301, N'6372', N'PUBLICACIONES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1302, N'6373', N'RELACIONES PUBLICAS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1303, N'6381', N'SERVICIOS DE CONTRATISTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1304, N'639', N'OTROS SERVICIOS PRESTADOS POR TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1305, N'6391', N'GASTOS BANCARIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1306, N'6392', N'GASTOS DE LABORATORIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1307, N'6394', N'GASTOS NOTARIALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1308, N'6395', N'GASTOS DE PEAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1309, N'64', N'GASTOS POR TRIBUTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1310, N'641', N'GOBIERNO CENTRAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1311, N'6411', N'IMPUESTO GENERAL A LAS VENTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1312, N'6412', N'IMPUESTO A LAS TRANSACCIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1313, N'6413', N'IMPUESTO TEMPORAL A LOS ACTIVOS NETOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1314, N'6414', N'IMPUESTO A LOS JUEGOS DE CASINO Y MAQUINAS TRAGAMONEDAS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1315, N'6415', N'REGALIAS MINERAS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1316, N'6416', N'CANONES ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1317, N'6419', N'OTROS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1318, N'642', N'GOBIERNO REGIONAL ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1319, N'643', N'GOBIERNO LOCAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1320, N'6431', N'IMPUESTO PREDIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1321, N'6432', N'ARBITRIOS MUNICIPALES Y SEGURIDAD CIUDADANA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1322, N'6433', N'IMPUESTO AL PATRIMONIO VEHICULAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1323, N'6434', N'LICENCIA DE FUNCIONAMIENTO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1324, N'6439', N'OTROS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1325, N'644', N'OTROS GASTOS POR TRIBUTOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1326, N'6441', N'CONTRIBUCION A SENATI')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1327, N'6442', N'CONTRIBUCION A SENCICO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1328, N'6443', N'OTRO ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1329, N'65', N'OTROS GASTOS DE GESTIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1330, N'651', N'SEGUROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1331, N'6511', N'SEGUROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1332, N'652', N'REGALÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1333, N'6521', N'REGALÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1334, N'653', N'SUSCRIPCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1335, N'6531', N'SUSCRIPCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1336, N'654', N'LICENCIAS Y DERECHOS DE VIGENCIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1337, N'6541', N'LICENCIAS Y DERECHOS DE VIGENCIA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1338, N'655', N'COSTO NETO DE ENAJENACIÓN DE ACTIVOS INMOVILIZADOS Y OPERACIONES DISCONTINUADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1339, N'6551', N'COSTO NETO DE ENAJENACIÓN DE ACTIVOS INMOVILIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1340, N'65511', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1341, N'65512', N'ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1342, N'65513', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1343, N'65514', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1344, N'65515', N'ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1345, N'6552', N'OPERACIONES DISCONTINUADAS - ABANDONO E ACTIVOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1346, N'65521', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1347, N'65522', N'ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1348, N'65523', N'INMUEBLE, MAQUINARIA Y EQUIPOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1349, N'65524', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1350, N'65525', N'ACTIVOS BIOLOGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1351, N'656', N'SUMINISTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1352, N'6561', N'COMBUSTIBLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1353, N'6562', N'REPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1354, N'6563', N'LUBRICANTES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1355, N'6564', N'OTROS SUMINISTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1356, N'658', N'GESTIÓN MEDIOAMBIENTAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1357, N'6581', N'GESTIÓN MEDIOAMBIENTAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1358, N'659', N'OTROS GASTOS DE GESTIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1359, N'6591', N'DONACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1360, N'6592', N'SANCIONES ADMINISTRATIVAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1361, N'6599', N'GASTOS VARIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1362, N'66', N'PÉRDIDA POR MEDICIÓN DE ACTIVOS NO FINANCIEROS AL VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1363, N'661', N'ACTIVO REALIZABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1364, N'6611', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1365, N'6612', N'PRODUCTOS TERMINADOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1366, N'6613', N'ACTIVOS NO CORRIENTES MANTENIDOS PARA LA VENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1367, N'66131', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1368, N'66132', N'INMUEBLE, MAQUINARIA Y EQUIPOS ')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1369, N'66133', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1370, N'66134', N'ACTIVOS BIOLOGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1371, N'662', N'ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1372, N'6621', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1373, N'6622', N'ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1374, N'67', N'GASTOS FINANCIEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1375, N'671', N'GASTOS EN OPERACIONES DE ENDEUDAMIENTO Y OTROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1376, N'6711', N'PRÉSTAMOS DE INSTITUCIONES FINANCIERAS Y OTRAS ENTIDADES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1377, N'6712', N'CONTRATOS DE ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1378, N'6713', N'EMISIÓN Y COLOCACIÓN DE INSTRUMENTOS REPRESENTATIVOS DE DEUDA Y PATRIMONIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1379, N'6714', N'DOCUMENTOS VENDIDOS O DESCONTADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1380, N'672', N'PÉRDIDA POR INSTRUMENTOS FINANCIEROS DERIVADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1381, N'673', N'INTERESES POR PRÉSTAMOS Y OTRAS OBLIGACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1382, N'6731', N'PRÉSTAMOS DE INSTITUCIONES FINANCIERAS Y OTRAS ENTIDADES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1383, N'67311', N'INSTITUCIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1384, N'67312', N'OTRAS ENTIDADES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1385, N'6732', N'CONTRATOS DE ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1386, N'6733', N'OTROS INSTRUMENTOS FINANCIEROS POR PAGAR')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1387, N'6734', N'DOCUMENTOS VENDIDOS O DESCONTADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1388, N'6735', N'OBLIGACIONES EMITIDAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1389, N'6736', N'OBLIGACIONES COMERCIALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1390, N'6737', N'OBLIGACIONES TRIBUTARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1391, N'6751', N'DESCUENTOS CONCEDIDOS POR PRONTO PAGO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1392, N'676', N'DIFERENCIA DE CAMBIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1393, N'6761', N'PERDIDA POR DIFERENCIA DE CAMBIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1394, N'677', N'PÉRDIDA POR MEDICIÓN DE ACTIVOS Y PASIVOS FINANCIEROS AL VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1395, N'679', N'OTROS GASTOS FINANCIEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1396, N'6791', N'PRIMAS POR OPCIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1397, N'6792', N'GASTOS FINANCIEROS EN MEDICIÓN A VALOR DESCONTADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1398, N'68', N'VALUACIÓN Y DETERIORO DE ACTIVOS Y PROVISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1399, N'681', N'DEPRECIACIÓN')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1400, N'6811', N'DEPRECIACIÓN DE INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1401, N'68111', N'EDIFICACIONES - COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1402, N'68112', N'EDIFICACIONES - REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1403, N'68113', N'EDIFICACIONES – COSTO DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1404, N'6812', N'DEPRECIACIÓN DE ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO – INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1405, N'68121', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1406, N'6813', N'DEPRECIACIÓN DE ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1407, N'68131', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1408, N'68132', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1409, N'68133', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1410, N'68134', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1411, N'6814', N'DEPRECIACIÓN DE INMUEBLES, MAQUINARIA Y EQUIPO – COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1412, N'68141', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1413, N'68142', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1414, N'68143', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1415, N'68144', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1416, N'68145', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1417, N'68146', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1418, N'6815', N'DEPRECIACIÓN DE INMUEBLES, MAQUINARIA Y EQUIPO – REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1419, N'68151', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1420, N'68152', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1421, N'68153', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1422, N'68154', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1423, N'68155', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1424, N'68156', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1425, N'6816', N'DEPRECIACIÓN DE INMUEBLES, MAQUINARIA Y EQUIPO – COSTOS DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1426, N'68161', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1427, N'68162', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1428, N'6817', N'DEPRECIACIÓN DE ACTIVOS BIOLÓGICOS EN PRODUCCIÓN – COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1429, N'68171', N'ACTIVOS BIOLÓGICOS DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1430, N'68172', N'ACTIVOS BIOLÓGICOS DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1431, N'6818', N'DEPRECIACIÓN DE ACTIVOS BIOLÓGICOS EN PRODUCCIÓN – COSTO DE FINANCIACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1432, N'68181', N'ACTIVOS BIOLÓGICOS DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1433, N'68182', N'ACTIVOS BIOLÓGICOS DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1434, N'682', N'AMORTIZACIÓN DE INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1435, N'6821', N'AMORTIZACIÓN DE INTANGIBLES ADQUIRIDOS – COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1436, N'68211', N'CONCESIONES, LICENCIAS Y OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1437, N'68212', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1438, N'68213', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1439, N'68214', N'COSTOS DE EXPLORACIÓN Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1440, N'68215', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1441, N'68219', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1442, N'6822', N'AMORTIZACIÓN DE INTANGIBLES ADQUIRIDOS – REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1443, N'68221', N'CONCESIONES, LICENCIAS Y OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1444, N'68222', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1445, N'68223', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1446, N'68224', N'COSTOS DE EXPLORACIÓN Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1447, N'68225', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1448, N'68229', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1449, N'6823', N'AMORTIZACIÓN DE INTANGIBLES GENERADOS INTERNAMENTE – COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1450, N'68231', N'CONCESIONES, LICENCIAS Y OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1451, N'68232', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1452, N'68233', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1453, N'68234', N'COSTOS DE EXPLORACIÓN Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1454, N'68235', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1455, N'68239', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1456, N'6824', N'AMORTIZACIÓN DE INTANGIBLES GENERADOS INTERNAMENTE – REVALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1457, N'68241', N'CONCESIONES, LICENCIAS Y OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1458, N'68242', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1459, N'68243', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1460, N'68244', N'COSTOS DE EXPLORACIÓN Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1461, N'68245', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1462, N'68259', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1463, N'683', N'AGOTAMIENTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1464, N'6831', N'AGOTAMIENTO DE RECURSOS NATURALES ADQUIRIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1465, N'684', N'VALUACIÓN DE ACTIVOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1466, N'6841', N'ESTIMACIÓN DE CUENTAS DE COBRANZA DUDOSA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1467, N'6842', N'DESVALORIZACIÓN DE EXISTENCIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1468, N'6843', N'DESVALORIZACIÓN DE INVERSIONES MOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1469, N'685', N'DETERIORO DEL VALOR DE LOS ACTIVOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1470, N'6851', N'DESVALORIZACIÓN DE INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1471, N'68511', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1472, N'6852', N'DESVALORIZACIÓN DE INMUEBLES MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1473, N'68521', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1474, N'68522', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1475, N'68523', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1476, N'68524', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1477, N'68525', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1478, N'68526', N'HERRAMIENTAS Y UNIDADES DE REEMPLAZO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1479, N'6853', N'DESVALORIZACIÓN DE INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1480, N'68531', N'CONCESIONES, LICENCIAS Y OTROS DERECHOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1481, N'68532', N'PATENTES Y PROPIEDAD INDUSTRIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1482, N'68533', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1483, N'68534', N'COSTOS DE EXPLORACIÓN Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1484, N'68535', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1485, N'68536', N'OTROS ACTIVOS INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1486, N'6854', N'DESVALORIZACIÓN DE ACTIVOS BIOLÓGICOS EN PRODUCCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1487, N'68541', N'ACTIVOS BIOLÓGICOS DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1488, N'68542', N'ACTIVOS BIOLÓGICOS DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1489, N'686', N'PROVISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1490, N'6861', N'PROVISIÓN PARA LITIGIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1491, N'68611', N'PROVISIÓN PARA LITIGIOS – COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1492, N'68612', N'PROVISIÓN PARA LITIGIOS – ACTUALIZACIÓN FINANCIERA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1493, N'6862', N'PROVISIÓN POR DESMANTELAMIENTO, RETIRO O REHABILITACIÓN DEL INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1494, N'68621', N'PROVISIÓN POR DESMANTELAMIENTO, RETIRO O REHABILITACIÓN DEL INMOVILIZADO – COSTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1495, N'68622', N'PROVISIÓN POR DESMANTELAMIENTO, RETIRO O REHABILITACIÓN DEL INMOVILIZADO – ACTUALIZACIÓN FINANCIERA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1496, N'6863', N'PROVISIÓN PARA REESTRUCTURACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1497, N'6864', N'PROVISIÓN PARA PROTECCIÓN Y REMEDIACIÓN DEL MEDIO AMBIENTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1498, N'6865', N'PROVISIÓN PARA GASTOS DE RESPONSABILIDAD SOCIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1499, N'6869', N'OTRAS PROVISIONES')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1500, N'69', N'COSTO DE VENTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1501, N'691', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1502, N'6911', N'MERCADERÍAS MANUFACTURADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1503, N'69111', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1504, N'69112', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1505, N'6912', N'MERCADERÍAS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1506, N'69121', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1507, N'69122', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1508, N'6913', N'MERCADERÍAS AGROPECUARIAS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1509, N'69131', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1510, N'69132', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1511, N'6914', N'MERCADERÍAS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1512, N'69141', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1513, N'69142', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1514, N'6915', N'OTRAS MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1515, N'69151', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1516, N'69152', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1517, N'692', N'PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1518, N'6921', N'PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1519, N'69211', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1520, N'69212', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1521, N'6922', N'PRODUCTOS DE EXTRACCIÓN TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1522, N'69221', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1523, N'69222', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1524, N'6923', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1525, N'69231', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1526, N'69232', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1527, N'6924', N'PRODUCTOS INMUEBLES TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1528, N'69241', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1529, N'69242', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1530, N'6925', N'EXISTENCIAS DE SERVICIOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1531, N'69251', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1532, N'69252', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1533, N'6926', N'COSTOS DE FINANCIACIÓN – PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1534, N'69261', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1535, N'69262', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1536, N'693', N'SUBPRODUCTOS, DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1537, N'6931', N'SUBPRODUCTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1538, N'69311', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1539, N'69312', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1540, N'6932', N'DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1541, N'69321', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1542, N'69322', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1543, N'694', N'SERVICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1544, N'6941', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1545, N'6942', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1546, N'70', N'VENTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1547, N'701', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1548, N'7011', N'MERCADERÍAS MANUFACTURADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1549, N'70111', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1550, N'70112', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1551, N'7012', N'MERCADERÍAS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1552, N'70121', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1553, N'70122', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1554, N'7013', N'MERCADERÍAS AGROPECUARIAS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1555, N'70131', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1556, N'70132', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1557, N'7014', N'MERCADERÍAS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1558, N'70141', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1559, N'70142', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1560, N'7015', N'MERCADERÍAS – OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1561, N'70151', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1562, N'70152', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1563, N'702', N'PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1564, N'7021', N'PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1565, N'70211', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1566, N'70212', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1567, N'7022', N'PRODUCTOS DE EXTRACCIÓN TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1568, N'70221', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1569, N'70222', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1570, N'7023', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1571, N'70231', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1572, N'70232', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1573, N'7024', N'PRODUCTOS INMUEBLES TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1574, N'70241', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1575, N'70242', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1576, N'7025', N'EXISTENCIAS DE SERVICIOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1577, N'70251', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1578, N'70252', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1579, N'703', N'SUBPRODUCTOS, DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1580, N'7031', N'SUBPRODUCTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1581, N'70311', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1582, N'70312', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1583, N'7032', N'DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1584, N'70321', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1585, N'70322', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1586, N'704', N'PRESTACIÓN DE SERVICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1587, N'7041', N'PRESTACIÓN DE SERVICIOS TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1588, N'7042', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1589, N'709', N'DEVOLUCIONES SOBRE VENTAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1590, N'7091', N'MERCADERÍAS – TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1591, N'70911', N'MERCADERÍAS MANUFACTURADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1592, N'7091,2', N'MERCADERÍAS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1593, N'70913', N'MERCADERÍAS AGROPECUARIAS Y PISCÍCOLAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1594, N'70914', N'MERCADERÍAS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1595, N'70915', N'MERCADERÍAS – OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1596, N'7092', N'MERCADERÍAS – RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1597, N'70921', N'MERCADERÍAS MANUFACTURADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1598, N'70922', N'MERCADERÍAS DE EXTRACCIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1599, N'70923', N'MERCADERÍAS AGROPECUARIAS Y PISCÍCOLAS')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1600, N'70924', N'MERCADERÍAS INMUEBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1601, N'70925', N'MERCADERÍAS – OTRAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1602, N'7093', N'PRODUCTOS TERMINADOS – TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1603, N'70931', N'PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1604, N'70932', N'PRODUCTOS DE EXTRACCIÓN TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1605, N'70933', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1606, N'7093,4', N'PRODUCTOS INMUEBLES TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1607, N'7093,5', N'EXISTENCIAS DE SERVICIOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1608, N'7094', N'PRODUCTOS TERMINADOS – RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1609, N'7094,1', N'PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1610, N'70942', N'PRODUCTOS DE EXTRACCIÓN TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1611, N'70943', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1612, N'7094,4', N'PRODUCTOS INMUEBLES TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1613, N'70945', N'EXISTENCIAS DE SERVICIOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1614, N'7095', N'SUBPRODUCTOS, DESECHOS Y DESPERDICIOS – TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1615, N'70931', N'SUBPRODUCTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1616, N'70932', N'DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1617, N'7096', N'SUBPRODUCTOS, DESECHOS Y DESPERDICIOS – RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1618, N'70931', N'SUBPRODUCTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1619, N'70932', N'DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1620, N'7097', N'PRESTACIÓN DE SERVICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1621, N'70971', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1622, N'70972', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1623, N'71', N'VARIACIÓN DE LA PRODUCCIÓN ALMACENADA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1624, N'711', N'VARIACIÓN DE PRODUCTOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1625, N'7111', N'PRODUCTOS MANUFACTURADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1626, N'7112', N'PRODUCTOS DE EXTRACCIÓN TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1627, N'7113', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1628, N'7114', N'PRODUCTOS INMUEBLES TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1629, N'7115', N'EXISTENCIAS DE SERVICIOS TERMINADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1630, N'712', N'VARIACIÓN DE SUBPRODUCTOS, DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1631, N'7121', N'SUBPRODUCTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1632, N'7122', N'DESECHOS Y DESPERDICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1633, N'713', N'VARIACIÓN DE PRODUCTOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1634, N'7131', N'PRODUCTOS EN PROCESO DE MANUFACTURA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1635, N'7132', N'PRODUCTOS EXTRAÍDOS EN PROCESO DE TRANSFORMACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1636, N'7133', N'PRODUCTOS AGROPECUARIOS Y PISCÍCOLAS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1637, N'7134', N'PRODUCTOS INMUEBLES EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1638, N'7135', N'EXISTENCIAS DE SERVICIOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1639, N'7138', N'OTROS PRODUCTOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1640, N'714', N'VARIACIÓN DE ENVASES Y EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1641, N'7141', N'ENVASES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1642, N'7142', N'EMBALAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1643, N'715', N'VARIACIÓN DE EXISTENCIAS DE SERVICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1644, N'72', N'PRODUCCIÓN DE ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1645, N'721', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1646, N'7211', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1647, N'722', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1648, N'7221', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1649, N'7222', N'MAQUINARIAS Y OTROS EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1650, N'7223', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1651, N'7224', N'MUEBLES Y ENSERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1652, N'7225', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1653, N'7226', N'EQUIPO DE COMUNICACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1654, N'7227', N'EQUIPO DE SEGURIDAD')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1655, N'7228', N'OTROS EQUIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1656, N'723', N'INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1657, N'7231', N'PROGRAMAS DE COMPUTADORA (SOFTWARE)')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1658, N'7232', N'COSTOS DE EXPLORACIÓN Y DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1659, N'7233', N'FÓRMULAS, DISEÑOS Y PROTOTIPOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1660, N'724', N'ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1661, N'7241', N'ACTIVOS BIOLÓGICOS EN DESARROLLO DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1662, N'7242', N'ACTIVOS BIOLÓGICOS EN DESARROLLO DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1663, N'725', N'COSTOS DE FINANCIACIÓN CAPITALIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1664, N'7251', N'COSTOS DE FINANCIACIÓN – INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1665, N'72511', N'COSTOS DE FINANCIACIÓN – INVERSIONES INMOBILIARIAS – EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1666, N'7252', N'COSTOS DE FINANCIACIÓN – INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1667, N'7252,1', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1668, N'72522', N'MAQUINARIAS Y OTROS EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1669, N'7253', N'COSTOS DE FINANCIACIÓN – INTANGIBLES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1670, N'7254', N'COSTOS DE FINANCIACIÓN – ACTIVOS BIOLÓGICOS EN DESARROLLO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1671, N'72541', N'ACTIVOS BIOLÓGICOS DE ORIGEN ANIMAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1672, N'72542', N'ACTIVOS BIOLÓGICOS DE ORIGEN VEGETAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1673, N'73', N'DESCUENTOS, REBAJAS Y BONIFICACIONES OBTENIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1674, N'731', N'DESCUENTOS, REBAJAS Y BONIFICACIONES OBTENIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1675, N'7311', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1676, N'7312', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1677, N'74', N'DESCUENTOS, REBAJAS Y BONIFICACIONES CONCEDIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1678, N'741', N'DESCUENTOS, REBAJAS Y BONIFICACIONES CONCEDIDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1679, N'7411', N'TERCEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1680, N'7412', N'RELACIONADAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1681, N'75', N'OTROS INGRESOS DE GESTIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1682, N'751', N'SERVICIOS EN BENEFICIO DEL PERSONAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1683, N'752', N'COMISIONES Y CORRETAJES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1684, N'753', N'REGALÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1685, N'754', N'ALQUILERES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1686, N'7541', N'TERRENOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1687, N'7542', N'EDIFICACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1688, N'7543', N'MAQUINARIAS Y EQUIPOS DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1689, N'7544', N'EQUIPO DE TRANSPORTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1690, N'7545', N'EQUIPOS DIVERSOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1691, N'755', N'RECUPERACIÓN DE CUENTAS DE VALUACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1692, N'7551', N'RECUPERACIÓN - CUENTAS DE COBRANZA DUDOSA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1693, N'7552', N'RECUPERACIÓN - DESVALORIZACIÓN DE EXISTENCIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1694, N'7553', N'RECUPERACIÓN – DESVALORIZACIÓN DE INVERSIONES MOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1695, N'756', N'ENAJENACIÓN DE ACTIVOS INMOVILIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1696, N'7561', N'INVERSIONES MOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1697, N'7562', N'ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1698, N'7563', N'INMUEBLES, MAQUINARIA Y EQUIPO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1699, N'7564', N'INTANGIBLES')
GO
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1700, N'7565', N'ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1701, N'757', N'RECUPERACIÓN DE DETERIORO DE CUENTAS DE ACTIVOS INMOVILIZADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1702, N'759', N'OTROS INGRESOS DE GESTIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1703, N'7591', N'SUBSIDIOS GUBERNAMENTALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1704, N'7592', N'RECLAMOS AL SEGURO - INDEMNIZACIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1705, N'76', N'GANANCIA POR MEDICIÓN DE ACTIVOS NO FINANCIEROS AL VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1706, N'761', N'ACTIVO REALIZABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1707, N'7611', N'MERCADERÍAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1708, N'7612', N'PRODUCTOS EN PROCESO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1709, N'7613', N'ACTIVOS NO CORRIENTES MANTENIDOS PARA LA VENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1710, N'762', N'ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1711, N'7621', N'INVERSIONES INMOBILIARIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1712, N'7622', N'ACTIVOS BIOLÓGICOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1713, N'763', N'PARTICIPACIÓN EN LOS RESULTADOS DE SUBSIDIARIAS Y ASOCIADAS BAJO EL MÉTODO DEL VALOR PATRIMONIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1714, N'764', N'INGRESOS POR PARTICIPACIONES EN NEGOCIOS CONJUNTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1715, N'77', N'INGRESOS FINANCIEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1716, N'771', N'GANANCIA POR INSTRUMENTO FINANCIERO DERIVADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1717, N'772', N'RENDIMIENTOS GANADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1718, N'7721', N'DEPÓSITOS EN INSTITUCIONES FINANCIERAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1719, N'7722', N'CUENTAS POR COBRAR COMERCIALES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1720, N'7723', N'PRÉSTAMOS OTORGADOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1721, N'7724', N'INVERSIONES A SER MANTENIDAS HASTA EL VENCIMIENTO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1722, N'7725', N'INSTRUMENTOS FINANCIEROS REPRESENTATIVOS DE DERECHO PATRIMONIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1723, N'773', N'DIVIDENDOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1724, N'775', N'DESCUENTOS OBTENIDOS POR PRONTO PAGO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1725, N'776', N'DIFERENCIA EN CAMBIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1726, N'7761', N'GANANCIA POR DIFERENCIA DE CAMBIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1727, N'777', N'GANANCIA POR MEDICIÓN DE ACTIVOS Y PASIVOS FINANCIEROS AL VALOR RAZONABLE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1728, N'779', N'OTROS INGRESOS FINANCIEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1729, N'7791', N'OTROS INGRESOS FINANCIEROS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1730, N'7792', N'INGRESOS FINANCIEROS EN MEDICIÓN A VALOR DESCONTADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1731, N'78', N'CARGAS CUBIERTAS POR PROVISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1732, N'781', N'CARGAS CUBIERTAS POR PROVISIONES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1733, N'79', N'CARGAS IMPUTABLES A CUENTAS DE COSTOS Y GASTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1734, N'791', N'CARGAS IMPUTABLES A CUENTAS DE COSTOS Y GASTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1735, N'792', N'GASTOS FINANCIEROS IMPUTABLES A CUENTAS DE EXISTENCIAS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1736, N'80', N'MARGEN COMERCIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1737, N'801', N'MARGEN COMERCIAL')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1738, N'81', N'PRODUCCIÓN DEL EJERCICIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1739, N'811', N'PRODUCCIÓN DE BIENES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1740, N'812', N'PRODUCCIÓN DE SERVICIOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1741, N'813', N'PRODUCCIÓN DE ACTIVO INMOVILIZADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1742, N'82', N'VALOR AGREGADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1743, N'821', N'VALOR AGREGADO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1744, N'83', N'EXCEDENTE BRUTO (INSUFICIENCIA BRUTA) DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1745, N'831', N'EXCEDENTE BRUTO (INSUFICIENCIA BRUTA) DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1746, N'84', N'RESULTADO DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1747, N'841', N'RESULTADO DE EXPLOTACIÓN')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1748, N'85', N'RESULTADO ANTES DE PARTICIPACIONES E IMPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1749, N'851', N'RESULTADO ANTES DE PARTICIPACIONES E IMPUESTOS')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1750, N'87', N'PARTICIPACIONES DE LOS TRABAJADORES')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1751, N'871', N'PARTICIPACIÓN DE LOS TRABAJADORES – CORRIENTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1752, N'872', N'PARTICIPACIÓN DE LOS TRABAJADORES – DIFERIDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1753, N'88', N'IMPUESTO A LA RENTA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1754, N'881', N'IMPUESTO A LA RENTA – CORRIENTE')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1755, N'882', N'IMPUESTO A LA RENTA - DIFERIDO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1756, N'89', N'DETERMINACIÓN DEL RESULTADO DEL EJERCICIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1757, N'891', N'UTILIDAD')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1758, N'892', N'PÉRDIDA')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1759, N'90', N'')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1760, N'91', N'COSTOS POR DISTRIBUIR.')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1761, N'92', N'COSTOS DE PRODUCCIÓN.')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1762, N'93', N'COSTO DE SERVICIO')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1763, N'94', N'GASTOS ADMINISTRATIVOS.')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1764, N'95', N'GASTOS DE VENTAS.')
INSERT [dbo].[tblPlanContable] ([idPlanContable], [Codigo], [Cuenta]) VALUES (1765, N'96', N'GASTOS FINANCIEROS')
SET IDENTITY_INSERT [dbo].[tblPlanContable] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProveedores] ON 

INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (357, N'20448484816', N'SERVICENTRO PANAMERICANO S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (358, N'20100041953', N'RIMAC SEGUROS ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (359, N'20447980186', N'REPRESENTACIONES Y DISTRIBUCIONES VIROXA SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (360, N'20370508659', N'GRIFO JHP EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (361, N'10308365609', N'MÁXIMO DÁVILA BUSTAMANTE')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (362, N'20516134811', N'GRAN HOTEL SANTO DOMINGO SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (363, N'10416946839', N'FABIOLA APAZA QQUELCA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (364, N'10433418471', N'DIEGO JOHEL SALAZAR APAZA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (365, N'20318171701', N'J.CH. COMERCIAL S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (366, N'20102309422', N'ASOCIACIÓN DE PRODUCTORES AGRICOLAS MERCADO SANTA ANITA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (367, N'20512081372', N'NEGOCIACIONES KIO SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (368, N'20517774929', N'GAS PERU HUASCARAN SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (369, N'10013270061', N'CHAMBI VILLEGAS RICHARD MARTIN')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (370, N'10402783121', N'YENY LUZ CATACORA ZELA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (371, N'20293774308', N'TRACTO CAMIONES USA EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (372, N'15119101571', N'MEDINA INCAHUANACO FRANCISCO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (373, N'20496895861', N'REPRESENTACIONES DE NEUMATICOS SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (374, N'20406512178', N'AUTOACCESORIOS LOS GEMELOS SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (375, N'20448431453', N'IMPORT & EXPORT PRO-PERU SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (376, N'20447999952', N'FFINIXX LLANTAS GPO. COPARI S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (377, N'10410852085', N'MARIA ISABEL PACURI MAMANI')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (378, N'20448352073', N'CENTRO DE INSPECCIÓN TECNICA VEHICULAR DEL SUR SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (379, N'10023678875', N'SIMON ANCCO LIPA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (380, N'20448685552', N'LAS MAGNOLIAS SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (381, N'20454073143', N'LA POSITIVA VIDA SEGUROS Y REASEGUROS S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (382, N'20455808147', N'MOVIL CENTER SUPERCAR EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (383, N'10220630191', N'ORLANDO VENTURA CASAS')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (384, N'10442327560', N'LERMA MAMANI LUIS FERNANDO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (385, N'10024270659', N'CLAUDIO CCALLE PACORICONA ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (386, N'10024242965', N'WILFREDO QUISPE GUTIERREZ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (387, N'10023932542', N'MANSILLA ARIAS GEORGINA ANGELICA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (388, N'20448673627', N'MULTISERVIS OLLANTA EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (389, N'20448473610', N'GRUPO CDS SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (390, N'20498672478', N'GRUPO GAMARRA S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (391, N'10416434242', N'MARITZA SUCA CONDORI')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (392, N'10400984439', N'MARTA YANA ROQUE')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (393, N'10023948619', N'WAGNER SALMON ANTONIETA SATURNINA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (394, N'20405410983', N'REENCAUCHADORA FORTALEZA EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (395, N'10023672494', N'FELIX CASTILLO ZEVALLOS ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (396, N'10437833261', N'JUAN RONALD CAMARGO SUMARI ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (397, N'20507073183', N'MEGATRACK SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (398, N'20448040004', N'PROMATSUR S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (399, N'10023733949', N'LEONCIO MAMANI APAZA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (400, N'10107214386', N'ROGER SALLUCA HUARAYA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (401, N'20190783457', N'LIBRERÍA ANDINA EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (402, N'20448715052', N'DISTRIBUCIONES ELISET SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (403, N'20517252558', N'COVISUR S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (404, N'20511465061', N'CONCESIONARIA VIAL DEL PERU S.A. ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (405, N'20550372640', N'RUTAS DE LIMA S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (406, N'20550033519', N'CONCESIONARIA PERUANA DE VIAS S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (407, N'20523621212', N'LINEA AMARILLA S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (408, N'20406486231', N'ANDINA DE TURISMO  E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (409, N'20448523579', N'INFORMATICOS TECNOLOGIA AL LIMITE SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (410, N'20100130204', N'BBVA CONTINENTAL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (411, N'20214552532', N'CAMARA DE COMERCIO INDUSTRIA PRODUCCION TURISMO Y SERVICIOS')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (412, N'20519968445', N'PETROLERA DE TACNA EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (413, N'20532717311', N'CORPORACIÓN ALAN S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (414, N'20100210909', N'LA POSITIVA SEGUROS Y REASEGUROS S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (415, N'20448738184', N'CORPORACIÓN FYB SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (416, N'10023685499', N'MARIA QUISPE JANANPA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (417, N'20406258361', N'LS AUTOMOTRIZ JULIACA EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (418, N'10023858954', N'PAYE CUADROS TEODORO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (419, N'20448744745', N'SERVICENTRO FAVORITA CAR SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (420, N'20364169982', N'GRIFO MONTESINOS EMGESA SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (421, N'20448663826', N'BD MERC SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (422, N'20447849047', N'MIA MARKET AUTOSERVICIOS MULTIPLES SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (423, N'10451678804', N'KARINA INES QUENAYA MEJIA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (424, N'10296753136', N'MADELEYNE BRIGIDA SULLCA HUAQUISTO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (425, N'20363803572', N'EDITORIAL & DISTRIBUIDORA SAN MARCOS SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (426, N'20448213201', N'CLINICA PERUANO BRASILERO EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (427, N'20448710336', N'BRECYA MAQUINARIAS EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (428, N'20121178509', N'REENCAUCHADORA AREQUIPA SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (429, N'20273244442', N'TV CABLE SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (430, N'10447291199', N'APAZA FERNANDEZ BLANCA RUKMINI')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (431, N'20406529658', N'GRIFO LOS AMIGOS SRL ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (432, N'10434166859', N'MARTHA VICTORIA ROSTIGO MAYTA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (433, N'20448440282', N'SERVICENTRO PETROPOLIS SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (434, N'20406302017', N'SOLUCIONES HIDRAULICAS SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (435, N'20448264531', N'TECNIMANGUERAS COMPANY PERU SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (436, N'10024340177', N'QUILLUYA FLORES LUIS ALBERTO ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (437, N'10024299274', N'JAVIER CCALLI PACORICONA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (438, N'10435294966', N'WILVER JAIME CUEVA COLQUE')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (439, N'20448630146', N'DIJESUR DISTRIBUCIONES SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (440, N'20363615148', N'FERRETERIA HERRAMIENTAS MEXICO SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (441, N'10024453478', N'JORGE GUTIERREZ DIAZ ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (442, N'20392829335', N'INVERSIONES & IMPORTACIONES WILLIAMS EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (443, N'20447936951', N'DISTRIBUCIONES YOSHIRA SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (444, N'20448035698', N'FEISER SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (445, N'20406475973', N'STEPHANY EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (446, N'10019962542', N'MARGARITA PACORICONA APAZA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (447, N'20448815600', N'KITTY BIANK IMPORTACIONES SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (448, N'20454552386', N'RELINO SUR SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (449, N'20552508042', N'REENCAUCHADORA E INVERSIONES CHAPI SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (450, N'20454796765', N'REPUESTOS VILCA SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (451, N'10295357920', N'CELIA LIMPI QUISPE')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (452, N'10804427282', N'MADELENY DAVILA ZUBIA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (453, N'10415502619', N'DIONICIO DONATO CHITE LAZARTE')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (454, N'20129917891', N'COMERCIALIZADORA DE COMBUSTIBLES FERNANDEZ HERMANOS SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (455, N'20539320298', N'HIDRAULICA SAN JOSE SRL')
GO
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (456, N'20448352235', N'REPRESENTACIONES Y MULTISERVICIOS C&J SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (457, N'20449325983', N'ESTACIÓN DE SERVICIOS MONTALVO EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (458, N'20467534026', N'AMÉRICA MOVIL PERÚ SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (459, N'20536557858', N'HOMECENTERS PERUANOS S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (460, N'10023783491', N'JUSTINA HUANCO MAMANI')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (461, N'20448694977', N'GRIFO SERVICENTRO SARITA SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (462, N'20228985237', N'ESTACION DE SERVICIOS SAN JOSE ESPINAR CUSCO SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (463, N'20457577223', N'EXPRESO SAN MIGUEL EMPRESA DE TRANSPORTES SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (464, N'10214787593', N'LILI MARLENI VASQUEZ MORON')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (465, N'20507621814', N'TURBO CENTER SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (466, N'20551494617', N'ARQ PROYECTOS EM SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (467, N'20448150870', N'PERUVIAN BUSSINES COMPANY S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (468, N'10425793697', N'ANTONIO GUILLERMO VIZCARDO DURAN ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (469, N'20406428541', N'GRIFO SERVICENTRO NUEVA DELFHI EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (470, N'20326660516', N'LOS GUISOS AREQUIPEÑOS EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (471, N'10024297077', N'HILDA YANA TACCA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (472, N'20286155317', N'JULSA ANGELES TIURS S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (473, N'10024160438', N'PARIZACA CAÑAZACA HILDA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (474, N'20120837851', N'FERRER COHSGUILA SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (475, N'20448893741', N'A&M FERRETEX EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (476, N'10448651148', N'NOEMI MAMANI CONDORI')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (477, N'20114967417', N'ROBHI GRIFOS S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (478, N'10470773516', N'MELENDRES RIVERA FLORESMILDA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (479, N'20448458904', N'EMPRESA FESAC SERVICIO DE ESTIBAJE SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (480, N'10222858289', N'JORGE CASTRO BARBARAN ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (481, N'20448686958', N'GRIFO JVC EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (482, N'20322136189', N'SEMIN SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (483, N'10297002398', N'MEDINA BUSTINZA DE CAMACHO LUCY BEATRIZ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (484, N'20447841496', N'GRIFOS KALIFORNIA SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (485, N'20406538053', N'SERVICENTRO HUAYNAROQUE EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (486, N'20523470761', N'LA POSITIVA SANITAS S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (487, N'10482106426', N'REBECA ATAUCUSI QUISPE')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (488, N'20516225964', N'GUIARDINO DEL PERU S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (489, N'20520078101', N'ESTACIÓN DE SERVICIOS SHESSELL SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (490, N'20100202396', N'AUTOMOTRIZ ANDINA S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (491, N'10004282464', N'CLOTILDE MAMANI DE CHURQUI')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (492, N'20454252315', N'GRIFO SANTA RITA EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (493, N'20406273599', N'MARKET COMPUTER EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (494, N'10474197811', N'CHUNGA CHOQUEHUAYTA MARIA ISABEL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (495, N'20447832071', N'PERUDENTUS S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (496, N'20101281371', N'DUN & BRADSTREET S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (497, N'20448561233', N'TECH-BEE IMPORT EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (498, N'10421706030', N'DIANETH HANCCO MAMANI')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (499, N'20448687768', N'LIGHT CENTER S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (500, N'20447975000', N'MULTIVENTAS STMA TRINIDAD EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (501, N'20447996261', N'AUTOSERVICIOS Y LUBRICANTES LIDER EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (502, N'10024322713', N'TIMOTEA FLORES HUMPIRI ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (503, N'20448335497', N'DISTRIBUIDORA DE BATERIAS CASTRO EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (504, N'20100016681', N'IMPORTACIONES HIRAOKA SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (505, N'20519913896', N'ESTACIÓN DE SERVICIO MOQUEGUA SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (506, N'20455186120', N'SERVICENTRO EL ARABE EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (507, N'20447604109', N'GRIFO LOS ANGELES SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (508, N'20100043140', N'SCOTIABANK PERU S.A.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (509, N'20448435521', N'SURTILLANTAS & ACCESORIOS S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (510, N'20511130124', N'INTERSUR CONCESIONES S.A')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (511, N'20406527019', N'SERVICENTRO CASBEL S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (512, N'20448496407', N'CITV ALTO ANDINA SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (513, N'10074951461', N'LUIS ALBERTO SATO VELASQUÉZ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (514, N'20454926561', N'LUBRICENTRO VIRGEN DEL ROSARIO SRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (515, N'20129879433', N'SUMER SUMINISTROS Y SERVICIOS SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (516, N'20454430868', N'TRANSPORTES HERMANOS CHASQUI SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (517, N'20160123517', N'COOP. DE SERV. ESPECIALES ´´PACHACUTEC´´ LTDA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (518, N'20448704441', N'IMPORT Y NEGOCIACIONES ´´LOS OJITOS´´ SAC.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (519, N'10015457312', N'ACARAPI APAZA EULOGIA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (520, N'10408718479', N'COLQUE GONZALES MARIA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (521, N'20448220754', N'L Y R INVERSIONES  NEGOCIACIONES SRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (522, N'20449395175', N'SERVICENTRO VANGER SAC.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (523, N'20452630291', N'ESTIBADORES ZDM SRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (524, N'10023844503', N'ZENOBIA CONDORI QUISPE')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (525, N'20321818723', N'TECNICA Y DESARROLLO EIRL. ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (526, N'10455879171', N'CHIPANA AQUINO GUMERCINDA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (527, N'10023759808', N'MARINO JUAN ESPINOZA ALARCON')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (528, N'20558291011', N'SHERATONCAR SERVICIOS MULTIPLES SRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (529, N'10093068055', N'PALOMINO HERRERA ANASTACIO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (530, N'10406053593', N'CANCINO RENU PERDOMO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (531, N'20549603794', N'INVERSIONES H  P SOLUCIONES EN EPI SAC.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (532, N'20493130391', N'CONFECCIONES ESTHER S EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (533, N'20406310460', N'REPUESTOS MAX EIRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (534, N'20205557181', N'INSTITUTO OFTALMOSALUD  SRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (535, N'10431050027', N'RODRIGUEZ CAMPO ZORAIDA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (536, N'20514131130', N'ENVASES GEMELOS PERU S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (537, N'20448655483', N'C N PROVEEDORES BELLAVISTA EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (538, N'20454277067', N'GENESIS DEL SUR SAC.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (539, N'20544938518', N'SITER INTEGRAL SAC.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (540, N'10296010931', N'PALOMINO VALDIVIA JOVVANA ALEJANDRA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (541, N'20448655645', N'LUBRICANTES Y REPUESTOS EL DOBLE EIRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (542, N'10293841328', N'SULLCA MAMANI GREGORIO DOROTEO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (543, N'10450451687', N'MENDOZA ZAPANA LIDIA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (544, N'20453919651', N'PERUMOTOR H.G. SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (545, N'20448731091', N'&SACFLORES AUTOMOTRIZ EIRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (546, N'20509460532', N'LIDERCON PERU SAC.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (547, N'20448413391', N'INGENERIA CONSTRUCCION Y MINERIA SCRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (548, N'20448791239', N'COMERCIAL  ¨¨ARB- B&Y¨¨ EIRLtda')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (549, N'20523596196', N'SYSTECH PERUANA SRL ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (550, N'20447657482', N'PERNO CENTRO JUNIOR S.C.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (551, N'20448036660', N'HOME CENTER SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (552, N'10024185996', N'QUINO HURTADO PABLO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (553, N'20363350179', N'GRIFOS UNIDOS E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (554, N'20100070031', N'VOLVO PERU S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (555, N'20330033313', N'PERUANA DE ESTACIONES DE SERVICIOS S.A.C.')
GO
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (556, N'20100164958', N'EMPRESA MUNICIPAL DE MERCADOS ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (557, N'20101973922', N'ASOCIACIÓN AUTOMOTRIZ DEL PERÚ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (558, N'20542630664', N'VEDMOTOR SCRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (559, N'20448783481', N'SEÑOR DE LOS MILAGROS S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (560, N'20448838561', N'CONSTRUCTORA FERRETERA COMERCIAL G&J SRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (561, N'10439109829', N'MAMANI RAMOS YHON ADRIAN ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (562, N'20448479227', N'DISTRIBUCIONES VIDRIOS Y ALUMINIOS PAREDES EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (563, N'10449520179', N'YANET QUISPE COLLANTES')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (564, N'20448494617', N'GRUPO TRAMAC SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (565, N'20505769148', N'FAMEDI SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (566, N'10411087188', N'SUERO VIZA FRANCISCO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (567, N'20548970068', N'IMPORTACIONES ANJJER SUMAQ LLANTAS EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (568, N'20508074281', N'EXPRESO GRAEL S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (569, N'20552136749', N'FRENO CENTRO AMERICA S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (570, N'20363544615', N'SERVICENTRO SAROHI S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (571, N'10073689720', N'ANCHAYA CAMPANELLA ANA ROSA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (572, N'20448422543', N'COMERCIAL FERRETERO CONSTRUCTOR E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (573, N'20511820732', N'ESTACION DE SERVICIOS ALEXANDER  S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (574, N'20331066703', N'ECKERD PERU S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (575, N'20529258276', N'R V MEDIC SALUD OCUPACIONAL S O S.R.Ltda')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (576, N'20447981662', N'SOL DEL MISTI S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (577, N'20457911615', N'CASA CERAMICA GRANDE S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (578, N'10015539289', N'MONTESINOS GALLEGOS EVA DAYANA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (579, N'10076954831', N'VERA MAMANI FELIX ALEJANDRO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (580, N'10293768809', N'OSORIO SUPA AGUSTIN')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (581, N'20447932071', N'PERU DENTUS SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (582, N'20448261604', N'J&DC PROVEEDORES Y SERVICIOS GENERALES E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (583, N'10023955178', N'FLORES MAMANI PAULINA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (584, N'10456669315', N'SEJE MAMANI BEATRIZ SILVIA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (585, N'20548869936', N'CORPORACION PERUANA LUNAK S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (586, N'20454435312', N'ISAMOTRIZ PUMACOTA S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (587, N'10429603060', N'RAMOZ MAMANI NILTON EFRAIN')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (588, N'20448263488', N'GRUPO COPYSUR S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (589, N'20252947265', N'FERRETERIA SAUL PAREDES EIRL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (590, N'10415708128', N'VASQUEZ SOTO YOSELINE ROSA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (591, N'20557437623', N'MILTIREPUESTOS Y MANGUERAS S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (592, N'20406372147', N'SERVICENTRO ALRUMA S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (593, N'10293697758', N'OCHOA DEZA PABLO CESAR')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (594, N'20448218776', N'R&M JULIACA S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (595, N'10019958944', N'MAMANI CAHUAPAZA DE BLANCO VICTORIA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (596, N'20537464543', N'DEVI ANDES S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (597, N'20100167892', N'SERVIGRIFOS S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (598, N'20138645607', N'GRIFO SANTO DOMINGO DE GUZMAN S.R.LTDA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (599, N'20109980855', N'GRIFO DENNIS SAC.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (600, N'20469727085', N'ESTACION DE SERVICIO SANTA ANITA S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (601, N'10024070170', N'PALOMINO HUAMAN ALIPIO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (602, N'10024325895', N'CATY COYLA JAVIER TEOFILO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (603, N'20447730406', N'BRACHS FRENOS Y REPUESTOS E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (604, N'20448715214', N'M.H TINTAYA S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (605, N'20406435751', N'FRENOS PAUCAR E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (606, N'10024373342', N'ASTULLI TACCA DANIEL VICENTE')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (607, N'20447979927', N'J&H GENESIS S.C.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (608, N'20478004126', N'INVERSIONES IMAR SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (609, N'20115251644', N'COPECA E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (610, N'20447895405', N'DISTRIBUCIONES VIDRIOS Y ALUMINIOS SAN ISIDRO S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (611, N'20448013376', N'GRIFOS & INVERSIONES SAN JOSE S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (612, N'20509162515', N'FERRETERIA REPUESTOS RENZO S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (613, N'10024332093', N'MAMANI SACACA FRANCISCO DE ASIS')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (614, N'20447963761', N'CORPORACION DIMASUR S.C.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (615, N'10406895365', N'SULLCA HUAQUISTO OMAR')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (616, N'10806701039', N'CRUZ EGUILUZ JUAN CARLOS')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (617, N'20512090878', N'EPAL NEGOCIOS EIRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (618, N'10292467996', N'CACERES MONROY GUILLERMO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (619, N'10100418342', N'ROJAS MALLQUI ISABEL CELINDA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (620, N'20486107902', N'MOVILGAS S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (621, N'20452453909', N'GRIFO SUBTANJALLA S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (622, N'20452694698', N'SERVICENTRO POSBEN S.A.C')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (623, N'20448444199', N'REPUESTOS Y EMPAQUES E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (624, N'20406325149', N'PERUVIAN HARDWARE E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (625, N'20448023843', N'CORPORACION VALENCIA S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (626, N'20542697149', N'IMPRESORES JULIACA S.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (627, N'20328495474', N'JOSE CARLOS MEDINA VELASQUEZ S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (628, N'20545784158', N'AGUKI COMBUSTIBLES LIQUIDOS S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (629, N'20418140551', N'ALBIS O BOTICAS ARCANGEL O TGI')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (630, N'20517216241', N'SURVIAL S.A.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (631, N'10024269511', N'CASTILLO PORTO ROSA BERTHA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (632, N'10402013295', N'QUISPE BENAVENTE ANTONIA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (633, N'10449252964', N'MAMANI ARAPA ELIA ELVA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (634, N'20455774145', N'SERVICIOS FLECHITA E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (635, N'20498136606', N'NIZA REGIÓN SUR S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (636, N'20447797144', N'NEXOS TIENDAS')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (637, N'20100216346', N'SUR MOTORS S.A')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (638, N'20100686814', N'OLVA COURIER S.A.C')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (639, N'10459357144', N'ALIAGA LINDO FIORELLA EVA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (640, N'20428254687', N'INVERSIONES PICORP S.A.C')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (641, N'20448739407', N'NEGOCIACIONES MULTIPLES RAMIS E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (642, N'20542747341', N'CORPORACION R & R INGENIERIA Y CONSTRUCCION E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (643, N'10073030205', N'NAYRA HUAMANTUMA JUAN ALEJANDRO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (644, N'10804169992', N'CCOILLO PINTO DEMETRIO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (645, N'20520586947', N'ESTACION DE SERVICIOS JESUS MI SALVADOR S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (646, N'20455938601', N'MATIZADOS ELOY E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (647, N'10296791208', N'LEON CASTILLO RAUL RICHARD')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (648, N'10409245426', N'KECARA APAZA NESTOR FREDY')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (649, N'20119207640', N'LIZANDRO NIEVES Y CIA. S.A.C')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (650, N'20448405614', N'FULMITEX EXTINTORES Y SEÑALIZACION S.A.C.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (651, N'10447627545', N'HUAYANAY RAMOS FREDY')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (652, N'10024405465', N'APAZA MAMANI REYMUNDO')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (653, N'20497979821', N'FRE WAGENMOTORS SCRLTDA')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (654, N'10295609449', N'SILVA PAZ MIGUEL ANGEL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (655, N'20543265056', N'MOTORED SOCIEDAD ANONIMA')
GO
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (656, N'20448160590', N'R. CASTRO E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (657, N'20563574080', N'BALANZATRONIT SERVICIOS E.I.R.L.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (658, N'20497472335', N'SERVICENTRO Y TRANSPORTES ESPINAR EIRL.')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (659, N'20115293568', N'RURAL ALIANZA EMPRESA DE PROPIEDAD SOCIAL')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (660, N'10802973590', N'CAHUANA CHAMBI BENITO LEONIDAS')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (661, N'10293559380', N'PADILLA DE MAMANI FELIPA FELICITAS')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (662, N'10451230889', N'SUCA PORTUGAL RONNY VLADIMIR')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (663, N'20109110877', N'AUTOMOTRIZ LEO S.R.L')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (664, N'20498610871', N'INDUSTRIA Y ACCESORIOS HIDRAULICAS SRL ')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (670, N'20602111602', N'BUSINESS ACOMPANYING SAC')
INSERT [dbo].[tblProveedores] ([idProveedor], [Ruc], [RazonSocial]) VALUES (671, N'2533452345', N'vdasvdfvs')
SET IDENTITY_INSERT [dbo].[tblProveedores] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRegistroCompras] ON 

INSERT [dbo].[tblRegistroCompras] ([idLibroCompras], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PDocumento], [PNombreRazonSocial], [Cuenta], [Descripcion], [BaseImponible], [IGV], [NoGravada], [Descuentos], [ImporteTotal], [Dolares], [TipoCambio], [Percepcion], [Destino], [DescripcionDestino], [CuentaDestino], [Pgo], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [ConstanciaMonto], [ConstanciaReferencia]) VALUES (17, 1, N'', N'2018-11-29', N'2018-11-29', N'01', N'001', N'3871', N'06', N'20542744163', N'', N' GRAFICO COLOR JULIACA SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA ', N'6599', N'GASTOS VARIOS', CAST(42.37 AS Decimal(18, 2)), CAST(7.63 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', N'GASTOS VARIOS', N'4212', N'11', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[tblRegistroCompras] ([idLibroCompras], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PDocumento], [PNombreRazonSocial], [Cuenta], [Descripcion], [BaseImponible], [IGV], [NoGravada], [Descuentos], [ImporteTotal], [Dolares], [TipoCambio], [Percepcion], [Destino], [DescripcionDestino], [CuentaDestino], [Pgo], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [ConstanciaMonto], [ConstanciaReferencia]) VALUES (18, 1, N'', N'2018-01-12', N'2018-01-12', N'01', N'001', N'158', N'06', N'20601836263', N'', N' INVERSIONES LAS BRAVAS S.C.R.L. ', N'6599', N'GASTOS VARIOS', CAST(550.85 AS Decimal(18, 2)), CAST(99.15 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', N'GASTOS VARIOS', N'4212', N'12', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'')
SET IDENTITY_INSERT [dbo].[tblRegistroCompras] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRegistroVentas] ON 

INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (1, 1, N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'', N'')
INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (2, 1, N'', CAST(N'2020-12-12' AS Date), CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'', N'')
INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (3, 1, N'', CAST(N'2020-12-12' AS Date), CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'', N'')
INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (4, 2, N'', CAST(N'2020-12-13' AS Date), CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'', N'')
INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (5, 1, N'1', CAST(N'2020-12-12' AS Date), CAST(N'1900-01-01' AS Date), N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'1', N'1', CAST(N'1900-01-01' AS Date), N'1', N'', N'1', N'1', N'1', CAST(N'2020-12-12' AS Date), CAST(1.00 AS Decimal(18, 2)), N'1', N'1111')
INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (6, 2, N'12', CAST(N'2020-12-13' AS Date), CAST(N'1900-01-01' AS Date), N'1', N'1', N'1', N'1', N'', N'1', N'1', N'1', CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'1', N'1', CAST(N'1900-01-01' AS Date), N'1', N'1', N'1', N'1', N'1', CAST(N'2020-12-12' AS Date), CAST(1.00 AS Decimal(18, 2)), N'1', N'11111')
INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (7, 1, N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'', N'')
INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (8, 1, N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'', N'')
INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (9, 1, N'', CAST(N'2019-01-07' AS Date), CAST(N'2019-01-07' AS Date), N'03', N'006', N'353', N'', N'', N'VENTAS DEL DIA', N'', N'', CAST(0.00 AS Decimal(18, 2)), CAST(84.75 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(15.25 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'1212', N'1', CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'', N'')
INSERT [dbo].[tblRegistroVentas] ([idLibroVentas], [Mes], [NReg], [FechaEmision], [FechaPago], [CTipo], [CSerie], [CNDocumento], [PTipo], [PNumero], [PNombreRazonSocial], [Cuenta], [Descripcion], [ValorExportacion], [BaseImponible], [ImporteTotalExonerada], [ImporteTotalInafecta], [IGV], [ImporteTotal], [TC], [Dolares], [IgvRetencion], [CuentaDestino], [Pago], [ReferenciaFecha], [ReferenciaTipo], [ReferenciaSerie], [ReferenciaNumeroDocumento], [Codigo], [ConstanciaNumero], [ConstanciaFechaPago], [DetraccionSoles], [Referencia], [Observacion]) VALUES (10, 1, N'', CAST(N'2019-01-08' AS Date), CAST(N'2019-01-08' AS Date), N'03', N'006', N'354', N'', N'', N'VENTAS DEL DIA', N'', N'', CAST(0.00 AS Decimal(18, 2)), CAST(63.56 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(11.44 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'1212', N'1', CAST(N'1900-01-01' AS Date), N'', N'', N'', N'', N'', CAST(N'1900-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), N'', N'')
SET IDENTITY_INSERT [dbo].[tblRegistroVentas] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRoles] ON 

INSERT [dbo].[tblRoles] ([idRol], [Nombre]) VALUES (1, N'superadmin')
INSERT [dbo].[tblRoles] ([idRol], [Nombre]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[tblRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTipoComprobante] ON 

INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (1, N'00', N'Otros (especificar)')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (2, N'01', N'Factura')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (3, N'02', N'Recibo por Honorarios')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (4, N'03', N'Boleta de Venta')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (5, N'04', N'Liquidación de compra')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (6, N'05', N'Boleto de compañía de aviación comercial por el servicio de transporte aéreo de pasajeros')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (7, N'06', N'Carta de porte aéreo por el servicio de transporte de carga aérea')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (8, N'07', N'Nota de crédito')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (9, N'08', N'Nota de débito')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (10, N'09', N'Guía de remisión - Remitente')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (11, N'10', N'Recibo por Arrendamiento')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (12, N'11', N'Póliza emitida por las Bolsas de Valores, Bolsas de Productos o Agentes de Intermediación por operaciones realizadas en las Bolsas de Valores o Productos o fuera de las mismas, autorizadas por CONASEV')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (13, N'12', N'Ticket o cinta emitido por máquina registradora')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (14, N'13', N'Documento emitido por bancos, instituciones financieras, crediticias y de seguros que se encuentren bajo el control de la Superintendencia de Banca y Seguros')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (15, N'14', N'Recibo por servicios públicos de suministro de energía eléctrica, agua, teléfono, telex y telegráficos y otros servicios complementarios que se incluyan en el recibo de servicio público')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (16, N'15', N'Boleto emitido por las empresas de transporte público urbano de pasajeros')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (17, N'16', N'Boleto de viaje emitido por las empresas de transporte público interprovincial de pasajeros dentro del país')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (18, N'17', N'Documento emitido por la Iglesia Católica por el arrendamiento de bienes inmuebles')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (19, N'18', N'Documento emitido por las Administradoras Privadas de Fondo de Pensiones que se encuentran bajo la supervisión de la Superintendencia de Administradoras Privadas de Fondos de Pensiones')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (20, N'19', N'Boleto o entrada por atracciones y espectáculos públicos')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (21, N'20', N'Comprobante de Retención')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (22, N'21', N'Conocimiento de embarque por el servicio de transporte de carga marítima')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (23, N'22', N'Comprobante por Operaciones No Habituales')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (24, N'23', N'Pólizas de Adjudicación emitidas con ocasión del remate o adjudicación de bienes por venta forzada, por los martilleros o las entidades que rematen o subasten bienes por cuenta de terceros')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (25, N'24', N'Certificado de pago de regalías emitidas por PERUPETRO S.A')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (26, N'25', N'Documento de Atribución (Ley del Impuesto General a las Ventas e Impuesto Selectivo al Consumo, Art. 19º, último párrafo, R.S. N° 022-98-SUNAT).')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (27, N'26', N'Recibo por el Pago de la Tarifa por Uso de Agua Superficial con fines agrarios y por el pago de la Cuota para la ejecución de una determinada obra o actividad acordada por la Asamblea General de la Comisión de Regantes o Resolución expedida por el Jefe de la Unidad de Aguas y de Riego (Decreto Supremo N° 003-90-AG, Arts. 28 y 48)')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (28, N'27', N'Seguro Complementario de Trabajo de Riesgo')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (29, N'28', N'Tarifa Unificada de Uso de Aeropuerto')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (30, N'29', N'Documentos emitidos por la COFOPRI en calidad de oferta de venta de terrenos, los correspondientes a las subastas públicas y a la retribución de los servicios que presta')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (31, N'30', N'Documentos emitidos por las empresas que desempeñan el rol adquirente en los sistemas de pago mediante tarjetas de crédito y débito')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (32, N'31', N'Guía de Remisión - Transportista')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (33, N'32', N'Documentos emitidos por las empresas recaudadoras de la denominada Garantía de Red Principal a la que hace referencia el numeral 7.6 del artículo 7° de la Ley N° 27133 – Ley de Promoción del Desarrollo de la Industria del Gas Natural')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (34, N'34', N'Documento del Operador')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (35, N'35', N'Documento del Partícipe')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (36, N'36', N'Recibo de Distribución de Gas Natural')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (37, N'37', N'Documentos que emitan los concesionarios del servicio de revisiones técnicas vehiculares, por la prestación de dicho servicio')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (38, N'50', N'Declaración Única de Aduanas - Importación definitiva                 ')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (39, N'52', N'Despacho Simplificado - Importación Simplificada                        ')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (40, N'53', N'Declaración de Mensajería o Courier                                         ')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (41, N'54', N'Liquidación de Cobranza                                                     ')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (42, N'87', N'Nota de Crédito Especial')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (43, N'88', N'Nota de Débito Especial')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (44, N'91', N'Comprobante de No Domiciliado                                                 ')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (45, N'96', N'Exceso de crédito fiscal por retiro de bienes                           ')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (46, N'97', N'Nota de Crédito - No Domiciliado')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (47, N'98', N'Nota de Débito - No Domiciliado')
INSERT [dbo].[tblTipoComprobante] ([idTipoComprobante], [Numero], [Descripcion]) VALUES (48, N'99', N'Otros -Consolidado de Boletas de Venta')
SET IDENTITY_INSERT [dbo].[tblTipoComprobante] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUsuarios] ON 

INSERT [dbo].[tblUsuarios] ([idUsuario], [Usuario], [Contrasenia], [Nombre], [RolId]) VALUES (1, N'USER01', N'password1', N'Abrán Supo Tito', 1)
INSERT [dbo].[tblUsuarios] ([idUsuario], [Usuario], [Contrasenia], [Nombre], [RolId]) VALUES (2, N'USER02', N'password2', N'Soyla Vaca del Campo', 2)
SET IDENTITY_INSERT [dbo].[tblUsuarios] OFF
GO
ALTER TABLE [dbo].[tblPermisosRoles]  WITH CHECK ADD  CONSTRAINT [tblPermisosRolesRefenciaRol] FOREIGN KEY([RolId])
REFERENCES [dbo].[tblRoles] ([idRol])
GO
ALTER TABLE [dbo].[tblPermisosRoles] CHECK CONSTRAINT [tblPermisosRolesRefenciaRol]
GO
ALTER TABLE [dbo].[tblPermisosRoles]  WITH CHECK ADD  CONSTRAINT [tblPermisosRolesReferenciaPermiso] FOREIGN KEY([PermisoId])
REFERENCES [dbo].[tblPermisos] ([idPermiso])
GO
ALTER TABLE [dbo].[tblPermisosRoles] CHECK CONSTRAINT [tblPermisosRolesReferenciaPermiso]
GO
/****** Object:  StoredProcedure [dbo].[EditarProductos]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------EDITAR

create proc [dbo].[EditarProductos]
@nombre nvarchar (100),
@descrip nvarchar (100),
@marca nvarchar (100),
@precio float,
@stock int,
@id int
as
update Productos set Nombre=@nombre, Descripcion=@descrip, Marca=@marca, Precio=@precio, Stock=@stock where Id=@id
GO
/****** Object:  StoredProcedure [dbo].[EliminarProducto]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------ELIMINAR
create proc [dbo].[EliminarProducto]
@idpro int
as
delete from Productos where Id=@idpro
GO
/****** Object:  StoredProcedure [dbo].[InsetarProductos]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--------------------------INSERTAR 
create proc [dbo].[InsetarProductos]
@nombre nvarchar (100),
@descrip nvarchar (100),
@marca nvarchar (100),
@precio float,
@stock int
as
insert into Productos values (@nombre,@descrip,@marca,@precio,@stock)
GO
/****** Object:  StoredProcedure [dbo].[sp_all_proveedor]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_all_proveedor]
AS
	SELECT
		idProveedor AS ID,
		Ruc AS RUC,
		RazonSocial as NOMBRE
	FROM tblProveedores;
GO
/****** Object:  StoredProcedure [dbo].[sp_all_registro_ventas]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_all_registro_ventas]
AS
	SELECT * FROM tblRegistroCompras
GO
/****** Object:  StoredProcedure [dbo].[sp_all_tipo_comprobante]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_all_tipo_comprobante]
AS
	SELECT
		idTipoComprobante,
		Numero,
		Descripcion,
		CONCAT(Numero, ' - ', Descripcion) AS Detail
	FROM tblTipoComprobante
GO
/****** Object:  StoredProcedure [dbo].[sp_all_user]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_all_user]
AS
	SELECT * FROM
		tblUsuarios
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_user]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_delete_user]
	@idUsuario int
AS
	DELETE FROM
		tblUsuarios
	WHERE
		idUsuario = @idUsuario
GO
/****** Object:  StoredProcedure [dbo].[sp_destroy_proveedor]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_destroy_proveedor]
	@id int
AS
	DELETE FROM
		tblProveedores
	WHERE idProveedor = @id;
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_proveedor]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insert_proveedor]
	@ruc varchar(11),
	@RazonSocial text
AS
	INSERT INTO tblProveedores (Ruc, RazonSocial) VALUES (@ruc, @RazonSocial)
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_registro_compras]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insert_registro_compras]
	@Mes int,
	@NReg text,
	@FechaEmision text,
	@FechaPago text,
	@CTipo text,
	@CSerie text,
	@CNDocumento text,
	@PTipo text,
	@PNumero text,
	@PDocumento text,
	@PNombreRazonSocial text,
	@Cuenta text,
	@Descripcion text,
	@BaseImponible decimal(18,2),
	@IGV decimal(18,2),
	@NoGravada decimal(18,2),
	@Descuentos decimal(18,2),
	@ImporteTotal decimal(18,2),
	@Dolares decimal(18,2),
	@TipoCambio decimal(18,2),
	@Percepcion decimal(18,2),
	@Destino text,
	@DescripcionDestino text,
	@CuentaDestino text,
	@Pgo text,
	@Codigo text,
	@ConstanciaNumero text,
	@ConstanciaFechaPago date,
	@ConstanciaMonto decimal(18,2),
	@ConstanciaReferencia text
AS   

	INSERT INTO tblRegistroCompras VALUES
		(@Mes, @NReg, @FechaEmision, @FechaPago, @CTipo, @CSerie, @CNDocumento, @PTipo, @PNumero, @PDocumento,
		@PNombreRazonSocial, @Cuenta, @Descripcion, @BaseImponible, @IGV, @NoGravada, @Descuentos, @ImporteTotal,
		@Dolares, @TipoCambio, @Percepcion, @Destino, @DescripcionDestino, @CuentaDestino, @Pgo, @Codigo,
		@ConstanciaNumero, @ConstanciaFechaPago, @ConstanciaMonto, @ConstanciaReferencia)
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_registro_ventas]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insert_registro_ventas]
	@Mes int,
	@NReg text,
	@FechaEmision date,
	@FechaPago date,
	@CTipo text,
	@CSerie text,
	@CNDocumento text,
	@PTipo text,
	@PNumero text,
	@PNombreRazonSocial text,
	@Cuenta text,
	@Descripcion text,
	@ValorExportacion decimal(18,2),
	@BaseImponible decimal(18,2),
	@ImporteTotalExonerada decimal(18,2),
	@ImporteTotalInafecta decimal(18,2),
	@IGV decimal(18,2),
	@ImporteTotal decimal(18,2),
	@TC decimal(18,2),
	@Dolares decimal(18,2),
	@IgvRetencion decimal(18,2),
	@CuentaDestino text,
	@Pago text,
	@ReferenciaFecha date,
	@ReferenciaTipo text,
	@ReferenciaSerie text,
	@ReferenciaNumeroDocumento text,
	@Codigo text,
	@ConstanciaNumero text,
	@ConstanciaFechaPago date,
	@DetraccionSoles decimal(18,2),
	@Referencia text,
	@Observacion text
AS   

	INSERT INTO tblRegistroVentas VALUES
		(@Mes, @NReg, @FechaEmision, @FechaPago, @CTipo, @CSerie, @CNDocumento, @PTipo, @PNumero, @PNombreRazonSocial, @Cuenta, @Descripcion,
		@ValorExportacion, @BaseImponible, @ImporteTotalExonerada, @ImporteTotalInafecta, @IGV, @ImporteTotal, @TC, @Dolares, @IgvRetencion,
		@CuentaDestino, @Pago, @ReferenciaFecha, @ReferenciaTipo, @ReferenciaSerie, @ReferenciaNumeroDocumento, @Codigo, @ConstanciaNumero,
		@ConstanciaFechaPago, @DetraccionSoles, @Referencia, @Observacion)
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_user]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insert_user]
	@Usuario varchar(50),
	@Contrasenia text,
	@Nombre varchar(255),
	@RolId int
AS
	INSERT INTO tblUsuarios
		(Usuario, Contrasenia, Nombre, RolId)
	VALUES
		(@Usuario, @Contrasenia, @Nombre, @RolId)
GO
/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_login]
	@Usuario varchar(50),
	@Contrasenia varchar(255)
AS
	SELECT * FROM
		tblUsuarios
	WHERE
		Usuario = @Usuario
	AND
		Contrasenia = @Contrasenia
GO
/****** Object:  StoredProcedure [dbo].[sp_show_name_cuenta]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_show_name_cuenta]
	@codigo varchar(150)
AS
	SELECT
		Cuenta
	FROM
		tblPlanContable
	WHERE
		Codigo = @codigo
GO
/****** Object:  StoredProcedure [dbo].[sp_show_name_proveedor]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_show_name_proveedor]
	@ruc varchar(11)
AS
	SELECT
		RazonSocial
	FROM
		tblProveedores
	WHERE
		Ruc = @ruc
GO
/****** Object:  StoredProcedure [dbo].[sp_show_proveedor]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_show_proveedor]
	@ruc varchar(11)
AS
	SELECT
		*
	FROM
		tblProveedores
	WHERE
		Ruc = @ruc
GO
/****** Object:  StoredProcedure [dbo].[sp_show_user]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_show_user]
	@Usuario varchar(50)
AS
	SELECT * FROM
		tblUsuarios
	WHERE
		Usuario = @Usuario
GO
/****** Object:  StoredProcedure [dbo].[sp_update_proveedor]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_update_proveedor]
	@Id int,
	@ruc varchar(11),
	@RazonSocial text
AS
	UPDATE tblProveedores SET Ruc = @ruc, RazonSocial = @RazonSocial WHERE idProveedor = @Id
GO
/****** Object:  StoredProcedure [dbo].[sp_update_user]    Script Date: 25/07/2020 10:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_update_user]
	@idUsuario int,
	@Usuario varchar(50),
	@Contrasenia text,
	@Nombre varchar(255),
	@RolId int
AS
	UPDATE tblUsuarios
	SET
		Usuario = @Usuario,
		Contrasenia = @Contrasenia,
		Nombre = @Nombre,
		RolId = @RolId
	WHERE
		idUsuario = @idUsuario
GO
USE [master]
GO
ALTER DATABASE [SISCONT] SET  READ_WRITE 
GO
