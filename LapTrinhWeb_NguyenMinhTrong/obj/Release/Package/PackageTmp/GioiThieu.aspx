<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioiThieu.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.GioiThieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>J2TEAM LIBRARY - GIỚI THIỆU</title>
<link rel="stylesheet" type="text/css" href="../CSS/TopTruocDN.css">
<link rel="stylesheet" type="text/css" href="../CSS/Header.css">
<link rel="stylesheet" type="text/css" href="../CSS/Nav.css">
<link rel="stylesheet" type="text/css" href="../CSS/Left.css">
<link rel="stylesheet" type="text/css" href="../CSS/Right.css">
<link rel="stylesheet" type="text/css" href="../CSS/Section.css">
<link rel="stylesheet" type="text/css" href="../CSS/Footer.css">
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
            	<div class="gioithieu">
                	<p>GIỚI THIỆU
                    </br>THƯ VIỆN SỐ J2TEAM LIBRARY</p>
                    <div class="ndgioithieu">
                    	<P id="tieude"><b>I.Giới thiệu tổng quan:</b></P>
                        <p>J2TEAM LIBRARY là thư viện số chính thức đưa vào phục vụ bạn đọc từ ngày 01.01.2020 tại địa chỉ <a href="TrangChuTruocDN.aspx">WWW.J2TEAMLIBRARY.COM</a></p>
                        <img src="../Images/Screenshot (120).png" alt="Images" width="500px" height="300px" style="padding-left:250px;"/>
                        <p>Truy cập vào website này bạn đọc sẽ tiếp cận với nhiều cuốn sách hay, bổ ích liên quan đến các ngành <i><b><a href="https://www.hutech.edu.vn/tuyensinh/tin-tuc/tin-huong-nghiep/585-nganh-cong-nghe-thong-tin-nhung-dieu-ban-can-biet">Công Nghệ Thông Tin</a></b></i></p>
                        <p id="tieude"><b>II.Nguyên tắc hoạt động</b></p>
                        <ul id="ndlietke">
                        	<li><span>N</span>ghiêm cấm các hành vi trục lợi, sử dụng tài liệu cho mục đích thương mại</li>
                            <li><span>C</span>ập nhật liên tục những cuốn sách có chất lượng, có giá trị, bắt kịp <b><i>thời đại công nghệ 4.0</i></b></li>
                            <li><span>L</span>ấy bạn đọc làm trung tâm phát triển</li>
                            <li><span>K</span>hơi dậy và phát huy tinh thần đọc sách, khả năng sáng tạo của mỗi cá nhân</li>
                            <li><span>K</span>huyến khích mua sách bản quyền (nếu có điều kiện) để ủng hộ tác giả</li>
                        </ul>
                        <p><i>Trong trường hợp bạn đọc có bất kỳ nhu cầu hay câu hỏi nào về sách, đừng ngần ngại gởi email về cho chúng tôi theo địa chỉ:<a href="mailto:J2TEAMLIBRARY@GMAIL.COM"> J2TEAMLIBRARY@GMAIL.COM</a> hoặc để lại tin nhắn tại trang <a href="#">Liên hệ</a></i></p>
						<br/>
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

