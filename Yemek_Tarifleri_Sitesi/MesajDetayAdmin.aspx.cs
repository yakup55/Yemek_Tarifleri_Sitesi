using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class MesajDetayAdmin : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            SqlCommand komut = new SqlCommand("Select *From Tbl_Mesajlar where Mesajid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox2.Text = oku[4].ToString();
                TextBox3.Text= oku[1].ToString();
                TextBox4.Text = oku[2].ToString();
                TextBox5.Text = oku[3].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}