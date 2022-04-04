using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class YemekAdminDetay : System.Web.UI.Page
    {

        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select*fROM Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1",Convert.ToInt32( id));
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[1].ToString();
                    TextBox2.Text = oku[2].ToString();
                    TextBox3.Text = oku[3].ToString();
                }
                bgl.baglanti().Close();
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
            }
        }

        protected void Btn_Guncelle_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //GÜNCELLEME İŞLEMİ
            FileUpload1.SaveAs(Server.MapPath("/imageyemek/" + FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 ,YemekResim=@p6 where Yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", Convert.ToInt32( id));
            komut.Parameters.AddWithValue("@p6", "~/imageyemek/" + FileUpload1.FileName);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("GÜNCELLENMİŞTİR");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //tüm yemeklerin dururmunu false yaptık
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //günün yemegi için id ye göre durumu true yaptım
            SqlCommand komut1 = new SqlCommand("update Tbl_Yemekler set Durum=1 where Yemekid=@p1", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}