using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Yemek listesi
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["id"];
                islem = Request.QueryString["islem"];
            }
            if (Page.IsPostBack == false)
            {
                //Kategori ekleme
                SqlCommand komut1 = new SqlCommand("Select*From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader oku1 = komut1.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = oku1;
                DropDownList1.DataBind();
            }

            SqlCommand komut = new SqlCommand("Select*From Tbl_Yemekler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
             //silme işlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();

            }

            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            //yemek ekleme
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Eklenmiştir");


            //kategori sayısını arttırma
            SqlCommand komut1 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();
            
        }
    }
}