<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinTucNgaySachVaBanQuyen.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.TinTucNgaySachVaBanQuyen" %>

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
                    	<p id="tieudethongbao">Ngày Sách và Bản quyền thế giới, Ngày Sách Việt Nam<i>(04/20/2020)</i></p>
                        <br/>
						<p>&emsp;Trong kỳ họp lần thứ 28 của Đại Hội đồng Liên hợp quốc tại Paris từ ngày 25/10 – đến ngày 16/11/1995, Tổ chức văn hoá, giáo dục, khoa học Liên hợp quốc (UNESCO) đã quyết định chọn ngày 23/4 hàng năm làm “<b><i>Ngày Sách và Bản quyền Thế giới</i></b>” (World Book and Copyright Day), nhằm tôn vinh những giá trị của sách và sự đóng góp của các tác giả cho sự ra đời của các tác phẩm bất hủ.</p>
                        <p>&emsp;Ý tưởng về Ngày Sách và Bản quyền Thế giới bắt nguồn từ một phong tục truyền thống rất ý nghĩa ở vùng tự trị Catalonia của Tây Ban Nha: Vào ngày 23/4 hàng năm  -  Ngày lễ Thánh bảo trợ Goerge, người ta thường tặng nhau hoa hồng và sách; nhiều hội chợ sách và các lễ hội đường phố cũng được tổ chức, khách hàng mua sách trong ngày này sẽ được tặng kèm theo hoa hồng. Đây còn là ngày mất của ba đại văn hào thế giới (Miguel de Cervantes, William Shakespeare và Catalan Josep Pla), tác phẩm của họ là những kiệt tác bất hủ đi vào lòng bao thế hệ bạn đọc. Chọn ngày 23/4, UNESCO mong muốn sẽ là dịp để cả thế giới tôn vinh sách và những người sáng tạo ra chúng, thúc đẩy việc đọc sách, xuất bản sách và quyền tác giả. Hưởng ứng chủ trương của UNESCO, vào ngày này, nhiều quốc gia trên thế giới đã tổ chức nhiều hoạt động như tổ chức triển lãm sách, đọc sách công cộng, giảm giá bán sách, giới thiệu tác phẩm kinh điển, tặng sách, tìm hiểu về quyền tác giả, … </p>
                        <p>&emsp;Ở Việt Nam, ngày 24/02/2014, Thủ tướng Chính phủ đã ký ban hành Quyết định số 284/QĐ-TTg lấy ngày 21 tháng 4 hàng năm là “<b><i>Ngày Sách Việt Nam</i></b>”. Quyết định nêu rõ, Ngày Sách Việt Nam được tổ chức hàng năm nhằm khuyến khích, phát triển phong trào đọc sách trong cộng đồng, nâng cao nhận thức của nhân dân về ý nghĩa to lớn và tầm quan trọng của việc đọc sách. Đồng thời, tôn vinh giá trị của sách, khẳng định vai trò, vị trí, tầm quan trọng của sách trong đời sống xã hội; tôn vinh người đọc và những người tham gia sưu tầm, sáng tác, xuất bản, in, phát hành, lưu giữ, quảng bá sách. Bên cạnh đó, nâng cao trách nhiệm của các cấp, các ngành, các cơ quan chức năng và các tổ chức xã hội đối với việc xây dựng và phát triển văn hóa đọc Việt Nam.</p>
                        <p>&emsp;Hưởng ứng Ngày Sách Việt Nam, Ngày Sách và Bản quyền Thế giới, hàng năm Bộ Văn hóa Thể thao và Du lịch, Bộ Thông Tin và Truyền Thông, Vụ Thư viện đã chỉ đạo các đơn vị liên quan triển khai các hoạt động thiết thực nhằm phát động Ngày hội đọc sách và văn hóa đọc rộng khắp trên cả nước.</p>
                        <p><img src="../Images/72132328_460513477894613_2408055757615398912_n.jpg" width="500px" height="500"/></p>
                        <p>&emsp;Sách và việc đọc sách không những giúp mỗi cá nhân tự hoàn thiện nhân cách, tri thức mà còn giúp hình thành ý thức tự học tập, tự nghiên cứu suốt đời từ đó góp phần xây dựng nên một xã hội học tập. Việc đọc sách được xem như hoạt động văn hóa tốt đẹp, cần được lưu giữ và phát huy để trở thành nhu cầu không thể thiếu, nếp sinh hoạt thường xuyên của mỗi công dân trong thời hiện đại. </p>
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
