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
    public partial class DangKy : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void btnDangKy_Click1(object sender, EventArgs e)
        {
            try
            {
                string str1 = @"select * from DOCGIA where TenDN=N'" + txtTenDN.Text + "'";
                string str2 = @"select * from ADMIN where TenDNAdmin=N'" + txtTenDN.Text + "'";

                if (Models.GetData(str1).Rows.Count > 0 || Models.GetData(str2).Rows.Count > 0)
                {
                    lbThongBaoLoi.Text = "Tên đăng nhập đã tồn tại.";
                    txtTenDN.Focus();
                }
                else
                {
                    SqlConnection cnn = new SqlConnection(Models.cnnStr);
                    cnn.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = cnn;
                    cmd.CommandText = @"INSERT INTO DOCGIA (HoTenDG,DiaChiDG,DienThoaiDG,TenDN,MatKhau,NgaySinh,Email)
                     VALUES(@HoTen, @DiaChi, @DienThoai, @TenDN, @MatKhau, @NgaySinh, @Email)";
                    cmd.Parameters.Add("@HoTen", SqlDbType.NVarChar, 50);
                    cmd.Parameters["@HoTen"].Value = txtHoTen.Text;
                    cmd.Parameters.Add("@DiaChi", SqlDbType.NVarChar, 50);
                    cmd.Parameters["@DiaChi"].Value = txtDiaChi.Text;
                    cmd.Parameters.Add("@DienThoai", SqlDbType.VarChar, 10);
                    cmd.Parameters["@DienThoai"].Value = txtDienThoai.Text;
                    cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
                    cmd.Parameters["@TenDN"].Value = txtTenDN.Text;
                    cmd.Parameters.Add("@MatKhau", SqlDbType.VarChar, 15);
                    cmd.Parameters["@MatKhau"].Value = txtMatKhau.Text;
                    cmd.Parameters.Add("@NgaySinh", SqlDbType.SmallDateTime);
                    cmd.Parameters["@NgaySinh"].Value = txtNgaySinh.Text;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                    cmd.Parameters["@Email"].Value = txtEmail.Text;
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    Response.Redirect("~/DangNhap.aspx");
                }
            }
            catch (SqlException ex)
            {
                lbThongBaoLoi.Text = ex.ToString();
            }
        }
    }
}