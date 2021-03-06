Create database ShopSE
go
USE ShopSE
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/13/2022 11:53:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] NOT NULL,
	[user] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[manager] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/13/2022 11:53:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Uid] [int] NOT NULL,
	[Pid] [int] NOT NULL,
	[number] [int] NOT NULL,
	[price] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/13/2022 11:53:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Cid] [int] NOT NULL,
	[Cname] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/13/2022 11:53:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Pid] [int] NOT NULL,
	[Pname] [nvarchar](255) NOT NULL,
	[C_ID] [int] NULL,
	[price] [float] NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[image] [varchar](255) NOT NULL,
	[number] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Pid])
REFERENCES [dbo].[Product] ([Pid])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Uid])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([C_ID])
REFERENCES [dbo].[Category] ([Cid])
GO
insert into Category values (1, N'Nhà Cửa & Đời Sống')
insert into Category values (2, N'Thể Thao & Du Lịch')
insert into Category values (3, N'Sức Khỏe')
insert into Category values (4, N'Thời Trang')
insert into Category values (5, N'Điện Thoại & Phụ Kiện')

insert into Product values (1, N'Áo Thun Nam', 4, 99000.0, N'Áo thun nam trơn vải cotton cao cấp mềm mịn, áo phông nam đẹp ngắn tay có đủ bảng màu cực hot','https://cf.shopee.vn/file/b8cfc150f3b8f45b68f23a0afd7d893d', '1')
insert into Product values (2, N'Tai nghe Tws Bluetooth', 5, 108000.0, N'Tai nghe chơi game Tws Bluetooth 5.0 không dây có mic với độ trễ thấp dùng cho điện thoại thông minh','https://cf.shopee.vn/file/b51414c107c2fcd51d87eb19cf48f6d9', '1')
insert into Product values (3, N'Dây Cáp Sạc Baseus', 5, 35000.0, N'Dây Cáp Sạc Baseus 2.4A Chuyên Dụng Nhiều Màu Tuỳ Chọn Kích Thước 1.2m Dành Cho Điện Thoại iphone X','https://cf.shopee.vn/file/df0605685b04aac7e2c7ecedb95d17ea', '1')
insert into Product values (4, N'Dầu Gội TRESEMME', 1, 279000.0, N'Combo Dầu Gội, Dầu Xả TRESEMME Keratin Smooth Dưỡng tóc khô xơ rối Công thức chuẩn salon Vào Nếp Suôn Mượt 640g, 620g','https://cf.shopee.vn/file/10e0cd254c45240c46daf40695df6f33', '1')
insert into Product values (5, N'Đèn Ngủ Vintage', 1, 99000.0, N'Đèn Ngủ Để Bàn Thân Gỗ - Đèn Trang Trí Phòng Ngủ Vintage Đầu Cắm USB - DN01','https://cf.shopee.vn/file/ca01cf5d78ed11a56a1384ef49c8a914', '1')
insert into Product values (6, N'Giày Sport Abu', 2, 99000.0, N'Giày Thể Thao Nam Sport Abu Mạnh Mẽ','https://cf.shopee.vn/file/83969939056cf7ae6d5b5d1516de67eb', '1')
insert into Product values (7, N'Khẩu trang Mask Monji', 3, 99000.0, N'Khẩu trang 3D Mask Monji công nghệ dập Nhật Bản hộp 50 cái - Hàng Chính Hãng','https://cf.shopee.vn/file/ac19275d099c21e0ccf6e62d682efdc8', '1')
insert into Product values (8, N'Viên uống DHC', 3, 80000.0, N'iên uống DHC Bổ sung Vitamin C Nhật Bản 60/40 viên','https://cf.shopee.vn/file/e7280cc6fac131b5e80cdd08c574f025', '1')
insert into Product values (9, N'Ốp Điện Thoại Da', 5, 59000.0, N'Ốp Điện Thoại Da Chống Sốc Khung Vuông Họa Tiết Hươu Cho iPhone 13Pro Max 12 11Pro Max Mini','https://cf.shopee.vn/file/cc02507f30b227cf1e325c44dcc1973e', '1')
insert into Product values (10, N'Dụng Cụ Hít Đất', 3, 139000.0, N'Dụng Cụ Hít Đất Đa Năng, Bộ Dụng Cụ Tập Hít Đất Chống Đẩy Tại Nhà Chính Hãng Cao Cấp KINGDOM SPORT Có Kẻ Vạch Hướng Dẫn','https://cf.shopee.vn/file/bedf3c20e137f78383d0cf5b70fba741', '1')
insert into Product values (11, N'Kẹp tóc cá mập', 4, 7000.0, N'Kẹp tóc dạng hàm cá mập cỡ lớn phong cách Hàn Quốc và Nhật Bản sành điệu cho nữ','https://cf.shopee.vn/file/3cc405cc99279486913675d788ef1b21', '1')
insert into Product values (12, N'Đồng Hồ XiaoYa', 4, 120000.0, N'Đồng Hồ XiaoYa 1258 Dây Đeo Kim Loại Cho Nữ Thời Trang','https://cf.shopee.vn/file/4c9bd00ce344eb825604f1912a15757e', '1')
insert into Product values (13, N'BÀN LÀM VIỆC', 1, 329000.0, N'Bàn làm việc , bàn văn phòng , bàn liền kệ đa năng tiện ích mẫu mới BLV09','https://cf.shopee.vn/file/db4f2dc6d6d78c9919113c41a79b6301', '1')
insert into Product values (14, N'Nước giặt OMO', 1, 159000.0, N'Nước Giặt Omo Matic với công nghệ Màn chắn Kháng bẩn Polyshield Xanh, giúp bao bọc và phủ một lớp màn chắn vô hình lên bề mặt sợi vải, loại bỏ nhanh chóng vết bẩn cứng đầu và mùi hôi trên áo quần','https://cf.shopee.vn/file/091f185b3e1de9ac311ca838897cafff', '1')
insert into Product values (15, N'Túi Trống Du Dịch', 2, 128000.0, N'Thích hợp đi làm, đi chơi, dạo phố, mua sắm, đặc biệt là đi du lịch, đi biển, dã ngoại.','https://cf.shopee.vn/file/dd491638c041b1f20dcc306539c2c61d', '1')
insert into Product values (16, N'Cân Điện Tử', 3, 135000.0, N'Cân Điện Tử Sạc USB Padabanic Cân Sức Khỏe Gia Đình Chuẩn Xác Hiển Thị Nhiệt Độ Phòng','https://cf.shopee.vn/file/3fbb93725727fdb2b2f2d9f4c00b5814', '1')
insert into Product values (17, N'X', 2, 1000.0, N'tranh','123', '10')

insert into Account values (1,'admin', '123456', N'dai', 1)
insert into Account values (2,'taikhoan1', '12345', N'user1', 0)
insert into Account values (3,'taikhoan2', '12345', N'user2', 0)
insert into Account values (4,'taikhoan3', '1234', N'user3', 0)
insert into Account values (5,'taikhoan4', '12345', N'test4', 0)
insert into Account values (6,'mra', '1234', N'haha', 0)