using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LapTrinhWeb_NguyenMinhTrong
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(Models.cnnStr);
            timkiem.Visible = false;
            btGioC.Visible = false;
            Gio.Visible = false;
            btTimKiemC.Visible = false;
            if(Session["TenDN"]!=null)
            {
                aTaiKhoan.Visible = false;
                aDangNhap.Visible = false;
                aDangKy.Visible = false;
                aQuanTri.Visible = false;
                aTTTKDG.Visible = true;
                lbTenTK.Visible = true;
                aTTTKAD.Visible = false;
                lbTenTK.Text = "Xin chào: " + Session["TenDN"].ToString();
                btDangXuat.Visible = true;
            }
            else
                if (Session["TenDNAdmin"] != null)
                {
                    aTaiKhoan.Visible = false;
                    aDangNhap.Visible = false;
                    aDangKy.Visible = false;
                    aTTTKAD.Visible = true;
                    lbTenTK.Visible = true;
                    aQuanTri.Visible = true;
                    aTTTKDG.Visible = false;
                    lbTenTK.Text = "Xin chào: " + Session["TenDNAdmin"].ToString();
                    btDangXuat.Visible = true;
                }
                else
                {
                    aTaiKhoan.Visible = true;
                    aDangNhap.Visible = true;
                    aDangKy.Visible = true;
                    aTTTKDG.Visible = false;
                    lbTenTK.Visible = false;
                    aQuanTri.Visible = false;
                    aTTTKAD.Visible = false;
                    lbTenTK.Text = "";
                    btDangXuat.Visible = false;
                }

        }

        protected void btTimKiemO_Click(object sender, EventArgs e)
        {
            timkiem.Visible = true;
            btTimKiemC.Visible = true;
            btTimKiemO.Visible = false;
            Gio.Visible = false;
            btGioO.Visible = true;
            btGioC.Visible = false;

        }

        protected void btTimKiemC_Click(object sender, EventArgs e)
        {
            timkiem.Visible = false;
            btTimKiemC.Visible = false;
            btTimKiemO.Visible = true;
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            timkiem.Visible = false;
            btTimKiemC.Visible = false;
            btTimKiemO.Visible = true;
            txttimkiem.Text = "";
        }

        protected void btGioO_Click(object sender, EventArgs e)
        {
            btGioC.Visible = true;
            Gio.Visible = true;
            btGioO.Visible = false;
            timkiem.Visible = false;
            btTimKiemO.Visible = true;
            btTimKiemC.Visible = false;
        }

        protected void btGioC_Click(object sender, EventArgs e)
        {
            btGioC.Visible = false;
            Gio.Visible = false;
            btGioO.Visible = true;
        }

        protected void btDangXuat_Click1(object sender, EventArgs e)
        {
            Session["TenDN"] = null;
            Session["TenDNAdmin"] = null;
            Response.Redirect("default.aspx");
        }

        protected void btTimKiem1_Click(object sender, EventArgs e)
        {
            Session["Keyword"] = txttimkiem.Text;
            Response.Redirect("TimKiem.aspx");
            Session["Keyword"] = null;
        }
    }
}