using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class YorumDetayAdmin : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[0].ToString();
                    TextBox2.Text = oku[1].ToString();
                    TextBox3.Text = oku[2].ToString();
                    TextBox4.Text = oku[3].ToString();
                }
                bgl.baglanti().Close();
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set Yorumicerik=@p1,YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut.Parameters.AddWithValue("@p2", true);
            komut.Parameters.AddWithValue("@p3", Convert.ToInt32(id));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("ONAYLANMIŞTIR");
        }
        
    }
}