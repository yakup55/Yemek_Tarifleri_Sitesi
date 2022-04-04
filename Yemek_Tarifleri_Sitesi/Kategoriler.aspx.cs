using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["id"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("Select*From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //silme işlemi
            if (islem=="sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1",Convert.ToInt32(id));
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();

            }
            Panel3.Visible = false;
            Panel5.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            
        }

        protected void Btn_Ekle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values(@p1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Eklenmiştir");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }
    }
}