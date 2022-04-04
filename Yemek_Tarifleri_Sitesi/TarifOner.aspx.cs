using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapilis,TarifSahip,TarifSahipMail,TarifResim) values(@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", TarifAd.Text);
            komut.Parameters.AddWithValue("@t2", TarifMalzeme.Text);
            komut.Parameters.AddWithValue("@t3", TarifYapilis.Text);
            komut.Parameters.AddWithValue("@t4", TarifOneren.Text);
            komut.Parameters.AddWithValue("@t5", TarifMailAdres.Text);
            komut.Parameters.AddWithValue("@t6", TarifResim.FileName);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifeniz alınmıştır");
        }
    }
}