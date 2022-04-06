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
    public partial class TrangQuanTri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str=@"select 1 from ADMIN where TenDNAdmin=N'"+Session["TenDNAdmin"]+"'";
            DataTable tblAD = Models.GetData(str);
            if(tblAD.Rows.Count>0)
            {
                VUNGSACH.Visible = false;
                VUNGDOCGIA.Visible = false;
                VUNGNCC.Visible = false;
                VUNGPHIEUMUON.Visible = false;
                VUNGCTPM.Visible = false;
                if (!IsPostBack)
                {
                    int index;
                    if (Session["chimuc"] == null)
                    {
                        index = 0;
                        MultiView1.ActiveViewIndex = index;
                    }
                    else
                    {
                        index = int.Parse(Session["chimuc"].ToString());
                        MultiView1.ActiveViewIndex = index;
                    }
                }
            }
            else
            {
                Response.Redirect("default.aspx");
                Response.Write("<script>alert('Trang này dành cho Admin. Hãy đăng nhập bằng tai khoản Admin để sử dụng!')</script>");
                
            }
            
        }
        protected void btnView1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            Session["chimuc"] = 0;
        }

        protected void btnView2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            Session["chimuc"] = 1;
        }

        protected void btnView3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            Session["chimuc"] = 2;
        }

        protected void btnView4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
            Session["chimuc"] = 3;
        }

        protected void btnView5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
            Session["chimuc"] = 4;
        }
        protected void btnView6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
            Session["chimuc"] = 6;
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(gvSach.Rows[chiso].Cells[0].Text);
                    string str = "DELETE FROM SACH WHERE MaSach=" + ma;
                    Models.Execute(str);
                    Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 0");
                }
                catch
                {
                    lbLoi.Text = "Thất bại!";
                }
            }
        }
        

        protected void gvSach_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int masach = int.Parse(gvSach.DataKeys[e.RowIndex].Value.ToString());
            string tensach = (gvSach.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string macd = (gvSach.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string nxb = (gvSach.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            string tacgia = (gvSach.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
            string mancc = (gvSach.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
            string namxb = (gvSach.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
            string link_hinh = (gvSach.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox).Text;
            SqlConnection con = new SqlConnection(Models.cnnStr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.Parameters.Add("@ngaycapnhat", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaycapnhat"].Value = (gvSach.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox).Text;
            
            if (tensach == "")
            {
                Response.Write("<script>alert('Tên không được rỗng')</script>");
            }
            else
            {
                cmd.CommandText = @"UPDATE SACH SET TenSach = N'" + tensach + "', MaCD =" + macd + ", NXB = N'" + nxb + "', TacGia =  N'" + tacgia + "', MaNCC = " + mancc + ",NamXB="+namxb+",NgayCapNhat = @ngaycapnhat,HinhMinhHoa=N'"+link_hinh+"' WHERE MaSach =" + masach;
                cmd.ExecuteNonQuery();
                con.Close();
                gvSach.EditIndex = -1;
                Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 0");
            }
        }
        
        protected void btnThem_Click(object sender, EventArgs e)
        {
            int macd,namxb;
            string tensach, nhaxb, link_hinh, tacgia;
            macd = int.Parse(txt_MaCD.Text);
            namxb = int.Parse(txtnamxb.Text);
            tensach = txtnew_name.Text;
            nhaxb = txtnxb.Text;
            link_hinh = txtimg_link.Text;
            tacgia = txttg.Text;
            
            try
            {
                SqlConnection con = new SqlConnection(Models.cnnStr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO SACH(TenSach,MaCD,NamXB,NXB,TacGia,NgayCapNhat,HinhMinhHoa) VALUES (N'"+tensach+"',"+macd+","+namxb+",N'"+nhaxb+"',N'"+tacgia+"',@ngaycapnhat,N'"+link_hinh+"')";
                cmd.Parameters.Add("@ngaycapnhat", SqlDbType.SmallDateTime);
                cmd.Parameters["@ngaycapnhat"].Value = txtngaycn.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 0");
            }
            catch
            {
                lbLoi.Text = "Lỗi khi thêm sách";
                Response.Write("<script>alert('Lỗi khi thêm sách')</script>");
            }
        }
        


        protected void btnThemSach_Click(object sender, EventArgs e)
        {
            VUNGSACH.Visible = true;
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            VUNGSACH.Visible = false;
        }

        protected void btnHuy1_Click(object sender, EventArgs e)
        {
            VUNGDOCGIA.Visible = false;
        }

        protected void btnThem1_Click(object sender, EventArgs e)
        {
            string tendg, diachi, dienthoai, tendn, matkhau, email;
            tendg = txttendg.Text;
            diachi = txtdcdg.Text;
            dienthoai = txtsdtdg.Text;
            tendn = txttendndg.Text;
            matkhau = txtmkdg.Text;
            email = txtemaildg.Text;
            try
            {
                SqlConnection con = new SqlConnection(Models.cnnStr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO DOCGIA(HoTenDG,DiaChiDG,DienThoaiDG,TenDN,MatKhau,NgaySinh,Email) VALUES (N'" + tendg + "',N'" + diachi + "N',N'" +dienthoai + "',N'" + tendn + "',N'" + matkhau + "',@ngaysinh,N'" + email + "')";
                cmd.Parameters.Add("@ngaysinh", SqlDbType.SmallDateTime);
                cmd.Parameters["@ngaysinh"].Value = txtnsdg.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 1");
            }
            catch
            {
                lbLoi.Text = "Lỗi khi thêm độc giả";
                Response.Write("<script>alert('Lỗi khi thêm độc giả')</script>");
            }
        }

        protected void gvDocGia_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "XoaDG")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(gvDocGia.Rows[chiso].Cells[0].Text);
                    string str = "DELETE FROM DOCGIA WHERE MaDG=" + ma;
                    Models.Execute(str);
                    Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 1");
                }
                catch
                {
                    lbLoi.Text = "Thất bại!";
                }
            }
        }

        protected void gvDocGia_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int madocgia = int.Parse(gvDocGia.DataKeys[e.RowIndex].Value.ToString());
            string tendg = (gvDocGia.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string diachi = (gvDocGia.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string dienthoai = (gvDocGia.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            string tendn = (gvDocGia.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
            string matkhau = (gvDocGia.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
            string email = (gvDocGia.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox).Text;
            SqlConnection con = new SqlConnection(Models.cnnStr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.Parameters.Add("@ngaysinh", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaysinh"].Value = (gvDocGia.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;

            if (tendg == "")
            {
                Response.Write("<script>alert('Tên không được rỗng')</script>");
            }
            else
            {
                cmd.CommandText = @"UPDATE DOCGIA SET HoTenDG = N'" + tendg + "', DiaChiDG =N'" + diachi + "', DienThoaiDG = N'" + dienthoai + "', TenDN =  N'" + tendn + "', MatKhau = N'" + matkhau + "',NgaySinh=@ngaysinh ,Email = N'"+email+"' WHERE MaDG =" + madocgia;
                cmd.ExecuteNonQuery();
                con.Close();
                gvSach.EditIndex = -1;
                Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 1");
            }
        }

        protected void btnThemDG_Click1(object sender, EventArgs e)
        {
            VUNGDOCGIA.Visible = true;
        }

        protected void btnThemNCC_Click(object sender, EventArgs e)
        {
            VUNGNCC.Visible = true;
        }

        protected void btnThemNCC1_Click(object sender, EventArgs e)
        {
            string tenncc, diachi, dienthoai;
            tenncc = txttenncc.Text;
            diachi = txtdcncc.Text;
            dienthoai = txtdtncc.Text;
            try
            {
                SqlConnection con = new SqlConnection(Models.cnnStr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO NHACUNGCAP(TenNCC,DiaChi,SDT) VALUES (N'" + tenncc + "',N'" + diachi + "N',N'" + dienthoai + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 2");
            }
            catch
            {
                lbLoi.Text = "Lỗi khi thêm nhà cung cấp";
                Response.Write("<script>alert('Lỗi khi thêm nhà cung cấp')</script>");
            }
        }

        protected void btnHuyNCC_Click(object sender, EventArgs e)
        {
            VUNGNCC.Visible = false;
        }

        protected void gvNCC_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "XoaNCC")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(gvNCC.Rows[chiso].Cells[0].Text);
                    string str = "DELETE FROM NHACUNGCAP WHERE MaNCC=" + ma;
                    Models.Execute(str);
                    Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 2");
                }
                catch
                {
                    lbLoi.Text = "Thất bại!";
                }
            }
        }

        protected void gvNCC_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int mancc = int.Parse(gvNCC.DataKeys[e.RowIndex].Value.ToString());
            string tenncc = (gvNCC.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string diachi = (gvNCC.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string dienthoai = (gvNCC.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            SqlConnection con = new SqlConnection(Models.cnnStr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            if (tenncc == "")
            {
                Response.Write("<script>alert('Tên không được rỗng')</script>");
            }
            else
            {
                cmd.CommandText = @"UPDATE NHACUNGCAP SET TenNCC = N'" + tenncc + "', DiaChi =N'" + diachi + "', SDT = N'" + dienthoai + "' WHERE MaNCC =" + mancc;
                cmd.ExecuteNonQuery();
                con.Close();
                gvNCC.EditIndex = -1;
                Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 2");
            }
        }

        protected void btnThemPM_Click(object sender, EventArgs e)
        {
            VUNGPHIEUMUON.Visible = true;
        }

        protected void btnHuyPM_Click(object sender, EventArgs e)
        {
            VUNGPHIEUMUON.Visible = false;
        }

        protected void btnThemPM1_Click(object sender, EventArgs e)
        {
            int madg, matt;
            madg = int.Parse(txtmadg.Text);
            matt = int.Parse(txtmatt.Text);
            try
            {
                SqlConnection con = new SqlConnection(Models.cnnStr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO PHIEUMUON(MaDG,MaTT,NgayHenTra) VALUES ("+madg+","+matt+",@ngayhentra)";
                cmd.Parameters.Add("@ngayhentra", SqlDbType.SmallDateTime);
                cmd.Parameters["@ngayhentra"].Value = txtngayhentra.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 3");
            }
            catch
            {
                lbLoi.Text = "Lỗi khi thêm phiếu mượn";
                Response.Write("<script>alert('Lỗi khi thêm phiếu mượn')</script>");
            }
        }

        protected void gvPM_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "XoaPM")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(gvPM.Rows[chiso].Cells[0].Text);
                    string str = "DELETE FROM PHIEUMUON WHERE MaPM=" + ma;
                    Models.Execute(str);
                    Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 3");
                }
                catch
                {
                    lbLoi.Text = "Thất bại!";
                }
            }
        }

        protected void gvPM_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int tt, gh;
            int mapm = int.Parse(gvPM.DataKeys[e.RowIndex].Value.ToString());
            string madg = (gvPM.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            string matt = (gvPM.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
            CheckBox trangthai = gvPM.Rows[e.RowIndex].Cells[5].Controls[0] as CheckBox;
            CheckBox giahan = gvPM.Rows[e.RowIndex].Cells[7].Controls[0] as CheckBox;
            if (trangthai.Checked)
            {
                tt = 1;
            }
            else
                tt = 0;
            if (giahan.Checked)
            {
                gh = 1;
            }
            else
                gh = 0;
            SqlConnection con = new SqlConnection(Models.cnnStr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.Parameters.Add("@ngaymuon", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaymuon"].Value = (gvPM.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            cmd.Parameters.Add("@ngayhentra", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngayhentra"].Value = (gvPM.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            cmd.Parameters.Add("@ngaytra", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaytra"].Value = (gvPM.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
            if (madg.ToString() == "")
            {
                Response.Write("<script>alert('Mã độc giả không được rỗng')</script>");
            }
            else
            {
                cmd.CommandText = @"UPDATE PHIEUMUON SET MaDG = " + madg + ",MaTT = " + matt + ",TrangThai = " + tt + ", GiaHan = " + gh + ",NgayMuon = @ngaymuon ,NgayHenTra = @ngayhentra ,NgayTra = @ngaytra WHERE MaPM =" + mapm;
                cmd.ExecuteNonQuery();
                con.Close();
                gvNCC.EditIndex = -1;
                Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 3");
            }
        }

        protected void btnThemCTPM_Click(object sender, EventArgs e)
        {
            VUNGCTPM.Visible = true;
        }

        protected void btnHuyCTPM_Click(object sender, EventArgs e)
        {
            VUNGCTPM.Visible = false;
        }

        protected void btnThemCTPM1_Click(object sender, EventArgs e)
        {
            int mapm, masach,soluong;
            mapm = int.Parse(txtmapm.Text);
            masach = int.Parse(txtmasach.Text);
            soluong = int.Parse(txtsoluong.Text);
            try
            {
                SqlConnection con = new SqlConnection(Models.cnnStr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO CTPHIEUMUON(MaPM,MaSach,SoLuong) VALUES (" + mapm + "," + masach + "," + soluong + ")";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 4");
            }
            catch
            {
                lbLoi.Text = "Lỗi khi thêm chi tiết phiếu mượn";
                Response.Write("<script>alert('Lỗi khi thêm chi tiết phiếu mượn')</script>");
            }
        }

        protected void gvCTPM_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "XoaCTPM")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int mapm = int.Parse(gvCTPM.Rows[chiso].Cells[0].Text);
                    int masach = int.Parse(gvCTPM.Rows[chiso].Cells[1].Text);
                    string str = "DELETE FROM CTPHIEUMUON WHERE MaPM=" + mapm +" and MaSach="+masach;
                    Models.Execute(str);
                    Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 4");
                }
                catch
                {
                    lbLoi.Text = "Thất bại!";
                }
            }
        }

        protected void gvCTPM_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //int ma = int.Parse(gvCTPM.DataKeys[e.RowIndex].Value.ToString());
            //string mapm = (gvCTPM.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text;
            //string masach = (gvCTPM.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            //string soluong = (gvCTPM.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            //SqlConnection con = new SqlConnection(Models.cnnStr);
            //con.Open();
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.Connection = con;
            //if (soluong.ToString() == "")
            //{
            //    Response.Write("<script>alert('Số lượng không được rỗng')</script>");
            //}
            //else
            //{
            //    cmd.CommandText = @"UPDATE CTPHIEUMUON SET SoLuong = " + soluong + "WHERE MaPM =" + ma + " and MaSach=" + masach;
            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    gvNCC.EditIndex = -1;
            //    Response.Redirect("TrangQuanTri.aspx?MultiView1.ActiveViewIndex = 4");
            //}
        }
    }
}