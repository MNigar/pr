/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [ShopManagement]    Script Date: 2/11/2021 2:55:11 PM ******/
CREATE DATABASE [ShopManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShopManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShopManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ShopManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopManagement] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ShopManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopManagement] SET  MULTI_USER 
GO
ALTER DATABASE [ShopManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopManagement] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopManagement', N'ON'
GO
ALTER DATABASE [ShopManagement] SET QUERY_STORE = OFF
GO
USE [ShopManagement]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ShopManagement]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/11/2021 2:55:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/11/2021 2:55:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/11/2021 2:55:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogProducts]    Script Date: 2/11/2021 2:55:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Date] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.LogProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/11/2021 2:55:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[UserId] [int] NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Count] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[SoldedCount] [int] NOT NULL,
	[SoldedTotal] [decimal](18, 2) NOT NULL,
	[ExpireDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/11/2021 2:55:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/11/2021 2:55:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202102101140073_addfs', N'WindowsProject.Migrations.Configuration', 0x1F8B0800000000000400ED5DDB6EE4B8117D0F907F10F494045EB7ED79D918DDBB986D8F0323E30BA6BD9BBC19B444B795E8D29128AF1B8B7C591EF249F98590BAF22EEADE368C05166D522C16AB0E8BC5228BF3BFFFFC77F9E36BE05B2F304EBC285CD9A7C727B605432772BD70BBB253F4F4DDF7F68F3FFCFE77CB2F6EF06AFD527EF7897C875B86C9CA7E466877BE5824CE330C40721C784E1C25D1133A76A26001DC68717672F2E7C5E9E902621236A66559CB6F6988BC00667FE03FD751E8C01D4A817F1DB9D04F8A725CB3C9A85A372080C90E387065FFCD0BDDE8D7E42E8EFE011D747C0110F80924109340F015D9D667DF0398AB0DF49F6C0B84618400C23C9FFF9CC00D8AA370BBD9E102E0DFEF77107FF704FC04166339AF3F371DD6C91919D6A26E589272D20445414B82A79F0A392DF8E69DA46D5772C492FC82258EF664D4993457F61A20B88DE2BD6DF19D9DAFFD987C28083BD7CE71D9F2C862EB8F2A80601C91FF8EAC75EAA33486AB10A62806FE9175973EFA9EF357B8BF8FFE09C35598FA3ECD266614D73105B808D3DFC118EDBFC1A782F92BD7B6166CBB05DFB06A46B5C9877515A24F67B675833B078F3EAC5040896083A218FE058630C68375EF0042300E090D98C951E89DEB8BFCBFEC0DC30ECF26DBBA06AF5F61B845CF2B1BFFB4AD4BEF15BA6549C1C1CFA187271F6E84E2143675B2C1BCA649D3A0381A37E0C5DB6663E4A8E13FDDD4C133E81BF4B3FAE4D9DBE513E9B8A87BA831731947C1B7C8AFDB55750FF720DE424CE73E527CB089D2D8E1385B2E6A806A615BB1D916B545C30FD0CE0BDA1205CD03D3D3B98B3DA7E2F6023A5E007CDBBA8BF1AF622DFBDEB6360E2004DB53C7AB45DC9BC3E728843769F008E3F1A51AE115B51FBB9DAC094F23F25DE80EC14C46E81E03DB1F4EC74AD3579BB5BEB6AF346D4ADB571A4763D6302F69802D9494B775660361FC5059C59A37BE4EB0CBC20732BBACE3ED6BB4D52D1A75B58C3DB1566050F2495B16C93C9632472A4AAA09CD175321B0C4D6F65AC84AF177F0BF8A961F4B99DA1EC690B41BC48CE7DAEE4B6600A338EE9257880C6FA8EA3EF0EF7B8F3805A37895ADAC176F5995E66D18D35092176D435523370E75752FEB9073D7D63290561F5641D9D734BBB2340EA7E8E74B003C7FF45E322776FC5E4092FC1AC5EEF87E721F233782C34C0C47EB9545ED2CD646AB8F5DE34DADC2EC0DE42666D4E96F38BE282F50CA1855DF96B3DAFFEBEE214A7912FC47538E080D2937A4E281D06658A94B85C588AAEAB510D19A69BB1CD56D3F1625B5ED1BC6BF1CC2D5BD8089137BBB3CE03CB2259ECF0477F2555B6F6679BBA0D9EF0EE3B19A9950A9CF2A31B19D6C456EBDDA5A09D2EAC33E28FB1AC769D5824CBE20362E413CE425AB9309AC3E2749E47859EFECC4AC4370EC58BE84AED5148FCBC547C5F3B01031A0BC1D8610E66165FF491091866C358B6AB2757890A57B6AF310BC0D2FA00F11B43E3BF9C9E01A240E70451D61F9B86C09462D8C096C804F0283781E78211221EE858EB7037E03F75C3BC3C941F8AA7AE06B2EE00E8604D70DFA30E99A3E281059A87AE244D624A1E58282971E75427842050F75AC82824715ED33879D3A82DB88E6F951A7627E02D4A9F461D235E58DCD023A6E93A682866AC756032377167854A8C1A68A6D75817027C0C88734015CE4233732516C947916C0481C53958A755E6AAD66DA8F34B755BAE39C3760ADD4EC4F0040B55EDE8CC5A240A33530B2604E4F9B25DBDC74437377B3250E6B2ABB258EDEA4E7592D161B58D3EA568CB23581654043A2E2C5DCAE0D09315E1453018C1FF6C1C38BDAA6AAF429DBB3D6CACCA31893004B16BFD5237C2048891298004FE2684D3A2D8F482600531E8F205789710B189741C6E768770D42B08501265A5D3416C25C786445A42B29822EBCDA09F50D44EC06D783896DD59110219C20AC7E2C95FA8442A05159A50612D41D23918FCAE96F20520486040239881B1AD7AB988C04BD86371022609191C8E734D7984281204FEABA17F599EA4A180F4D838854C539AD4201E30631288A108D28DE0AB183351084783B4314843E44621624A1F9AF81A89184322C6220D20E72E08F4D4529E8F6EC26BB768AEF62166946AFD8A79B48B1C3E065C71EA2009AF6A0A6BB506A108C45D08843B3EF1C110EB44552E041B52332DA13B5478464176426CDAE22A8E9290420F7F00D7CFCF683175CF371544F1F80888356F99D4D9E27C56BB17A69862B71189BC4A51968790253793C55DD7291675E1505CB8522456B790D763B2FDC52295B4589B5C9F3B5D6DF6DDA272F05398D85C3C892F7CFAA9E501463EF8CAB2586D085975E9C209224F608C8A1D8DA0D84CFE4FE9DC2CF28FB145C385167A50B523621BFF366FA1CB663955B510BF7128F97309B0D1D8A1E80A4A94592E9800F62C951E63AF2D32054FBF8EAD6F9E124DD3E2F31A7501EE1D334CA3291CA72C14940D8140872177663AC268DF4ACB1659DB5AC581D0C94AC6C79A83AA68FF2683ABA233E35B5E21A344DA82832A75146286822AAA88586133AC387E187AE6821A7FC8E3823A2BC68ACF9A4A44227F230A4E88AB6F48A7C1E915E517130F3BD76A18734EBE556BA835957361D67CA73075B0C20F5675E6A9AD439053B7595C7171AFE069828439811E63AB1444A79C5C1C05AE59D76867416DC690F6779B3435DBDAA0BFD8CDD2A0BCDE91417F6692A4551CB1547B2D6B4A2515DB667C854A5E3C37FDCB5AB0C18D3545441E4D9A622BD231F7042AAA30E06D352D7789CC939E49A308C4BC75C81A64931152DE8097363DC4931139CF3C8C58040CE02F6ED212C6F36F7CA32AA5284200EFF49D57B15CCE18236CB2280D2FCF88E1051C93F2149A8D18BE766D1947D826090E9F378F32F7FED7B90F865E507D720F49E6082F23BDBF6D9C9E919F766CFE1BC9FB34812D79704A0648FE8B0FA9AE0E2B947A4DA78B5BC653E450EE0BC83F005C4CE3388FF1080D73FD294DA3F4D93F1AA65A5F5F32F1FF26E785525E35738A3BE0A5DF8BAB27FCB9A9D5B577F7FA85B1E59B7319EA1E7D689F5EF7EB9E9EEB8CFB1980E2D6FD56F58E21B2EFDF444BF02D03C2DFA4F2C0905F18D96EE6498175A7AAABDFDCB19EFC30848DFAA309EBE74E39E3398CB433465A16AD8ABFBDE801CD7024912C75DFC1B35672DB67BF2E17D407A383F827D4CA1172DE6C1845E94984711FA51E21E3EE8B7B874C6E818EB0CFBB481A931C95BB5B0245D12D9DFC7249BD960CFE69349B2D47B4D9B59E64BBB9CEAF701D88EABC20879C2F5E5CEA93378850B9D13E61168EE9598E0C7EA90F9FBCE327D5BE86C24D4D4F7B1A7CBCC6CA3CB815277DF4EE69B59AE6EAF34B73974AE38D99D57E16F2CDF767E6B41DF539E322972428BA13DF13C509B61982DDBCB68CCA5FAA90C474BBDBF918CD7B9325CA77746A7C2C99B018961DEEA5CA9AA46E81C303B75AA04E7B791832AA632F07A92E696EEB599A5F9E1FDCA761F23ACD97CFBAD492154649EEA124F653D5476B0312DB5F2703559A9D231D4C97A0649ABCA9C55196979868D3A9DB5219B55D6852E574B96EEAACC7695119766184D9208CB23924D5731C87C9565751D5E9A6B0B66157B3CD9B5EF83CB6215D2CE661DDC0859AA5DF5284E7DFE6AE501A6A0B6D3E66443ACCD60BF14D376C31BD7DC0C94432AA48D3626C9360A61983C51F12A21F685A87FED0FFB6089B7AD49907FFB2F840EE30555DF5C854F51E98C711C959F70470CD7100117BB489F63E43D0107E16A072649F668EA2FC04F2139067E84EE55789BA25D8AF09061F0E8330B1071EA74FD67C9B02CCFCBDBEC382A196208984D8F1C43DD863FA59EEF567C5F4A0E91142488B7589CDB105D22727EB3DD57946E84840115A1427C95937B0F839D8F8925B7E106BCC02EBC61E87D855BE0ECEF8A1BA16A22CD8A60C5BEBCF0C036064152D0A8DBE33F3186DDE0F587FF031EAB3F7FF4720000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202102110655375_editProductproperty', N'WindowsProject.Migrations.Configuration', 0x1F8B0800000000000400ED5DDB6EE4B8117D0F907F10F494045EB7ED79D918DDBB986DDB8191F105D3DE4DDE0C5AA2DB4A74E94894B78D45BE2C0FF9A4FC42485D7917756F0F8C05166D512C168B8787C5224BF3BFFFFC77F9E33EF0AD5718275E14AEECD3E313DB82A113B95EB85DD9297AFEEE7BFBC71F7EFFBBE5A51BECAD5FCAF73E91F770CD3059D92F08EDCE178BC4798101488E03CF89A3247A46C74E142C801B2DCE4E4EFEBC383D5D402CC2C6B22C6BF9350D9117C0EC0FFCE73A0A1DB84329F06F2217FA49F11C976C32A9D62D0860B2030E5CD97FF34237FA35B98FA37F40071D5F00047E0209C42210DC23DBFAEC7B006BB581FEB36D81308C104058E7F39F13B84171146E373BFC00F80F6F3B88DF7B067E028BBE9CD7AF9B76EBE48C746B51572C45396982A2A0A5C0D34F859D167CF54ED6B62B3B624B5E628BA337D2EBCC9A2B7B0D10DC46F19B6DF18D9DAFFD98BC28183B1F9DE3B2E691C5961F5500C13822FF1D59EBD447690C57214C510CFC23EB3E7DF23DE7AFF0ED21FA270C5761EAFBB49A58515CC63CC08FB0FC1D8CD1DB57F85C287FEDDAD682ADB7E02B56D5A83A79B7AE43F4E9CCB66E71E3E0C987150A28136C5014C3BFC010C6B8B3EE3D4008C6219101333B0AAD736D91FF97AD61D8E1D9645B3760FF05865BF4B2B2F14FDBBAF2F6D02D9F141AFC1C7A78F2E14A284E6153231BAC6B9A34758A93710B5EBD6DD6474E1AFED34D1D3C83BE423F2B4F5EBC5D3E918E8BB2C71A335771147C8DFCBA5E55F6F800E22DC4721E22C50B9B288D1D4EB3E5A206A816B6959A6D515B54FC00EDBCA02D51D0DC31BD9CFBD8732A6D2FA0E305C0B7ADFB18FF2AD6B2EF6D6BE30022B0BD74BC5AC4BD357C8942789B064F301EDFAA115E51FBA9DB894D781991EF4277086532410F18D8FE68637CB9DF7931C40E440D23FCFBC12393A0338BD60CD997464B9654D268C9B3C6AA615DD200939D54B77546A7307EAC08B6D68D2F13285E784146F13ADDBE445BDDFA5317CBD4134B050525AFB455915082543952504A4D68BD98024125B6B4D79A589ABF832B57D4FC5815D5D41A43526F9015211FEDBE6206E0D77157CFC2640353AB8E205AB117CFAC4A7A1B861A4AF1223754257272A88B7BB143AE5D5B6620B53E5841D9D6341BBC340EA768E732009E3F7A2B993F3C7E2B20497E8D62777C97BB0FC98DE07B13E268BDB2A89DC59AB4FAF01A4FB50ADA1BC84DCCA4D3EF707A515EA05431AABCAD66B5FFD7DD4394EA24F88FA61A1119526D48C12391CDA8523F151623AAA8D742448F4CDBE5A8AEFBB128A9B96F18FF720857F702264EECEDF2D8F5C84C3C1F0577F2555B6F66795ED0EC7787F158CD2854EAB34A28B61357E4ECD5962548AD0F7E50B6358ED3AA05997C416C5C8278C84B562713587D4E92C8F1B2D6D9895987E0D8BE5C86AED5148FCBCD47C5F3B01131A0BC1D8610D66165FF493091466C358B6AB1757890957B6AF310BC0B2FA00F11B43E3BF921E31A240E70C531C2F671D92718B53026B0013E090CE279E0854884B8173ADE0EF80DDA73F50C2707D1AB6A812FB9803B18125C378C8749D3F49983A842D51267B2260B2D1714BCF4A813C2132A78A86315143CAA689F39ECD411DC4634CF8F3A95F213A04E351E264D53DED82CA0E336692A68A8766C353072678147851A6CAAD856170877028CBC4B13C045DE73238A62A3CCB30046E298AA8658E7A5D6C34CFB91E65CA53BCE79076CA5567F0200AAC7E5DD3016051A2DC1C882393D394BB6B9E986E6EEB425766B2ADE127B6FD2F2AC8CC506D6B4632B46D99AC0322091A87431E7B52121C69B622A80F1DD3E787851DB54D578CAF6ACF560E6518C4980258BDFEA113E10A4440B4C8027B1B7268D9647241380298F47905BC9B8068CCB20E34BB4BB0121D8C2000BADEE2C0B612EDCB322D2951441177ED889F40D44EC06D783896DD59110219C20AC7EAC94FA84429051B1528308EA8E91A847E5F4370829024382801CC40D95EB554C26825EC31B0411B0C844E4739AAB4CA140B02775DD8B7A4D75258C87A64144AAD29C1E4201E30631284A108D289E85D8CE1A1842BC9D211A421F22310B92D0FAD740D458421916313069073BF0C7A6A215747B76935D3BA577318B34BD57ECD34DACD8A1F3B2630FD1004D7B50D35D28D509861134E6D0EC3B478403CD480A3CA87644467BA2F68890EC82CCACD9D504B53C8501E41EBE818FDFBEF3826B3ECED0D3072062A7557E6793E749E95AAC5E9AEE4A1CC62673693A5A9EC0541E4F55B65CE4495CC583E54291EDB5BC01BB9D176EA9ECAFE289B5C953BFD6DF6DDAE74105B98C85C3D892F7CFAA96501463EF8C2B2544E8C22B2F4E10C9377B02E4506CED06C26B72FF4EE167946D0A2E9C3866A50B525621BFF36AFA74B863955B511BF70AF797289B751D8A1E80A4AA45F2F2800F62C951E63AF2D32054FBF8EADAF9E1245D3F7F622EA13CC2A76594CF4429CB056701615320D85DD88DB1236934CE1A2EEB3CCA8AD5C1609095350F758CE9A33C5A8EEE884F2DADB8064D0B2A1E99CB282314B41055D442A3099D2CC4E84317B4B0537E479C3151FE68ACF9A49442E70431A2E882B6F28AD420515E51602E8F4E03A2C5D1CF0F863D6A877CC845A2DC987758249455C72110EE988C81B7FE044D2D933AF56089407918A2D16F806937042931979325563A3058AB7CDDCE90CE4245EDE12CAF76A86B61951EC0B060F9B00503E6D7FF19F2CB1FB55CBF242B572B19D5D57D464CF5747CF88FBB1296E1675A8A2A243DDB54A4F7F7034E48750CC3605AEA2A8F3339875C13867110990BD5B428A6A0853C616E8C3B296682731E071910C859F8BF3D84E5D5E65E59461D142124C4BF52B55E8586B810D0B208C7347F154888CFE4AF9094D6E8D573B3D8CC5B8260908DE7F1E65FFEDAF720F1CBCA176E40E83DC304E537C0EDB393D333EE634287F3619F4592B8BE249C25FBBA0F3B5E135C63F788551B2FAAB7CCCEC8019C3710BE82D87901F11F02B0FF232DA9FD3773325DB5AAB4FE2ECD87BD1B3EF792E92B9C785F872EDCAFECDFB26AE7D6F5DF1FEB9A47D65D8C67E8B97562FDBB5FA6BB3BEE77624CBB96D7EAD72DF1E332FDC689FEA640F3B4E83FB12412C48FC77417C37C3A66F061173F1DE3E2DFA839EFACFD273DBE0D3E917E44C39809E8CA3DC9804B903455A1AAD8ABF9DED81E97CC2419ED43C35A0CB0BC5B480FE792B05F79E8258BF992432F49CCD71AFA49E2BEC8D06F9DEA8CD131962CF69B0BA66492D76AC1245D32ECBF8D49363361CFE6DE49D2E77B4D9B59E64BBB64EF6F03B01D5785111298EB5BA753A7160B374D274C70D05C7831C18FD52125F91B4B416E316623A1A6BE283E5DCA689BB11C28A7F8FDA4E4992511F7CABF9B63CC1587C4F30EF83B4B049E9F2DE80BD453666B4EC818DAC3D303E50CC334DE5EA431D7D04F451C2DC7FD9DA4E2CE957A3BBD333A154EDE0D480C136AE7CAA13542E78069B353655EBF8FE45831C7821F2769D2EB9B36E535BF07B0B2DDA7088F6CBEFDD6E4362A52627519B1B2162A1E6CCC97AD3C5C4DBAACB40F7516A14136AD329956265A9EFAA3CEB36D48B39535A14B2293E5E12AD37065C2A5A94F9364E8F28864F3680C527265E96687977FDB4259C51E4F7683FCE0D26B857CB8593B3742FA6CD77114A73E7F4BF3007363DB8DE6645DAC69B05FEE6BBBEE8D4B370325B70AF9ACDA2E191961980456F15622F685A87FD110FB6089B7AD45907FDF30840EE30555EF5C87CF51E98C711A95AF70470C37100117BB489F63E43D0307E162072649F635D75F809F42720CFC04DDEBF02E45BB14E12EC3E0C9671620E2D4E9DACFB274599D9777D97154324417B09A1E3986BA0B7F4A3DDFADF4BE921C222944106FB138B7216389C8F9CDF6AD92742BE41EA80415E6AB9CDC0718EC7C2C2CB90B37E01576D10D43EF0BDC02E7EDBEB85CAA16D23C10ACD997171ED8C620480A19757DFC27C6B01BEC7FF83FD337A269D8730000, N'6.4.4')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Status]) VALUES (1, N'Qida', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Status]) VALUES (2, N'Qida', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Status]) VALUES (3, N'Geyim', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Status]) VALUES (4, N'Bilmiremr', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [CreatedUserId], [ProductId], [Count], [Price], [CreatedDate]) VALUES (1, 2, 1, 5, CAST(24.00 AS Decimal(18, 2)), CAST(N'2021-02-10T17:42:47.990' AS DateTime))
