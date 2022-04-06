﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuyDinhChung.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.QuyDinhChung" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>J2TEAM LIBRARY - QUY ĐỊNH CHUNG</title>
<link rel="stylesheet" type="text/css" href="../CSS/TopTruocDN.css">
<link rel="stylesheet" type="text/css" href="../CSS/Header.css">
<link rel="stylesheet" type="text/css" href="../CSS/Nav.css">
<link rel="stylesheet" type="text/css" href="../CSS/Left.css">
<link rel="stylesheet" type="text/css" href="../CSS/Right.css">
<link rel="stylesheet" type="text/css" href="../CSS/Section.css">
<link rel="stylesheet" type="text/css" href="../CSS/Footer.css">
<link rel="stylesheet" type="text/css" href="../CSS/DangNhap.css">
<link rel="stylesheet" type="text/css" href="../CSS/DangKy.css">
<link rel="stylesheet" type="text/css" href="../CSS/GopY.css">
<link rel="stylesheet" type="text/css" href="../CSS/LienHe.css">
<link rel="stylesheet" type="text/css" href="../CSS/QuyDinhChung.css">
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
            <section>
            	<div class="quydinhchung">
                	<p id="quydinhchung">QUY ĐỊNH CHUNG</p>
                    <div class="noidungquydinhchung">
                    	<p class="tieude">1. Quy định chung</p>
                        <p>Khi sử dụng thư viện, độc giả phải thực hiện các quy định sau:</p>
                        <ul>
                        	<li>Mang theo thẻ thư viện.</li>
                            <li>Để túi xách, vật dụng cá nhân, giày dép đúng nơi quy định và tự chịu trách nhiệm về tài sản cá nhân</li>
                            <li>Không mang đồ ăn, nước uống (không đóng chai) vào thư viện</li>
                            <li>Không mang chất dễ gây cháy, nổ vào Thư viện; không hút thuốc lá trong thư viện</li>
                            <li>Nói khẽ, bước nhẹ và giữ gìn trật tự, vệ sinh chung trong khuôn viên thư viện</li>
                            <li>Điện thoại cài đặt ở chế độ rung. Trao đổi, thảo luận nhóm trong các khu vực được phép</li>
                            <li>Nghiêm cấm các hành động phản cảm, thiếu văn minh; các phát ngôn gây tổn hại đến uy tín của Thư viện</li>
                            <li>Không tự ý điều chỉnh các trang thiết bị khi chưa được phép; xếp ghế ngay ngắn sau khi sử dụng</li>
                            <li>Có ý thức bảo vệ tài sản của Thư viện (không viết, vẽ lên bàn ghế, thiết bị; không ghi chú lên tài liệu, không sao chép tài liệu khi chưa được sự đồng ý của cán bộ thư viện,..)</li>
                            <li>Tuyệt đối không mang tài liệu ra khỏi phòng đọc khi chưa được sự đồng ý của cán bộ thư viện; Tài liệu sau khi đọc xong đặt tại “KHU VỰC TRẢ SÁCH SAU KHI SỬ DỤNG”</li>
                        </ul>
                        <p class="tieude">2. Quy định về thẻ thư viện</p>
                        <ul>
                        	<li>Thẻ thư viện là cơ sở để quản lý bạn đọc trong thư viện.</li>
                            <li>Thẻ thư viện là thẻ được thư viện J2Team cung cấp(có đóng dấu) khi đăng ký làm thẻ</li>
                            <li>Thẻ thư viện có thời hạn sử dụng trong 1 năm. Người sử dụng phải gia hạn thẻ hàng năm để tiếp tục sử dụng các dịch vụ thư viện.</li>
                        </ul>
                        <p class="tieude">3. Quy định về tiền thế chân</p>
                        <ul>
                        	<li>Tiền thế chân là khoản tiền được thu để ràng buộc trách nhiệm và quyền lợi giữa người sử dụng với thư viện khi người sử dụng mượn tài liệu về nhà</li>
                            <li>Thư viện sẽ hoàn trả tiền thế chân ngay khi người sử dụng đã hoàn tất công nợ và không còn nhu cầu sử dụng thư viện</li>
                            <li>Mức tiền đóng thế chân là 500.000 VNĐ.Tổng giá trị tài liệu người sử dụng được phép mượn không vượt quá giá trị tiền thế chân</li>
                            <li>Tiền thế chân được thu ngay khi đăng ký làm thẻ tại thư viện.</li>
                        </ul>
                    </div>
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
