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
    public partial class ThongTinDG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = Models.GetData("select HoTenDG, DiaChiDG, convert(varchar,NgaySinh,103),Email,DienThoaiDG from DOCGIA where TenDN='" + Session["TenDN"] + "'");
            if (dt.Rows.Count > 0)
            {
                lbhoten.Text = dt.Rows[0][0].ToString();
                lbdiachi.Text = dt.Rows[0][1].ToString();
                lbngaysinh.Text = dt.Rows[0][2].ToString();
                lbemail.Text = dt.Rows[0][3].ToString();
                lbsdt.Text = dt.Rows[0][4].ToString();
            }
            DataTable tbldangmuon = Models.GetData("select PHIEUMUON.MaPM as N'Mã Phiếu Mượn', SACH.TenSach as N'Tên Sách', convert(varchar,PHIEUMUON.NgayMuon,103) as N'Ngày Mượn', convert(varchar,PHIEUMUON.NgayHenTra,103) as N'Ngày Hẹn Trả', (case when PHIEUMUON.TrangThai=0 then N'Chưa trả' else N'Đã trả' end) as N'Trạng thái', (case when PHIEUMUON.GiaHan=0 then N'Chưa Gia Hạn' else N'Đã Gia Hạn' end) as N'Gia Hạn' from CTPHIEUMUON inner join PHIEUMUON on CTPHIEUMUON.MaPM=PHIEUMUON.MaPM inner join SACH on SACH.MaSach=CTPHIEUMUON.MaSach inner join DOCGIA on DOCGIA.MaDG=PHIEUMUON.MaDG where DOCGIA.TenDN='" + Session["TenDN"]+ "' and TrangThai=0");
            DataTable tbldamuon = Models.GetData("select PHIEUMUON.MaPM as N'Mã Phiếu Mượn', SACH.TenSach as N'Tên Sách', convert(varchar,PHIEUMUON.NgayMuon,103) as N'Ngày Mượn', convert(varchar,PHIEUMUON.NgayHenTra,103) as N'Ngày Hẹn Trả', convert(varchar,PHIEUMUON.NgayTra,103) as N'Ngày Trả', (case when PHIEUMUON.TrangThai=0 then N'Chưa trả' else N'Đã trả' end) as N'Trạng thái' from CTPHIEUMUON inner join PHIEUMUON on CTPHIEUMUON.MaPM=PHIEUMUON.MaPM inner join SACH on SACH.MaSach=CTPHIEUMUON.MaSach inner join DOCGIA on DOCGIA.MaDG=PHIEUMUON.MaDG where DOCGIA.TenDN='" + Session["TenDN"] + "' and TrangThai=1");
            gvDangMuon.DataSource = tbldangmuon;
            gvDangMuon.DataBind();
            gvDaMuon.DataSource = tbldamuon;
            gvDaMuon.DataBind();
            if (!IsPostBack)
            {
                int index;
                if (Session["chimucdg"] == null)
                {
                    index = 0;
                    MultiView1.ActiveViewIndex = index;
                }
                else
                {
                    index = int.Parse(Session["chimucdg"].ToString());
                    MultiView1.ActiveViewIndex = index;
                }
            }
        }

        protected void btnView1_Click(object sender, EventArgs e)
        {
                MultiView1.ActiveViewIndex = 0;
            Session["chimucdg"] = 0;
        }
        protected void btnView2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            Session["chimucdg"] = 1;
        }
        protected void btnView3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            Session["chimucdg"] = 2;
        }

        protected void btnGiaHan_Click(object sender, EventArgs e)
        {
            try
            {
                string str = ("select datediff(day,NgayHenTra,getdate()) from PHIEUMUON inner join DOCGIA on PHIEUMUON.MaDG=DOCGIA.MaDG where TenDN=N'"+Session["TenDN"]+"' and TrangThai=0");
                string str1 = ("select * from PHIEUMUON inner join DOCGIA on PHIEUMUON.MaDG=DOCGIA.MaDG where TenDN=N'" + Session["TenDN"] + "' and TrangThai=0 and GiaHan=0");
                string ngay = Models.GetValue(str);
                DataTable tbl = Models.GetData(str1);
                int songay = Int32.Parse(ngay);
                lbThongBaoLoi.Text = ngay.ToString();
                if (songay <= 0)
                {
                    if(tbl.Rows.Count>0)
                    {
                        string iddg = "select MaDG from DOCGIA where TenDN=N'" + Session["TenDN"] + "'";
                        string madg = Models.GetValue(iddg);
                        string str3 = "update PHIEUMUON set NgayHenTra=DATEADD(DAY, 10, NgayHenTra), GiaHan=1 where MaDG=" + madg.ToString() + " and TrangThai=0";
                        Models.Execute(str3);
                        Response.Redirect("ThongTinDG.aspx");
                        lbThongBaoLoi.Text = "Gia hạn thành công!";
                    }
                    else
                        lbThongBaoLoi.Text = "Không thể gia hạn. Mỗi phiếu mượn chỉ gia hạn một lần.";
                }
                else
                {
                    string str2 = @"select sum(CTPHIEUMUON.SoLuong) 
                                   from PHIEUMUON inner join CTPHIEUMUON on PHIEUMUON.MaPM = CTPHIEUMUON.MaPM inner
                                   join DOCGIA on DOCGIA.MaDG = PHIEUMUON.MaDG
                                   where DOCGIA.TenDN = N'"+Session["TenDN"]+"' and PHIEUMUON.TrangThai = 0 and datediff(day, PHIEUMUON.NgayHenTra, getdate())> 0 group by PHIEUMUON.MaPM";
                    string quahan = Models.GetValue(str2);
                    int slquahan = Int32.Parse(quahan);
                    lbThongBaoLoi.Text = "Sách đã quá hạn mượn (" + ngay.ToString() + " ngày, số lượng sách: "+slquahan.ToString()+"). Mời độc giả đến thư viện tiến hành trả sách và đóng phạt: " + (slquahan*songay * 2000).ToString() + " VNĐ (2000VNĐ/ngày/cuốn)";
                }
                    
            }
            catch( Exception ex)
            {
                lbThongBaoLoi.Text = ex.ToString();
                //lbThongBaoLoi.Text = "Thất bại!";
            }
        }

        protected void btndmk_Click(object sender, EventArgs e)
        {
            string str = "select * from DOCGIA where TenDN=N'" + Session["TenDN"] + "' and MatKhau=N'" + txtmkht.Text + "'";
            DataTable tbl = Models.GetData(str);
            if (tbl.Rows.Count > 0)
            {
                string str1 = "update DOCGIA set MatKhau=N'" + txtmkm.Text + "' where TenDN=N'" + Session["TenDN"] + "'";
                Models.Execute(str1);
                lbLoiMK.Text = "Đổi mật khẩu thành công!";
            }
            else
                lbLoiMK.Text = "Mật khẩu hiện tại không chính xác.";
        }
    }
}