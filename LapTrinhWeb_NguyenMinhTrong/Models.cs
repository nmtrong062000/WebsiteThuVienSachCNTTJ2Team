using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace LapTrinhWeb_NguyenMinhTrong
{
    public class Models
    {
        public static string cnnStr = "Data Source=DESKTOP-41NHUPB\\SQLEXPRESS;Initial Catalog=DoAn_LTW;Integrated Security=True";
        public static DataTable GetData(string lenhSQL) //thuc hien cau truy van sql tra ve mot DataTable
        {
            SqlConnection sqlCon = new SqlConnection(cnnStr);
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(lenhSQL, sqlCon);
                DataTable tbl = new DataTable();
                da.Fill(tbl);
                return tbl;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void Execute(string lenhSQL) //cau lenh cap nhat du lieu (Insert, Delete, Update)
        {
            using (SqlConnection sqlCon = new SqlConnection(Models.cnnStr))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
            }
        }
        public static string GetValue(string lenhSQL) //cau lenh truy van tra ve gia tri don
        {
            using (SqlConnection sqlCon = new SqlConnection(Models.cnnStr))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                string value = sqlCmd.ExecuteScalar().ToString();
                sqlCon.Close();
                return value;
            }
        }
    }
}