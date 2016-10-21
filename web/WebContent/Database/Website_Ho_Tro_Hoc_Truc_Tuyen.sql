create database Website_Ho_Tro_Hoc_Truc_Tuyen;
use Website_Ho_Tro_Hoc_Truc_Tuyen;

create table HocVien (Nickname varchar(30) PRIMARY KEY,
						SDT char(12) NOT NULL,
						GioiTinh bit NOT NULL,
						NgaySinh date NOT NULL,
						Email varchar(100) NOT NULL,
						AnhDaiDien char(100),
						NoiHocTap nvarchar(50));
create table Login_HocVien (Nickname varchar(30) PRIMARY KEY,
							MatKhau char(50),
							ThoiGianLogin datetime);
ALTER TABLE Login_HocVien ADD CONSTRAINT KN_Login_HocVien FOREIGN KEY (Nickname) REFERENCES HocVien (Nickname);
--Ảnh đại diện là đường link đến file hình ảnh