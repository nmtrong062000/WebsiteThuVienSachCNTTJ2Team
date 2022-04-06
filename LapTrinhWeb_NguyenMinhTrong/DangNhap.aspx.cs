using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LapTrinhWeb_NguyenMinhTrong
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btndangnhap_Click1(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = Models.GetData("select * from DOCGIA where TenDN='" + taikhoan.Text + "' and MatKhau='" + matkhau.Text + "'");
                DataTable dtad = Models.GetData("select * from ADMIN where TenDNAdmin='" + taikhoan.Text + "' and MatKhauAdmin='" + matkhau.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    Session["TenDN"] = taikhoan.Text;
                    Response.Redirect("~/default.aspx");
                }
                else
                    if (dtad.Rows.Count > 0)
                    {
                        Session["TenDNAdmin"] = taikhoan.Text;
                        Response.Redirect("~/default.aspx");
                    }
                    else
                    lbLoi.Text = "Tài khoản hoặc mật khẩu không chính xác!";
            }
            catch
            {
                lbLoi.Text = "Thất bại!";
            }
        }
    }
}