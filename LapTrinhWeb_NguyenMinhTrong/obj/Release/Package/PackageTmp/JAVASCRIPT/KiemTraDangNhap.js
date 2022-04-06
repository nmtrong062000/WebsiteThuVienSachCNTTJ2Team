// JavaScript Document

// JavaScript Document

function KiemTraDangNhap()
{
	/*Thông báo khi thông tin hợp lệ*/
	alert('Đăng Nhập Thành Công! ');
	return true;	
}
function KiemTra()
{
	var taiKhoan=document.getElementById("taikhoan");
	if(taiKhoan.value=="")
	{
		alert("Vui lòng nhập Tên Tài Khoản.");
		taiKhoan.focus();
		return false;
	}
	var matKhau=document.getElementById("matkhau");
	if(matKhau.value=="")
	{
		alert("Bạn chưa nhập Mật Khẩu");
		matKhau.focus();
		return false;
	}
	if(matKhau.value!="nmtrong"||taiKhoan.value!="nmtrong")
	{
		alert("Thông tin tài khoản hoặc mật khẩu không chính xác!");
		return false;
	}
}