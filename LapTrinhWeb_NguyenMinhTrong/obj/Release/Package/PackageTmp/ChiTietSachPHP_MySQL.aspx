<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSachPHP_MySQL.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.ChiTietSachPHP_MySQL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>J2TEAM LIBRARY - NGÔN NGỮ LẬP TRÌNH</title>
<link rel="stylesheet" type="text/css" href="../CSS/TopTruocDN.css">
<link rel="stylesheet" type="text/css" href="../CSS/Header.css">
<link rel="stylesheet" type="text/css" href="../CSS/Nav.css">
<link rel="stylesheet" type="text/css" href="../CSS/Left.css">
<link rel="stylesheet" type="text/css" href="../CSS/Right.css">
<link rel="stylesheet" type="text/css" href="../CSS/Section.css">
<link rel="stylesheet" type="text/css" href="../CSS/Footer.css">
<link rel="stylesheet" type="text/css" href="../CSS/ChiTietSach.css">
<script src="../JAVASCRIPT/Tabs.js">
</script>
</head>

<body>
	<div class="main">
    <!--phan tren cung cua website-->
	<div class="header">
    	<div id="logo"><a href="Default.aspx"><img src="../Images/LoGo.png" alt="Logo" /></a>
        </div>
        <div class="top-thuvien">
        	<img src="../Images/top_thuvien.png" alt="Tên Thư Viện" width="763" height="183" id="tentv"/>
        </div>
    	<div class="top-right">    
            <div class="dangnhap">
                <a href="DangNhap.aspx"><b><i>Đăng Nhập</i></b></a>
                <a href="DangKy.aspx"><b><i>Đăng Ký</i></b></a>
            </div>
            <div class="timkiem">
                <input type="text" class="timkiem_input" name="timkiem" placeholder="Nhập nội dung cần tìm kiếm..."/>
                <input type="image" src="../Images/search.png" class="timkiem_bt"/>
            </div>
        </div>
        <div class="top-right-bottom">
        	<p><img id="top-icon" src="../Images/9478791231582004484-128.png"  alt="Địa Chỉ"/>: 340/20, phường Phú Hoà, Tp. Thủ Dầu Một, Bình Dương
			<br><img id="top-icon" src="../Images/2150335821535007646-128.png"  alt="E-Mail"/>: <a href="mailto:J2TEAMLIBRARY@GMAIL.COM"> J2teamlibrary@gmail.com</a>
			<br><img id="top-icon" src="../Images/19516023631594941306-128.png"  alt="Điện Thoại"/>: 0989919899
			<br><img id="top-icon" src="../Images/14498067661530099611-128.png"  alt="Facebook"/>: <a href="https://www.facebook.com/groups/j2team.community"> https://www.facebook.com/groups/j2team.community </a>
		</p>
        </div>
    </div>
    <!--khu vuc cac chua link dieu huong-->
    <nav>
    	<div class="menu">
            <ul id="main_menu">
                <li><a href="Default.aspx">TRANG CHỦ</a></li>
                <li><a href="GioiThieu.aspx">GIỚI THIỆU</a></li>
                <li><a href="TinTuc.aspx">TIN TỨC</a></li>
                <li><a>TÀI LIỆU</a>
                <ul class="sub_menu">
                    <li><a href="NgonNguLapTrinh.aspx">Ngôn Ngữ Lập Trình</a></li>
                    <li><a href="ThietKeWeb.aspx">Thiết Kế Web</a></li>
                    <li><a href="DoHoa.aspx">Đồ Hoạ</a></li>
                    <li><a href="TinHoc_VanPhong.aspx">Tin Học - Văn Phòng</a></li>
                    <li><a href="QuanTriMang.aspx">Quản Trị Mạng</a></li>
                    <li><a href="BaoMat.aspx">Bảo Mật</a></li>
                    <li><a href="Khac.aspx">Khác</a></li>
                </ul>
            	</li>
                <li><a href="QuyDinhChung.aspx">QUY ĐỊNH CHUNG</a></li>
                <li><a href="LienHe.aspx">LIÊN HỆ</a></li>
                <li><a href="GopY.aspx">GÓP Ý</a></li>
            </ul>
		</div>
	</nav>
    <div class="content">
        <article>
    		<aside id="left">
            	<div class="taikhoan">
                	<p>Tài khoản</p>
                </div>
            	<div class="thongbao">
                	<p>Thông Báo</p>
                    <marquee direction="up" scrollamount="1" onmousemove="stop()" onmouseout="start()">
                        	<p><a href="ThongBaoNghiTet.aspx"><img src="../Images/closed.png" alt="Images"/>Thông báo lịch nghỉ tết của thư viện J2Team (01/14/2020)</a></p>
                            <p><a href="ThongBaoTapHuan.aspx"><img src="../Images/teal-training-slider.png"/>Thông báo đăng kí lớp tập huấn sử dụng thư viện miễn phí (09/30/2019)</a></p>
                            <p><a href="ThongBaoTangTienPhat.aspx"><img src="../Images/ngac-nhien-trong-tieng-anh.jpg">Thông báo tăng tiền phạt mượn sách quá hạn (09/24/2019)</a></p>
                    </marquee>
                </div>
                <div class="thongketruycap">
               		<p>Thống Kê Truy Cập</p>
                    <div><p>Tổng số lượt truy cập: 1999
                    <br />Đang online: 20
                    </p></div>
                </div>
            </aside>
            <!--phan hien hinh anh sach-->
        	<section>
            	<div class="chitietsach">
                	<table border="1">
  					<tr>
    					<td colspan="2" id="cttensach">lập trình cơ bản php và mysql</td>
  					</tr>
  					<tr>
    					<td rowspan="6"><div align="center"><img src="../Images/Sach/lap-trinh-co-ban-php-va-mysql.png" width="250" height="350" /></div></td>
    					<td>Tác giả:<i> Joel Murach</i></td>
  					</tr>
  					<tr>
    					<td>Đồng tác giả: Ray Harris</td>
  					</tr>
  					<tr>
    					<td>Chủ biên: <i>Joel Murach</i></td>
  					</tr>
  					<tr>
    					<td>Nhà xuất bản: <b>Nhà xuất bản Khoa học Kỹ thuật</b></td>
  					</tr>
                    <tr>
    					<td>Năm xuất bản: <i>2013</i></td>
  					</tr>
  					<tr>
    					<td>Chủ đề: <b>Ngôn Ngữ Lập Trình</b></td>
  					</tr>
  					<tr>
                    	<td colspan="2"><p><b>Nội dung của cuốn:</b></p>
                            <p>Lập trình cơ bản PHP và MySQL gồm có 15 chương:</p>
                            <div class="noidungsach">
                                <p>Chương 1: Giới thiệu lập trình Web với PHP</p>
                                <p>Chương 2: Hướng dẫn viết mã cho ứng dụng PHP</p>
                                <p>Chương 3: Giới thiệu cơ sở dữ liệu quan hệ MySQL</p>
                                <p>Chương 4: Hướng dẫn sử dụng PHP với cơ sở dữ liệu MySQL</p>
                                <p>Chương 5: Hướng dẫn sử sụng mô hình MVC để tổ chức mã</p>
                                <p>Chương 6: Hướng dẫn kiểm thử và sửa lỗi ứng dụng PHP</p>
                                <p>Chương 7: Hướng dẫn làm việc với cơ sở dữ liệu của form</p>
                                <p>Chương 8: Hướng dẫn viết câu lệnh điều khiển</p>
                                <p>Chương 9: Hướng dẫn làm việc với chuỗi và số</p>
                                <p>Chương 10: Hướng dẫn làm việc với ngày tháng</p>
                                <p>Chương 11: Hướng dẫn tạo và sử dụng mảng</p>
                                <p>Chương 12: Hướng dẫn làm việc với cookie và phiên làm việc</p>
                                <p>Chương 13: Hướng dẫn tạo và sử dụng hàm</p>
                                <p>Chương 14: Hướng dẫn tạo và sử dụng đối tượng</p>
                                <p>Chương 15: Website sử dụng cơ sở dữ liệu</p>
                            </div>
                            <p>Xin trân trọng giới thiệu cuốn sách cùng bạn.</p></td>
                  	</tr>
                  	<tr>
                    	<td colspan="2" align="right"><a href="https://mshare.xyz/file/YHbVqky"><img class="nutdownload" src="../Images/dowload-button.png" /></a></td>
                  	</tr>
                	</table>
                </div>
        	</section>
        </article>
        </div>
    <!--phan cuoi trang-->
    <div class="footer">
    	<div><p>THƯ VIỆN SÁCH CÔNG NGHÊ THÔNG TIN J2TEAM</p></div>
		<p>Địa chỉ: 340/20, phường Phú Hoà, Tp. Thủ Dầu Một, Bình Dương
			<br>Email: <a href="mailto:J2TEAMLIBRARY@GMAIL.COM"> J2TEAMLIBRARY@GMAIL.COM</a>
			<br>Số Điện Thoại: 0989919899
			<br>Fax: 0909911989
			<br>Facebook: <a href="https://www.facebook.com/groups/j2team.community"> https://www.facebook.com/groups/j2team.community </a>
		</p>
    </div>
    </div>
</body>
</html>
