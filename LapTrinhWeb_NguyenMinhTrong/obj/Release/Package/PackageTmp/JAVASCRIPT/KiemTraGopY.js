// JavaScript Document

// JavaScript Document

function KiemTraGopY()
{
	/*Thông báo khi thông tin hợp lệ*/
	alert('Đã ghi nhận! Cảm ơn bạn đã góp ý. ');
	return true;	
}
function KiemTra()
{
	var hoTen=document.getElementById("hoten");
	if(hoTen.value=="")
	{
		alert("Vui lòng nhập Họ Tên.");
		hoTen.focus();
		return false;
	}
	/*var email=window.document.dangky.txtEmail;*/
	var email=document.getElementById("email");
	re=/\w+@\w+\.\w+/;
	if(email.value=="")
	{
		alert("Bạn chưa nhập Email.");
		email.focus();
		return false;	
	}
	else
		if(re.test(email.value)==false)
		{
			alert("Email không đúng định dạng!");
			email.focus();
			return false;	
		}
	var noiDung=document.getElementById("noidung");
	if(noiDung.value=="")
	{
		alert("Bạn chưa nhập Nội Dung.");
		noiDung.focus();
		return false;
	}
}