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
    public partial class ThongTinAD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = Models.GetData("select HoTenAdmin, DiaChiAdmin, convert(varchar,NgaySinhAdmin,103),EmailAdmin,DienThoaiAdmin from ADMIN where TenDNAdmin='" + Session["TenDNAdmin"] + "'");
            if (dt.Rows.Count > 0)
            {
                lbhoten.Text = dt.Rows[0][0].ToString();
                lbdiachi.Text = dt.Rows[0][1].ToString();
                lbngaysinh.Text = dt.Rows[0][2].ToString();
                lbemail.Text = dt.Rows[0][3].ToString();
                lbsdt.Text = dt.Rows[0][4].ToString();
            }
        }
    }
}