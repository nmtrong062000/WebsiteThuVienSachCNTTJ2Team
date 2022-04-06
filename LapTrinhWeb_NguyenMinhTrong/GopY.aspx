<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GopY.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.GopY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>J2TEAM LIBRARY - GÓP Ý</title>
<link rel="stylesheet" type="text/css" href="../CSS/Header.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Nav.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Left.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Section.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Footer.css" />
<link rel="stylesheet" type="text/css" href="../CSS/DangNhap.css" />
<link rel="stylesheet" type="text/css" href="../CSS/DangKy.css" />
    <link rel="stylesheet" type="text/css" href="../CSS/GopY.css" />
</head>

<body style="background:url(../Images/books-1845614_1920.jpg); background-size:cover;">
	<div class="main">
            <div class="gopy">
                	<div class="frmgopy" runat="server">
                    <a href="Default.aspx"><img src="Images/LOGO.png" class="logodangnhap2" /></a>
            		<h1>Góp Ý</h1>
                    <form runat="server">
                            <p>Họ Và Tên:</p>
                            <asp:TextBox CssClass="style" ID="hoten" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="dk_rong" ID="rfvHoTen" runat="server" ControlToValidate="hoten" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            
                            <p>Email:</p>
                            <asp:TextBox CssClass="style" ID="email" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="dk_rong" ID="rfvEmail" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            
                            <p>Nội Dung:</p>
                            <asp:TextBox runat="server" CssClass="style" ID="noidung" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="dk_rong" ID="rfvNoiDung" runat="server" ControlToValidate="noidung" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            
                      <div align="center">
                          <asp:Button ID="btngui" runat="server" Text="Gửi" OnClick="btngui_Click" />
                          <br />
                          <br />
                          <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="#FF3300"></asp:Label>
                      </div>
                    </form>
                    </div>
                </div>
    </div>
</body>
</html>