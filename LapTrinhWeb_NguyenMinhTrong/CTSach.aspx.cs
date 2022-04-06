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
    public partial class CTSach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string masach = Request.QueryString["MaSach"];
            DataTable tblSach = Models.GetData("select SACH.MaSach, SACH.TenSach, SACH.MoTa, SACH.NXB, CHUDE.TenChuDe, SACH.SoLanXem, SACH.TacGia, SACH.NamXB, SACH.HinhMinhHoa from SACH inner join CHUDE on SACH.MaCD=CHUDE.MaCD where MaSach = '"+masach.ToString()+"'");
            dlctsach.DataSource = tblSach;
            dlctsach.DataBind();
        }
    }
}