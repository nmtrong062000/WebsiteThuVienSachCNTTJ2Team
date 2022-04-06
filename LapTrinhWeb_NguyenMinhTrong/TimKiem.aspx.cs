using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LapTrinhWeb_NguyenMinhTrong
{
    public partial class TimKiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Keyword"] != null)
            {
                txttimkiem.Text = Session["Keyword"].ToString();
                Session["Keyword"] = null;
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}