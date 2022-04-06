<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>J2TEAM LIBRARY - ĐĂNG NHẬP</title>
<link rel="stylesheet" type="text/css" href="../CSS/Header.css">
<link rel="stylesheet" type="text/css" href="../CSS/Nav.css">
<link rel="stylesheet" type="text/css" href="../CSS/Left.css">
<link rel="stylesheet" type="text/css" href="../CSS/Section.css">
<link rel="stylesheet" type="text/css" href="../CSS/Footer.css">
<link rel="stylesheet" type="text/css" href="../CSS/DangNhap.css">
<link rel="stylesheet" type="text/css" href="../CSS/DangKy.css">
<script src="../JAVASCRIPT/KiemTraDangNhap.js">
</script>
</head>

<body style="background:url(../Images/books-1845614_1920.jpg); background-size:cover;">
	<div class="main">
        <form runat="server">
            <div class="dangnhap1">
                    <div class="frmdangnhap" runat="server">
                    	<a href="default.aspx"><img src="Images/LOGO.png" class="logodangnhap" /></a>
                        <h1>Đăng Nhập</h1>
                            <p>Tên tài khoản:</p>
                            <asp:TextBox CssClass="style" ID="taikhoan" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTaiKhoan" runat="server" ControlToValidate="taikhoan" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <p>Mật khẩu:</p>
                            <asp:TextBox CssClass="style" ID="matkhau" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ControlToValidate="matkhau" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:Button id="btndangnhap" runat="server" Text="Đăng Nhập" OnClick="btndangnhap_Click1"></asp:Button>
                            <br />
                            <asp:Label ID="lbLoi" runat="server" ForeColor="#FF3300"></asp:Label>
                            <br />
                            <asp:HyperLink ID="qmk" runat="server" NavigateUrl="#">Quên mật khẩu?</asp:HyperLink>
                            <div>Nếu chưa có tài khoản vui lòng đăng ký <asp:HyperLink ID="dk" runat="server" NavigateUrl="~/DangKy.aspx">tại đây</asp:HyperLink>
                            </div>
                        
                    </div>
            </div>
         </form>
    </div>
</body>
</html>