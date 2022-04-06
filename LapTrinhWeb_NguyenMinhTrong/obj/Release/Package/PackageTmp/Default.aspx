<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>J2TEAM LIBRARY - TRANG CHỦ</title>
<link rel="stylesheet" type="text/css" href="../CSS/Header.css">
<link rel="stylesheet" type="text/css" href="../CSS/Nav.css">
<link rel="stylesheet" type="text/css" href="../CSS/Left.css">
<link rel="stylesheet" type="text/css" href="../CSS/Section.css">
<link rel="stylesheet" type="text/css" href="../CSS/Footer.css">
<script src="../JAVASCRIPT/Tabs.js">
</script>
</head>

<body>
	<div class="main" runat="server">
    <!--phan tren cung cua website-->
	<div class="header" runat="server">
    	<div id="logo"><a href="Default.aspx"><img src="../Images/LoGo.png" alt="Logo" /></a>
        </div>
        <div class="top-thuvien">
        	<img src="../Images/top_thuvien.png" alt="Tên Thư Viện" width="763" height="183" id="tentv"/>
        </div>
    	<div class="top-right" runat="server">    
            <div class="dangnhap">
                <a href="DangNhap.aspx"><b><i>Đăng Nhập</i></b></a>
                <a href="DangKy.aspx"><b><i>Đăng Ký</i></b></a>
            </div>
            <div class="timkiem" runat="server">
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
          <asp:Label ID="TenTK" runat="server" Text=""></asp:Label>   </ul>
		</div>
	</nav>
    <div class="content">
        <article>
    		<aside id="left">
            	<div class="taikhoan" runat="server">
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
                <div class="calendar">
                	<p>Calendar</p>
                <form id="form1" runat="server">
                <asp:TextBox ID="ShowDate" runat="server" Height="32px" Width="295px"></asp:TextBox>
                <br />
                <div style="height:250px">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="12pt" ForeColor="Black" Height="250px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="298px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#003" Font-Bold="true" Font-Size="7pt" ForeColor="white" Height="12pt" />
                    <DayStyle Width="13%" />
                    <NextPrevStyle Font-Size="10pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="Gray" />
                    <SelectedDayStyle BackColor="Blue" ForeColor="white" />
                    <SelectorStyle BackColor="Black" Font-Bold="true" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="#003" ForeColor="White"/>
                    <TodayDayStyle BackColor="#003" ForeColor="White" />
                    </asp:Calendar>
                </div>
                </form>
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
            	<div class="tab">
                	<button class="tablinks active">sách mới nhất</button>
                    <button class="tablinks">sách xem nhiều</button>
                    <button class="tablinks">sách download nhiều</button>
                <div class="timkiem">
                    <input type="text" class="timkiem_input" name="timkiem" placeholder="Nhập nội dung cần tìm kiếm..."/>
                    <input type="image" src="../Images/search.png" class="timkiem_bt"/>
            	</div>
                </div> 
                <!--sach moi nhat-->
                <div class="noidungtabs" id="sachmoinhat">
                	<div class="sach">
                    	<p class="tensach"><a href="#">Ứng Dụng Trí Tuệ Nhân Tạo Để Dẫn Đầu</a></p>
                        <img class="hinhsach" src="../Images/Sach/AI.jpg"/>
                        <a href="#"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="#">Trí Tuệ Nhân Tạo Trong Marketing</a></p>
                        <img class="hinhsach" src="../Images/Sach/bia-tri-tue-nhan-tao-trong-marketing_96239e39321444559be9c6f154c53668.jpg"/>
                        <a href="#"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="ChiTietSachPSCS6.aspx">Tự Học Thiết Kế Đồ Hoạ Trên Photoshop CS6</a></p>
                        <img class="hinhsach" src="../Images/Sach/PSCS6.jpg"/>
                    	<a href="ChiTietSachPSCS6.aspx"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="ChiTietSachHTML5_CSS3.aspx">HTML5 & CSS3 Thiết Kế Trang Web Thích Ứng Giàu Tính Năng</a></p>
                        <img class="hinhsach" src="../Images/Sach/html5-va-css3-198x300.jpg"/>
                        <a href="ChiTietSachHTML5_CSS3.aspx"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="#">Gián Điệp Mạng</a></p>
                        <img class="hinhsach" src="../Images/Sach/giandiepmang.jpg"/>
                        <a href="#"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                </div>
                <!--sach xem nhieu-->
                <div class="noidungtabs" id="sachxemnhieu">
                	<div class="sach">
                    	<p class="tensach"><a href="ChiTietSachC.aspx">Giáo Trình Kỹ Thuật Lập Trình C</a></p>
                        <img class="hinhsach" src="../Images/Sach/ngonnguC.jpg"/>
                        <a href="ChiTietSachC.aspx"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="ChiTietSachPHP_MySQL.aspx">Giáo Trình Cơ Bản PHP Và MySQL</a></p>
                        <img class="hinhsach" src="../Images/Sach/lap-trinh-co-ban-php-va-mysql.png"/>
                        <a href="ChiTietSachPHP_MySQL.aspx"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="ChiTietSachCSS_HTML.aspx">CSS And HTML Web Design</a></p>
                        <img class="hinhsach" src="../Images/Sach/html_css.jpg"/>
                        <a href="ChiTietSachCSS_HTML.aspx"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="#">AI Trong Cuộc Cách Mạng Công Nghệ 4.0</a></p>
                        <img class="hinhsach" src="../Images/Sach/sach-ai-trong-cuoc-cach-amng-187x300.png"/>
                        <a href="#"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="#">Giáo Trình Quản Trị Mạng</a></p>
                        <img class="hinhsach" src="../Images/Sach/QTmang.jpg"/>
                        <a href="#"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="#">Bóng Ma Trên Mạng</a></p>
                        <img class="hinhsach" src="../Images/Sach/bong-ma.jpg"/>
                        <a href="#"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
				</div>
                    <!--sach downloadnhieu-->
                <div class="noidungtabs" id="sachdownloadnhieu">
                	<div class="sach">
                    	<p class="tensach"><a href="ChiTietSachJava.aspx">Giáo Trình Lập Trình JAVA</a></p>
                        <img class="hinhsach" src="../Images/Sach/ngonngujava.jpg"/>
                        <a href="ChiTietSachJava.aspx"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="ChiTietSachDreamweaver.aspx">Thiết Kế Web Với Dreamweaver</a></p>
                        <img class="hinhsach" src="../Images/Sach/thiet-ke-web-voi-dreamweaver-209x300.jpg"/>
                        <a href="ChiTietSachDreamweaver.aspx"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="#">Code Dạo Ký Sự</a></p>
                        <img class="hinhsach" src="../Images/Sach/codedaokysu.jpg"/>
                        <a href="#"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                    </div>
                    <div class="sach">
                    	<p class="tensach"><a href="#">Giáo Trình Mạng Máy Tính Tổng Hợp</a></p>
                        <img class="hinhsach" src="../Images/Sach/giao-trinh-mang-may-tinh-tong-hop-ebook.jpg"/>
                        <a href="#"><img class="nutdownload" src="../Images/dowload-button.png" /></a>
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
<script>
	for(var i=0;i<buttons.length;i++)
		{
			buttons[i].addEventListener("click",function()
				{
					var id=this.textContent;
					for(var i=0;i<buttons.length;i++)
					{
						buttons[i].classList.remove("active");	
					}
					this.className +=" active";
					if(id=="sách mới nhất")
					{
						showContent('sachmoinhat');
					}
					if(id=="sách xem nhiều")
					{
						showContent('sachxemnhieu');
					}
					if(id=="sách download nhiều")
					{
						showContent('sachdownloadnhieu');
					}
				});	
		}
		showContent('sachmoinhat')
</script>
</body>
</html>