INSERT [dbo].[Customers] ([Id], [CreatedUserId], [ProductId], [Count], [Price], [CreatedDate]) VALUES (2, 3, 1, 3, CAST(24.00 AS Decimal(18, 2)), CAST(N'2021-02-10T17:51:56.513' AS DateTime))
INSERT [dbo].[Customers] ([Id], [CreatedUserId], [ProductId], [Count], [Price], [CreatedDate]) VALUES (3, 3, 4, 2, CAST(22.00 AS Decimal(18, 2)), CAST(N'2021-02-10T17:53:53.297' AS DateTime))
INSERT [dbo].[Customers] ([Id], [CreatedUserId], [ProductId], [Count], [Price], [CreatedDate]) VALUES (4, 3, 5, 1, CAST(4464.00 AS Decimal(18, 2)), CAST(N'2021-02-10T17:53:45.793' AS DateTime))
INSERT [dbo].[Customers] ([Id], [CreatedUserId], [ProductId], [Count], [Price], [CreatedDate]) VALUES (5, 2, 3, 3, CAST(224.00 AS Decimal(18, 2)), CAST(N'2021-02-11T11:20:47.940' AS DateTime))
INSERT [dbo].[Customers] ([Id], [CreatedUserId], [ProductId], [Count], [Price], [CreatedDate]) VALUES (6, 2, 2, 2, CAST(24.00 AS Decimal(18, 2)), CAST(N'2021-02-11T11:20:19.980' AS DateTime))
INSERT [dbo].[Customers] ([Id], [CreatedUserId], [ProductId], [Count], [Price], [CreatedDate]) VALUES (7, 2, 7, 1, CAST(24.00 AS Decimal(18, 2)), CAST(N'2021-02-11T11:44:20.833' AS DateTime))
INSERT [dbo].[Customers] ([Id], [CreatedUserId], [ProductId], [Count], [Price], [CreatedDate]) VALUES (8, 2, 9, 1, CAST(224.00 AS Decimal(18, 2)), CAST(N'2021-02-11T14:40:57.877' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[LogProducts] ON 

INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (1, 1, 1, N'kkkmmk', CAST(N'2021-02-10T17:17:30.907' AS DateTime), 4)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (2, 1, 1, N'ffrf', CAST(N'2021-02-10T17:17:50.907' AS DateTime), 4)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (3, 1, 1, N'TTGTG', CAST(N'2021-02-10T17:23:15.147' AS DateTime), 4)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (4, 3, 3, N'Just', CAST(N'2021-02-10T17:32:40.823' AS DateTime), 4)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (5, 5, 2, N'rrrr', CAST(N'2021-02-11T09:59:20.937' AS DateTime), 3)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (6, 6, 2, N'3333', CAST(N'2021-02-11T11:05:03.833' AS DateTime), 4)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (7, 4, 2, N'33', CAST(N'2021-02-11T11:05:12.580' AS DateTime), 4)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (8, 6, 2, N'yyhh', CAST(N'2021-02-11T11:14:07.647' AS DateTime), 4)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (9, 6, 2, N'juuj', CAST(N'2021-02-11T11:14:21.197' AS DateTime), 3)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (10, 4, 2, N'jiu', CAST(N'2021-02-11T12:06:43.440' AS DateTime), 4)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (11, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (12, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (13, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (14, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (15, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (16, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (17, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (18, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (19, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (20, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (21, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (22, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (23, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (24, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (25, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (26, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (27, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (28, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (29, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (30, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (31, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (32, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (33, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (34, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (35, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (36, 2, 1, N'dddd', CAST(N'2021-02-11T14:39:06.120' AS DateTime), 4)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (37, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (38, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (39, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (40, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (41, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (42, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[LogProducts] ([Id], [ProductId], [UserId], [Description], [Date], [Status]) VALUES (43, 4, 1, N'İstifadə tarxi bitib', CAST(N'2021-02-11T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[LogProducts] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [UserId], [PhoneNumber], [Count], [Status], [SoldedCount], [SoldedTotal], [ExpireDate]) VALUES (1, N'Kartofshka', 3, CAST(12.00 AS Decimal(18, 2)), 1, N'+994556786767', 4, 1, 8, CAST(96.00 AS Decimal(18, 2)), CAST(N'2021-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [UserId], [PhoneNumber], [Count], [Status], [SoldedCount], [SoldedTotal], [ExpireDate]) VALUES (2, N'Etek', 3, CAST(12.00 AS Decimal(18, 2)), 1, N'+994556786767', 20, 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [UserId], [PhoneNumber], [Count], [Status], [SoldedCount], [SoldedTotal], [ExpireDate]) VALUES (3, N'Shalvar', 3, CAST(112.00 AS Decimal(18, 2)), 3, N'+994556786767', 27, 1, 3, CAST(336.00 AS Decimal(18, 2)), CAST(N'2021-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [UserId], [PhoneNumber], [Count], [Status], [SoldedCount], [SoldedTotal], [ExpireDate]) VALUES (4, N'sssss', 3, CAST(11.00 AS Decimal(18, 2)), 2, N'+994556786767', 1093, 5, 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-02-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [UserId], [PhoneNumber], [Count], [Status], [SoldedCount], [SoldedTotal], [ExpireDate]) VALUES (5, N'eeewew', 2, CAST(2232.00 AS Decimal(18, 2)), 2, N'+994556786767', 221, 2, 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [UserId], [PhoneNumber], [Count], [Status], [SoldedCount], [SoldedTotal], [ExpireDate]) VALUES (6, N'banan', 2, CAST(123.00 AS Decimal(18, 2)), 2, N'+994556786767', 343, 2, 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [UserId], [PhoneNumber], [Count], [Status], [SoldedCount], [SoldedTotal], [ExpireDate]) VALUES (7, N'Konfet', 2, CAST(12.00 AS Decimal(18, 2)), 1, N'+994556786767', 11, 1, 1, CAST(12.00 AS Decimal(18, 2)), CAST(N'2021-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [UserId], [PhoneNumber], [Count], [Status], [SoldedCount], [SoldedTotal], [ExpireDate]) VALUES (8, N'ujhhj', 2, CAST(12.00 AS Decimal(18, 2)), 1, N'+994556786767', 111, 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [UserId], [PhoneNumber], [Count], [Status], [SoldedCount], [SoldedTotal], [ExpireDate]) VALUES (9, N'Shalvar', 3, CAST(112.00 AS Decimal(18, 2)), 1, N'+994556786767', 26, 1, 1, CAST(112.00 AS Decimal(18, 2)), CAST(N'2021-02-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'admin')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [Phone], [Password], [CreatedDate], [Status], [RoleId]) VALUES (1, N'admin', N'admin', N'admin@gmail.com', N'+994556786767', N'admin@gmail.com', CAST(N'2021-02-08T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [Phone], [Password], [CreatedDate], [Status], [RoleId]) VALUES (2, N'nigar', N'nigar', N'nigar@gmail.com', N'+994556786767', N'nigar@gmail.com', CAST(N'2021-02-10T16:17:09.340' AS DateTime), 0, 2)
INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [Phone], [Password], [CreatedDate], [Status], [RoleId]) VALUES (3, N'Nigar', N'MAmmadova', N'nigarr@gmail.com', N'+994556786767', N'nigarr@gmail.com', CAST(N'2021-02-10T17:31:23.177' AS DateTime), 0, 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [IX_CreatedUserId]    Script Date: 2/11/2021 2:55:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CreatedUserId] ON [dbo].[Customers]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 2/11/2021 2:55:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[Customers]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 2/11/2021 2:55:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[LogProducts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/11/2021 2:55:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[LogProducts]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryId]    Script Date: 2/11/2021 2:55:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/11/2021 2:55:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Products]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2/11/2021 2:55:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[Users]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [ExpireDate]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.Users_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.Users_CreatedUserId]
GO
ALTER TABLE [dbo].[LogProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogProducts_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LogProducts] CHECK CONSTRAINT [FK_dbo.LogProducts_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[LogProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogProducts_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[LogProducts] CHECK CONSTRAINT [FK_dbo.LogProducts_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.Roles_RoleId]
GO
USE [master]
GO
ALTER DATABASE [ShopManagement] SET  READ_WRITE 
GO
