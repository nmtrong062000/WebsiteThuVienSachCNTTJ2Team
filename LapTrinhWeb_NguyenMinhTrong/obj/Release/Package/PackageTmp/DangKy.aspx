<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>J2TEAM LIBRARY - ĐĂNG KÝ</title>
<link rel="stylesheet" type="text/css" href="../CSS/Header.css">
<link rel="stylesheet" type="text/css" href="../CSS/Nav.css">
<link rel="stylesheet" type="text/css" href="../CSS/Left.css">
<link rel="stylesheet" type="text/css" href="../CSS/Section.css">
<link rel="stylesheet" type="text/css" href="../CSS/Footer.css">
<link rel="stylesheet" type="text/css" href="../CSS/DangNhap.css">
<link rel="stylesheet" type="text/css" href="../CSS/DangKy.css">
<script src="../JAVASCRIPT/KiemTraDangKy.js">
</script>
</head>

<body>
            	<div class="frmdangky">
        		<a href="Default.aspx"><img src="../Images/j2.png" class="logodangnhap"></a>
            	<h1>Đăng Ký</h1>
            	<form action="#" name="dangky" method="post" onsubmit="return KiemTraThongTin()">
            		<fieldset>
                		<legend><b>Thông tin cá nhân</b></legend>
                    	<table>
                    		<tr>
                        		<td>Họ và tên:</td>
                            	<td><input id="hoten" type="text" name="txtHoTen" /></td>
                        	</tr>
                        	<tr>
                        		<td>Ngày sinh:</td>
                            	<td><select class="date" name="Ngay">
                                	<option value="01" selected>01</option>
                                	<option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                    <option value="07">07</option>
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                  </select>
                                  Tháng
                                  <select class="date" name="Thang">
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                    <option value="07">07</option>
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                  </select>
                                  Năm
                                  <input class="date" id="nam" type="text" size="3" name="txtNam" />
                                    </td>
                              </tr>
                              <tr>
                                <td>Giới tính:</td>
                                <td><input id="gioitinh" type="radio" name="radGioitinh" value="Nam" checked />Nam
                                  <input id="gioitinh" type="radio" name="radGioitinh" value="Nữ" />Nữ</td>
                              </tr>
                              <tr>
                                <td>Địa chỉ:</td>
                                <td><blockquote>
                                  <p name="diachi">
                                    <textarea id="diachi" name="diachi2"></textarea>
                                  </p>
                                </blockquote></td>
                              </tr>
                              <tr>
                                <td>Điện thoại:</td>
                                <td><input id="dienthoai" type="tel" /></td>
                              </tr>
                              <tr>
                                <td>Email:</td>
                                <td><input id="email" type="email" required name="txtEmail"/></td>
                              </tr>
                            </table>
                          </fieldset>
                            <fieldset>
                              <legend><b>Thông tin đăng nhập</b></legend>
                              <table>
                                <tr>
                                  <td>Tên đăng nhập:</td>
                                  <td><input id="tendangnhap" type="text" name="txtTenDangNhap" /></td>
                                </tr>
                                <tr>
                                  <td>Mật khẩu:</td>
                                  <td><input id="matkhau" type="password" required="required" name="txtMatKhau"/></td>
                                </tr>
                                <tr>
                                  <td>Nhập lại mật khẩu:</td>
                                  <td><input id="nhaplaimatkhau" type="password" required="required" name="txtNhapLaiMatKhau"/></td>
                                </tr>
                              </table>
                            </fieldset>
                            <div align="center">
                                <button id="btndangky" type="submit" onclick="return KiemTra()">Đăng ký</button>
                                <button id="btnreset" type="reset">Huỷ</button>
                            </div>
        		</form>
				</div>
</body>
</html>
