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
    public partial class GopY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btngui_Click(object sender, EventArgs e)
        {
            try
            {
                string str = "insert into GOPY (HoTen,Email,NoiDung) values(N'" + hoten.Text + "',N'" + email.Text + "',N'" + noidung.Text + "');";
                Models.Execute(str);
                Response.Redirect("default.aspx");
            }
            catch
            {
                lbThongBaoLoi.Text = "Thất bại!";
            }
        }
    }
}