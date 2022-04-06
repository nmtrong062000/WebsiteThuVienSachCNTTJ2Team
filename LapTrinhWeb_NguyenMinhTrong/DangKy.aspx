<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>J2TEAM LIBRARY - ĐĂNG KÝ</title>
    <link rel="stylesheet" type="text/css" href="../CSS/DangNhap.css" />
    <link rel="stylesheet" type="text/css" href="../CSS/DangKy.css" />
</head>

<body style="background: url(../Images/books-1845614_1920.jpg); background-size: cover;">
    <div class="frmdangky">
        <a href="default.aspx">
            <img src="Images/LOGO.png" class="logodangnhap1" /></a>
        <h1>Đăng Ký</h1>
        <form runat="server" name="dangky">
    <div style="text-align:center;">
        <asp:Label ID="Label4" runat="server" Text="Họ và tên"></asp:Label>
        <br />
            <asp:TextBox ID="txtHoTen" CssClass="txtdangky" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtHoTen" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Ngày sinh"></asp:Label>
        <br />
            <asp:TextBox ID="txtNgaySinh" CssClass="txtdangky" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNgaySinh" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <script>
              $(function() {
                $( "#txtNgaySinh" ).datepicker({dateFormat: "MM-dd-yyyy"});
              });
            </script>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Địa chỉ"></asp:Label>
        <br />
            <asp:TextBox ID="txtDiaChi" CssClass="txtdangky" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Số điện thoại"></asp:Label>
        <br />
            <asp:TextBox ID="txtDienThoai" CssClass="txtdangky" runat="server" TextMode="Phone"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDienThoai" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        <br />
            <asp:TextBox ID="txtEmail" CssClass="txtdangky" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </div>
            <table class="tbldangky">
                <tr>
                    <td>
                        <p class="dk_left">Tên đăng nhập:</p>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTenDN" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtTenDN" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p class="dk_left">Mật khẩu:</p>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p class="dk_left">Nhập lại mật khẩu:</p>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNhapLaiMatKhau" runat="server" ControlToValidate="txtNhapLaiMatKhau"  ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        <div class="btndangky">
            <asp:CompareValidator ID="cvNLMK" ControlToValidate="txtNhapLaiMatKhau" runat="server" ControlToCompare="txtMatKhau" ErrorMessage="Mật khẩu không trùng khớp!" ForeColor="#FF3300"></asp:CompareValidator>
            <br />
            <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click1" />
            <br />
            <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="#FF3300"></asp:Label>
        </div>
        </form>
    </div>
</body>
</html>
