<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinTuc10ViecGietThoiGian.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.TinTuc10ViecGietThoiGian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>J2TEAM LIBRARY - THÔNG BÁO</title>
<link rel="stylesheet" type="text/css" href="../CSS/Header.css">
<link rel="stylesheet" type="text/css" href="../CSS/Nav.css">
<link rel="stylesheet" type="text/css" href="../CSS/Left.css">
<link rel="stylesheet" type="text/css" href="../CSS/Section.css">
<link rel="stylesheet" type="text/css" href="../CSS/Footer.css">
<link rel="stylesheet" type="text/css" href="../CSS/ThongBao.css">
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
            	<div class="thongbaothuvien">
                	<p id="ndtbthuvien">TIN TỨC</p>
                    <div class="ndtbthuvien">
                    	<p id="tieudethongbao">10 việc làm giúp bạn "giết thời gian" trong mùa dịch.<i>(04/23/2020)</i></p>
                        <br/>
						<p><b>10 việc làm giúp bạn "giết thời gian" trong mùa dịch</b></p>
                        <p>1. Đọc sách giáo khoa miễn phí từ ĐH Cambridge -<a href="https://www.cambridge.org/core/what-we-publish/textbooks?fbclid=IwAR3xGQlzglzM8UTnjesj61mZt2cmCV-WkpvI30O5mLAMxhLDLJYcWu4eP70"> bit.ly/gotit_1</a></p>
                        <p>2. Nghe sách nói trên Audible - <a href="https://www.audible.com/?fbclid=IwAR3ROY67AqV5oWM8TKRMq6nx4HotbXO0AQucd9WmxbsBHOBDIDRDhQcC0F4">bit.ly/gotit_11</a></p>
                        <p>3. Tham gia các khoá học miễn phí từ ĐH Harvard - <a href="https://online-learning.harvard.edu/catalog?keywords=&paid[1]=1&max_price=&start_date_range[min][date]=&start_date_range[max][date]=&fbclid=IwAR296G-zNEqq-5ps_1qPRjndQbxu7nCpmZ7s95FWZ49LNU6uTAEZa-sEqYs">bit.ly/gotit_2</a></p>
                        <p>4. Học IELTS miễn phí với khoá học từ Hội đồng Anh - <a href="https://www.futurelearn.com/programs/understanding-ielts?fbclid=IwAR2Q-HYzFd7IrGK63xZO0UNaojg8yXQacldsNLUXIVLMPZsfmkVdeJc3_B8">bit.ly/gotit_3</a></p>
                        <p>5. Học code tại nhà với Freecodecamp - <a href="https://www.freecodecamp.org/news/coronavirus-academy/?fbclid=IwAR0nD0mpjKHbEhDf4NOm4nWwGcI6bqaUvRNPcD564CJTp1SiwtPrf8-xTD4">bit.ly/gotit_14</a></p>
                        <p>6. Hơn 500 khoá học miễn phí từ các trường Ivy League - <a href="https://www.classcentral.com/collection/ivy-league-moocs?fbclid=IwAR0p9gQWK0VIePfdj3gXQWkhgF5VDbxfsJq0uAqrt4pxYB9_EwkIL8319AA">bit.ly/gotit_15</a></p>
                        <p>7. Tham gia khoá học miễn phí về Remote Working của LinkedIn - <a href="https://www.linkedin.com/learning/paths/remote-working-setting-yourself-and-your-teams-up-for-success?fbclid=IwAR3UYsNSv0NfguuCiT4NULaWkbWmSJbVplNdtb04YKh520Et8u2qrqCOoN8">bit.ly/gotit_6</a></p>
                        <p>8. Tham quan hơn 500 bảo tàng và phòng tranh nổi tiếng nhất thế giới qua Google Arts & Cultures - <a href="https://artsandculture.google.com/partner?hl=en&fbclid=IwAR0Rq16maHkpGoeOjDcQzelGdbI-hMKkQxv8kjnqGxHmyobbhaI_Qc4ef9k">bit.ly/gotit_7</a></p>
                        <p>9. Nghiền ngẫm những bộ phim trong IMDb Top 250 - <a href="https://www.imdb.com/chart/top/?fbclid=IwAR17N1KJzsiUFeAEwJu_KdXA62AoGw5UsR7rUquvXY_RpxX0fIK5PRypaVA">bit.ly/gotit_13</a></p>
                        <p>10. Dọn dẹp toàn bộ đồ đạc theo xu hướng tối giản với Marie Kondo - <a href="https://www.netflix.com/vn-en/title/80209379?fbclid=IwAR31_FknDXNQpZ23qzuqeLhH-5V7xYQBRe-MbhogRkVHGcq7kM2m8RmMeJo">bit.ly/gotit_12</a></p>
                        <p><b><i>(Nguồn: Got It Vietnam)</i></b></p>
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
