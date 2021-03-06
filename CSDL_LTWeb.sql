USE [master]
GO
/****** Object:  Database [DoAn_LTW]    Script Date: 12/10/2020 5:21:31 PM ******/
CREATE DATABASE [DoAn_LTW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Demo_Nhom4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Demo_Nhom4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demo_Nhom4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Demo_Nhom4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DoAn_LTW] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAn_LTW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAn_LTW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoAn_LTW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoAn_LTW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoAn_LTW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoAn_LTW] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoAn_LTW] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DoAn_LTW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoAn_LTW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoAn_LTW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoAn_LTW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoAn_LTW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoAn_LTW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoAn_LTW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoAn_LTW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoAn_LTW] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DoAn_LTW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoAn_LTW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoAn_LTW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoAn_LTW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoAn_LTW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoAn_LTW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoAn_LTW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoAn_LTW] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DoAn_LTW] SET  MULTI_USER 
GO
ALTER DATABASE [DoAn_LTW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoAn_LTW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoAn_LTW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoAn_LTW] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DoAn_LTW] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DoAn_LTW] SET QUERY_STORE = OFF
GO
USE [DoAn_LTW]
GO
/****** Object:  UserDefinedFunction [dbo].[fuConvertToUnsign1]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fuConvertToUnsign1] ( @strInput NVARCHAR(4000) ) RETURNS NVARCHAR(4000) AS BEGIN IF @strInput IS NULL RETURN @strInput IF @strInput = '' RETURN @strInput DECLARE @RT NVARCHAR(4000) DECLARE @SIGN_CHARS NCHAR(136) DECLARE @UNSIGN_CHARS NCHAR (136) SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệế ìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵý ĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍ ÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' +NCHAR(272)+ NCHAR(208) SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeee iiiiiooooooooooooooouuuuuuuuuuyyyyy AADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIII OOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD' DECLARE @COUNTER int DECLARE @COUNTER1 int SET @COUNTER = 1 WHILE (@COUNTER <=LEN(@strInput)) BEGIN SET @COUNTER1 = 1 WHILE (@COUNTER1 <=LEN(@SIGN_CHARS)+1) BEGIN IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@strInput,@COUNTER ,1) ) BEGIN IF @COUNTER=1 SET @strInput = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)-1) ELSE SET @strInput = SUBSTRING(@strInput, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)- @COUNTER) BREAK END SET @COUNTER1 = @COUNTER1 +1 END SET @COUNTER = @COUNTER +1 END SET @strInput = replace(@strInput,' ','-') RETURN @strInput END
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[HoTenAdmin] [nvarchar](50) NULL,
	[DiaChiAdmin] [nvarchar](50) NULL,
	[DienThoaiAdmin] [varchar](10) NULL,
	[TenDNAdmin] [varchar](15) NULL,
	[MatKhauAdmin] [varchar](15) NULL,
	[NgaySinhAdmin] [date] NULL,
	[GioiTinhAdmin] [bit] NULL,
	[EmailAdmin] [varchar](50) NULL,
	[QuyenAdmin] [int] NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NULL,
 CONSTRAINT [PK_CHUDE] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDATHANG]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDATHANG](
	[SoHD] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
 CONSTRAINT [PK_CTDATHANG] PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPHIEUMUON]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPHIEUMUON](
	[MaPM] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CTPHIEUMUON] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTTHAMDO]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTHAMDO](
	[MaCH] [int] NULL,
	[STT] [int] NULL,
	[NoiDungTraLoi] [nvarchar](255) NULL,
	[SoLanBinhChon] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCGIA]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCGIA](
	[MaDG] [int] IDENTITY(1,1) NOT NULL,
	[HoTenDG] [nvarchar](50) NULL,
	[DiaChiDG] [nvarchar](50) NULL,
	[DienThoaiDG] [varchar](10) NULL,
	[TenDN] [varchar](15) NULL,
	[MatKhau] [varchar](15) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_DOCGIA] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[SoHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [date] NULL,
	[TriGia] [money] NULL,
	[DaGiao] [bit] NULL,
	[NgayGiaoHang] [date] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChiNhan] [nvarchar](50) NULL,
	[DienThoaiNhan] [varchar](15) NULL,
	[HHThanhToan] [bit] NULL,
	[HHGiaoHang] [bit] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GOPY]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GOPY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[NoiDung] [ntext] NULL,
 CONSTRAINT [PK_GOPY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](10) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_NHAXUATBAN] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUMUON]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUMUON](
	[MaPM] [int] IDENTITY(1,1) NOT NULL,
	[NgayMuon] [date] NULL,
	[NgayHenTra] [date] NULL,
	[MaDG] [int] NULL,
	[MaTT] [int] NULL,
	[TrangThai] [bit] NULL,
	[NgayTra] [date] NULL,
	[GiaHan] [bit] NULL,
 CONSTRAINT [PK_PHIEUMUON] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](100) NULL,
	[MoTa] [ntext] NULL,
	[HinhMinhHoa] [nvarchar](50) NULL,
	[MaCD] [int] NULL,
	[NXB] [nvarchar](50) NULL,
	[NgayCapNhat] [date] NULL,
	[SoLanXem] [int] NULL,
	[TacGia] [nvarchar](50) NULL,
	[SLTon] [int] NULL,
	[MaNCC] [int] NULL,
	[NamXB] [int] NULL,
	[LuotDownload] [int] NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](50) NULL,
	[DiaChiTG] [nvarchar](100) NULL,
	[DienThoaiTG] [nvarchar](15) NULL,
 CONSTRAINT [PK_TACGIA] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THAMDO]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAMDO](
	[MaCH] [int] NOT NULL,
	[NgayDang] [date] NULL,
	[NoiDungThamDo] [nvarchar](255) NULL,
	[TongSoBinhChon] [int] NULL,
 CONSTRAINT [PK_THAMDO] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIETSACH]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIETSACH](
	[MaTG] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[VaiTro] [nvarchar](30) NULL,
 CONSTRAINT [PK_VIETSACH] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (1, N'Nguyễn Minh Trọng', N'Bình Dương', N'0358126179', N'quanly01', N'@Quanly123', CAST(N'1990-12-04' AS Date), 0, NULL, 1)
INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (2, N'Trần Phương Nhi', N'Bình Dương', N'0243232444', N'quanly02', N'@Quanly456', CAST(N'1996-03-17' AS Date), 1, NULL, 1)
INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (3, N'Trần Văn Toàn', N'Bình Dương', N'0923535634', N'thuthu01', N'@Thuthu123', CAST(N'1990-01-01' AS Date), 0, NULL, 1)
INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (4, N'Ngô Minh Thanh', N'Bình Dương', N'0354642332', N'thuthu02', N'@Thuthu456', CAST(N'1995-09-22' AS Date), 1, NULL, 1)
INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (5, N'Ngô Minh Thanh', N'Bình Dương', N'0234543435', N'thuthu03', N'@Thuthu789', CAST(N'1997-07-27' AS Date), 0, NULL, 1)
INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (6, N'Phạm Thu Ngân', N'Bình Dương', N'0964743223', N'thuthu04', N'@Thuthu135', CAST(N'2000-02-19' AS Date), 1, NULL, 1)
INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (7, N'Nguyễn Trí Dũng', N'Bình Dương', N'0958453445', N'thuthu05', N'@Thuthu246', CAST(N'1998-07-13' AS Date), 1, NULL, 1)
INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (8, N'Hoàng Minh Châu', N'Bình Dương', N'0867556544', N'minhtrong', N'123456', CAST(N'2000-06-22' AS Date), 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'Ngôn Ngữ Lập Trình')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'Thiết Kế Web')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (3, N'Đồ Hoạ')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (4, N'Tin Học - Văn Phòng')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (5, N'Quản Trị Mạng')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (6, N'Bảo Mật')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (7, N'Khác')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (1, 3, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (1, 6, 2)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (2, 20, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (3, 3, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (3, 7, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (3, 8, 4)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (4, 10, 2)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (4, 17, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (5, 16, 2)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (6, 9, 2)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (6, 12, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (6, 21, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (7, 10, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (8, 5, 2)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (9, 11, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (9, 12, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (10, 20, 3)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (11, 5, 2)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (11, 15, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (13, 4, 2)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (13, 8, 1)
INSERT [dbo].[CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (14, 4, 1)
SET IDENTITY_INSERT [dbo].[DOCGIA] ON 

INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (1, N'Nguyễn Văn Tâm', N'Bình Dương', N'0912334216', N'vantam', N'123', CAST(N'1999-07-12T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (2, N'Trần Thị Thu', N'Đồng Nai', N'0358125233', N'tranthu', N'123', CAST(N'1995-04-10T00:00:00' AS SmallDateTime), 0, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (3, N'Nguyễn Văn Nam', N'Tây Ninh', N'0315898798', N'vannam', N'123', CAST(N'2001-08-25T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (4, N'Phạm Văn Quân', N'Bình Dương', N'0998987286', N'quanpham', N'123', CAST(N'1999-11-24T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (5, N'Hoàng Văn Chinh', N'Đăk Nông', N'0962847866', N'hoangchinh', N'123', CAST(N'1986-12-12T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (6, N'Phạm Thị Viên', N'TP HCM', N'0312354999', N'phamvien', N'123', CAST(N'2000-11-18T00:00:00' AS SmallDateTime), 0, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (7, N'Phạm Thị Mai Lan', N'Bình Dương', N'0358197128', N'mailan', N'123', CAST(N'1990-10-10T00:00:00' AS SmallDateTime), 0, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (8, N'Trần Quyết Thắng', N'TP HCM', N'0376186237', N'thangtran', N'123', CAST(N'1994-07-15T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (9, N'Lương Ngọc Quyên', N'Đà Nẵng', N'0963472543', N'ngocquyen', N'123', CAST(N'1990-11-27T00:00:00' AS SmallDateTime), 0, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (12, N'Phạm Văn Nam', N'Đồng Nai', N'0327368723', N'nampham', N'123', CAST(N'1993-05-14T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (13, N'Nguyễn Mạnh Hưng', N'Quảng Ngãi', N'0237623764', N'manhhung', N'123', CAST(N'1995-03-25T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (14, N'Lê Thị Trúc Anh', N'Bình Dương', N'0927642723', N'trucanh', N'123', CAST(N'1995-07-12T00:00:00' AS SmallDateTime), 0, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (15, N'Phạm Thế Phong', N'Tây Ninh', N'0327476238', N'thephong', N'123', CAST(N'1999-02-28T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (16, N'Nguyễn Minh Triết', N'Bình Phước', N'0927486274', N'minhtriet', N'123', CAST(N'1979-12-12T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (17, N'Lê Thu Dung', N'Bình Phước', N'0243824676', N'thudung', N'123', CAST(N'2001-10-20T00:00:00' AS SmallDateTime), 0, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (18, N'Trần Văn Chính', N'TP HCM', N'0233747647', N'vanchinh', N'123', CAST(N'2000-06-22T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (19, N'Lê Kiều Oanh', N'Bình Dương', N'0326736437', N'kieuoanh', N'123', CAST(N'2002-10-10T00:00:00' AS SmallDateTime), 0, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (20, N'Trần Thị Dung', N'Bình Dương', N'0927364723', N'dungtran', N'123', CAST(N'1989-06-21T00:00:00' AS SmallDateTime), 0, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (21, N'Nguyễn Văn Cường', N'Bình Dương', N'0923424236', N'vancuong', N'123', CAST(N'1998-09-12T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (22, N'Võ Tấn Lộc', N'Đà Nẵng', N'0232764273', N'tanloc', N'123', CAST(N'2000-09-25T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (23, N'Trần Thị Ngọc Ánh', N'Hải Phòng', N'0326276827', N'ngocanh', N'123', CAST(N'1990-01-11T00:00:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (24, N'Phạm Hoàng Long', N'TP HCM', N'0923279228', N'hoanglong', N'123', CAST(N'1987-02-14T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (25, N'Nguyễn Minh Sang', N'Bình Dương', N'0988787543', N'minhsang', N'123', CAST(N'2000-12-01T00:00:00' AS SmallDateTime), 1, NULL)
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (26, N'Nguyễn Minh Thông', N'Bình Dương', N'0328126266', N'thong2011', N'123', CAST(N'2000-01-01T00:00:00' AS SmallDateTime), 0, N'trongpro0009@gmail.com')
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (27, N'Nguyễn Minh Trọng', N'Binh Duong', N'0328126266', N'abcd', N'123', CAST(N'2020-11-05T00:00:00' AS SmallDateTime), 0, N'1824801040084@student.tdmu.edu.vn')
INSERT [dbo].[DOCGIA] ([MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (30, N'nguyen van a', N'binh duong', N'0328126266', N'quanly011', N'123', CAST(N'2020-11-29T00:00:00' AS SmallDateTime), 0, N's22062000s@gmail.com')
SET IDENTITY_INSERT [dbo].[DOCGIA] OFF
SET IDENTITY_INSERT [dbo].[GOPY] ON 

INSERT [dbo].[GOPY] ([ID], [HoTen], [Email], [NoiDung]) VALUES (1, N'nguyễn minh trọng', N'trongpro0009@gmail.com', N'tuyệt vời')
INSERT [dbo].[GOPY] ([ID], [HoTen], [Email], [NoiDung]) VALUES (2, N'nguyễn minh trọng', N's22062000s@gmail.com', N'abc')
SET IDENTITY_INSERT [dbo].[GOPY] OFF
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (1, N'ĐH QG HN', N'Bình Dương', NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (2, N'Giáo Dục', N'Hà Nội', N'0234243543')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (3, N'Thiên Long', N'TP HCM', N'0326742237')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (4, N'Thanh Long', N'Bình Dương', N'0927362333')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (5, N'Minh Huy', N'Bình Dương', N'0332523234')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (6, N'Huyền Vũ', N'Đà Nẵng', N'0912732323')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (7, N'Hồng Hà', N'Bình Dương', N'0989767778')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
SET IDENTITY_INSERT [dbo].[PHIEUMUON] ON 

INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (1, CAST(N'2019-01-14' AS Date), CAST(N'2019-02-03' AS Date), 1, 3, 1, CAST(N'2019-02-03' AS Date), 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (2, CAST(N'2019-07-22' AS Date), CAST(N'2019-08-06' AS Date), 5, 4, 1, CAST(N'2019-08-06' AS Date), 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (3, CAST(N'2020-01-12' AS Date), CAST(N'2020-02-11' AS Date), 6, 5, 1, CAST(N'2020-02-11' AS Date), 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (4, CAST(N'2019-08-16' AS Date), CAST(N'2019-09-15' AS Date), 20, 7, 1, CAST(N'2019-09-15' AS Date), 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (5, CAST(N'2019-08-17' AS Date), CAST(N'2019-09-01' AS Date), 24, 6, 0, NULL, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (6, CAST(N'2020-02-08' AS Date), CAST(N'2020-02-18' AS Date), 7, 5, 0, NULL, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (7, CAST(N'2019-07-28' AS Date), CAST(N'2019-08-12' AS Date), 15, 4, 1, CAST(N'2019-08-12' AS Date), 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (8, CAST(N'2019-06-22' AS Date), CAST(N'2019-07-01' AS Date), 12, 3, 0, NULL, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (9, CAST(N'2019-12-12' AS Date), CAST(N'2019-12-22' AS Date), 7, 5, 1, CAST(N'2019-12-22' AS Date), 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (10, CAST(N'2019-03-24' AS Date), CAST(N'2019-04-08' AS Date), 13, 4, 0, NULL, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (11, CAST(N'2019-05-16' AS Date), CAST(N'2019-05-26' AS Date), 1, 7, 1, CAST(N'2019-05-26' AS Date), 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (13, CAST(N'2020-10-20' AS Date), CAST(N'2020-10-30' AS Date), 1, 5, 0, NULL, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (14, CAST(N'2020-12-04' AS Date), CAST(N'2020-12-24' AS Date), 8, 4, 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[PHIEUMUON] OFF
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (2, N'Giáo Trình Kỹ Thuật Lập Trình C', N'Sách Kỹ thuật lập trình C cơ sở & nâng cao của thầy Phạm Văn Ất là tài liệu lập trình C mà nhiều trường đại học hiện nay vẫn đang lấy làm tại liệu tham khảo cho môn học lập trình C.

Sách gồm 546 trang, có 18 chương và 13 phụ lục. Bố cục nội dung sách được chia làm 2 phần: cơ sở và nâng cao. Phần cơ sở gồm có 10 chương đầu bao gồm hầu hết tất cả các kiến thức trong trương chình học của bạn. Như vậy, trong trường hợp bạn không có nhu cầu học thêm mà chỉ học theo giáo trình môn học tại trường thì bạn chỉ cần đọc 10 chương đầu.

Phần nâng cao bao gồm 8 chương tiếp theo trình bày về các vấn đề khó như: Kỹ thuật tạo ảnh chuyển động, chơi nhạc trên máy tính, kiến trúc & cách truy cập bộ nhớ máy tính, tương tác với hệ điều hành DOS và BIOS, … và rất nhiều kiến thức nâng cao khác vô cùng bổ ích. Nếu có thể, mình khuyên các bạn nên đọc để biết khi cần có thể tra cứu lại.', N'ngonnguC.jpg', 1, N'Hồng Đức', CAST(N'2019-01-01' AS Date), 99, N'Phạm Văn Ất', 75, 2, 2010, 123)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (3, N'Lập Trình C# Từ Cơ Bản Đến Nâng Cao', N'Đang cập nhật', N'lap-trinh-c-shard-tu-co-ban-den-nang-cao-pdf.jpg', 1, N'Giáo Dục', CAST(N'2019-01-01' AS Date), 106, N'Phạm Công Ngô', 35, 1, 2016, 322)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (4, N'Lập Trình Cơ Bản PHP Và MySQL', N'Đang cập nhật', N'lap-trinh-co-ban-php-va-mysql.png', 1, N'Khoa Học Và Kỹ Thuật', CAST(N'2019-01-01' AS Date), 64, N'Joel Murach', 50, 3, 2013, 123)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (5, N'Hướng Dẫn Thiết Kế Website', N'Đang cập nhật', N'hd_thiet_ke_web_1.jpg', 2, N'Văn Hoá - Thông Tin', CAST(N'2019-01-01' AS Date), 34, N'Water PC', 100, 4, 2015, 65)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (6, N'CSS And HTML Web Design', N'Đang cập nhật', N'html_css.jpg', 2, N'Đang cập nhật', CAST(N'2019-10-01' AS Date), 12, N'Craig Grannell', 45, 5, 2011, 24)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (7, N'HTML5 & CSS3 Thiết Kế Trang Web Thích Ứng Giàu Tính Năng', N'Đang cập nhật', N'html5-va-css3-198x300.jpg', 2, N'Bách Khoa Hà Nội', CAST(N'2019-01-01' AS Date), 34, N'Jeremy Osborn', 50, 5, 2014, 31)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (8, N'Thiết Kế Web Với Dreamweaver', N'Đang cập nhật', N'thiet-ke-web-voi-dreamweaver-209x300.jpg', 2, N'Bách Khoa Hà Nội', CAST(N'2019-01-01' AS Date), 7, N'Jeremy Osborn', 50, 5, 2014, 76)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (9, N'Giáo Trình Tự Học AutoCad 2019', N'Đang cập nhật', N'autocad.png', 3, N'Đồng Nai', CAST(N'2019-01-01' AS Date), 10, N'Nhiều Tác Giả', 70, 6, 2016, 133)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (10, N'Tự Học Thiết Kế Đồ Hoạ Trên PhotoShop 2019', N'Đang cập nhật', N'PSCS6.jpg', 3, N'Hồng Đức', CAST(N'2019-01-01' AS Date), 45, N'Nguyễn Đức Hiếu', 70, 6, 2016, 53)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (11, N'Tự Học Microsoft Excel 2016', N'Đang cập nhật', N'excel.gif', 4, N'Hồng Đức', CAST(N'2019-01-01' AS Date), 14, N'Nhiều Tác Giả', 45, 7, 2010, 76)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (12, N'Tự Học Microsoft Word 2010', N'Đang cập nhật', N'word.jpg', 4, N'Văn Hoá - Thông Tin', CAST(N'2019-01-01' AS Date), 43, N'Nhiều Tác Giả', 50, 7, 2017, 13)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (13, N'Giáo Trình Nhập Môn Mạng Máy Tính', N'Đang cập nhật', N'giao-trinh-mang-may-tinh-ho-dac-phuong.pdf-0.jpg', 5, N'Giáo Dục Việt Nam', CAST(N'2019-01-01' AS Date), 41, N'Hồ Đắc Phương', 50, 4, 2015, 56)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (14, N'Giáo Trình Máy Tính Và Mạng Máy Tính', N'Đang cập nhật', N'GiaoTrinhMangMT.png', 5, N'Giáo Dục Việt Nam', CAST(N'2019-01-01' AS Date), 46, N'Nguyễn Tiến Dũng', 50, 3, 2016, 97)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (15, N'Giáo Trình Quản Trị Mạng', N'Đang cập nhật', N'QTmang.jpg', 5, N'ĐH QG TP HCM', CAST(N'2019-01-01' AS Date), 34, N'Lê Hoài Nghĩa', 30, 3, 2012, 32)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (16, N'Blockchain', N'Đang cập nhật', N'blockchain.jpg', 6, N'Lao Động', CAST(N'2019-01-01' AS Date), 43, N'Mark Gates', 20, 2, 2012, 57)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (17, N'Bóng Ma Trên Mạng', N'Đang cập nhật', N'bong-ma.jpg', 6, N'Công Thương', CAST(N'2020-03-01' AS Date), 87, N'Kevin Mitnick', 20, 2, 2016, 32)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (18, N'Gián Điệp Mạng', N'Đang cập nhật', N'giandiepmang.jpg', 6, N'Công Thương', CAST(N'2019-01-01' AS Date), 65, N'Clifford Stoll', 20, 2, 2015, 76)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (19, N'Ứng Dụng Trí Tuệ Nhân Tạo Để Dẫn Đầu', N'Đang cập nhật', N'AI.jpg', 7, N'Thế Giới', CAST(N'2019-01-01' AS Date), 21, N'Bernard Marr', 40, 5, 2014, 13)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (20, N'Trí Tuệ Nhân Tạo Trong Marketing', N'Đang cập nhật', N'bia-tri-tue-nhan-tao-trong-marketing.jpg', 7, N'Công Thương', CAST(N'2020-03-01' AS Date), 34, N'Katie King', 35, 6, 2014, 75)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (21, N'Lập Trình Và Cuộc Sống', N'Đang cập nhật', N'laptrinhvacuocsong.jpg', 7, N'Dân Trí', CAST(N'2019-01-01' AS Date), 32, N'Jeff Atwood', 100, 1, 2013, 67)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (23, N'Code Dạo Ký Sự', N'Đang cập nhật', N'codedaokysu.jpg', 7, N'Dân Trí', CAST(N'2020-01-10' AS Date), 12, N'Phạm Huy Hoàng', 80, 6, 2017, 98)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (24, N'Học Nhanh Tin Học Văn Phòng', N'Đang cập nhật', N'tinhocvanphong.jpg', 4, N'Hồng Đức', CAST(N'2019-01-01' AS Date), 23, N'Hà Thành, Trí Việt', 50, 7, 2016, 23)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MoTa], [HinhMinhHoa], [MaCD], [NXB], [NgayCapNhat], [SoLanXem], [TacGia], [SLTon], [MaNCC], [NamXB], [LuotDownload]) VALUES (29, N'Giáo Trình Lập Trình Java Cơ Bản', N'Đang cập nhật', N'ngonngujava.jpg', 1, N'Giáo dục Việt Nam', CAST(N'2019-01-01' AS Date), 231, N'Đoàn Văn Ban,Đoàn Văn Trung', 75, 2, 2006, 212)
SET IDENTITY_INSERT [dbo].[SACH] OFF
ALTER TABLE [dbo].[ADMIN] ADD  CONSTRAINT [DF_ADMIN_GioiTinhAdmin]  DEFAULT ((0)) FOR [GioiTinhAdmin]
GO
ALTER TABLE [dbo].[ADMIN] ADD  CONSTRAINT [DF_ADMIN_QuyenAdmin]  DEFAULT ((1)) FOR [QuyenAdmin]
GO
ALTER TABLE [dbo].[CTTHAMDO] ADD  CONSTRAINT [DF_CTTHAMDO_SoLanBinhChon]  DEFAULT ((0)) FOR [SoLanBinhChon]
GO
ALTER TABLE [dbo].[DOCGIA] ADD  CONSTRAINT [DF_DOCGIA_GioiTinh]  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  CONSTRAINT [DF_DONDATHANG_DaGiao]  DEFAULT ((0)) FOR [DaGiao]
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  CONSTRAINT [DF_DONDATHANG_HHThanhToan]  DEFAULT ((0)) FOR [HHThanhToan]
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  CONSTRAINT [DF_DONDATHANG_HHGiaoHang]  DEFAULT ((0)) FOR [HHGiaoHang]
GO
ALTER TABLE [dbo].[PHIEUMUON] ADD  CONSTRAINT [DF_PHIEUMUON_NgayMuon]  DEFAULT (getdate()) FOR [NgayMuon]
GO
ALTER TABLE [dbo].[PHIEUMUON] ADD  CONSTRAINT [DF_PHIEUMUON_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[PHIEUMUON] ADD  CONSTRAINT [DF_PHIEUMUON_GiaHan]  DEFAULT ((0)) FOR [GiaHan]
GO
ALTER TABLE [dbo].[SACH] ADD  CONSTRAINT [DF_SACH_MoTa]  DEFAULT (N'Đang cập nhật') FOR [MoTa]
GO
ALTER TABLE [dbo].[SACH] ADD  CONSTRAINT [DF_SACH_NXB]  DEFAULT (N'Đang cập nhật') FOR [NXB]
GO
ALTER TABLE [dbo].[SACH] ADD  CONSTRAINT [DF_SACH_TacGia]  DEFAULT (N'Đang cập nhật') FOR [TacGia]
GO
ALTER TABLE [dbo].[SACH] ADD  CONSTRAINT [DF_SACH_LuotDownload]  DEFAULT ((0)) FOR [LuotDownload]
GO
ALTER TABLE [dbo].[CTPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUMUON_PHIEUMUON] FOREIGN KEY([MaPM])
REFERENCES [dbo].[PHIEUMUON] ([MaPM])
GO
ALTER TABLE [dbo].[CTPHIEUMUON] CHECK CONSTRAINT [FK_CTPHIEUMUON_PHIEUMUON]
GO
ALTER TABLE [dbo].[CTPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUMUON_SACH] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CTPHIEUMUON] CHECK CONSTRAINT [FK_CTPHIEUMUON_SACH]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUMUON_ADMIN] FOREIGN KEY([MaTT])
REFERENCES [dbo].[ADMIN] ([MaAdmin])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK_PHIEUMUON_ADMIN]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUMUON_DOCGIA] FOREIGN KEY([MaDG])
REFERENCES [dbo].[DOCGIA] ([MaDG])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK_PHIEUMUON_DOCGIA]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_CHUDE] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_CHUDE]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_NHACUNGCAP]
GO
/****** Object:  StoredProcedure [dbo].[GetSach_Ma]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetSach_Ma]
@masach char(5)
as
begin
	select * from SACH where MaSach=@masach
end
GO
/****** Object:  StoredProcedure [dbo].[GiaHan]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GiaHan]
	@mapm char(5)
AS
BEGIN
	update [dbo].[PHIEUMUON]
	set NgayTra=DATEADD(DAY,10,NgayHenTra)
	where @mapm=MaPM 
END
GO
/****** Object:  StoredProcedure [dbo].[SachConLai]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SachConLai]
as
begin
	declare @a int;
	declare @b int;
	declare @kq int;
	select @a=SUM(SACH.SLTon) from SACH
	select @b=SUM(SoLuong) FROM CTPHIEUMUON
	set @kq=isnull(@a,0)-isnull(@b,0);
end
GO
/****** Object:  StoredProcedure [dbo].[SachConLai1]    Script Date: 12/10/2020 5:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SachConLai1]
as
begin
declare @kq int;
	Select sum(SACH.SLTon) as sa into #tam1 from SACH
	select sum(CTPHIEUMUON.SoLuong) as ctpm into #tam2 from CTPHIEUMUON
	select @kq=isnull(#tam1.sa,0)-isnull(#tam2.ctpm,0) from #tam1,#tam2
	print(@kq)
end
GO
USE [master]
GO
ALTER DATABASE [DoAn_LTW] SET  READ_WRITE 
GO
