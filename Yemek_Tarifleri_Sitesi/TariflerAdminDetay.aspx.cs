using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class TariflerAdminDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where Tarifid=@p1 ", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[1].ToString();
                    TextBox2.Text = oku[2].ToString();
                    TextBox3.Text = oku[3].ToString();
                    TextBox4.Text = oku[4].ToString();
                    TextBox5.Text = oku[5].ToString();
                }
                bgl.baglanti().Close();

                //Kategori ekleme
                SqlCommand komut1 = new SqlCommand("Select*From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader oku1 = komut1.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = oku1;
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //güncelleme
            SqlCommand komut = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));   
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("ONAYLANMIŞTIR");

            //yemegi anasayfaya ekleme
            SqlCommand komut1 = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut1.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut1.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("EKLENMİŞTİR");


        }
    }
}